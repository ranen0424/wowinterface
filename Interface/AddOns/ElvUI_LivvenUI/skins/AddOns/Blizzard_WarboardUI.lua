local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

--Cache global variables
--Lua functions
local _G = _G
--WoW API / Variables
local CreateFrame = CreateFrame
--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS: hooksecurefunc, ContributionRewardMixin, ContributionMixin

local function styleWarboard()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.Warboard ~= true or E.private.lui.luiSkins.blizzard.warboard ~= true then return end

	local WarboardQuestChoiceFrame = _G.WarboardQuestChoiceFrame
	WarboardQuestChoiceFrame:Styling()

	for i = 1, 4 do
		local option = WarboardQuestChoiceFrame["Option"..i]
		if not option.backdrop then
			option:CreateBackdrop("Transparent")
			option.backdrop:SetPoint("TOPLEFT", -2, 15)
			LS:CreateGradient(option.backdrop)
		end

		option.Header.Ribbon:Hide()
		option.Background:Hide()
		option.ArtworkBorder:SetAlpha(0)
	end
end

S:AddCallbackForAddon("Blizzard_WarboardUI", "LuiWarboard", styleWarboard)
