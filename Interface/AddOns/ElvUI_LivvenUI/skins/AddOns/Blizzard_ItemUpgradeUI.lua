local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

-- Cache global variables
-- Lua functions
local _G = _G
local unpack = unpack
-- WoW API
local CreateFrame = CreateFrame
local hooksecurefunc = hooksecurefunc
local GetItemUpgradeItemInfo = GetItemUpgradeItemInfo
--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local function styleItemUpgrade()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.itemUpgrade ~= true or E.private.lui.luiSkins.blizzard.itemUpgrade ~= true then return end

	local ItemUpgradeFrame = _G.ItemUpgradeFrame
	ItemUpgradeFrame:Styling()
end

S:AddCallbackForAddon("Blizzard_ItemUpgradeUI", "LuiItemUpgrade", styleItemUpgrade)
