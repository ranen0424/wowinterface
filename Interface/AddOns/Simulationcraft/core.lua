local _, Simulationcraft = ...

Simulationcraft = LibStub("AceAddon-3.0"):NewAddon(Simulationcraft, "Simulationcraft", "AceConsole-3.0", "AceEvent-3.0")
ItemUpgradeInfo = LibStub("LibItemUpgradeInfo-1.0")
LibRealmInfo = LibStub("LibRealmInfo")

-- Set up DataBroker for minimap button
SimcLDB = LibStub("LibDataBroker-1.1"):NewDataObject("SimulationCraft", {
  type = "data source",
  text = "SimulationCraft",
  label = "SimulationCraft",
  icon = "Interface\\AddOns\\SimulationCraft\\logo",
  OnClick = function()
    if SimcCopyFrame:IsShown() then
      SimcCopyFrame:Hide()
    else
      Simulationcraft:PrintSimcProfile(false, false)
    end
  end,
  OnTooltipShow = function(tt)
    tt:AddLine("SimulationCraft")
    tt:AddLine(" ")
    tt:AddLine("Click to show SimC input")
    tt:AddLine("To toggle minimap button, type '/simc minimap'")
  end
})

LibDBIcon = LibStub("LibDBIcon-1.0")

local OFFSET_ITEM_ID = 1
local OFFSET_ENCHANT_ID = 2
local OFFSET_GEM_ID_1 = 3
local OFFSET_GEM_ID_2 = 4
local OFFSET_GEM_ID_3 = 5
local OFFSET_GEM_ID_4 = 6
local OFFSET_GEM_BASE = OFFSET_GEM_ID_1
local OFFSET_SUFFIX_ID = 7
local OFFSET_FLAGS = 11
local OFFSET_CONTEXT = 12
local OFFSET_BONUS_ID = 13
local OFFSET_UPGRADE_ID = 14 -- Flags = 0x4

local SocketInventoryItem   = _G.SocketInventoryItem
local Timer                 = _G.C_Timer
local AzeriteEmpoweredItem  = _G.C_AzeriteEmpoweredItem
local AzeriteItem           = _G.C_AzeriteItem
local AzeriteEssence        = _G.C_AzeriteEssence

-- load stuff from extras.lua
local upgradeTable        = Simulationcraft.upgradeTable
local slotNames           = Simulationcraft.slotNames
local simcSlotNames       = Simulationcraft.simcSlotNames
local specNames           = Simulationcraft.SpecNames
local profNames           = Simulationcraft.ProfNames
local regionString        = Simulationcraft.RegionString
local zandalariLoaBuffs   = Simulationcraft.zandalariLoaBuffs
local essenceMinorSlots   = Simulationcraft.azeriteEssenceSlotsMinor
local essenceMajorSlots   = Simulationcraft.azeriteEssenceSlotsMajor

-- Most of the guts of this addon were based on a variety of other ones, including
-- Statslog, AskMrRobot, and BonusScanner. And a bunch of hacking around with AceGUI.
-- Many thanks to the authors of those addons, and to reia for fixing my awful amateur
-- coding mistakes regarding objects and namespaces.

function Simulationcraft:OnInitialize()
  -- init databroker
  self.db = LibStub("AceDB-3.0"):New("SimulationCraftDB", {
    profile = {
      minimap = {
        hide = false,
      },
    },
  });
  LibDBIcon:Register("SimulationCraft", SimcLDB, self.db.profile.minimap)
  Simulationcraft:UpdateMinimapButton()

  Simulationcraft:RegisterChatCommand('simc', 'HandleChatCommand')
end

function Simulationcraft:OnEnable()
  SimulationcraftTooltip:SetOwner(_G["UIParent"],"ANCHOR_NONE")
end

function Simulationcraft:OnDisable()

end

function Simulationcraft:UpdateMinimapButton()
  if (self.db.profile.minimap.hide) then
    LibDBIcon:Hide("SimulationCraft")
  else
    LibDBIcon:Show("SimulationCraft")
  end
