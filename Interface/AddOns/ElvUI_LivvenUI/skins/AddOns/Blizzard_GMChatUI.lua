local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule("Skins")

-- Cache global variables
-- Lua functions
local _G = _G

-- WoW API
-- GLOBALS:

local function styleGMChatUI()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.GMChat ~= true or E.private.lui.luiSkins.blizzard.GMChat ~= true then return end

	if _G.GMChatFrame.backdrop then
		_G.GMChatFrame.backdrop:Styling()
	end

	if _G.GMChatTab.backdrop then
		_G.GMChatTab.backdrop:Styling()
	end
end

S:AddCallbackForAddon("Blizzard_GMChatUI", "LuiGMChatUI", styleGMChatUI)
