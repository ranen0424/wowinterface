-- 原作：AzeriteTooltip
-- 原作者：jokair9
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "azerite", "azeriteTooltip", "enable") then return end

local LAT = E:NewModule("LuiAzeriteTooltip", "AceEvent-3.0", "AceHook-3.0")
local B = E:GetModule("Bags")

local locationIDs = {
    ["Head"] = 1,
    ["Shoulder"] = 3,
    ["Chest"] = 5,
}

local itemEquipLocToSlot = {
    ["INVTYPE_HEAD"] = 1,
    ["INVTYPE_SHOULDER"] = 3,
    ["INVTYPE_CHEST"] = 5,
    ["INVTYPE_ROBE"] = 5
}

local rings = {
    1,
    2,
}

local addText = ""

function LAT:GetSpellID(powerID)
    local powerInfo = T.C_AzeriteEmpoweredItem_GetPowerInfo(powerID)
    if (powerInfo) then
        local azeriteSpellID = powerInfo["spellID"]
        return azeriteSpellID
    end
end

function LAT:HasUnselectedPower(tooltip)
    local AzeriteUnlock = T.string_split("%d", AZERITE_POWER_UNLOCKED_AT_LEVEL)
    for i = 8, tooltip:NumLines() do
        local left = _G[tooltip:GetName() .. "TextLeft" .. i]
        local text = left:GetText()
        if text and (text:find(AzeriteUnlock) or text:find(NEW_AZERITE_POWER_AVAILABLE)) then
            return true
        end
    end
end

function LAT:ScanSelectedTraits(tooltip, powerName)
    local empowered = T.GetSpellInfo(263978)
    for i = 8, tooltip:NumLines() do
        local left = _G[tooltip:GetName() .. "TextLeft" .. i]
        local text = left:GetText()
        local newText
        local newPowerName
        if text and text:find("-") then
            newText = T.string_gsub(text, "-", " ")
        end
        if powerName:find("-") then
            newPowerName = T.string_gsub(powerName, "-", " ")
        end
        if text and text:find(powerName) then
            return true
        elseif (newText and newPowerName and newText:match(newPowerName)) then
            return true
        elseif (powerName == empowered and not self:HasUnselectedPower(tooltip)) then
            return true
        end
    end
end

function LAT:GetAzeriteLevel()
    local level
    local azeriteItemLocation = T.C_AzeriteItem_FindActiveAzeriteItem()
    if azeriteItemLocation then
        level = T.C_AzeriteItem_GetPowerLevel(azeriteItemLocation)
    else
        level = 0
    end
    return level
end

function LAT:ClearBlizzardText(tooltip)
    local textLeft = tooltip.textLeft
    if not textLeft then
        local tooltipName = tooltip:GetName()
        textLeft = setmetatable({}, {__index = function(t, i)
            local line = _G[tooltipName .. "TextLeft" .. i]
            t[i] = line
            return line
        end})
        tooltip.textLeft = textLeft
    end
    for i = 7, tooltip:NumLines() do
        if textLeft then
            local line = textLeft[i]
            local text = line:GetText()
            local r, g, b = line:GetTextColor()
            if text then
                local ActiveAzeritePowers = T.string_split("(%d/%d)", CURRENTLY_SELECTED_AZERITE_POWERS)-- Active Azerite Powers (%d/%d)
                local AzeritePowers = T.string_split("(0/%d)", TOOLTIP_AZERITE_UNLOCK_LEVELS)-- Azerite Powers (0/%d)
                local AzeriteUnlock = T.string_split("%d", AZERITE_POWER_UNLOCKED_AT_LEVEL)-- Unlocked at Heart of Azeroth Level %d
                local Durability = T.string_split("%d / %d", DURABILITY_TEMPLATE)
                local ReqLevel = T.string_split("%d", ITEM_MIN_LEVEL)
                
                if text:match(NEW_AZERITE_POWER_AVAILABLE) then
                    line:SetText("")
                end
                
                if text:find(AzeriteUnlock) then
                    line:SetText("")
                end
                
                if text:find(Durability) or text:find(ReqLevel) then
                    textLeft[i - 1]:SetText("")
                end
                
                if text:find(ActiveAzeritePowers) then
                    textLeft[i - 1]:SetText("")
                    line:SetText("")
                    textLeft[i + 1]:SetText(addText)
                elseif (text:find(AzeritePowers) and not text:find(">")) then
                    textLeft[i - 1]:SetText("")
                    line:SetText("")
                    textLeft[i + 1]:SetText(addText)
                elseif text:find(AZERITE_EMPOWERED_ITEM_FULLY_UPGRADED) then
                    textLeft[i - 1]:SetText("")
                    line:SetText(addText)
                    textLeft[i + 1]:SetText("")
                end
            end
        end
    end