end

local function getLinks(input)
  local separatedLinks = {}
  for link in input:gmatch("|c.-|h|r") do
     separatedLinks[#separatedLinks + 1] = link
  end
  return separatedLinks
end

function Simulationcraft:HandleChatCommand(input)
  local args = {strsplit(' ', input)}

  local debugOutput = false
  local noBags = false
  local links = getLinks(input)

  for _, arg in ipairs(args) do
    if arg == 'debug' then
      debugOutput = true
    elseif arg == 'nobag' or arg == 'nobags' or arg == 'nb' then
      noBags = true
    elseif arg == 'minimap' then
      self.db.profile.minimap.hide = not self.db.profile.minimap.hide
      DEFAULT_CHAT_FRAME:AddMessage("SimulationCraft: Minimap button is now " .. (self.db.profile.minimap.hide and "hidden" or "shown"))
      Simulationcraft:UpdateMinimapButton()
      return
    end
  end

  self:PrintSimcProfile(debugOutput, noBags, links)
end


local function GetItemSplit(itemLink)
  local itemString = string.match(itemLink, "item:([%-?%d:]+)")
  local itemSplit = {}

  -- Split data into a table
  for _, v in ipairs({strsplit(":", itemString)}) do
    if v == "" then
      itemSplit[#itemSplit + 1] = 0
    else
      itemSplit[#itemSplit + 1] = tonumber(v)
    end
  end

  return itemSplit
end

-- char size for utf8 strings
local function ChrSize(char)
  if not char then
      return 0
  elseif char > 240 then
      return 4
  elseif char > 225 then
      return 3
  elseif char > 192 then
      return 2
  else
      return 1
  end
end

-- SimC tokenize function
local function Tokenize(str)
  str = str or ""
  -- convert to lowercase and remove spaces
  str = string.lower(str)
  str = string.gsub(str, ' ', '_')

  -- keep stuff we want, dumpster everything else
  local s = ""
  for i=1,str:len() do
    local b = str:byte(i)
    -- keep digits 0-9
    if b >= 48 and b <= 57 then
      s = s .. str:sub(i,i)
      -- keep lowercase letters
    elseif b >= 97 and b <= 122 then
      s = s .. str:sub(i,i)
      -- keep %, +, ., _
    elseif b == 37 or b == 43 or b == 46 or b == 95 then
      s = s .. str:sub(i,i)
      -- save all multibyte chars
    elseif ChrSize(b) > 1 then
      local offset = ChrSize(b) - 1
      s = s .. str:sub(i, i + offset)
      i = i + offset
    end
  end
  -- strip trailing spaces
  if string.sub(s, s:len())=='_' then
    s = string.sub(s, 0, s:len()-1)
  end
  return s
end

-- method to add spaces to UnitRace names for proper tokenization
local function FormatRace(str)
  str = str or ""
  local matches = {}
  for match, _ in string.gmatch(str, '([%u][%l]*)') do
    matches[#matches+1] = match
  end
  return string.join(' ', unpack(matches))
end

-- method for constructing the talent string
local function CreateSimcTalentString()
  local talentInfo = {}
  local maxTiers = 7
  local maxColumns = 3
  for tier = 1, maxTiers do
    for column = 1, maxColumns do
      local talentID, name, iconTexture, selected, available = GetTalentInfo(tier, column, GetActiveSpecGroup())
      if selected then
        talentInfo[tier] = column
      end
    end
  end

  local str = 'talents='
  for i = 1, maxTiers do
    if talentInfo[i] then
      str = str .. talentInfo[i]
    else
      str = str .. '0'
    end
  end

  return str
end

-- function that translates between the game's role values and ours
local function TranslateRole(spec_id, str)
  local spec_role = Simulationcraft.RoleTable[spec_id]
  if spec_role ~= nil then
    return spec_role
  end

  if str == 'TANK' then
    return 'tank'
  elseif str == 'DAMAGER' then
    return 'attack'
  elseif str == 'HEALER' then
    return 'attack'
  else
    return ''
  end
end

-- =================== Item Information =========================
local function GetGemItemID(itemLink, index)
  local _, gemLink = GetItemGem(itemLink, index)
  if gemLink ~= nil then
    local itemIdStr = string.match(gemLink, "item:(%d+)")
    if itemIdStr ~= nil then
      return tonumber(itemIdStr)
    end
  end

  return 0
end

local function GetGemBonuses(itemLink, index)
  local bonuses = {}
  local _, gemLink = GetItemGem(itemLink, index)
  if gemLink ~= nil then
    local gemSplit = GetItemSplit(gemLink)
    for index=1, gemSplit[OFFSET_BONUS_ID] do
      bonuses[#bonuses + 1] = gemSplit[OFFSET_BONUS_ID + index]
    end
  end

  if #bonuses > 0 then
    return table.concat(bonuses, ':')
  end

  return 0
end

local function GetItemStringFromItemLink(slotNum, itemLink, itemLoc, debugOutput)
  local itemSplit = GetItemSplit(itemLink)
  local simcItemOptions = {}
  local gems = {}
  local gemBonuses = {}

  -- Item id
  local itemId = itemSplit[OFFSET_ITEM_ID]
  simcItemOptions[#simcItemOptions + 1] = ',id=' .. itemId

  -- Enchant
  if itemSplit[OFFSET_ENCHANT_ID] > 0 then
    simcItemOptions[#simcItemOptions + 1] = 'enchant_id=' .. itemSplit[OFFSET_ENCHANT_ID]
  end

  -- Gems
  for gemOffset = OFFSET_GEM_ID_1, OFFSET_GEM_ID_4 do
    local gemIndex = (gemOffset - OFFSET_GEM_BASE) + 1
    if itemSplit[gemOffset] > 0 then
      local gemId = GetGemItemID(itemLink, gemIndex)
      if gemId > 0 then
        gems[gemIndex] = gemId
        gemBonuses[gemIndex] = GetGemBonuses(itemLink, gemIndex)
      end
    else
      gems[gemIndex] = 0
      gemBonuses[gemIndex] = 0
    end
  end

  -- Remove any trailing zeros from the gems array
  while #gems > 0 and gems[#gems] == 0 do
    table.remove(gems, #gems)
  end
  -- Remove any trailing zeros from the gem bonuses
  while #gemBonuses > 0 and gemBonuses[#gemBonuses] == 0 do
    table.remove(gemBonuses, #gemBonuses)
  end

  if #gems > 0 then
    simcItemOptions[#simcItemOptions + 1] = 'gem_id=' .. table.concat(gems, '/')
    if #gemBonuses > 0 then
      simcItemOptions[#simcItemOptions + 1] = 'gem_bonus_id=' .. table.concat(gemBonuses, '/')
    end
  end

  -- New style item suffix, old suffix style not supported
  if itemSplit[OFFSET_SUFFIX_ID] ~= 0 then
    simcItemOptions[#simcItemOptions + 1] = 'suffix=' .. itemSplit[OFFSET_SUFFIX_ID]
  end

  local flags = itemSplit[OFFSET_FLAGS]

  local bonuses = {}

  for index=1, itemSplit[OFFSET_BONUS_ID] do
    bonuses[#bonuses + 1] = itemSplit[OFFSET_BONUS_ID + index]
  end

  if #bonuses > 0 then
    simcItemOptions[#simcItemOptions + 1] = 'bonus_id=' .. table.concat(bonuses, '/')
  end

  local linkOffset = OFFSET_BONUS_ID + #bonuses + 1

  -- Upgrade level
  if bit.band(flags, 0x4) == 0x4 then
    local upgradeId = itemSplit[linkOffset]
    if upgradeTable and upgradeTable[upgradeId] ~= nil and upgradeTable[upgradeId] > 0 then
      simcItemOptions[#simcItemOptions + 1] = 'upgrade=' .. upgradeTable[upgradeId]
    end
    linkOffset = linkOffset + 1
  end

  -- Some leveling quest items seem to use this, it'll include the drop level of the item
  if bit.band(flags, 0x200) == 0x200 then
    simcItemOptions[#simcItemOptions + 1] = 'drop_level=' .. itemSplit[linkOffset]
    linkOffset = linkOffset + 1
  end

  -- Get item creation context. Can be used to determine unlock/availability of azerite tiers for 3rd parties
  if itemSplit[OFFSET_CONTEXT] ~= 0 then
    simcItemOptions[#simcItemOptions + 1] = 'context=' .. itemSplit[OFFSET_CONTEXT]
  end

  -- Azerite powers - only run in BfA client
  if itemLoc and AzeriteEmpoweredItem then
    if AzeriteEmpoweredItem.IsAzeriteEmpoweredItem(itemLoc) then
      -- C_AzeriteEmpoweredItem.GetAllTierInfo(ItemLocation:CreateFromEquipmentSlot(5))
      -- C_AzeriteEmpoweredItem.GetPowerInfo(ItemLocation:CreateFromEquipmentSlot(5), 111)
      local azeritePowers = {}
      local powerIndex = 1
      local tierInfo = AzeriteEmpoweredItem.GetAllTierInfo(itemLoc)
      for azeriteTier, tierInfo in pairs(tierInfo) do
        for _, powerId in pairs(tierInfo.azeritePowerIDs) do
          if AzeriteEmpoweredItem.IsPowerSelected(itemLoc, powerId) then
            azeritePowers[powerIndex] = powerId
            powerIndex = powerIndex + 1
          end
        end
      end
      simcItemOptions[#simcItemOptions + 1] = 'azerite_powers=' .. table.concat(azeritePowers, '/')
    end
    if AzeriteItem.IsAzeriteItem(itemLoc) then
      simcItemOptions[#simcItemOptions + 1] = 'azerite_level=' .. AzeriteItem.GetPowerLevel(itemLoc)
    end
  end

  local itemStr = ''
  if debugOutput then
    itemStr = itemStr .. '# ' .. itemString .. '\n'
  end
  itemStr = itemStr .. simcSlotNames[slotNum] .. "=" .. table.concat(simcItemOptions, ',')

  return itemStr
end

function Simulationcraft:GetItemStrings(debugOutput)
  local items = {}
  for slotNum=1, #slotNames do
    local slotId = GetInventorySlotInfo(slotNames[slotNum])
    local itemLink = GetInventoryItemLink('player', slotId)

    -- if we don't have an item link, we don't care
    if itemLink then
      local itemLoc
      if ItemLocation then
        itemLoc = ItemLocation:CreateFromEquipmentSlot(slotId)        
      end
      items[slotNum] = GetItemStringFromItemLink(slotNum, itemLink, itemLoc, debugOutput)

    end
  end

  return items
end

function Simulationcraft:GetBagItemStrings()
  local bagItems = {}

  for slotNum=1, #slotNames do
    local slotName = slotNames[slotNum]
    -- Ignore "double" slots, results in doubled output which isn't useful
    if slotName and slotName ~= 'Trinket1Slot' and slotName ~= 'Finger1Slot' then
      local slotItems = {}
      local slotId, _, _ = GetInventorySlotInfo(slotNames[slotNum])
      GetInventoryItemsForSlot(slotId, slotItems)
      for locationBitstring, itemID in pairs(slotItems) do
        local player, bank, bags, voidstorage, slot, bag = EquipmentManager_UnpackLocation(locationBitstring)
        local itemLoc
        if ItemLocation then
          if bag == nil then
            -- this is a default bank slot (not a bank bag). these exist on the character equipment, not a bag
            itemLoc = ItemLocation:CreateFromEquipmentSlot(slot)
          else
            itemLoc = ItemLocation:CreateFromBagAndSlot(bag, slot)
          end
        end
        if bags or bank then
          local container
          if bags then
            container = bag
          elseif bank then
            -- Default bank slots (the innate ones, not ones from bags-in-the-bank) are weird
            -- slot starts at 39, I believe that is based on some older location values
            -- GetContainerItemInfo uses a 0-based slot index
            -- So take the slot from the unpack and subtract 39 to get the right index for GetContainerItemInfo.
            -- 2018/01/17 - Change magic number to 47 to account for new backpack slots. Not sure why it went up by 8
            -- instead of 4, possible blizz is leaving the door open to more expansion in the future?
            container = BANK_CONTAINER
            slot = slot - 47
          end
          _, _, _, _, _, _, itemLink, _, _, itemId = GetContainerItemInfo(container, slot)
          if itemLink then
            local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = GetItemInfo(itemLink)

            -- get correct level for scaling gear
            local level = ItemUpgradeInfo:GetUpgradedItemLevel(link) or 0

            -- find all equippable, non-artifact items
            if IsEquippableItem(itemLink) and quality ~= 6 then
              bagItems[#bagItems + 1] = {
                string = GetItemStringFromItemLink(slotNum, itemLink, itemLoc, false),
                name = name .. ' (' .. level .. ')'
              }
            end
          end
        end
      end
    end
  end

  return bagItems
end

-- Scan buffs to determine which loa racial this player has, if any
function Simulationcraft:GetZandalariLoa()
  local zandalariLoa = nil
  for index = 1, 32 do
    local _, _, _, _, _, _, _, _, _, spellId = UnitBuff("player", index)
    if spellId == nil then
      break
    end
    if zandalariLoaBuffs[spellId] then
      zandalariLoa = zandalariLoaBuffs[spellId]
      break
    end
  end
  return zandalariLoa
end

function Simulationcraft:AzeriteEssencesAvailable()
  if AzeriteEssence then
    return true
  else
    return false
  end
end

function Simulationcraft:GetAzeriteEssencesString()
  -- defensive check for live/PTR
  if not Simulationcraft:AzeriteEssencesAvailable() then
    return nil
  end

  local essenceStrings = {}
  -- track if we've found something to export
  -- characters that haven't unlocked the essences still report slot 0 as unlocked
  local found = false

  local milestones = AzeriteEssence.GetMilestones()
  if milestones then
    for _, milestone in pairs(milestones) do
      if milestone.unlocked then
        local essenceID = AzeriteEssence.GetMilestoneEssence(milestone.ID)
        local spellID = AzeriteEssence.GetMilestoneSpell(milestone.ID)
        if milestone.slot ~= nil then
          if essenceID then
            found = true
            local essence = AzeriteEssence.GetEssenceInfo(essenceID)
            essenceStrings[#essenceStrings + 1] = essence.ID .. ':' .. essence.rank
          else
            essenceStrings[#essenceStrings + 1] = 0 .. ':' .. 0
          end
        elseif spellID then
          found = true
          essenceStrings[#essenceStrings + 1] = spellID
        else
          -- shouldn't happen?
        end
      end
    end
  end

  if #essenceStrings > 0 and found then
    return "azerite_essences=" .. table.concat(essenceStrings, '/')
  else
    return nil
  end
end

function Simulationcraft:GetUnlockedAzeriteEssencesString()
  -- defensive check for live/PTR
  if not Simulationcraft:AzeriteEssencesAvailable() then
    return nil
  end

  local unlockedEssences = {}
  local essences = AzeriteEssence.GetEssences()
  if essences then
    for _, essence in pairs(essences) do
      if essence.unlocked then
        unlockedEssences[#unlockedEssences + 1] = essence.ID .. ':' .. essence.rank
      end
    end
  end

  if #unlockedEssences > 0 then
    return 'azerite_essences_available=' .. table.concat(unlockedEssences, '/')
  else
    return nil
  end
end


-- This is the workhorse function that constructs the profile
function Simulationcraft:PrintSimcProfile(debugOutput, noBags, links)
  -- addon metadata
  local versionComment = '# SimC Addon ' .. GetAddOnMetadata('Simulationcraft', 'Version')
  local simcVersionWarning = '# Requires SimulationCraft 820-01 or newer'

  -- Basic player info
  local _, realmName, _, _, _, _, region, _, _, realmLatinName, _ = LibRealmInfo:GetRealmInfoByUnit('player')

  local playerName = UnitName('player')
  local _, playerClass = UnitClass('player')
  local playerLevel = UnitLevel('player')

  -- Try Latin name for Russian servers first, then realm name from LibRealmInfo, then Realm Name from the game
  -- Latin name for Russian servers as most APIs use the latin name, not the cyrillic name
  local playerRealm = realmLatinName or realmName or GetRealmName()

  -- Try region from LibRealmInfo first, then use default API
  -- Default API can be wrong for region-switching players
  local playerRegion = region or regionString[GetCurrentRegion()]

  -- Race info
  local _, playerRace = UnitRace('player')

  -- fix some races to match SimC format
  if playerRace == 'Scourge' then --lulz
    playerRace = 'Undead'
  else
    playerRace = FormatRace(playerRace)
  end

  local isZandalariTroll = false
  if Tokenize(playerRace) == 'zandalari_troll' then
    isZandalariTroll = true
  end

  -- Spec info
  local role, globalSpecID
  local specId = GetSpecialization()
  if specId then
    globalSpecID,_,_,_,_,role = GetSpecializationInfo(specId)
  end
  local playerSpec = specNames[ globalSpecID ]

  -- Professions
  local pid1, pid2 = GetProfessions()
  local firstProf, firstProfRank, secondProf, secondProfRank, profOneId, profTwoId
  if pid1 then
    _,_,firstProfRank,_,_,_,profOneId = GetProfessionInfo(pid1)
  end
  if pid2 then
    secondProf,_,secondProfRank,_,_,_,profTwoId = GetProfessionInfo(pid2)
  end

  firstProf = profNames[ profOneId ]
  secondProf = profNames[ profTwoId ]

  local playerProfessions = ''
  if pid1 or pid2 then
    playerProfessions = 'professions='
    if pid1 then
      playerProfessions = playerProfessions..Tokenize(firstProf)..'='..tostring(firstProfRank)..'/'
    end
    if pid2 then
      playerProfessions = playerProfessions..Tokenize(secondProf)..'='..tostring(secondProfRank)
    end
  else
    playerProfessions = ''
  end

  -- Construct SimC-compatible strings from the basic information
  local player = Tokenize(playerClass) .. '="' .. playerName .. '"'
  playerLevel = 'level=' .. playerLevel
  playerRace = 'race=' .. Tokenize(playerRace)
  playerRole = 'role=' .. TranslateRole(globalSpecID, role)
  playerSpec = 'spec=' .. Tokenize(playerSpec)
  playerRealm = 'server=' .. Tokenize(playerRealm)
  playerRegion = 'region=' .. Tokenize(playerRegion)

  -- Talents are more involved - method to handle them
  local playerTalents = CreateSimcTalentString()

  -- Build the output string for the player (not including gear)
  local simulationcraftProfile = versionComment .. '\n'
  local simcPrintError = nil

  simulationcraftProfile = simulationcraftProfile .. simcVersionWarning .. '\n'
  simulationcraftProfile = simulationcraftProfile .. '\n'

  simulationcraftProfile = simulationcraftProfile .. player .. '\n'
  simulationcraftProfile = simulationcraftProfile .. playerLevel .. '\n'
  simulationcraftProfile = simulationcraftProfile .. playerRace .. '\n'
  if isZandalariTroll then
    local zandalari_loa = Simulationcraft:GetZandalariLoa()
    if zandalari_loa then
      simulationcraftProfile = simulationcraftProfile .. "zandalari_loa=" .. zandalari_loa .. '\n'
    end
  end
  simulationcraftProfile = simulationcraftProfile .. playerRegion .. '\n'
  simulationcraftProfile = simulationcraftProfile .. playerRealm .. '\n'
  simulationcraftProfile = simulationcraftProfile .. playerRole .. '\n'
  simulationcraftProfile = simulationcraftProfile .. playerProfessions .. '\n'
  simulationcraftProfile = simulationcraftProfile .. playerTalents .. '\n'
  simulationcraftProfile = simulationcraftProfile .. playerSpec .. '\n'
  simulationcraftProfile = simulationcraftProfile .. '\n'

  -- gate all azerite essence stuff behind this check so addon will work in live and 8.2 PTR
  if Simulationcraft:AzeriteEssencesAvailable() then
    local essences = Simulationcraft:GetAzeriteEssencesString()
    local unlockedEssences = Simulationcraft:GetUnlockedAzeriteEssencesString()

    if essences then
      simulationcraftProfile = simulationcraftProfile .. essences .. '\n'
    end
    if unlockedEssences then
      -- output as a comment, SimC doesn't care about unlocked powers but users might
      simulationcraftProfile = simulationcraftProfile .. '# ' .. unlockedEssences .. '\n'
    end

    if essences or unlockedEssences then
      simulationcraftProfile = simulationcraftProfile .. '\n'
    end
  end

  -- Method that gets gear information
  local items = Simulationcraft:GetItemStrings(debugOutput)

  -- output gear
  for slotNum=1, #slotNames do
    if items[slotNum] then
      simulationcraftProfile = simulationcraftProfile .. items[slotNum] .. '\n'
    end
  end

  simulationcraftProfile = simulationcraftProfile .. '\n'

  -- output gear from bags
  if noBags == false then
    local bagItems = Simulationcraft:GetBagItemStrings()

    simulationcraftProfile = simulationcraftProfile .. '### Gear from Bags\n'
    for i=1, #bagItems do
      simulationcraftProfile = simulationcraftProfile .. '#\n'
      simulationcraftProfile = simulationcraftProfile .. '# ' .. bagItems[i].name .. '\n'
      simulationcraftProfile = simulationcraftProfile .. '# ' .. bagItems[i].string .. '\n'
    end
  end

  if links and #links > 0 then
    simulationcraftProfile = simulationcraftProfile .. '\n### Linked gear\n'
    for i,v in pairs(links) do
      local name,_,_,_,_,_,_,_,invType = GetItemInfo(v)
      if name and invType ~= "" then
        local slotNum = Simulationcraft.invTypeToSlotNum[invType]
        simulationcraftProfile = simulationcraftProfile .. '#\n'
        simulationcraftProfile = simulationcraftProfile .. '# ' .. name .. '\n'
        simulationcraftProfile = simulationcraftProfile .. '# ' .. GetItemStringFromItemLink(slotNum, v, nil, debugOutput) .. "\n"
      else -- Someone linked something that was not gear.
        simcPrintError = "Error: " .. v .. " is not gear."
        break
      end
    end
  end

  -- sanity checks - if there's anything that makes the output completely invalid, punt!
  if specId==nil then
    simcPrintError = "Error: You need to pick a spec!"
  end

  -- show the appropriate frames
  SimcCopyFrame:Show()
  SimcCopyFrameScroll:Show()
  SimcCopyFrameScrollText:Show()
  SimcCopyFrameScrollText:SetText(simcPrintError or simulationcraftProfile)
  SimcCopyFrameScrollText:HighlightText()
  SimcCopyFrameScrollText:SetScript("OnEscapePressed", function(self)
    SimcCopyFrame:Hide()
  end)
  SimcCopyFrameButton:SetScript("OnClick", function(self)
    SimcCopyFrame:Hide()
  end)
end
