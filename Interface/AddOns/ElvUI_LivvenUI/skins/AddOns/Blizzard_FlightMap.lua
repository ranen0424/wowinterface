local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule("Skins")

--Cache global variables
--Lua functions
local _G = _G
--WoW API / Variables

--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local function styleFlightMap()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.taxi ~= true or E.private.lui.luiSkins.blizzard.taxi ~= true then return end

	_G.FlightMapFrame:Styling()
end

S:AddCallbackForAddon("Blizzard_FlightMap", "LuiFlightMap", styleFlightMap)