end

function LAT:RemovePowerText(tooltip, powerName)
    local textLeft = tooltip.textLeft
    if not textLeft then
        local tooltipName = tooltip:GetName()
        textLeft = setmetatable({}, {__index = function(t, i)
            local line = _G[tooltipName .. "TextLeft" .. i]
            t[i] = line
            return line
        end})
        tooltip.textLeft = textLeft
    end
    for i = 7, tooltip:NumLines() do
        if textLeft then
            local enchanted = T.string_split("%d", ENCHANTED_TOOLTIP_LINE)
            local use = T.string_split("%d", ITEM_SPELL_TRIGGER_ONUSE)
            local line = textLeft[i]
            local text = line:GetText()
            local r, g, b = line:GetTextColor()
            local newText
            local newPowerName
            if text and text:find("-") then
                newText = T.string_gsub(text, "-", " ")
            end
            if powerName:find("-") then
                newPowerName = T.string_gsub(powerName, "-", " ")
            end
            if text then
                if text:match(CURRENTLY_SELECTED_AZERITE_POWERS_INSPECT) then return end
                if text:find("- " .. powerName) then
                    line:SetText("")
                elseif (newText and newPowerName and newText:match(newPowerName)) then
                    line:SetText("")
                end
                if (r < 0.1 and g > 0.9 and b < 0.1 and not text:find(">") and not text:find(ITEM_SPELL_TRIGGER_ONEQUIP) and not text:find(enchanted) and not text:find(use)) then
                    line:SetText("")
                end
            end
        end
    end
end


