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

local function styleIslandsPartyPose()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.IslandsPartyPose ~= true or E.private.lui.luiSkins.blizzard.IslandsPartyPose ~= true then return end

	local IslandsPartyPoseFrame = _G.IslandsPartyPoseFrame
	IslandsPartyPoseFrame:Styling()

	IslandsPartyPoseFrame.ModelScene:StripTextures()
	LS:CreateBDFrame(IslandsPartyPoseFrame.ModelScene, .25)

	IslandsPartyPoseFrame.Background:Hide()

	local rewardFrame = IslandsPartyPoseFrame.RewardAnimations.RewardFrame
	local bg = LS:CreateBDFrame(rewardFrame)
	bg:SetPoint("TOPLEFT", -5, 5)
	bg:SetPoint("BOTTOMRIGHT", rewardFrame.NameFrame, 0, -5)

	rewardFrame.NameFrame:SetAlpha(0)
	rewardFrame.IconBorder:SetAlpha(0)
	rewardFrame.Icon:SetTexCoord(unpack(E.TexCoords))
	LS:CreateBDFrame(rewardFrame.Icon)
end

S:AddCallbackForAddon("Blizzard_IslandsPartyPoseUI", "LuiIslandsPartyPose", styleIslandsPartyPose)
