local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule("Skins")
if not IsAddOnLoaded("ActionBarProfiles") then return end

-- Cache global variables
-- Lua functions
local _G = _G
local pairs = pairs
-- WoW API / Variables
-- GLOBALS:

local function styleActionBarProfile()
	if E.private.lui.luiSkins.addonSkins.abp ~= true then return end

	S:HandleScrollBar(_G.PaperDollActionBarProfilesPaneScrollBar, 5)
	S:HandleButton(_G.PaperDollActionBarProfilesPaneUseProfile)
	S:HandleButton(_G.PaperDollActionBarProfilesPaneSaveProfile)
	_G.PaperDollActionBarProfilesPaneUseProfile:Width(_G.PaperDollActionBarProfilesPaneUseProfile:GetWidth() - 8)
	_G.PaperDollActionBarProfilesPaneSaveProfile:Width(_G.PaperDollActionBarProfilesPaneSaveProfile:GetWidth() - 8)
	_G.PaperDollActionBarProfilesPaneUseProfile:Point("TOPLEFT", _G.PaperDollActionBarProfilesPane, "TOPLEFT", 8, 0)
	_G.PaperDollActionBarProfilesPaneSaveProfile:Point("LEFT", _G.PaperDollActionBarProfilesPaneUseProfile, "RIGHT", 4, 0)
	_G.PaperDollActionBarProfilesPaneUseProfile.ButtonBackground:SetTexture(nil)

	for _, object in pairs(_G.PaperDollActionBarProfilesPane.buttons) do
		object.BgTop:SetTexture(nil)
		object.BgBottom:SetTexture(nil)
		object.BgMiddle:SetTexture(nil)
	end

	-- Save Dialog
	_G.PaperDollActionBarProfilesSaveDialog:StripTextures()
	_G.PaperDollActionBarProfilesSaveDialog:SetTemplate("Transparent")
	S:HandleButton(_G.PaperDollActionBarProfilesSaveDialogOkay)
	S:HandleButton(_G.PaperDollActionBarProfilesSaveDialogCancel)
	S:HandleEditBox(_G.PaperDollActionBarProfilesSaveDialogEditBox)

	S:HandleCheckBox(_G.PaperDollActionBarProfilesSaveDialogOptionActions)
	S:HandleCheckBox(_G.PaperDollActionBarProfilesSaveDialogOptionEmptySlots)
	S:HandleCheckBox(_G.PaperDollActionBarProfilesSaveDialogOptionTalents)
	S:HandleCheckBox(_G.PaperDollActionBarProfilesSaveDialogOptionMacros)
	S:HandleCheckBox(_G.PaperDollActionBarProfilesSaveDialogOptionPetActions)
	S:HandleCheckBox(_G.PaperDollActionBarProfilesSaveDialogOptionBindings)
end

S:AddCallbackForAddon("ActionBarProfiles", "LuiActionBarProfiles", styleActionBarProfile)