function LAT:BuildTooltip(self)
    local name, link = self:GetItem()
    if not name then return end
    
    if T.C_AzeriteEmpoweredItem_IsAzeriteEmpoweredItemByID(link) then
        addText = ""
        local currentLevel = LAT:GetAzeriteLevel()
        local specID = T.GetSpecializationInfo(T.GetSpecialization())
        local allTierInfo = T.C_AzeriteEmpoweredItem_GetAllTierInfoByItemID(link)
        if not allTierInfo then return end
        
        local activePowers = {}
        local activeAzeriteTrait = false
        if E.db.lui.modules.misc.azerite.azeriteTooltip["onlyIcon"] then
            for j = 1, 5 do
                if not allTierInfo[j] then break end
                local tierLevel = allTierInfo[j]["unlockLevel"]
                local azeritePowerID = allTierInfo[j]["azeritePowerIDs"][1]
                if not allTierInfo[1]["azeritePowerIDs"][1] then return end
                local azeriteTooltipText = " "
                for i, _ in T.pairs(allTierInfo[j]["azeritePowerIDs"]) do
                    local azeritePowerID = allTierInfo[j]["azeritePowerIDs"][i]
                    local azeriteSpellID = LAT:GetSpellID(azeritePowerID)
                    local azeritePowerName, _, icon = T.GetSpellInfo(azeriteSpellID)
                    if tierLevel <= currentLevel then
                        if LAT:ScanSelectedTraits(self, azeritePowerName) then
                            local azeriteIcon = "|T" .. icon .. ":24:24:0:0:64:64:4:60:4:60:255:255:255|t"
                            azeriteTooltipText = azeriteTooltipText .. "  >" .. azeriteIcon .. "<"
                            T.table_insert(activePowers, {name = azeritePowerName})
                            activeAzeriteTrait = true
                        elseif T.C_AzeriteEmpoweredItem_IsPowerAvailableForSpec(azeritePowerID, specID) then
                            local azeriteIcon = "|T" .. icon .. ":24:24:0:0:64:64:4:60:4:60:255:255:255|t"
                            azeriteTooltipText = azeriteTooltipText .. "  " .. azeriteIcon
                        elseif not E.db.lui.modules.misc.azerite.azeriteTooltip["onlySpec"] or T.IsControlKeyDown() then
                            local azeriteIcon = "|T" .. icon .. ":24:24:0:0:64:64:4:60:4:60:150:150:150|t"
                            azeriteTooltipText = azeriteTooltipText .. "  " .. azeriteIcon
                        end
                    elseif T.C_AzeriteEmpoweredItem_IsPowerAvailableForSpec(azeritePowerID, specID) then
                        local azeriteIcon = "|T" .. icon .. ":24:24:0:0:64:64:4:60:4:60:150:150:150|t"
                        azeriteTooltipText = azeriteTooltipText .. "  " .. azeriteIcon
                    elseif not E.db.lui.modules.misc.azerite.azeriteTooltip["onlySpec"] or T.IsControlKeyDown() then
                        local azeriteIcon = "|T" .. icon .. ":24:24:0:0:64:64:4:60:4:60:150:150:150|t"
                        azeriteTooltipText = azeriteTooltipText .. "  " .. azeriteIcon
                    end
                end
                
                if tierLevel <= currentLevel then
                    if j > 1 then
                        addText = addText .. "\n \n|cFFffcc00" .. L["Level"] .. " " .. tierLevel .. azeriteTooltipText .. "|r"
                    else
                        addText = addText .. "\n|cFFffcc00" .. L["Level"] .. " " .. tierLevel .. azeriteTooltipText .. "|r"
                    end
                else
                    if j > 1 then
                        addText = addText .. "\n \n|cFF7a7a7a" .. L["Level"] .. " " .. tierLevel .. azeriteTooltipText .. "|r"
                    else
                        addText = addText .. "\n|cFF7a7a7a" .. L["Level"] .. " " .. tierLevel .. azeriteTooltipText .. "|r"
                    end
                end
            
            end
        else
            for j = 1, 5 do
                if not allTierInfo[j] then break end
                
                local tierLevel = allTierInfo[j]["unlockLevel"]
                local azeritePowerID = allTierInfo[j]["azeritePowerIDs"][1]
                
                if not allTierInfo[1]["azeritePowerIDs"][1] then return end
                
                local r, g, b
                
                if tierLevel <= currentLevel then
                    r, g, b = 1, 0.8, 0
                else
                    r, g, b = 0.5, 0.5, 0.5
                end
                
                local rgbLevel = ("|cff%.2x%.2x%.2x " .. L["Level"] .. " %d|r"):format(r * 255, g * 255, b * 255, tierLevel)
                
                if j > 1 then
                    addText = addText .. "\n"
                end
                
                addText = addText .. "\n" .. rgbLevel .. "\n"
                
                for i, v in T.pairs(allTierInfo[j]["azeritePowerIDs"]) do
                    local azeritePowerID = allTierInfo[j]["azeritePowerIDs"][i]
                    local azeriteSpellID = LAT:GetSpellID(azeritePowerID)
                    
                    local azeritePowerName, _, icon = T.GetSpellInfo(azeriteSpellID)
                    local azeriteIcon = "|T" .. icon .. ":20:20:0:0:64:64:4:60:4:60|t"
                    local azeriteTooltipText = "  " .. azeriteIcon .. "  " .. azeritePowerName
                    
                    if tierLevel <= currentLevel then
                        if LAT:ScanSelectedTraits(self, azeritePowerName) then
                            T.table_insert(activePowers, {name = azeritePowerName})
                            activeAzeriteTrait = true
                            
                            addText = addText .. "\n|cFF00FF00" .. azeriteTooltipText .. "|r"
                        elseif T.C_AzeriteEmpoweredItem_IsPowerAvailableForSpec(azeritePowerID, specID) then
                            addText = addText .. "\n|cFFFFFFFF" .. azeriteTooltipText .. "|r"
                        elseif not E.db.lui.modules.misc.azerite.azeriteTooltip["onlySpec"] or T.IsControlKeyDown() then
                            addText = addText .. "\n|cFF7a7a7a" .. azeriteTooltipText .. "|r"
                        end
                    elseif T.C_AzeriteEmpoweredItem_IsPowerAvailableForSpec(azeritePowerID, specID) then
                        addText = addText .. "\n|cFF7a7a7a" .. azeriteTooltipText .. "|r"
                    elseif not E.db.lui.modules.misc.azerite.azeriteTooltip["onlySpec"] or T.IsControlKeyDown() then
                        addText = addText .. "\n|cFF7a7a7a" .. azeriteTooltipText .. "|r"
                    end
                end
            end
        end
        
        if E.db.lui.modules.misc.azerite.azeriteTooltip["removeBlizzard"] then
            if activeAzeriteTrait then
                for k, v in T.pairs(activePowers) do
                    LAT:RemovePowerText(self, v.name)
                end
            end
            LAT:ClearBlizzardText(self)
        else
            self:AddLine(addText)
            self:AddLine(" ")
        end
        T.table_wipe(activePowers)
    end
end

