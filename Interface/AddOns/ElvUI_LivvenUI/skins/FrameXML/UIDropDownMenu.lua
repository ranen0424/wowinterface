local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

--Cache global variables
local _G = _G
local unpack = unpack
local hooksecurefunc = hooksecurefunc
--WoW API / Variables
--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local r, g, b = unpack(E["media"].rgbvaluecolor)

local function styleUIDropDownMenu()
	if E.private.skins.blizzard.enable ~= true then return end

end

S:AddCallback("LuiUIDropDownMenu", styleUIDropDownMenu)
