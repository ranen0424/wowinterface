local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

-- Cache global variables
-- Lua functions
local _G = _G
local unpack = unpack
-- WoW API
--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local function styleWarfrontPartyPose()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.IslandsPartyPose ~= true or E.private.lui.luiSkins.blizzard.IslandsPartyPose ~= true then return end

	local WarfrontsPartyPoseFrame = _G.WarfrontsPartyPoseFrame
	WarfrontsPartyPoseFrame:Styling()

	WarfrontsPartyPoseFrame.ModelScene:SetAlpha(.8)
	WarfrontsPartyPoseFrame.OverlayElements.Topper:Hide()
	WarfrontsPartyPoseFrame.Background:Hide()
	WarfrontsPartyPoseFrame.Border:Hide()

	local rewardFrame = WarfrontsPartyPoseFrame.RewardAnimations.RewardFrame
	-- Hide ElvUI's backdrop
	if rewardFrame.backdrop then rewardFrame.backdrop:Hide() end

	local bg = LS:CreateBDFrame(rewardFrame)
	bg:SetPoint("TOPLEFT", -5, 5)
	bg:SetPoint("BOTTOMRIGHT", rewardFrame.NameFrame, 0, -5)

	rewardFrame.NameFrame:SetAlpha(0)
	rewardFrame.IconBorder:SetAlpha(0)
	rewardFrame.Icon:SetTexCoord(unpack(E.TexCoords))

	LS:CreateBDFrame(rewardFrame.Icon)
end

S:AddCallbackForAddon("Blizzard_WarfrontsPartyPoseUI", "LuiWarfrontPartyPose", styleWarfrontPartyPose)
