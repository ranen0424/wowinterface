local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule("Skins")

--Cache global variables
--Lua functions
local _G = _G
--WoW API / Variables

local function styleTaxi()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.taxi ~= true or E.private.lui.luiSkins.blizzard.taxi ~= true then return end

	_G.TaxiFrame:Styling()
	_G.TaxiRouteMap:Styling()
end

S:AddCallback("LuiTaxi", styleTaxi)
