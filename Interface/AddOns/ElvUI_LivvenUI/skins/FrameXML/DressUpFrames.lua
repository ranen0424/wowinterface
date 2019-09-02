local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule("Skins")

--Cache global variables
local _G = _G
--WoW API / Variables
--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local function styleDressingroom()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.dressingroom ~= true or E.private.lui.luiSkins.blizzard.dressingroom ~= true then return end

	_G.DressUpFrame:Styling()

	-- Wardrobe edit frame
	_G.WardrobeOutfitFrame:Styling()
end

S:AddCallback("LuiDressingRoom", styleDressingroom)
