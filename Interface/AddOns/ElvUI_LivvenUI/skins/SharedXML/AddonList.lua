local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule("Skins")

-- Cache global variables
-- Lua functions
local _G = _G
-- WoW API

-- Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local function styleAddonManager()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.addonManager ~= true or E.private.lui.luiSkins.blizzard.addonManager ~= true then return end

	_G["AddonList"]:Styling()

	_G["AddonCharacterDropDown"]:SetWidth(170)
end

S:AddCallback("LuiAddonManager", styleAddonManager)