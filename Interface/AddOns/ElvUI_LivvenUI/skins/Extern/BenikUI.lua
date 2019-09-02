local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule("Skins")
if not IsAddOnLoaded("ElvUI_BenikUI") then return end

-- Cache global variables
-- Lua functions
local _G = _G
local pairs = pairs
-- WoW API / Variables
local CreateFrame = CreateFrame
-- GLOBALS:

local function styleBenikUI()
	if E.private.lui.luiSkins.addonSkins.bui ~= true then return end

	local BuiLeftChatDTPanel = _G.BuiLeftChatDTPanel
	if BuiLeftChatDTPanel then
		BuiLeftChatDTPanel:Styling()
	end

	local BuiMiddleDTPanel = _G.BuiMiddleDTPanel
	if BuiMiddleDTPanel and E.db.benikui.datatexts.middle.backdrop == true then --requires now a reload, otherwise my style is still showing
		BuiMiddleDTPanel:Styling()
	end

	local BuiRightChatDTPanel = _G.BuiRightChatDTPanel
	if BuiRightChatDTPanel then
		BuiRightChatDTPanel:Styling()
	end

	local BuiTaxiButton = _G.BuiTaxiButton
	if BuiTaxiButton then
		BuiTaxiButton:Styling()
	end

	-- Style the datapanel buttons
	local f = CreateFrame("Frame")
	f:RegisterEvent("PLAYER_ENTERING_WORLD")
	f:SetScript("OnEvent", function(self, event)
		if event then
			for i = 1, 4 do
				local button = _G["BuiButton_"..i]
				if button then
					button:Styling()
				end
			end
			f:UnregisterEvent("PLAYER_ENTERING_WORLD")
		end
	end)
end

S:AddCallbackForAddon("ElvUI_BenikUI", "LuiBenikUI", styleBenikUI)
