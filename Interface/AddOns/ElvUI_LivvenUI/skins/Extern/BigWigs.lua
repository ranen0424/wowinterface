local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

-- Cache global variables
-- Lua functions
local select, unpack = select, unpack
local tremove = table.remove
-- WoW API / Variables
local CreateFrame = CreateFrame
local GetAddOnInfo = GetAddOnInfo
-- GLOBALS: UIParent, BigWigs

local buttonsize = 19

-- Init a table to store the backgrounds
local FreeBackgrounds = {}

local function CreateBG()
	local BG = CreateFrame("Frame")
	LS:CreateBD(BG, .45)
	BG:Styling()
	return BG
end

local function FreeStyle(bar)
	local bg = bar:Get("bigwigs:MerathilisUI:bg")
	if bg then
		bg:ClearAllPoints()
		bg:SetParent(UIParent)
		bg:Hide()
		FreeBackgrounds[#FreeBackgrounds + 1] = bg
	end

	local ibg = bar:Get("bigwigs:MerathilisUI:ibg")
	if ibg then
		ibg:ClearAllPoints()
		ibg:SetParent(UIParent)
		ibg:Hide()
		FreeBackgrounds[#FreeBackgrounds + 1] = ibg
	end

	--Reset Positions
	--Icon
	bar.candyBarIconFrame:ClearAllPoints()
	bar.candyBarIconFrame:SetPoint("TOPLEFT")
	bar.candyBarIconFrame:SetPoint("BOTTOMLEFT")
	bar.candyBarIconFrame:SetTexCoord(0.07, 0.93, 0.07, 0.93)

	--Status Bar
	bar.candyBarBar:ClearAllPoints()
	bar.candyBarBar.SetPoint = nil
	bar.candyBarBar:SetPoint("TOPRIGHT")
	bar.candyBarBar:SetPoint("BOTTOMRIGHT")

	--BG
	bar.candyBarBackground:SetAllPoints()
end

local function ApplyStyle(bar)
	-- general bar settings
	local bg
	if #FreeBackgrounds > 0 then
		bg = tremove(FreeBackgrounds)
	else
		bg = CreateBG()
	end

	bg:SetParent(bar)
	bg:SetFrameStrata(bar:GetFrameStrata())
	bg:SetFrameLevel(bar:GetFrameLevel() - 1)
	bg:ClearAllPoints()
	bg:SetOutside(bar)
	bg:Show()
	bar:Set("bigwigs:MerathilisUI:bg", bg)

	bar:SetHeight(buttonsize / 2)

	if bar.candyBarIconFrame:GetTexture() then
		local ibg
		if #FreeBackgrounds > 0 then
			ibg = tremove(FreeBackgrounds)
		else
			ibg = CreateBG()
		end
		ibg:SetParent(bar)
		ibg:SetFrameStrata(bar:GetFrameStrata())
		ibg:SetFrameLevel(bar:GetFrameLevel() - 1)
		ibg:ClearAllPoints()
		ibg:SetOutside(bar.candyBarIconFrame)
		ibg:Show()
		bar:Set("bigwigs:MerathilisUI:ibg", ibg)
	end

	bar.candyBarBar:ClearAllPoints()
	bar.candyBarBar:SetAllPoints(bar)
	bar.candyBarBar.SetPoint = LUI.dummy

	bar.candyBarBackground:SetTexture(unpack(E["media"].backdropcolor))

	bar.candyBarIconFrame:ClearAllPoints()
	bar.candyBarIconFrame:SetPoint("BOTTOMRIGHT", bar, "BOTTOMLEFT", -7, 0)
	bar.candyBarIconFrame:SetSize(buttonsize, buttonsize)

	bar.candyBarLabel:ClearAllPoints()
	bar.candyBarLabel:SetPoint("LEFT", bar, "LEFT", 2, 10)
	bar.candyBarLabel:SetPoint("RIGHT", bar, "RIGHT", -2, 10)

	bar.candyBarDuration:ClearAllPoints()
	bar.candyBarDuration:SetPoint("LEFT", bar, "LEFT", 2, 10)
	bar.candyBarDuration:SetPoint("RIGHT", bar, "RIGHT", -2, 10)
end

local f = CreateFrame("Frame")
local function RegisterStyle()
	if not BigWigs then return end
	local styleName = LUI.Title or "MerathilisUI"
	local bars = BigWigs:GetPlugin("Bars", true)
	if not bars then return end
	bars:RegisterBarStyle(styleName, {
		apiVersion = 1,
		version = 10,
		GetSpacing = function() return 20 end,
		ApplyStyle = ApplyStyle,
		BarStopped = FreeStyle,
		GetStyleName = function() return styleName end,
	})
	bars.defaultDB.barStyle = styleName
end
f:RegisterEvent("ADDON_LOADED")

local reason = nil
f:SetScript("OnEvent", function(self, event, msg)
	if event == "ADDON_LOADED" then
		if not reason then reason = (select(6, GetAddOnInfo("BigWigs_Plugins"))) end
		if (reason == "MISSING" and msg == "BigWigs") or msg == "BigWigs_Plugins" then
			RegisterStyle()
		end
	end
end)
