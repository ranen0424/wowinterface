local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "actionbars", "microBar", "enable") then return end
local LMB = E:NewModule("LuiMicroBar", "AceTimer-3.0", "AceEvent-3.0")
local DD = E:GetModule("LuiDropdown")
local DT = E:GetModule('DataTexts')

local _G = _G
local BOOKTYPE_SPELL = BOOKTYPE_SPELL
local TIMEMANAGER_TICKER_24HOUR = TIMEMANAGER_TICKER_24HOUR
local TIMEMANAGER_TICKER_12HOUR = TIMEMANAGER_TICKER_12HOUR

local microBar
local faction
local r, g, b

LMB.MainMenu = {}
LMB.SecondaryMenu = {}
LMB.Hearthstones = {
    {6948}, -- Hearthstone
    {93672, nil, true}, -- Dark Portal
    {54452, nil, true}, -- Ethereal Portal
    {142542, nil, true}, -- Tome of Town Portal (Diablo Event)
    {64488, nil, true}, -- The Innkeeper's Daughter
    {163045, nil, true}, -- Hallow HS
    {162973, nil, true}, -- Winter HS
    {165669, nil, true}, -- Lunar HS
    {165670, nil, true}, -- Love HS
    {165802, nil, true}, -- Fuhuo HS
    {166746, nil, true},
    {166747, nil, true},
}

LMB.PortItems = {
    {140192}, --Dalaran Hearthstone
    {110560}, --Garrison Hearthstone
    {128353}, --Admiral's Compass
    {37863}, --Grim Guzzler
    {52251}, --Jaina's Locket
    {58487}, --Potion of Deepholm
    {43824, nil, true}, --The Schools of Arcane Magic - Mastery
    {64457}, --The Last Relic of Argus
    {141605}, --Flight Masters's Whistle
    {128502}, --Hunter's Seeking Crystal
    {128503}, --Master Hunter's Seeking Crystal
    {140324, nil, true}, --Mobile Telemancy Beacon
    {129276}, --Beginner's Guide to Dimensional Rifting
    {140493}, --Adept's Guide to Dimensional Rifting
    {95567, nil, true}, --Kirin Tor beakon
    {95568, nil, true}, --Sunreaver beakon
    {87548}, --Pandaria Arch
    {139590}, --Scroll of Teleport: Ravenholdt
}