function LAT:CreateAzeriteIcons(button, azeriteEmpoweredItemLocation, frame)
    if T.C_AzeriteEmpoweredItem_IsAzeriteEmpoweredItem(azeriteEmpoweredItemLocation) then
        if not button.azerite then
            button.azerite = T.CreateFrame("Frame", "$parent.azerite", button)
            if frame == "bag" then
                if E.db.lui.modules.misc.azerite.azeriteTooltip["bagIconPosition"] == "TOP" then
                    button.azerite:SetPoint("TOPLEFT", button, "TOPLEFT", 1, 0)
                else
                    button.azerite:SetPoint("BOTTOMLEFT", button, "BOTTOMLEFT", 1, 0)
                end
            else
                if E.db.lui.modules.misc.azerite.azeriteTooltip["characterIconPosition"] == "TOP" then
                    button.azerite:SetPoint("TOPLEFT", button, "TOPLEFT", 1, 0)
                else
                    button.azerite:SetPoint("BOTTOMLEFT", button, "BOTTOMLEFT", 1, 0)
                end
            end
            button.azerite:SetSize(37, 18)
        else
            button.azerite:Show()
        end
        
        local allTierInfo = T.C_AzeriteEmpoweredItem_GetAllTierInfo(azeriteEmpoweredItemLocation)
        local noneSelected = true
        
        for j, k in T.ipairs(rings) do
            if not allTierInfo[j] then break end
            
            local azeritePowerID = allTierInfo[k]["azeritePowerIDs"][1]
            
            if not allTierInfo[1]["azeritePowerIDs"][1] then return end
            
            if button.azerite[j] then
                button.azerite[j]:Hide()
                button.azerite[j].overlay:Hide()
            end
            
            for i, _ in T.pairs(allTierInfo[k]["azeritePowerIDs"]) do
                local azeritePowerID = allTierInfo[k]["azeritePowerIDs"][i]
                local azeriteSpellID = self:GetSpellID(azeritePowerID)
                local azeritePowerName, _, icon = T.GetSpellInfo(azeriteSpellID)
                
                if T.C_AzeriteEmpoweredItem_IsPowerSelected(azeriteEmpoweredItemLocation, azeritePowerID) then
                    noneSelected = false
                    if not button.azerite[j] then
                        if j == 1 then
                            button.azerite[j] = button.azerite:CreateTexture("$parent." .. j, "OVERLAY", nil, button.azerite)
                            button.azerite[j]:SetPoint("LEFT", button.azerite, "LEFT")
                            button.azerite[j]:SetSize(16, 16)
                            button.azerite[j]:SetTexture(icon)
                            button.azerite[j].overlay = button.azerite:CreateTexture(nil, "ARTWORK", nil, 7)
                            button.azerite[j].overlay:SetTexture([[Interface\TargetingFrame\UI-TargetingFrame-Stealable]])
                            button.azerite[j].overlay:SetVertexColor(0.7, 0.7, 0.7, 0.8)
                            button.azerite[j].overlay:SetPoint("TOPLEFT", button.azerite[j], -3, 3)
                            button.azerite[j].overlay:SetPoint("BOTTOMRIGHT", button.azerite[j], 3, -3)
                            button.azerite[j].overlay:SetBlendMode("ADD")
                        else
                            button.azerite[j] = button.azerite:CreateTexture("$parent." .. j, "OVERLAY", nil, button.azerite)
                            if frame == "bag" then
                                button.azerite[j]:SetPoint("BOTTOMLEFT", button.azerite[j - 1], "BOTTOMRIGHT", 0, 0)
                            else
                                button.azerite[j]:SetPoint("BOTTOMLEFT", button.azerite[j - 1], "BOTTOMRIGHT", 3, 0)
                            end
                            button.azerite[j]:SetSize(16, 16)
                            button.azerite[j]:SetTexture(icon)
                            -- Border
                            button.azerite[j].overlay = button.azerite:CreateTexture(nil, "ARTWORK", nil, 7)
                            button.azerite[j].overlay:SetTexture([[Interface\TargetingFrame\UI-TargetingFrame-Stealable]])
                            button.azerite[j].overlay:SetVertexColor(0.7, 0.7, 0.7, 0.8)
                            button.azerite[j].overlay:SetPoint("TOPLEFT", button.azerite[j], -3, 3)
                            button.azerite[j].overlay:SetPoint("BOTTOMRIGHT", button.azerite[j], 3, -3)
                            button.azerite[j].overlay:SetBlendMode("ADD")
                        end
                    else
                        button.azerite[j]:Show()
                        button.azerite[j].overlay:Show()
                        button.azerite[j]:SetTexture(icon)
                    end
                end
            end
        end
        if noneSelected then button.azerite:Hide() end
    else
        if button.azerite then
            button.azerite:Hide()
        end
    end
