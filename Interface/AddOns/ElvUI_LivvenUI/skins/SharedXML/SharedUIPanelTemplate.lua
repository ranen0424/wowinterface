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

function LUI:UIPanelStretchableArtScrollBarTemplate(Slider)
	LUI:UIPanelScrollBarTemplate(Slider)

	Slider.Top:Hide()
	Slider.Bottom:Hide()
	Slider.Middle:Hide()

	Slider.Background:Hide()
end

function LUI:PortraitFrameTemplateNoCloseButton(Frame)
	local name = Frame:GetName()

	Frame.Bg:Hide()
	_G[name.."TitleBg"]:Hide()
	Frame.portrait:SetAlpha(0)
	Frame.PortraitFrame:SetTexture("")
	Frame.TopRightCorner:Hide()
	Frame.TopLeftCorner:SetTexture("")
	Frame.TopBorder:SetTexture("")

	Frame.TopTileStreaks:SetTexture("")
	Frame.BotLeftCorner:Hide()
	Frame.BotRightCorner:Hide()
	Frame.BottomBorder:Hide()
	Frame.LeftBorder:Hide()
	Frame.RightBorder:Hide()

	Frame:SetSize(Frame:GetSize())
end

function LUI:PortraitFrameTemplate(Frame)
	LUI:PortraitFrameTemplateNoCloseButton(Frame)
	Frame.CloseButton:SetPoint("TOPRIGHT", -5, -5)
end

function LUI:InsetFrameTemplate(Frame)
	Frame.Bg:Hide()

	Frame.InsetBorderTopLeft:Hide()
	Frame.InsetBorderTopRight:Hide()

	Frame.InsetBorderBottomLeft:Hide()
	Frame.InsetBorderBottomRight:Hide()

	Frame.InsetBorderTop:Hide()
	Frame.InsetBorderBottom:Hide()
	Frame.InsetBorderLeft:Hide()
	Frame.InsetBorderRight:Hide()
end

function LUI:ButtonFrameTemplate(Frame)
	LUI:PortraitFrameTemplate(Frame)
	local name = Frame:GetName()

	_G[name.."BtnCornerLeft"]:SetTexture("")
	_G[name.."BtnCornerRight"]:SetTexture("")
	_G[name.."ButtonBottomBorder"]:SetTexture("")
	LUI:InsetFrameTemplate(Frame.Inset)

	--[[ Scale ]]--
	Frame.Inset:SetPoint("TOPLEFT", 4, -60)
	Frame.Inset:SetPoint("BOTTOMRIGHT", -6, 26)
end