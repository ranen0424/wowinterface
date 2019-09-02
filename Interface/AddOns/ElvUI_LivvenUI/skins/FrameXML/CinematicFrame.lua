local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule("Skins")

--Cache global variables
local _G = _G
--WoW API / Variables
local UIParent = UIParent
--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local function styleCinematic()
	if E.private.skins.blizzard.enable ~= true then return end

end

S:AddCallback("LuiCinematic", styleCinematic)