LMB.Spells = {
    ["DEATHKNIGHT"] = {
        [1] = {text = GetSpellInfo(50977), icon = LUI:GetIconFromID("spell", 50977), secure = {buttonType = "spell", ID = 50977}, UseTooltip = true},
    },
    ["DEMONHUNTER"] = {},
    ["DRUID"] = {
        [1] = {text = GetSpellInfo(18960), icon = LUI:GetIconFromID("spell", 18960), secure = {buttonType = "spell", ID = 18960}, UseTooltip = true}, --Moonglade
        [2] = {text = GetSpellInfo(147420), icon = LUI:GetIconFromID("spell", 147420), secure = {buttonType = "spell", ID = 147420}, UseTooltip = true}, --One With Nature
        [3] = {text = GetSpellInfo(193753), icon = LUI:GetIconFromID("spell", 193753), secure = {buttonType = "spell", ID = 193753}, UseTooltip = true}, --Druid ClassHall
    },
    ["HUNTER"] = {},
    ["MAGE"] = {
        [1] = {text = GetSpellInfo(193759), icon = LUI:GetIconFromID("spell", 193759), secure = {buttonType = "spell", ID = 193759}, UseTooltip = true}, --Guardian place
    },
    ["MONK"] = {
        [1] = {text = GetSpellInfo(126892), icon = LUI:GetIconFromID("spell", 126892), secure = {buttonType = "spell", ID = 126892}, UseTooltip = true}, -- Zen Pilgrimage
        [2] = {text = GetSpellInfo(126895), icon = LUI:GetIconFromID("spell", 126895), secure = {buttonType = "spell", ID = 126895}, UseTooltip = true}, -- Zen Pilgrimage: Return
    },
    ["PALADIN"] = {},
    ["PRIEST"] = {},
    ["ROGUE"] = {},
    ["SHAMAN"] = {
        [1] = {text = GetSpellInfo(556), icon = LUI:GetIconFromID("spell", 556), secure = {buttonType = "spell", ID = 556}, UseTooltip = true},
    },
    ["WARLOCK"] = {},
    ["WARRIOR"] = {},
    ["DarkIronDwarf"] = {
        [1] = {text = GetSpellInfo(265225), icon = LUI:GetIconFromID("spell", 265225), secure = {buttonType = "spell", ID = 265225}, UseTooltip = true}, -- Mole Machine (Dark Iron Dwarfs)
    },
    ["teleports"] = {
        ["Horde"] = {
            [1] = {text = GetSpellInfo(3563), icon = LUI:GetIconFromID("spell", 3563), secure = {buttonType = "spell", ID = 3563}, UseTooltip = true}, -- TP:Undercity
            [2] = {text = GetSpellInfo(3566), icon = LUI:GetIconFromID("spell", 3566), secure = {buttonType = "spell", ID = 3566}, UseTooltip = true}, -- TP:Thunder Bluff
            [3] = {text = GetSpellInfo(3567), icon = LUI:GetIconFromID("spell", 3567), secure = {buttonType = "spell", ID = 3567}, UseTooltip = true}, -- TP:Orgrimmar
            [4] = {text = GetSpellInfo(32272), icon = LUI:GetIconFromID("spell", 32272), secure = {buttonType = "spell", ID = 32272}, UseTooltip = true}, -- TP:Silvermoon
            [5] = {text = GetSpellInfo(49358), icon = LUI:GetIconFromID("spell", 49358), secure = {buttonType = "spell", ID = 49358}, UseTooltip = true}, -- TP:Stonard
            [6] = {text = GetSpellInfo(35715), icon = LUI:GetIconFromID("spell", 35715), secure = {buttonType = "spell", ID = 35715}, UseTooltip = true}, -- TP:Shattrath
            [7] = {text = GetSpellInfo(53140), icon = LUI:GetIconFromID("spell", 53140), secure = {buttonType = "spell", ID = 53140}, UseTooltip = true}, -- TP:Dalaran - Northrend
            [8] = {text = GetSpellInfo(88344), icon = LUI:GetIconFromID("spell", 88344), secure = {buttonType = "spell", ID = 88344}, UseTooltip = true}, -- TP:Tol Barad
            [9] = {text = GetSpellInfo(132627), icon = LUI:GetIconFromID("spell", 132627), secure = {buttonType = "spell", ID = 132627}, UseTooltip = true}, -- TP:Vale of Eternal Blossoms
            [10] = {text = GetSpellInfo(120145), icon = LUI:GetIconFromID("spell", 120145), secure = {buttonType = "spell", ID = 120145}, UseTooltip = true}, -- TP:Ancient Dalaran
            [11] = {text = GetSpellInfo(176242), icon = LUI:GetIconFromID("spell", 176242), secure = {buttonType = "spell", ID = 176242}, UseTooltip = true}, -- TP:Warspear
            [12] = {text = GetSpellInfo(224869), icon = LUI:GetIconFromID("spell", 224869), secure = {buttonType = "spell", ID = 224869}, UseTooltip = true}, -- TP:Dalaran - BI
            [13] = {text = GetSpellInfo(281404), icon = LUI:GetIconFromID("spell", 281404), secure = {buttonType = "spell", ID = 281404}, UseTooltip = true}, -- TP:Dazar'alor
        },
        ["Alliance"] = {
            [1] = {text = GetSpellInfo(3561), icon = LUI:GetIconFromID("spell", 3561), secure = {buttonType = "spell", ID = 3561}, UseTooltip = true}, -- TP:Stormwind
            [2] = {text = GetSpellInfo(3562), icon = LUI:GetIconFromID("spell", 3562), secure = {buttonType = "spell", ID = 3562}, UseTooltip = true}, -- TP:Ironforge
            [3] = {text = GetSpellInfo(3565), icon = LUI:GetIconFromID("spell", 3565), secure = {buttonType = "spell", ID = 3565}, UseTooltip = true}, -- TP:Darnassus
            [4] = {text = GetSpellInfo(32271), icon = LUI:GetIconFromID("spell", 32271), secure = {buttonType = "spell", ID = 32271}, UseTooltip = true}, -- TP:Exodar
            [5] = {text = GetSpellInfo(49359), icon = LUI:GetIconFromID("spell", 49359), secure = {buttonType = "spell", ID = 49359}, UseTooltip = true}, -- TP:Theramore
            [6] = {text = GetSpellInfo(33690), icon = LUI:GetIconFromID("spell", 33690), secure = {buttonType = "spell", ID = 33690}, UseTooltip = true}, -- TP:Shattrath
            [7] = {text = GetSpellInfo(53140), icon = LUI:GetIconFromID("spell", 53140), secure = {buttonType = "spell", ID = 53140}, UseTooltip = true}, -- TP:Dalaran - Northrend
            [8] = {text = GetSpellInfo(88342), icon = LUI:GetIconFromID("spell", 88342), secure = {buttonType = "spell", ID = 88342}, UseTooltip = true}, -- TP:Tol Barad
            [9] = {text = GetSpellInfo(132621), icon = LUI:GetIconFromID("spell", 132621), secure = {buttonType = "spell", ID = 132621}, UseTooltip = true}, -- TP:Vale of Eternal Blossoms
            [10] = {text = GetSpellInfo(120145), icon = LUI:GetIconFromID("spell", 120145), secure = {buttonType = "spell", ID = 120145}, UseTooltip = true}, -- TP:Ancient Dalaran
            [11] = {text = GetSpellInfo(176248), icon = LUI:GetIconFromID("spell", 176248), secure = {buttonType = "spell", ID = 176248}, UseTooltip = true}, -- TP:StormShield
            [12] = {text = GetSpellInfo(224869), icon = LUI:GetIconFromID("spell", 224869), secure = {buttonType = "spell", ID = 224869}, UseTooltip = true}, -- TP:Dalaran - BI
            [13] = {text = GetSpellInfo(281403), icon = LUI:GetIconFromID("spell", 281403), secure = {buttonType = "spell", ID = 281403}, UseTooltip = true}, -- TP:Boralus
        },
    },
    ["portals"] = {
        ["Horde"] = {
            [1] = {text = GetSpellInfo(11418), icon = LUI:GetIconFromID("spell", 11418), secure = {buttonType = "spell", ID = 11418}, UseTooltip = true}, -- P:Undercity
            [2] = {text = GetSpellInfo(11420), icon = LUI:GetIconFromID("spell", 11420), secure = {buttonType = "spell", ID = 11420}, UseTooltip = true}, -- P:Thunder Bluff
            [3] = {text = GetSpellInfo(11417), icon = LUI:GetIconFromID("spell", 11417), secure = {buttonType = "spell", ID = 11417}, UseTooltip = true}, -- P:Orgrimmar
            [4] = {text = GetSpellInfo(32267), icon = LUI:GetIconFromID("spell", 32267), secure = {buttonType = "spell", ID = 32267}, UseTooltip = true}, -- P:Silvermoon
            [5] = {text = GetSpellInfo(49361), icon = LUI:GetIconFromID("spell", 49361), secure = {buttonType = "spell", ID = 49361}, UseTooltip = true}, -- P:Stonard
            [6] = {text = GetSpellInfo(35717), icon = LUI:GetIconFromID("spell", 35717), secure = {buttonType = "spell", ID = 35717}, UseTooltip = true}, -- P:Shattrath
            [7] = {text = GetSpellInfo(53142), icon = LUI:GetIconFromID("spell", 53142), secure = {buttonType = "spell", ID = 53142}, UseTooltip = true}, -- P:Dalaran - Northred
            [8] = {text = GetSpellInfo(88346), icon = LUI:GetIconFromID("spell", 88346), secure = {buttonType = "spell", ID = 88346}, UseTooltip = true}, -- P:Tol Barad
            [9] = {text = GetSpellInfo(120146), icon = LUI:GetIconFromID("spell", 120146), secure = {buttonType = "spell", ID = 120146}, UseTooltip = true}, -- P:Ancient Dalaran
            [10] = {text = GetSpellInfo(132626), icon = LUI:GetIconFromID("spell", 132626), secure = {buttonType = "spell", ID = 132626}, UseTooltip = true}, -- P:Vale of Eternal Blossoms
            [11] = {text = GetSpellInfo(176244), icon = LUI:GetIconFromID("spell", 176244), secure = {buttonType = "spell", ID = 176244}, UseTooltip = true}, -- P:Warspear
            [12] = {text = GetSpellInfo(224871), icon = LUI:GetIconFromID("spell", 224871), secure = {buttonType = "spell", ID = 224871}, UseTooltip = true}, -- P:Dalaran - BI
            [13] = {text = GetSpellInfo(281402), icon = LUI:GetIconFromID("spell", 281402), secure = {buttonType = "spell", ID = 281402}, UseTooltip = true}, -- P:Dazar'alor
        },
        ["Alliance"] = {
            [1] = {text = GetSpellInfo(10059), icon = LUI:GetIconFromID("spell", 10059), secure = {buttonType = "spell", ID = 10059}, UseTooltip = true}, -- P:Stormwind
            [2] = {text = GetSpellInfo(11416), icon = LUI:GetIconFromID("spell", 11416), secure = {buttonType = "spell", ID = 11416}, UseTooltip = true}, -- P:Ironforge
            [3] = {text = GetSpellInfo(11419), icon = LUI:GetIconFromID("spell", 11419), secure = {buttonType = "spell", ID = 11419}, UseTooltip = true}, -- P:Darnassus
            [4] = {text = GetSpellInfo(32266), icon = LUI:GetIconFromID("spell", 32266), secure = {buttonType = "spell", ID = 32266}, UseTooltip = true}, -- P:Exodar
            [5] = {text = GetSpellInfo(49360), icon = LUI:GetIconFromID("spell", 49360), secure = {buttonType = "spell", ID = 49360}, UseTooltip = true}, -- P:Theramore
            [6] = {text = GetSpellInfo(33691), icon = LUI:GetIconFromID("spell", 33691), secure = {buttonType = "spell", ID = 33691}, UseTooltip = true}, -- P:Shattrath
            [7] = {text = GetSpellInfo(53142), icon = LUI:GetIconFromID("spell", 53142), secure = {buttonType = "spell", ID = 53142}, UseTooltip = true}, -- P:Dalaran - Northred
            [8] = {text = GetSpellInfo(88345), icon = LUI:GetIconFromID("spell", 88345), secure = {buttonType = "spell", ID = 88345}, UseTooltip = true}, -- P:Tol Barad
            [9] = {text = GetSpellInfo(120146), icon = LUI:GetIconFromID("spell", 120146), secure = {buttonType = "spell", ID = 120146}, UseTooltip = true}, -- P:Ancient Dalaran
            [10] = {text = GetSpellInfo(132620), icon = LUI:GetIconFromID("spell", 132620), secure = {buttonType = "spell", ID = 132620}, UseTooltip = true}, -- P:Vale of Eternal Blossoms
            [11] = {text = GetSpellInfo(176246), icon = LUI:GetIconFromID("spell", 176246), secure = {buttonType = "spell", ID = 176246}, UseTooltip = true}, -- P:StormShield
            [12] = {text = GetSpellInfo(224871), icon = LUI:GetIconFromID("spell", 224871), secure = {buttonType = "spell", ID = 224871}, UseTooltip = true}, -- P:Dalaran - BI
            [13] = {text = GetSpellInfo(281400), icon = LUI:GetIconFromID("spell", 281400), secure = {buttonType = "spell", ID = 281400}, UseTooltip = true}, -- P:Boralus
        },
    },
    ["challenge"] = {
        [1] = {text = GetSpellInfo(131204), icon = LUI:GetIconFromID("spell", 131204), secure = {buttonType = "spell", ID = 131204}, UseTooltip = true}, -- Jade serpent
        [2] = {text = GetSpellInfo(131205), icon = LUI:GetIconFromID("spell", 131205), secure = {buttonType = "spell", ID = 131205}, UseTooltip = true}, -- Brew
        [3] = {text = GetSpellInfo(131206), icon = LUI:GetIconFromID("spell", 131206), secure = {buttonType = "spell", ID = 131206}, UseTooltip = true}, -- Shado-pan
        [4] = {text = GetSpellInfo(131222), icon = LUI:GetIconFromID("spell", 131222), secure = {buttonType = "spell", ID = 131222}, UseTooltip = true}, -- Mogu
        [5] = {text = GetSpellInfo(131225), icon = LUI:GetIconFromID("spell", 131225), secure = {buttonType = "spell", ID = 131225}, UseTooltip = true}, -- Setting sun
        [6] = {text = GetSpellInfo(131231), icon = LUI:GetIconFromID("spell", 131231), secure = {buttonType = "spell", ID = 131231}, UseTooltip = true}, -- Scarlet blade
        [7] = {text = GetSpellInfo(131229), icon = LUI:GetIconFromID("spell", 131229), secure = {buttonType = "spell", ID = 131229}, UseTooltip = true}, -- scarlet mitre
        [8] = {text = GetSpellInfo(131232), icon = LUI:GetIconFromID("spell", 131232), secure = {buttonType = "spell", ID = 131232}, UseTooltip = true}, -- Scholo
        [9] = {text = GetSpellInfo(131228), icon = LUI:GetIconFromID("spell", 131228), secure = {buttonType = "spell", ID = 131228}, UseTooltip = true}, -- Black ox
        [10] = {text = GetSpellInfo(159895), icon = LUI:GetIconFromID("spell", 159895), secure = {buttonType = "spell", ID = 159895}, UseTooltip = true}, -- bloodmaul
        [11] = {text = GetSpellInfo(159902), icon = LUI:GetIconFromID("spell", 159902), secure = {buttonType = "spell", ID = 159902}, UseTooltip = true}, -- burning mountain
        [12] = {text = GetSpellInfo(159899), icon = LUI:GetIconFromID("spell", 159899), secure = {buttonType = "spell", ID = 159899}, UseTooltip = true}, -- crescent moon
        [13] = {text = GetSpellInfo(159900), icon = LUI:GetIconFromID("spell", 159900), secure = {buttonType = "spell", ID = 159900}, UseTooltip = true}, -- dark rail
        [14] = {text = GetSpellInfo(159896), icon = LUI:GetIconFromID("spell", 159896), secure = {buttonType = "spell", ID = 159896}, UseTooltip = true}, -- iron prow
        [15] = {text = GetSpellInfo(159898), icon = LUI:GetIconFromID("spell", 159898), secure = {buttonType = "spell", ID = 159898}, UseTooltip = true}, -- Skies
        [16] = {text = GetSpellInfo(159901), icon = LUI:GetIconFromID("spell", 159901), secure = {buttonType = "spell", ID = 159901}, UseTooltip = true}, -- Verdant
        [17] = {text = GetSpellInfo(159897), icon = LUI:GetIconFromID("spell", 159897), secure = {buttonType = "spell", ID = 159897}, UseTooltip = true}, -- Vigilant
    },
}

