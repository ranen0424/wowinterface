local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule("Skins")

--Cache global variables
local _G = _G
--WoW API / Variables

--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local function styleGuildRecruitment()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.guild ~= true then return end

	local rolesFrame = _G.CommunitiesGuildRecruitmentFrameRecruitment.RolesFrame
	LUI:ReskinRole(rolesFrame.TankButton, "TANK")
	LUI:ReskinRole(rolesFrame.HealerButton, "HEALER")
	LUI:ReskinRole(rolesFrame.DamagerButton, "DPS")
end

S:AddCallbackForAddon("Blizzard_GuildRecruitmentUI", "LuiGuildRecruitment", styleGuildRecruitment)
