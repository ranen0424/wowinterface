local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule('Skins')

--Cache global variables
--Lua functions
local _G = _G
--WoW API / Variables
local hooksecurefunc = hooksecurefunc
-- GLOBALS:

local r, g, b = unpack(E["media"].rgbvaluecolor)

local function styleUIWidgets()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.Warboard ~= true or E.private.lui.luiSkins.blizzard.warboard ~= true then return end

	-- Used for Currency Fonts (Warfront only?)
end

S:AddCallbackForAddon("Blizzard_UIWidgets", "LuiUIWidgets", styleUIWidgets)