local ClassRoleTank, ClassRoleHealer, ClassRoleDamager
LMB.ClassRoles = {
    ["DEATHKNIGHT"] = {
        ["TANK"] = true,
        ["HEALER"] = false,
        ["DAMAGER"] = true,
    },
    ["DEMONHUNTER"] = {
        ["TANK"] = true,
        ["HEALER"] = false,
        ["DAMAGER"] = true,
    },
    ["DRUID"] = {
        ["TANK"] = true,
        ["HEALER"] = true,
        ["DAMAGER"] = true,
    },
    ["HUNTER"] = {
        ["TANK"] = false,
        ["HEALER"] = false,
        ["DAMAGER"] = true,
    },
    ["MAGE"] = {
        ["TANK"] = false,
        ["HEALER"] = false,
        ["DAMAGER"] = true,
    },
    ["MONK"] = {
        ["TANK"] = true,
        ["HEALER"] = true,
        ["DAMAGER"] = true,
    },
    ["PALADIN"] = {
        ["TANK"] = true,
        ["HEALER"] = true,
        ["DAMAGER"] = true,
    },
    ["PRIEST"] = {
        ["TANK"] = false,
        ["HEALER"] = true,
        ["DAMAGER"] = true,
    },
    ["ROGUE"] = {
        ["TANK"] = false,
        ["HEALER"] = false,
        ["DAMAGER"] = true,
    },
    ["SHAMAN"] = {
        ["TANK"] = false,
        ["HEALER"] = true,
        ["DAMAGER"] = true,
    },
    ["WARLOCK"] = {
        ["TANK"] = false,
        ["HEALER"] = false,
        ["DAMAGER"] = true,
    },
    ["WARRIOR"] = {
        ["TANK"] = true,
        ["HEALER"] = false,
        ["DAMAGER"] = true,
    },
}

local function DungeonSorter()
    LMB.dungeonsbyID = {}
    LMB.sortedDungeonsID = {}
    local myLevel = T.UnitLevel("player")
    local myClass = E.myclass
    for k, v in T.pairs(LMB.ClassRoles) do
        if myClass == k then
            for k1, v1 in T.pairs(LMB.ClassRoles[k]) do
                if k1 == "TANK" then
                    ClassRoleTank = v1
                elseif k1 == "HEALER" then
                    ClassRoleHealer = v1
                elseif k1 == "DAMAGER" then
                    ClassRoleDamager = v1
                end
            end
        end
    end
    for i = 1, GetNumRandomDungeons() do
        local dgInfo = {T.GetLFGRandomDungeonInfo(i)}
        local id, name, dgtype, mapName = dgInfo[1], dgInfo[2], dgInfo[4], dgInfo[20]
        local _, _, _, minLevel, maxLevel, _, _, _, expansionLevel, _, _, difficulty, _, _, isHoliday, _, _, isTimewalk = T.GetLFGDungeonInfo(id)
        local key = {id = id, name = name, mapName = name, dgtype = dgtype, difficulty = difficulty, timewalking = isTimewalk}
        if (myLevel >= minLevel and myLevel <= maxLevel and EXPANSION_LEVEL >= expansionLevel and (difficulty == 2 or isTimewalk)) then
            T.table_insert(LMB.dungeonsbyID, key)
        end
    end
    for i = 1, T.GetNumRFDungeons() do
        local dgInfo = {T.GetRFDungeonInfo(i)}
        local id, name, dgtype, mapName = dgInfo[1], dgInfo[2], dgInfo[4], dgInfo[20]
        local _, _, hideIfUnmet = T.IsLFGDungeonJoinable(id)
        local _, typeID, subtypeID, minLevel, maxLevel, _, _, _, expansionLevel, _, _, difficulty = T.GetLFGDungeonInfo(id)
        local key = {id = id, name = name, mapName = mapName, dgtype = dgtype, difficulty = difficulty}
        if (myLevel >= minLevel and myLevel <= maxLevel and EXPANSION_LEVEL >= expansionLevel and not hideIfUnmet) then
            T.table_insert(LMB.dungeonsbyID, key)
        end
    end
    while #LMB.dungeonsbyID > #LMB.sortedDungeonsID do
        local tmp, key, j = 0
        for i = 1, #LMB.dungeonsbyID do
            if (LMB.dungeonsbyID[i].id > tmp) then
                key = {id = LMB.dungeonsbyID[i].id, name = LMB.dungeonsbyID[i].name, mapName = LMB.dungeonsbyID[i].mapName, dgtype = LMB.dungeonsbyID[i].dgtype, difficulty = LMB.dungeonsbyID[i].difficulty, timewalking = LMB.dungeonsbyID[i].timewalking}
                tmp = LMB.dungeonsbyID[i].id
                j = i
            end
            if #LMB.dungeonsbyID == i then
                T.table_insert(LMB.sortedDungeonsID, 1, key)
                LMB.dungeonsbyID[j].id = 0
            end
        end
    end
    for i = 1, #LMB.sortedDungeonsID do
        if (LMB.sortedDungeonsID[i].difficulty == 24 or LMB.sortedDungeonsID[i].timewalking) then
            LMB.sortedDungeonsID[i].name = ""
        end
        if (LMB.sortedDungeonsID[i].difficulty == 2 and not LMB.sortedDungeonsID[i].timewalking) then
            LMB.sortedDungeonsID[i].name = ""
        end
    end
end

local function GetDirection()
    local y = _G["LuiMicroBar"]:GetCenter()
    local screenHeight = T.GetScreenHeight()
    local anchor, point = "TOP", "BOTTOM"
    if y and y < (screenHeight / 2) then
        anchor = "BOTTOM"
        point = "TOP"
    end
    return anchor, point
end

function LMB:PopulateItems()
    local noItem = false
    
    for index, data in T.pairs(LMB.Hearthstones) do
        if select(2, T.GetItemInfo(data[1])) == nil then noItem = true end
    end
    for index, data in T.pairs(LMB.PortItems) do
        if select(2, T.GetItemInfo(data[1])) == nil then noItem = true end
    end
    
    if noItem then
        E:Delay(2, LMB.PopulateItems)
    else
        for index, data in T.pairs(LMB.Hearthstones) do
            local id, name, toy = data[1], data[2], data[3]
            LMB.Hearthstones[index] = {text = name or T.GetItemInfo(id), icon = LUI:GetIconFromID("item", id), secure = {buttonType = "item", ID = id, isToy = toy}, UseTooltip = true, }
        end
        for index, data in T.pairs(LMB.PortItems) do
            local id, name, toy = data[1], data[2], data[3]
            LMB.PortItems[index] = {text = name or T.GetItemInfo(id), icon = LUI:GetIconFromID("item", id), secure = {buttonType = "item", ID = id, isToy = toy}, UseTooltip = true, }
        end
    end
end

function LMB:CreateRightClickMenu()
    LMB.Menu = T.CreateFrame("Frame", "LUI_MicroBar_RightClickMenu", E.UIParent)
    LMB.Menu:SetTemplate("Transparent", true)
    DD:RegisterMenu(LMB.Menu)
    LMB.Menu:SetScript("OnHide", function()T.table_wipe(LMB.MainMenu) end)
    
    LMB.LfrMenu = T.CreateFrame("Frame", "LUI_MicroBar_RightClickLfrMenu", E.UIParent)
    LMB.LfrMenu:SetTemplate("Transparent", true)
    DD:RegisterMenu(LMB.LfrMenu)
    LMB.LfrMenu:SetScript("OnHide", function()T.table_wipe(LMB.SecondaryMenu) end)
end

function LMB:SpellList(list, dropdown, check)
    for i = 1, #list do
        local tmp = {}
        local data = list[i]
        if T.IsSpellKnown(data.secure.ID) then
            if check then
                return true
            else
                if data.text then
                    local cd = DD:GetCooldown("Spell", data.secure.ID)
                    if cd or (T.tonumber(cd) and T.tonumber(cd) > 1.5) then
                        E:CopyTable(tmp, data)
                        tmp.text = "|cff636363" .. tmp.text .. "|r" .. " (" .. cd .. ")"
                        T.table_insert(dropdown, tmp)
                    else
                        T.table_insert(dropdown, data)
                    end
                end
            end
        end
    end
end

