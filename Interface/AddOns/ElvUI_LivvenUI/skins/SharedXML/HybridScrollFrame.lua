local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

-- Cache global variables
-- Lua functions
local _G = _G
-- WoW API

-- Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

--[[ SharedXML\HybridScrollFrame.xml ]]
function LUI:HybridScrollBarTemplate(Slider)
	local parent = Slider:GetParent()
	Slider:SetPoint("TOPLEFT", parent, "TOPRIGHT", 0, -17)
	Slider:SetPoint("BOTTOMLEFT", parent, "BOTTOMRIGHT", 0, 17)

	Slider.trackBG:SetAlpha(0)

	Slider.ScrollBarTop:Hide()
	Slider.ScrollBarMiddle:Hide()
	Slider.ScrollBarBottom:Hide()

	parent.scrollUp:SetPoint("BOTTOM", Slider, "TOP")
	LUI:UIPanelScrollUpButtonTemplate(parent.scrollUp)

	parent.scrollDown:SetPoint("TOP", Slider, "BOTTOM")
	LUI:UIPanelScrollDownButtonTemplate(parent.scrollDown)

	Slider.thumbTexture:SetAlpha(0)
	Slider.thumbTexture:SetSize(17, 24)

	local thumb = _G.CreateFrame("Frame", nil, Slider)
	thumb:SetPoint("TOPLEFT", Slider.thumbTexture, 0, -2)
	thumb:SetPoint("BOTTOMRIGHT", Slider.thumbTexture, 0, 2)
	Slider._LuiThumb = thumb

	Slider:SetSize(Slider:GetSize())
end