end

function LAT:SetContainerAzerite(button)
    local name = button:GetName()
    for i = 1, button.size or 1 do
        local button1 = button.size and _G[name .. "Item" .. i] or button
        local button2 = button.size and button or button:GetParent()
        local link = T.GetContainerItemLink(button2:GetID(), button1:GetID())
        
        if not button1 then
            return
        end
        
        if link then
            local azeriteEmpoweredItemLocation = ItemLocation:CreateFromBagAndSlot(button2:GetID(), button1:GetID())
            
            self:CreateAzeriteIcons(button1, azeriteEmpoweredItemLocation)
        else
            if button1.azerite then
                button1.azerite:Hide()
            end
        end
    end
end

function LAT:SetElvUIBagsAzerite()
    if not B.BagFrames then return end
    for _, bagFrame in T.pairs(B.BagFrames) do
        for _, bagID in T.ipairs(bagFrame.BagIDs) do
            for slotID = 1, T.GetContainerNumSlots(bagID) do
                local slot = bagFrame.Bags[bagID][slotID]
                local clink = T.GetContainerItemLink(bagID, slotID)
                if slot.azerite then
                    slot.azerite:Hide()
                end
                if clink then
                    if T.C_AzeriteEmpoweredItem_IsAzeriteEmpoweredItemByID(clink) then
                        local azeriteEmpoweredItemLocation = ItemLocation:CreateFromBagAndSlot(bagID, slotID)
                        LAT:CreateAzeriteIcons(slot, azeriteEmpoweredItemLocation, "bag")
                    end
                end
            end
        end
    end
end

function LAT:SetPaperDollAzerite(button)
    local id = button:GetID()
    
    if (id == 1 or id == 3 or id == 5) and T.GetInventoryItemTexture("player", id) then
        local azeriteEmpoweredItemLocation = ItemLocation:CreateFromEquipmentSlot(id)
        self:CreateAzeriteIcons(button, azeriteEmpoweredItemLocation, "crc")
    else
        if button.azerite then
            button.azerite:Hide()
        end
    end
end

function LAT:SetFlyoutAzerite(self)
	if self.azerite then
		self.azerite:Hide()
	end

	if ( not self.location ) then
		return;
	end

	if ( self.location >= EQUIPMENTFLYOUT_FIRST_SPECIAL_LOCATION ) then
		return;
	end

    local _, _, _, _, slot, bag = EquipmentManager_UnpackLocation(self.location)
    local azeriteEmpoweredItemLocation = ItemLocation:CreateFromBagAndSlot(bag, slot)
    local button = self

    if not bag then return end

    if not button then
        return
    end
    LAT:CreateAzeriteIcons(button, azeriteEmpoweredItemLocation)
end

function LAT:ContainerFrame_Update(frame)
    self:SetContainerAzerite(frame)
end

function LAT:PaperDollItemSlotButton_Update(frame)
    self:SetPaperDollAzerite(frame)
end

function LAT:EquipmentFlyout_DisplayButton(frame)
	self:SetFlyoutAzerite(frame)
end

function LAT:OnTooltipSetItem(frame)
    self:BuildTooltip(frame)
end

function LAT:Initialize()
    if E.db.lui.modules.misc.azerite.azeriteTooltip["characterIcon"] then
        self:SecureHook("PaperDollItemSlotButton_Update")
        self:SecureHook("EquipmentFlyout_DisplayButton")
    end
    
    if E.db.lui.modules.misc.azerite.azeriteTooltip["bagIcon"] then
        self:RegisterEvent("PLAYER_ENTERING_WORLD", "SetElvUIBagsAzerite")
        self:RegisterEvent("BAG_UPDATE", function()
            E:Delay(.1, LAT.SetElvUIBagsAzerite)
        end)
        self:SecureHook("ContainerFrame_Update")
    end
    
    self:SecureHookScript(GameTooltip, "OnTooltipSetItem", "OnTooltipSetItem")
    self:SecureHookScript(ItemRefTooltip, "OnTooltipSetItem", "OnTooltipSetItem")
    self:SecureHookScript(ShoppingTooltip1, "OnTooltipSetItem", "OnTooltipSetItem")
    self:SecureHookScript(EmbeddedItemTooltip, "OnTooltipSetItem", "OnTooltipSetItem")
end

local function InitializeCallback()
    if not E.db.lui.modules.misc.azerite.azeriteTooltip["enable"] then return end
    LAT:Initialize()
end

E:RegisterModule(LAT:GetName(), InitializeCallback)