function LMB:ItemList(check)
    T.table_insert(LMB.MainMenu, {text = L["Hearthstone Location"] .. ": " .. T.GetBindLocation(), title = true, nohighlight = true})
    for i = 1, #LMB.Hearthstones do
        local tmp = {}
        local data = LMB.Hearthstones[i]
        local ID, isToy = data.secure.ID, data.secure.isToy
        if (not isToy and (LUI:BagSearch(ID) and T.IsUsableItem(ID))) or (isToy and (T.PlayerHasToy(ID) and T.C_ToyBox_IsToyUsable(ID))) then
            if data.text then
                local cd = DD:GetCooldown("Item", 6948)
                E:CopyTable(tmp, data)
                if cd or (T.tonumber(cd) and T.tonumber(cd) > 2) then
                    tmp.text = "|cff636363" .. tmp.text .. "|r" .. " (" .. cd .. ")"
                    T.table_insert(LMB.MainMenu, tmp)
                else
                    T.table_insert(LMB.MainMenu, data)
                end
            end
        end
    end
    
    T.table_insert(LMB.MainMenu, {text = ITEMS .. ": ", title = true, nohighlight = true})
    for i = 1, #LMB.PortItems do
        local tmp = {}
        local data = LMB.PortItems[i]
        local ID, isToy = data.secure.ID, data.secure.isToy
        if (not isToy and (LUI:BagSearch(ID) and T.IsUsableItem(ID))) or (isToy and (T.PlayerHasToy(ID) and T.C_ToyBox_IsToyUsable(ID))) then
            if data.text then
                local cd = DD:GetCooldown("Item", ID)
                E:CopyTable(tmp, data)
                if cd or (T.tonumber(cd) and T.tonumber(cd) > 2) then
                    tmp.text = "|cff636363" .. tmp.text .. "|r" .. " (" .. cd .. ")"
                    T.table_insert(LMB.MainMenu, tmp)
                else
                    T.table_insert(LMB.MainMenu, data)
                end
            end
        end
    end
    
    if LMB:SpellList(LMB.Spells[E.myclass], nil, true) or LMB:SpellList(LMB.Spells.challenge, nil, true) or E.myclass == "MAGE" or E.myrace == "DarkIronDwarf" then
        T.table_insert(LMB.MainMenu, {text = SPELLS .. ":", title = true, nohighlight = true})
        LMB:SpellList(LMB.Spells[E.myclass], LMB.MainMenu)
        if LMB:SpellList(LMB.Spells.challenge, nil, true) then
            T.table_insert(LMB.MainMenu, {text = CHALLENGE_MODE .. ":", title = true, nohighlight = true})
            LMB:SpellList(LMB.Spells.challenge, LMB.MainMenu)
        end
        if E.myclass == "MAGE" then
            T.table_insert(LMB.MainMenu, {text = L["Teleports"] .. ":", title = true, nohighlight = true})
            LMB:SpellList(LMB.Spells["teleports"][faction], LMB.MainMenu)
            
            T.table_insert(LMB.MainMenu, {text = L["Portals"] .. ":", title = true, nohighlight = true})
            LMB:SpellList(LMB.Spells["portals"][faction], LMB.MainMenu)
        end
        if E.myrace == "DarkIronDwarf" then
            LMB:SpellList(LMB.Spells[E.myrace], LMB.MainMenu)
        end
    end
    
    return true
end

function LMB:LfrList(check)
    T.table_insert(LMB.SecondaryMenu, {text = L["LFG_ROLE_SHORTAGE_REWARDS"], title = true, nohighlight = true})
    local tmpmapName
    for i = 1, #LMB.sortedDungeonsID do
        local data = LMB.sortedDungeonsID[i]
        local _, tank, healer, dps = T.GetLFGRoleShortageRewards(data.id, LFG_ROLE_SHORTAGE_RARE)
        if ((tank and ClassRoleTank) or (healer and ClassRoleHealer) or (dps and ClassRoleDamager)) then
            local tmptank = {}
            local tmphealer = {}
            local tmpdps = {}
            local completed = false
            data.texttemp = data.name
            completed = T.GetLFGDungeonRewards(data.id)
            if completed then
                data.texttemp = T.string_format("|cff9482c9%s|r", data.texttemp)
            end
            if tmpmapName ~= data.mapName then
                T.table_insert(LMB.SecondaryMenu, {text = data.mapName, title = true, nohighlight = true})
                tmpmapName = data.mapName
            end
            
            data.func = function()
                T.ClearAllLFGDungeons(LE_LFG_CATEGORY_LFR)
                T.ClearAllLFGDungeons(LE_LFG_CATEGORY_LFD)
                T.ClearAllLFGDungeons(LE_LFG_CATEGORY_RF)
                T.SetLFGRoles(true, tank, healer, dps)
                T.SetLFGDungeon(data.dgtype, data.id)
                T.JoinLFG(data.dgtype)
            end
            
            if tank and ClassRoleTank then
                E:CopyTable(tmptank, data)
                tmptank.icon = LUI.rolePaths[E.db.lui.modules.unitframes.icons["roleIcons"]]["TANK"]
                tmptank.text = L["[TANK]  "] .. tmptank.texttemp
                T.table_insert(LMB.SecondaryMenu, tmptank)
            end
            if healer and ClassRoleHealer then
                E:CopyTable(tmphealer, data)
                tmphealer.icon = LUI.rolePaths[E.db.lui.modules.unitframes.icons["roleIcons"]]["HEALER"]
                tmphealer.text = L["[HEALER]  "] .. tmphealer.texttemp
                T.table_insert(LMB.SecondaryMenu, tmphealer)
            end
            if dps and ClassRoleDamager then
                E:CopyTable(tmpdps, data)
                tmpdps.icon = LUI.rolePaths[E.db.lui.modules.unitframes.icons["roleIcons"]]["DAMAGER"]
                tmpdps.text = L["[DAMAGER]  "] .. tmpdps.texttemp
                T.table_insert(LMB.SecondaryMenu, tmpdps)
            end
        end
    end
    return true
end

function LMB:PopulateDropdown()
    if LMB.Menu:IsShown() then T.ToggleFrame(LMB.Menu) return end
    T.table_wipe(LMB.MainMenu)
    LMB:ItemList()
    local anchor, point = GetDirection()
    T.table_insert(LMB.MainMenu, {text = CLOSE, title = true, ending = true, func = function()
        T.ToggleFrame(LMB.Menu)
    end})
    LUI:DropDown(LMB.MainMenu, LMB.Menu, anchor, point, 0, 0, _G["LuiMicroBar"], 200, false)
end

function LMB:LFRDropdown()
    if LMB.LfrMenu:IsShown() then T.ToggleFrame(LMB.LfrMenu) return end
    T.table_wipe(LMB.SecondaryMenu)
    LMB:LfrList()
    local anchor, point = GetDirection()
    T.table_insert(LMB.SecondaryMenu, {text = CLOSE, title = true, ending = true, func = function()
        T.table_wipe(LMB.SecondaryMenu)
        T.ToggleFrame(LMB.LfrMenu)
    end})
    LUI:DropDown(LMB.SecondaryMenu, LMB.LfrMenu, anchor, point, 85, -30, _G["LuiMicroBar"], 220, false)
end

local function updateTimerFormat(color, hour, minute)
    if T.GetCVarBool("timeMgrUseMilitaryTime") then
        return T.string_format(color .. TIMEMANAGER_TICKER_24HOUR, hour, minute)
    else
        local timerUnit = LUI.InfoColor .. (hour < 12 and "AM" or "PM")
        if hour > 12 then hour = hour - 12 end
        return T.string_format(color .. TIMEMANAGER_TICKER_12HOUR .. timerUnit, hour, minute)
    end
end

function LMB:OnUpdate(self, elapsed)
    self.timer = (self.timer or 0) + elapsed
    if self.timer > 1 then
        local color = T.C_Calendar_GetNumPendingInvites() > 0 and "|cffFF0000" or ""
        
        local hour, minute
        if T.GetCVarBool("timeMgrUseLocalTime") then
            hour, minute = T.tonumber(T.date("%H")), T.tonumber(T.date("%M"))
        else
            hour, minute = T.GetGameTime()
        end
        self.text:SetText(updateTimerFormat(color, hour, minute))
        
        self.timer = 0
    end
end

local bonus = {
    52834, 52838, -- Gold
    52835, 52839, -- Honor
    52837, 52840, -- Resources
}
local bonusName = T.GetCurrencyInfo(1580)

local isTimeWalker, walkerTexture
local function checkTimeWalker(event)
    local date = T.C_Calendar_GetDate()
    T.C_Calendar_SetAbsMonth(date.month, date.year)
    T.C_Calendar_OpenCalendar()
    
    local today = date.monthDay
    local numEvents = T.C_Calendar_GetNumDayEvents(0, today)
    if numEvents <= 0 then return end
    
    for i = 1, numEvents do
        local info = T.C_Calendar_GetDayEvent(0, today, i)
        if info and T.string_find(info.title, PLAYER_DIFFICULTY_TIMEWALKER) and info.sequenceType ~= "END" then
            isTimeWalker = true
            walkerTexture = info.iconTexture
            break
        end
    end
    LMB:UnregisterEvent(event, checkTimeWalker)
end
LMB:RegisterEvent("PLAYER_ENTERING_WORLD", checkTimeWalker)

