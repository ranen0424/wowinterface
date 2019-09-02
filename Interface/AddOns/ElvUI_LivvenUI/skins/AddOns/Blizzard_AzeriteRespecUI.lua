local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

--Cache global variables
--Lua functions
local _G = _G
--WoW API / Variables

--Global variables that we don't cache, list them here for mikk's FindGlobals script
-- GLOBALS:

local function styleRespec()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.AzeriteRespec ~= true or E.private.lui.luiSkins.blizzard.AzeriteRespec ~= true then return end

	local AzeriteRespecFrame = _G.AzeriteRespecFrame
	AzeriteRespecFrame:Styling()
end

S:AddCallbackForAddon("Blizzard_AzeriteRespecUI", "LuiAzeriteRespec", styleRespec)
