local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule('Skins')

--Cache global variables
--Lua functions
local _G = _G
--WoW API / Variables

--Global variables that we don't cache, list them here for mikk's FindGlobals script
-- GLOBALS:

local r, g, b = unpack(E["media"].rgbvaluecolor)

local function styleVoidStorage()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.voidstorage ~= true or E.private.lui.luiSkins.blizzard.voidstorage ~= true then return end

	local VoidStorageFrame = _G.VoidStorageFrame
	VoidStorageFrame:Styling()

	VoidStorageFrame.Page1:ClearAllPoints()
	VoidStorageFrame.Page1:SetPoint("LEFT", VoidStorageFrame, "TOPRIGHT", 2, -60)
end

S:AddCallbackForAddon("Blizzard_VoidStorageUI", "LuiVoidStorage", styleVoidStorage)
