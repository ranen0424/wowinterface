local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule('Skins')

--Cache global variables
--Lua Variables
local _G = _G
local unpack = unpack
--WoW API / Variables
-- GLOBALS:

local function stylePvPMatchUI()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.pvp ~= true or E.private.lui.luiSkins.blizzard.pvp ~= true then return end

	local PVPMatchScoreboard = _G.PVPMatchScoreboard
	PVPMatchScoreboard.backdrop:Styling()

	local PVPMatchResults = _G.PVPMatchResults
	PVPMatchResults.backdrop:Styling()
end

S:AddCallbackForAddon("Blizzard_PVPMatch", "Lui_PVPMatch", stylePvPMatchUI)