local function checkTexture(texture)
    if not walkerTexture then return end
    if walkerTexture == texture or walkerTexture == texture - 1 then
        return true
    end
end

local questlist = {
    {name = L["Blingtron"], id = 34774},
    {name = L["Mean One"], id = 6983},
    {name = L["Timewarped"], id = 40168, texture = 1129674}, -- TBC
    {name = L["Timewarped"], id = 40173, texture = 1129686}, -- WotLK
    {name = L["Timewarped"], id = 40786, texture = 1304688}, -- Cata
    {name = L["Timewarped"], id = 45799, texture = 1530590}, -- MoP
}

local region = T.GetCVar("portal")
if not region or #region ~= 2 then
    local regionID = T.GetCurrentRegion()
    region = regionID and ({"US", "KR", "EU", "TW", "CN"})[regionID]
end

local invIndex = {
    [1] = {
        title = L["Faction Assault"],
        duration = 68400,
        maps = {862, 863, 864, 896, 942, 895},
        timeTable = {4, 1, 6, 2, 5, 3},
        baseTime = {
            US = 1548032400, -- 01/20/2019 17:00 UTC-8
            EU = 1548000000, -- 01/20/2019 16:00 UTC+0
            CN = 1546743600, -- 01/06/2019 11:00 UTC+8
        },
    },
}

local mapAreaPoiIDs = {
    [630] = 5175,
    [641] = 5210,
    [650] = 5177,
    [634] = 5178,
    [862] = 5973,
    [863] = 5969,
    [864] = 5970,
    [896] = 5964,
    [942] = 5966,
    [895] = 5896,
}

local function GetInvasionTimeInfo(mapID)
    local areaPoiID = mapAreaPoiIDs[mapID]
    local seconds = T.C_AreaPoiInfo_GetAreaPOISecondsLeft(areaPoiID)
    local mapInfo = T.C_Map_GetMapInfo(mapID)
    return seconds, mapInfo.name
end

local function CheckInvasion(index)
    for _, mapID in T.pairs(invIndex[index].maps) do
        local timeLeft, name = GetInvasionTimeInfo(mapID)
        if timeLeft and timeLeft > 0 then
            return timeLeft, name
        end
    end
end

local function GetNextTime(baseTime, index)
    local inv = invIndex[index]
    local currentTime = time()
    local baseTime = inv.baseTime[region]
    local duration = invIndex[index].duration
    local elapsed = T.mod(currentTime - baseTime, duration)
    return duration - elapsed + currentTime
end

local function GetNextLocation(nextTime, index)
    local inv = invIndex[index]
    local count = #inv.timeTable
    local baseTime = inv.baseTime[region]
    local elapsed = nextTime - baseTime
    local round = T.mod(T.floor(elapsed / inv.duration) + 1, count)
    
    if round == 0 then
        round = count
    end
    
    return T.C_Map_GetMapInfo(inv.maps[inv.timeTable[round]]).name
end

local title
local function addTitle(text)
    if not title then
        T.GameTooltip:AddLine(" ")
        T.GameTooltip:AddLine(text .. ":", 1, .8, .1)
        title = true
    end
end

local function OnEnter(self)
    if not E.db.lui.modules.actionbars.microBar["tooltip"] then return end
    if T.InCombatLockdown() then return end
    T.RequestRaidInfo()
    
    if not T.GameTooltip:IsForbidden() then
        T.GameTooltip:Hide()
    end
    
    T.GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
    T.GameTooltip:ClearLines()
    
    local today = T.C_Calendar_GetDate()
    local w, m, d, y = today.weekday, today.month, today.monthDay, today.year
    if E.db.lui.modules.actionbars.microBar.text["fontClassColor"] then fontColor = LUI.ClassRGB
    else fontColor = E.db.lui.modules.actionbars.microBar.text["fontColor"]
    end
    T.GameTooltip:AddLine(T.string_format(FULLDATE, CALENDAR_WEEKDAY_NAMES[w], CALENDAR_FULLDATE_MONTH_NAMES[m], d, y), fontColor.r, fontColor.g, fontColor.b)
    T.GameTooltip:AddLine(" ")
    T.GameTooltip:AddDoubleLine(L["Local Time"], GameTime_GetLocalTime(true), 1, .8, .1, 1, 1, 1)
    T.GameTooltip:AddDoubleLine(L["Realm Time"], GameTime_GetGameTime(true), 1, .8, .1, 1, 1, 1)
    
    title = false
    for i = 1, T.GetNumSavedWorldBosses() do
        local name, id, reset = T.GetSavedWorldBossInfo(i)
        if not (id == 11 or id == 12 or id == 13) then
            addTitle(RAID_INFO_WORLD_BOSS)
            T.GameTooltip:AddDoubleLine(name, T.SecondsToTime(reset, true, nil, 3), 1, 1, 1, 1, 1, 1)
        end
    end
    
    title = false
    for i = 1, T.GetNumSavedInstances() do
        local name, _, reset, diff, locked, extended = T.GetSavedInstanceInfo(i)
        if diff == 23 and (locked or extended) then
            addTitle(L["Mythic Dungeon"])
            if extended then
                r, g, b = .3, 1, .3
            else
                r, g, b = 1, 1, 1
            end
            T.GameTooltip:AddDoubleLine(name, T.SecondsToTime(reset, true, nil, 3), 1, 1, 1, r, g, b)
        end
    end
    
    title = false
    for i = 1, T.GetNumSavedInstances() do
        local name, _, reset, _, locked, extended, _, isRaid, _, diffName = T.GetSavedInstanceInfo(i)
        if isRaid and (locked or extended) then
            addTitle(RAID_INFORMATION)
            if extended then
                r, g, b = .3, 1, .3
            else
                r, g, b = 1, 1, 1
            end
            T.GameTooltip:AddDoubleLine(name .. " - " .. diffName, T.SecondsToTime(reset, true, nil, 3), 1, 1, 1, r, g, b)
        end
    end
    
    title = false
    local count, maxCoins = 0, 2
    for _, id in T.pairs(bonus) do
        if T.IsQuestFlaggedCompleted(id) then
            count = count + 1
        end
    end
    if count > 0 then
        addTitle(QUESTS_LABEL)
        if count == maxCoins then
            r, g, b = 1, 0, 0
        else
            r, g, b = 0, 1, 0
        end
        T.GameTooltip:AddDoubleLine(bonusName, count .. "/" .. maxCoins, 1, 1, 1, r, g, b)
    end
    
    local iwqID = T.C_IslandsQueue_GetIslandsWeeklyQuestID()
    if iwqID and T.UnitLevel("player") == 120 then
        addTitle(QUESTS_LABEL)
        if T.IsQuestFlaggedCompleted(iwqID) then
            T.GameTooltip:AddDoubleLine(ISLANDS_HEADER, QUEST_COMPLETE, 1, 1, 1, 1, 0, 0)
        else
            local cur, max = select(4, T.GetQuestObjectiveInfo(iwqID, 1, false))
            local stautsText = cur .. "/" .. max
            if not cur or not max then stautsText = LFG_LIST_LOADING end
            T.GameTooltip:AddDoubleLine(ISLANDS_HEADER, stautsText, 1, 1, 1, 0, 1, 0)
        end
    end
    
    for _, v in T.pairs(questlist) do
        if v.name and T.IsQuestFlaggedCompleted(v.id) then
            if v.name == L["Timewarped"] and isTimeWalker and checkTexture(v.texture) or v.name ~= L["Timewarped"] then
                addTitle(QUESTS_LABEL)
                T.GameTooltip:AddDoubleLine(v.name, QUEST_COMPLETE, 1, 1, 1, 1, 0, 0)
            end
        end
    end
    
    for index, value in T.ipairs(invIndex) do
        title = false
        addTitle(value.title)
        if value.baseTime[region] and value.baseTime[region] ~= "" then
            local timeLeft, zoneName = CheckInvasion(index)
            local nextTime = GetNextTime(value.baseTime, index)
            if timeLeft then
                timeLeft = timeLeft / 60
                if timeLeft < 60 then
                    r, g, b = 1, 0, 0
                else
                    r, g, b = 0, 1, 0
                end
                T.GameTooltip:AddDoubleLine(L["Current Invasion: "] .. zoneName, T.string_format("%.2d:%.2d", timeLeft / 60, timeLeft % 60), 1, 1, 1, r, g, b)
            end
            T.GameTooltip:AddDoubleLine(L["Next Invasion: "] .. GetNextLocation(nextTime, index), T.date("%y-%m-%d %H:%M", nextTime), 1, 1, 1, 1, 1, 1)
        else
            T.GameTooltip:AddDoubleLine(L["Missing invasion info on your realm."])
        end
    end
    T.GameTooltip:Show()
end

