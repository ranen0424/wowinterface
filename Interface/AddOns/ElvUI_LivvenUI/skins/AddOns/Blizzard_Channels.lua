local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

-- Cache global variables
-- Lua functions
local _G = _G
-- WoW API
local hooksecurefunc = hooksecurefunc
-- Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local function styleChannels()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.Channels ~= true or E.private.lui.luiSkins.blizzard.channels ~= true then return end

	local ChannelFrame = _G.ChannelFrame
	ChannelFrame:StripTextures()
	ChannelFrame:Styling()

	local CreateChannelPopup = _G.CreateChannelPopup
	CreateChannelPopup:Styling()
end

S:AddCallbackForAddon("Blizzard_Channels", "LuiChannels", styleChannels)
