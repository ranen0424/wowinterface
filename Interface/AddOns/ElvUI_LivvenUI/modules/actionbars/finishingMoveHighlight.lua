--来源：LivvenUI
--作者：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "actionbars", "general", "finishingMoveHighlight") then return end

local LFMH = E:NewModule("LuiFinishingMoveHighlight", "AceEvent-3.0")
local AB = LibStub("LibActionButton-1.0-ElvUI")
local LBG = LibStub("LibButtonGlow-1.0", true)

local ActiveButtons = AB.activeButtons
local OverlayedSpellID = {
    ["ROGUE"] = {5171, 193316, 199804, 2098, 1943, 32645, 408, 196819, 195452, 206237, 26679},
    ["DRUID"] = {52610, 1079, 22568, 22570},
}

local function ShowOverlayGlow(self)
    if LBG then
        LBG.ShowOverlayGlow(self)
    end
end

local function HideOverlayGlow(self)
    if LBG then
        LBG.HideOverlayGlow(self)
    end
end

local function IsOverlayedSpell(spellID)
    local _, class = T.UnitClass("player")
    if (not OverlayedSpellID[class]) then return false end
    local points = T.UnitPower("player", Enum.PowerType.ComboPoints)
    local maxPoints = T.UnitPowerMax("player", Enum.PowerType.ComboPoints)
    for i = 1, #OverlayedSpellID[class] do
        if spellID == OverlayedSpellID[class][i] and points == maxPoints then
            return true
        end
    end
    return false
end

local function UpdateOverlayGlow(self)
    local spellId = self:GetSpellId()
    if spellId and (IsOverlayedSpell(spellId) or T.IsSpellOverlayed(spellId)) then
        ShowOverlayGlow(self)
    else
        HideOverlayGlow(self)
    end
end

function LFMH:OnEvent()
    if ElvUI then
        for button in next, ActiveButtons do
            UpdateOverlayGlow(button)
        end
    end
end

function LFMH:Initialize()
    self:RegisterEvent("UNIT_POWER_UPDATE", "OnEvent")
    self:RegisterEvent("PLAYER_TARGET_CHANGED", "OnEvent")
end

local function InitializeCallback()
    if not E.db.lui.modules.actionbars.general["finishingMoveHighlight"] then return end
    LFMH:Initialize()
end

E:RegisterModule(LFMH:GetName(), InitializeCallback)