local function OnHover(button)
    local buttonHighlight = "Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\highlight2"
    
    if button.tex then
        local buttonColor
        if E.db.lui.modules.actionbars.microBar["buttonClassColor"] then buttonColor = LUI.ClassRGB
        else buttonColor = E.db.lui.modules.actionbars.microBar["buttonColor"]
        end
        button.tex:SetVertexColor(buttonColor.r / 0.748, buttonColor.g / 0.748, buttonColor.b / 0.748, buttonColor.a)
        button.highlight = button:CreateTexture(nil, "HIGHLIGHT")
        button.highlight:SetPoint("TOPLEFT", button.tex, "TOPLEFT", -4, 1)
        button.highlight:SetPoint("BOTTOMRIGHT", button.tex, "BOTTOMRIGHT", 4, -1)
        button.highlight:SetVertexColor(buttonColor.r / 0.748, buttonColor.g / 0.748, buttonColor.b / 0.748, buttonColor.a)
        button.highlight:SetTexture(buttonHighlight)
        button.highlight:SetBlendMode("ADD")
    end
    
    if E.db.lui.modules.actionbars.microBar["barMouseOver"] and not T.InCombatLockdown() then
        microBar:SetAlpha(1)
    end
end

local function OnLeave(button)
    if button.tex then
        local buttonColor
        if E.db.lui.modules.actionbars.microBar["buttonClassColor"] then buttonColor = LUI.ClassRGB
        else buttonColor = E.db.lui.modules.actionbars.microBar["buttonColor"]
        end
        button.tex:SetVertexColor(buttonColor.r, buttonColor.g, buttonColor.b, buttonColor.a)
        button.highlight:Hide()
    end
    
    T.GameTooltip:Hide()
    
    if E.db.lui.modules.actionbars.microBar["barMouseOver"] then
        microBar:SetAlpha(0)
    end
end

function LMB:TimeButtonOnClick(button)
    if button == "LeftButton" then
        if (not CalendarFrame) then T.LoadAddOn("Blizzard_Calendar") end
        Calendar_Toggle()
        T.PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF)
    end
    if button == "RightButton" then
        T.GameTooltip:Hide()
        LMB:PopulateDropdown(true)
    end
end

function LMB:LfrButtonOnClick(button)
    if button == "LeftButton" then
        _G["ToggleLFDParentFrame"]()
    end
    if E.db.lui.modules.actionbars.microBar.text["lfr"] and button == "RightButton" then
        T.GameTooltip:Hide()
        LMB:LFRDropdown(true)
    end
end

