local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "actionbars", "general", "finishingMoveHighlight") then return end

local LBFMH = E:NewModule("LuiBlizzardFMH")

local ActionButton_GetOverlayGlow, ActionButton_ShowOverlayGlow, ActionButton_HideOverlayGlow, ActionButton_OverlayGlowAnimOutFinished, ActionButton_OverlayGlowOnUpdate

local unusedOverlayGlows = {}
local numOverlays = 0
function ActionButton_GetOverlayGlow()
	local overlay = tremove(unusedOverlayGlows)
	if ( not overlay ) then
		numOverlays = numOverlays + 1
		overlay = CreateFrame("Frame", "lvuiActionButtonOverlay"..numOverlays, UIParent, "lvuiActionBarButtonSpellActivationAlert")
	end
	return overlay
end

function ActionButton_ShowOverlayGlow(self)
	if ( self.lvui_overlay ) then
		if ( self.lvui_overlay.animOut:IsPlaying() ) then
			self.lvui_overlay.animOut:Stop()
			self.lvui_overlay.animIn:Play()
		end
	else
		self.lvui_overlay = ActionButton_GetOverlayGlow()
		local frameWidth, frameHeight = self:GetSize()
		self.lvui_overlay:SetParent(self)
		self.lvui_overlay:ClearAllPoints()
		self.lvui_overlay:SetSize(frameWidth * 1.4, frameHeight * 1.4)
		self.lvui_overlay:SetPoint("TOPLEFT", self, "TOPLEFT", -frameWidth * 0.2, frameHeight * 0.2)
		self.lvui_overlay:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT", frameWidth * 0.2, -frameHeight * 0.2)
		self.lvui_overlay.animIn:Play()
	end
end

function ActionButton_HideOverlayGlow(self)
	if ( self.lvui_overlay ) then
		if ( self.lvui_overlay.animIn:IsPlaying() ) then
			self.lvui_overlay.animIn:Stop()
		end
		if ( self:IsVisible() ) then
			self.lvui_overlay.animOut:Play()
		else
			ActionButton_OverlayGlowAnimOutFinished(self.lvui_overlay.animOut)
		end
	end
end

function ActionButton_OverlayGlowAnimOutFinished(animGroup)
	local overlay = animGroup:GetParent()
	local actionButton = overlay:GetParent()
	overlay:Hide()
	tinsert(unusedOverlayGlows, overlay)
	actionButton.lvui_overlay = nil
end

function ActionButton_OverlayGlowOnUpdate(self, elapsed)
	AnimateTexCoords(self.ants, 256, 256, 48, 48, 22, elapsed, 0.01)
	local cooldown = self:GetParent().cooldown
	if(cooldown and cooldown:IsShown() and cooldown:GetCooldownDuration() > 3000) then
		self:SetAlpha(0.5)
	else
		self:SetAlpha(1.0)
	end
end

CoreUIShowOverlayGlow = ActionButton_ShowOverlayGlow
CoreUIHideOverlayGlow = ActionButton_HideOverlayGlow
CoreUIOverlayGlowAnimOutFinished = ActionButton_OverlayGlowAnimOutFinished
CoreUIOverlayGlowOnUpdate = ActionButton_OverlayGlowOnUpdate

local OverlayedSpellID = {
	["ROGUE"] = {5171,193316,199804,2098,1943,32645,408,196819,195452,408,206237,26679},
	["DRUID"] = {52610,1079,22568,22570},
}

local GlowSpells = {}
for k,v in pairs(OverlayedSpellID) do
    for _, spell in ipairs(v) do
        GlowSpells[spell] = true
    end
end

local function IsOverlayedSpell(spellID)
	local _, class = UnitClass("player")
	if (not OverlayedSpellID[class]) then return false end
	local points = UnitPower("player", Enum.PowerType.ComboPoints)
	local maxPoints = UnitPowerMax("player", Enum.PowerType.ComboPoints)
	if GlowSpells[spellID] and points == maxPoints then
		return true
	end
	return false
end

local function comboEventFrame_OnEvent(self, event, ...)
	local parent = self:GetParent()
	local actionType, id, subType  = GetActionInfo(parent.action)
	local spellId
    if actionType == "spell" then
        spellId = id
    elseif actionType == "macro" then
        spellId = GetMacroSpell(id)
    end
	if spellId and (IsOverlayedSpell(spellId) or IsSpellOverlayed(spellId)) then
		CoreUIShowOverlayGlow(parent)
	else
		CoreUIHideOverlayGlow(parent)
	end
end

local function myActionButton_OnUpdate(self, elapsed)
    if self.comboEventFrame then return end
	self.comboEventFrame = CreateFrame("Frame", nil, self)
	self.comboEventFrame:RegisterEvent("UNIT_POWER_UPDATE")
	self.comboEventFrame:RegisterEvent("PLAYER_TARGET_CHANGED")
	self.comboEventFrame:SetScript("OnEvent", comboEventFrame_OnEvent)
end

function LBFMH:Initialize()
	hooksecurefunc("ActionButton_OnUpdate", myActionButton_OnUpdate)
end

local function InitializeCallback()
    if not E.db.lui.modules.actionbars.general["finishingMoveHighlight"] or E.private.actionbar["enable"] then return end
    LBFMH:Initialize()
end

E:RegisterModule(LBFMH:GetName(), InitializeCallback)
