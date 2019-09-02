-- 来源：NGA
-- 作者：LiangYuxuan_Rhythm

local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LRHS = E:NewModule("LuiRandomHearthStone", "AceEvent-3.0", "AceTimer-3.0")

local macroName = "RHS"
local macroTemplate =
"#showtooltip %s\n" ..
"/rhs check\n" ..
"/cast %s"

local hearthstoneList = {
    54452,  -- Ethereal Portal
    64488,  -- The Innkeeper"s Daughter
    93672,  -- Dark Portal
    142542, -- Tome of Town Portal
    162973, -- Greatfather Winter"s Hearthstone
    163045, -- Headless Horseman"s Hearthstone
    165669, -- Lunar Elder"s Hearthstone
    165670, -- Peddlefeet"s Lovely Hearthstone
    165802, -- Noble Gardener"s Hearthstone
    166746, -- Fire Eater"s Hearthstone
    166747, -- Brewfest Reveler"s Hearthstone
}

function LRHS:UpdateMacro()
    if T.InCombatLockdown() then
        return self:RegisterEvent("PLAYER_REGEN_ENABLED")
    end

    local originHearthstone = T.GetItemInfo(6948)
    local hearthstone = originHearthstone

    local tbl = {}
    for _, itemID in T.ipairs(hearthstoneList) do
        if T.PlayerHasToy(itemID) then
            T.table_insert(tbl, itemID)
        end
    end
    if #tbl > 0 then
        hearthstone = T.GetItemInfo(tbl[T.random(#tbl)])
    end

    if not (originHearthstone and hearthstone) then
        return self:ScheduleTimer("UpdateMacro", 1)
    end

    local text = T.string_format(macroTemplate, originHearthstone, hearthstone)
    local name = T.GetMacroInfo(macroName)
    if not name then
        local numGlobal = T.GetNumMacros()
        if numGlobal < 72 then
            T.CreateMacro(macroName, "INV_MISC_QUESTIONMARK", text)
        end
    else
        T.EditMacro(macroName, nil, nil, text)
    end
end

function LRHS:PLAYER_REGEN_ENABLED()
    self:UnregisterEvent("PLAYER_REGEN_ENABLED")
    self:UpdateMacro()
end

function LRHS:Initialize()
    self:RegisterEvent("NEW_TOY_ADDED", "UpdateMacro")
    SlashCmdList["RHS"] = function(msg)
        if msg == "check" then
            self:UpdateMacro()
        else
            self:UpdateMacro()
            local name = T.GetMacroInfo(macroName)
            if name then
                LUI:Print("已创建随机炉石玩具宏，请放至动作栏！")
                T.PickupMacro("RHS")
            end
        end
    end
    SLASH_RHS1 = "/rhs"
end

local function InitializeCallback()
    if not E.db.lui.modules.actionbars.general.randomHearthstone["enable"] then return end
    LRHS:Initialize()
end

E:RegisterModule(LRHS:GetName(), InitializeCallback)