function LMB:CreateMicroBar()
    local buttonColor, fontColor
    if E.db.lui.modules.actionbars.microBar["buttonClassColor"] then buttonColor = LUI.ClassRGB
    else buttonColor = E.db.lui.modules.actionbars.microBar["buttonColor"]
    end
    if E.db.lui.modules.actionbars.microBar.text["fontClassColor"] then fontColor = LUI.ClassRGB
    else fontColor = E.db.lui.modules.actionbars.microBar.text["fontColor"]
    end
    local holder = T.CreateFrame("Frame", nil, E.UIParent)
    holder:Point("TOP", E.UIParent, "TOP", 0, 0)
    local holderScale = E.db.lui.modules.actionbars.microBar["scale"]
    holder:SetSize(400 * holderScale, 26 * holderScale)
    
    microBar = T.CreateFrame("Frame", "LuiMicroBar", E.UIParent)
    microBar.Holder = holder
    microBar:SetFrameStrata("MEDIUM")
    microBar:EnableMouse(true)
    microBar:SetSize(400, 26)
    microBar:SetScale(E.db.lui.modules.actionbars.microBar["scale"] or 1)
    microBar:SetAllPoints(holder)
    if E.db.lui.modules.actionbars.microBar["barBackdrop"] then
        microBar:Styling()
        microBar:SetTemplate("Transparent")
    end
    microBar:SetScript("OnEnter", function(self)
        if E.db.lui.modules.actionbars.microBar["barMouseOver"] and not T.InCombatLockdown() then
            microBar:SetAlpha(1)
        end
    end)
    
    microBar:SetScript("OnLeave", function(self)
        if E.db.lui.modules.actionbars.microBar["barMouseOver"] then
            microBar:SetAlpha(0)
        end
    end)
    if E.db.lui.modules.actionbars.microBar["barMouseOver"] then
        microBar:SetAlpha(0)
    else
        microBar:SetAlpha(1)
    end
    
    E.FrameLocks[microBar] = true
    
    local IconPath = "Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\icons\\"
    
    local charButton = T.CreateFrame("Button", nil, microBar)
    charButton:SetPoint("LEFT", microBar, 2, 0)
    charButton:SetSize(32, 32)
    charButton:SetFrameLevel(6)
    
    charButton.tex = charButton:CreateTexture(nil, "OVERLAY")
    charButton.tex:SetPoint("BOTTOMLEFT")
    charButton.tex:SetPoint("BOTTOMRIGHT")
    charButton.tex:SetSize(32, 32)
    charButton.tex:SetTexture(IconPath .. "Character")
    charButton.tex:SetVertexColor(buttonColor.r, buttonColor.g, buttonColor.b, buttonColor.a)
    charButton.tex:SetBlendMode("ADD")
    
    charButton.text = LUI:CreateText(charButton, "HIGHLIGHT", 11)
    if E.db.lui.modules.actionbars.microBar.text["position"] == "BOTTOM" then
        charButton.text:SetPoint("BOTTOM", charButton, 2, -15)
    else
        charButton.text:SetPoint("TOP", charButton, 2, 15)
    end
    charButton.text:SetText(CHARACTER_BUTTON)
    charButton.text:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
    
    charButton:SetScript("OnEnter", function(self)
        OnHover(self)
    end)
    charButton:SetScript("OnLeave", function(self)
        OnLeave(self)
    end)
    charButton:SetScript("OnClick", function(self)
        _G["ToggleCharacter"]("PaperDollFrame")
    end)
    
    local friendsButton = T.CreateFrame("Button", nil, microBar)
    friendsButton:SetPoint("LEFT", charButton, "RIGHT", 2, 0)
    friendsButton:SetSize(32, 32)
    friendsButton:SetFrameLevel(6)
    
    friendsButton.tex = friendsButton:CreateTexture(nil, "OVERLAY")
    friendsButton.tex:SetPoint("BOTTOMLEFT")
    friendsButton.tex:SetPoint("BOTTOMRIGHT")
    friendsButton.tex:SetSize(32, 32)
    friendsButton.tex:SetTexture(IconPath .. "Friends")
    friendsButton.tex:SetVertexColor(buttonColor.r, buttonColor.g, buttonColor.b, buttonColor.a)
    friendsButton.tex:SetBlendMode("ADD")
    
    friendsButton.text = LUI:CreateText(friendsButton, "HIGHLIGHT", 11)
    if E.db.lui.modules.actionbars.microBar.text["position"] == "BOTTOM" then
        friendsButton.text:SetPoint("BOTTOM", friendsButton, 2, -15)
    else
        friendsButton.text:SetPoint("TOP", friendsButton, 2, 15)
    end
    friendsButton.text:SetText(SOCIAL_BUTTON)
    friendsButton.text:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
    friendsButton:SetScript("OnEnter", function(self)
        OnHover(self)
        DT.tooltip:AddDoubleLine(L["Friends List"], T.string_format("aaaa", "bbbb"))
    end)
    friendsButton:SetScript("OnLeave", function(self)
        OnLeave(self)
    end)
    friendsButton:SetScript("OnClick", function(self)
        _G["ToggleFriendsFrame"]()
    end)
    
    if E.db.lui.modules.actionbars.microBar.text["friends"] then
        local function UpdateFriends()
            local friendsOnline = T.C_FriendList_GetNumFriends()
            local bnTotal, bnOnline = T.BNGetNumFriends()
            local totalOnline = friendsOnline + bnOnline
            if (bnOnline > 0) or (friendsOnline > 0) then
                if bnOnline > 0 then
                    friendsButton.online:SetText(totalOnline)
                else
                    friendsButton.online:SetText("")
                end
            end
        end
        friendsButton.online = friendsButton:CreateFontString(nil, "OVERLAY")
        friendsButton.online:FontTemplate(nil, 12, "OUTLINE")
        friendsButton.online:SetPoint("BOTTOMRIGHT", friendsButton, 0, 5)
        friendsButton.online:SetText("")
        friendsButton.online:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
        friendsButton:SetScript("OnUpdate", function(self, elapse)
            LMB.friendselapsed = LMB.friendselapsed + elapse
            if LMB.friendselapsed >= LMB.FRIENDSDELAY then
                UpdateFriends()
                LMB.friendselapsed = 0
            end
        end)
    end
    
    local guildButton = T.CreateFrame("Button", nil, microBar)
    guildButton:SetPoint("LEFT", friendsButton, "RIGHT", 2, 0)
    guildButton:SetSize(32, 32)
    guildButton:SetFrameLevel(6)
    guildButton.tex = guildButton:CreateTexture(nil, "OVERLAY")
    guildButton.tex:SetPoint("BOTTOMLEFT")
    guildButton.tex:SetPoint("BOTTOMRIGHT")
    guildButton.tex:SetSize(32, 32)
    guildButton.tex:SetTexture(IconPath .. "Guild")
    guildButton.tex:SetVertexColor(buttonColor.r, buttonColor.g, buttonColor.b, buttonColor.a)
    guildButton.tex:SetBlendMode("ADD")
    guildButton.text = LUI:CreateText(guildButton, "HIGHLIGHT", 11)
    if E.db.lui.modules.actionbars.microBar.text["position"] == "BOTTOM" then
        guildButton.text:SetPoint("BOTTOM", guildButton, 2, -15)
    else
        guildButton.text:SetPoint("TOP", guildButton, 2, 15)
    end
    guildButton.text:SetText(GUILD)
    guildButton.text:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
    
    guildButton:SetScript("OnEnter", function(self)
        OnHover(self)
    end)
    guildButton:SetScript("OnLeave", function(self)
        OnLeave(self)
    end)
    guildButton:SetScript("OnClick", function(self)
        _G["ToggleGuildFrame"]()
    end)
    
    if E.db.lui.modules.actionbars.microBar.text["guild"] then
        local function UpdateGuild()
            if T.IsInGuild() then
                local guildTotal, online = T.GetNumGuildMembers()
                for i = 1, guildTotal do
                    local _, _, _, _, _, _, _, _, connected, _, _, _, _, isMobile = T.GetGuildRosterInfo(i)
                    if isMobile then
                        online = online + 1
                    end
                end
                if online > 0 then
                    guildButton.online:SetText(online)
                else
                    guildButton.online:SetText("")
                end
            end
        end
        guildButton.online = guildButton:CreateFontString(nil, "OVERLAY")
        guildButton.online:FontTemplate(nil, 12, "OUTLINE")
        guildButton.online:SetPoint("BOTTOMRIGHT", guildButton, 0, 5)
        guildButton.online:SetText("")
        guildButton.online:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
        
        guildButton:SetScript("OnUpdate", function(self, elapse)
            LMB.guildelapsed = LMB.guildelapsed + elapse
            if LMB.guildelapsed >= LMB.GUILDDELAY then
                UpdateGuild()
                LMB.guildelapsed = 0
            end
        end)
    end
    
    local achieveButton = T.CreateFrame("Button", nil, microBar)
    achieveButton:SetPoint("LEFT", guildButton, "RIGHT", 2, 0)
    achieveButton:SetSize(32, 32)
    achieveButton:SetFrameLevel(6)
    
    achieveButton.tex = achieveButton:CreateTexture(nil, "OVERLAY")
    achieveButton.tex:SetPoint("BOTTOMLEFT")
    achieveButton.tex:SetPoint("BOTTOMRIGHT")
    achieveButton.tex:SetSize(32, 32)
    achieveButton.tex:SetTexture(IconPath .. "Achievement")
    achieveButton.tex:SetVertexColor(buttonColor.r, buttonColor.g, buttonColor.b, buttonColor.a)
    achieveButton.tex:SetBlendMode("ADD")
    
    achieveButton.text = LUI:CreateText(achieveButton, "HIGHLIGHT", 11)
    if E.db.lui.modules.actionbars.microBar.text["position"] == "BOTTOM" then
        achieveButton.text:SetPoint("BOTTOM", achieveButton, 2, -15)
    else
        achieveButton.text:SetPoint("TOP", achieveButton, 2, 15)
    end
    achieveButton.text:SetText(ACHIEVEMENT_BUTTON)
    achieveButton.text:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
    
    achieveButton:SetScript("OnEnter", function(self)
        OnHover(self)
    end)
    achieveButton:SetScript("OnLeave", function(self)
        OnLeave(self)
    end)
    achieveButton:SetScript("OnClick", function(self)
        _G["ToggleAchievementFrame"]()
    end)
    
    local encounterButton = T.CreateFrame("Button", nil, microBar)
    encounterButton:SetPoint("LEFT", achieveButton, "RIGHT", 2, 0)
    encounterButton:SetSize(32, 32)
    encounterButton:SetFrameLevel(6)
    
    encounterButton.tex = encounterButton:CreateTexture(nil, "OVERLAY")
    encounterButton.tex:SetPoint("BOTTOMLEFT")
    encounterButton.tex:SetPoint("BOTTOMRIGHT")
    encounterButton.tex:SetSize(32, 32)
    encounterButton.tex:SetTexture(IconPath .. "EJ")
    encounterButton.tex:SetVertexColor(buttonColor.r, buttonColor.g, buttonColor.b, buttonColor.a)
    encounterButton.tex:SetBlendMode("ADD")
    
    encounterButton.text = LUI:CreateText(encounterButton, "HIGHLIGHT", 11)
    if E.db.lui.modules.actionbars.microBar.text["position"] == "BOTTOM" then
        encounterButton.text:SetPoint("BOTTOM", encounterButton, 2, -15)
    else
        encounterButton.text:SetPoint("TOP", encounterButton, 2, 15)
    end
    encounterButton.text:SetText(ENCOUNTER_JOURNAL)
    encounterButton.text:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
    
    encounterButton:SetScript("OnEnter", function(self)
        OnHover(self)
    end)
    encounterButton:SetScript("OnLeave", function(self)
        OnLeave(self)
    end)
    encounterButton:SetScript("OnClick", function(self)
        if not T.IsAddOnLoaded('Blizzard_EncounterJournal') then
            _G["EncounterJournal_LoadUI"]()
        end
        _G["ToggleEncounterJournal"]()
    end)
    
    local timeButton = T.CreateFrame("Button", nil, microBar)
    timeButton:SetPoint("LEFT", encounterButton, "RIGHT", 18, 0)
    timeButton:SetSize(32, 32)
    timeButton:SetFrameLevel(6)
    
    timeButton.text = LUI:CreateText(timeButton, "OVERLAY", 16)
    timeButton.text:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
    timeButton.text:SetPoint("CENTER", 0, 0)
    
    timeButton.tex = timeButton:CreateTexture(nil, "OVERLAY")
    timeButton.tex:SetPoint("BOTTOMLEFT")
    timeButton.tex:SetPoint("BOTTOMRIGHT")
    timeButton.tex:SetSize(32, 32)
    timeButton.tex:SetBlendMode("ADD")
    
    local timer = timeButton:CreateAnimationGroup()
    
    local timerAnim = timer:CreateAnimation()
    timerAnim:SetDuration(1)
    
    timer:SetScript("OnFinished", function(self, requested)
        local euTime = T.date("%H|cFF00c0fa:|r%M")
        local ukTime = T.date("%I|cFF00c0fa:|r%M")
        
        if E.db.datatexts.time24 == true then
            timeButton.text:SetText(euTime)
        else
            timeButton.text:SetText(ukTime)
        end
        self:Play()
    end)
    timer:Play()
    
    timeButton:SetScript("OnEnter", function(self)
        OnHover(self)
        OnEnter(self)
    end)
    timeButton:SetScript("OnLeave", function(self)
        OnLeave(self)
    end)
    timeButton:SetScript("OnMouseUp", LMB.TimeButtonOnClick)
    
    local petButton = T.CreateFrame("Button", nil, microBar)
    petButton:SetPoint("LEFT", timeButton, "RIGHT", 12, 0)
    petButton:SetSize(32, 32)
    petButton:SetFrameLevel(6)
    
    petButton.tex = petButton:CreateTexture(nil, "OVERLAY")
    petButton.tex:SetPoint("BOTTOMLEFT")
    petButton.tex:SetPoint("BOTTOMRIGHT")
    petButton.tex:SetSize(32, 32)
    petButton.tex:SetTexture(IconPath .. "Pet")
    petButton.tex:SetVertexColor(buttonColor.r, buttonColor.g, buttonColor.b, buttonColor.a)
    petButton.tex:SetBlendMode("ADD")
    
    petButton.text = LUI:CreateText(petButton, "HIGHLIGHT", 11)
    if E.db.lui.modules.actionbars.microBar.text["position"] == "BOTTOM" then
        petButton.text:SetPoint("BOTTOM", petButton, 2, -15)
    else
        petButton.text:SetPoint("TOP", petButton, 2, 15)
    end
    petButton.text:SetText(MOUNTS_AND_PETS)
    petButton.text:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
    
    petButton:SetScript("OnEnter", function(self)
        OnHover(self)
    end)
    petButton:SetScript("OnLeave", function(self)
        OnLeave(self)
    end)
    petButton:SetScript("OnClick", function(self)
        _G["ToggleCollectionsJournal"]()
    end)
    
    local lfrButton = T.CreateFrame("Button", nil, microBar)
    lfrButton:SetPoint("LEFT", petButton, "RIGHT", 2, 0)
    lfrButton:SetSize(32, 32)
    lfrButton:SetFrameLevel(6)
    
    lfrButton.tex = lfrButton:CreateTexture(nil, "OVERLAY")
    lfrButton.tex:SetPoint("BOTTOMLEFT")
    lfrButton.tex:SetPoint("BOTTOMRIGHT")
    lfrButton.tex:SetSize(32, 32)
    lfrButton.tex:SetTexture(IconPath .. "LFR")
    lfrButton.tex:SetVertexColor(buttonColor.r, buttonColor.g, buttonColor.b, buttonColor.a)
    lfrButton.tex:SetBlendMode("ADD")
    
    lfrButton.text = LUI:CreateText(lfrButton, "HIGHLIGHT", 11)
    if E.db.lui.modules.actionbars.microBar.text["position"] == "BOTTOM" then
        lfrButton.text:SetPoint("BOTTOM", lfrButton, 2, -25)
    else
        lfrButton.text:SetPoint("TOP", lfrButton, 2, 25)
    end
    lfrButton.text:SetText(L["MOUSEBUTTON1"] .. ": " .. LFG_TITLE .. "\n" .. L["MOUSEBUTTON2"] .. ": " .. L["lfr"])
    lfrButton.text:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
    
    lfrButton:SetScript("OnEnter", function(self)
        OnHover(self)
    end)
    lfrButton:SetScript("OnLeave", function(self)
        OnLeave(self)
    end)
    lfrButton:SetScript("OnMouseUp", LMB.LfrButtonOnClick)
    if E.db.lui.modules.actionbars.microBar.text["lfr"] then
        local function UpdateLfr()
            local reward = 0
            for i = 1, #LMB.sortedDungeonsID do
                local data = LMB.sortedDungeonsID[i]
                local _, tank, healer, dps = T.GetLFGRoleShortageRewards(data.id, LFG_ROLE_SHORTAGE_RARE)
                if tank and ClassRoleTank then
                    reward = reward + 1
                end
                if healer and ClassRoleHealer then
                    reward = reward + 1
                end
                if dps and ClassRoleDamager then
                    reward = reward + 1
                end
            end
            if reward > 0 then
                lfrButton.reward:SetText(reward)
            else
                lfrButton.reward:SetText("")
            end
        end
        lfrButton.reward = lfrButton:CreateFontString(nil, "OVERLAY")
        lfrButton.reward:FontTemplate(nil, 12, "OUTLINE")
        lfrButton.reward:SetPoint("BOTTOMRIGHT", lfrButton, 0, 5)
        lfrButton.reward:SetText("")
        lfrButton.reward:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
        lfrButton:SetScript("OnUpdate", function(self, elapse)
            LMB.elapsed = LMB.elapsed + elapse
            if LMB.elapsed >= LMB.DELAY then
                if LUI:IsPRType() then
                    if lfrButton.reward then
                        lfrButton.reward:SetText("")
                    end
                    return
                end
                LMB.elapsed = 0
                UpdateLfr()
            end
        end)
    end
    
    local spellBookButton = T.CreateFrame("Button", nil, microBar)
    spellBookButton:SetPoint("LEFT", lfrButton, "RIGHT", 2, 0)
    spellBookButton:SetSize(32, 32)
    spellBookButton:SetFrameLevel(6)
    
    spellBookButton.tex = spellBookButton:CreateTexture(nil, "OVERLAY")
    spellBookButton.tex:SetPoint("BOTTOMLEFT")
    spellBookButton.tex:SetPoint("BOTTOMRIGHT")
    spellBookButton.tex:SetSize(32, 32)
    spellBookButton.tex:SetTexture(IconPath .. "Spellbook")
    spellBookButton.tex:SetVertexColor(buttonColor.r, buttonColor.g, buttonColor.b, buttonColor.a)
    spellBookButton.tex:SetBlendMode("ADD")
    
    spellBookButton.text = LUI:CreateText(spellBookButton, "HIGHLIGHT", 11)
    if E.db.lui.modules.actionbars.microBar.text["position"] == "BOTTOM" then
        spellBookButton.text:SetPoint("BOTTOM", spellBookButton, 2, -15)
    else
        spellBookButton.text:SetPoint("TOP", spellBookButton, 2, 15)
    end
    spellBookButton.text:SetText(SPELLBOOK_ABILITIES_BUTTON)
    spellBookButton.text:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
    
    spellBookButton:SetScript("OnEnter", function(self)
        OnHover(self)
    end)
    spellBookButton:SetScript("OnLeave", function(self)
        OnLeave(self)
    end)
    spellBookButton:SetScript("OnClick", function(self)
        if not _G["SpellBookFrame"]:IsShown() then
            T.ShowUIPanel(_G["SpellBookFrame"])
        else
            T.HideUIPanel(_G["SpellBookFrame"])
        end
    end)
    
    local speccButton = T.CreateFrame("Button", nil, microBar)
    speccButton:SetPoint("LEFT", spellBookButton, "RIGHT", 2, 0)
    speccButton:SetSize(32, 32)
    speccButton:SetFrameLevel(6)
    
    speccButton.tex = speccButton:CreateTexture(nil, "OVERLAY")
    speccButton.tex:SetPoint("BOTTOMLEFT")
    speccButton.tex:SetPoint("BOTTOMRIGHT")
    speccButton.tex:SetSize(32, 32)
    speccButton.tex:SetTexture(IconPath .. "Specc")
    speccButton.tex:SetVertexColor(buttonColor.r, buttonColor.g, buttonColor.b, buttonColor.a)
    speccButton.tex:SetBlendMode("ADD")
    
    speccButton.text = LUI:CreateText(speccButton, "HIGHLIGHT", 11)
    if E.db.lui.modules.actionbars.microBar.text["position"] == "BOTTOM" then
        speccButton.text:SetPoint("BOTTOM", speccButton, 2, -15)
    else
        speccButton.text:SetPoint("TOP", speccButton, 2, 15)
    end
    speccButton.text:SetText(TALENTS_BUTTON)
    speccButton.text:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
    
    speccButton:SetScript("OnEnter", function(self)
        OnHover(self)
    end)
    speccButton:SetScript("OnLeave", function(self)
        OnLeave(self)
    end)
    speccButton:SetScript("OnClick", function(self)
        if not _G["PlayerTalentFrame"] then
            _G["TalentFrame_LoadUI"]()
        end
        if not _G["PlayerTalentFrame"]:IsShown() then
            T.ShowUIPanel(_G["PlayerTalentFrame"])
        else
            T.HideUIPanel(_G["PlayerTalentFrame"])
        end
    end)
    
    local shopButton = T.CreateFrame("Button", nil, microBar)
    shopButton:SetPoint("LEFT", speccButton, "RIGHT", 2, 0)
    shopButton:SetSize(32, 32)
    shopButton:SetFrameLevel(6)
    
    shopButton.tex = shopButton:CreateTexture(nil, "OVERLAY")
    shopButton.tex:SetPoint("BOTTOMLEFT")
    shopButton.tex:SetPoint("BOTTOMRIGHT")
    shopButton.tex:SetSize(32, 32)
    shopButton.tex:SetTexture(IconPath .. "Store")
    shopButton.tex:SetVertexColor(buttonColor.r, buttonColor.g, buttonColor.b, buttonColor.a)
    shopButton.tex:SetBlendMode("ADD")
    
    shopButton.text = LUI:CreateText(shopButton, "HIGHLIGHT", 11)
    if E.db.lui.modules.actionbars.microBar.text["position"] == "BOTTOM" then
        shopButton.text:SetPoint("BOTTOM", shopButton, 2, -15)
    else
        shopButton.text:SetPoint("TOP", shopButton, 2, 15)
    end
    shopButton.text:SetText(BLIZZARD_STORE)
    shopButton.text:SetTextColor(fontColor.r, fontColor.g, fontColor.b)
    
    shopButton:SetScript("OnEnter", function(self)
        OnHover(self)
    end)
    shopButton:SetScript("OnLeave", function(self)
        OnLeave(self)
    end)
    shopButton:SetScript("OnClick", function(self)
        _G["StoreMicroButton"]:Click()
    end)
    
    E:CreateMover(microBar.Holder, "LuiMicroBarMover", L["LuiMicroBarMover"], nil, nil, nil, "ALL,ACTIONBARS,LivvenUI", nil, "lui,modules,actionbars")
