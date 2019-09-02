local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")
if not IsAddOnLoaded("XIV_Databar") then return end

-- Cache global variables
-- Lua functions
local _G = _G
-- WoW API / Variables
-- GLOBALS:

local function styleXIV_Databar()
	if E.private.lui.luiSkins.addonSkins.xiv ~= true then return end

	local XIV_Databar = _G.XIV_Databar

	XIV_Databar:StripTextures()
	LS:CreateBD(XIV_Databar, .5)
	XIV_Databar:Styling()
	XIV_Databar:SetParent(E.UIParent)

	_G.SpecPopup:SetTemplate("Transparent")
	_G.LootPopup:SetTemplate("Transparent")
	_G.portPopup:SetTemplate("Transparent")
end

S:AddCallbackForAddon("XIV_Databar", "LuiXIV_Databar", styleXIV_Databar)
