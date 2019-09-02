local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

--Cache global variables
--Lua functions
local _G = _G
--WoW API / Variables
local hooksecurefunc = hooksecurefunc
--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local function styleContribution()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.Contribution ~= true or E.private.lui.luiSkins.blizzard.contribution ~= true then return end

	--Main Frame
	_G.ContributionCollectionFrame:StripTextures()
	LS:CreateBD(_G.ContributionCollectionFrame, .25)

	_G.ContributionCollectionFrame:Styling()

	local function styleText(self)
		self.Description:SetVertexColor(1, 1, 1)
	end
	hooksecurefunc(_G.ContributionMixin, "Setup", styleText)

	local function styleRewardText(self)
		self.RewardName:SetTextColor(1, 1, 1)
	end
	hooksecurefunc(_G.ContributionRewardMixin, "Setup", styleRewardText)
end

S:AddCallbackForAddon("Blizzard_Contribution", "LuiContribution", styleContribution)