end

function LMB:Toggle()
    if E.db.lui.modules.actionbars.microBar["enable"] then
        microBar:Show()
        E:EnableMover(microBar.Holder.mover:GetName())
    else
        microBar:Hide()
        E:DisableMover(microBar.Holder.mover:GetName())
    end
    LMB:UNIT_AURA(nil, "player")
end

function LMB:PLAYER_REGEN_DISABLED()
    microBar:SetAlpha(0)
end

function LMB:PLAYER_REGEN_ENABLED()
    if E.db.lui.modules.actionbars.microBar["barMouseOver"] then return end
    microBar:SetAlpha(1)
end

function LMB:UNIT_AURA(_, unit)
    if unit ~= "player" then return end
    if E.db.lui.modules.actionbars.microBar["enable"] and E.db.lui.modules.actionbars.microBar["hideInOrderHall"] then
        local inOrderHall = T.C_Garrison_IsPlayerInGarrison(LE_GARRISON_TYPE_7_0)
        if inOrderHall then
            microBar:SetAlpha(0)
        else
            microBar:SetAlpha(1)
        end
    end
end

function LMB:Initialize()
    DungeonSorter()
    LMB.DELAY = 10
    LMB.elapsed = LMB.DELAY
    LMB.GUILDDELAY = 10
    LMB.guildelapsed = LMB.GUILDDELAY
    LMB.FRIENDSDELAY = 10
    LMB.friendselapsed = LMB.FRIENDSDELAY
    faction = UnitFactionGroup('player')
    self:CreateMicroBar()
    self:Toggle()
    self:RegisterEvent("PLAYER_REGEN_DISABLED")
    self:RegisterEvent("PLAYER_REGEN_ENABLED")
    self:RegisterEvent("UNIT_AURA")
    
    LMB:PopulateItems()
    LMB:CreateRightClickMenu()
end

local function InitializeCallback()
    if not E.db.lui.modules.actionbars.microBar["enable"] then return end
    LMB:Initialize()
end

E:RegisterModule(LMB:GetName(), InitializeCallback)
