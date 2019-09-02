local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LAB = E:NewModule("LuiActionbars", "AceEvent-3.0")

if E.private.actionbar.enable ~= true then return end

local _G = _G
local pairs = pairs
local IsAddOnLoaded = IsAddOnLoaded
local C_TimerAfter = C_Timer.After

local availableActionbars = availableActionbars or 6
local styleOtherBacks = {ElvUI_BarPet, ElvUI_StanceBar}

local function CheckExtraAB()
	if IsAddOnLoaded("ElvUI_ExtraActionBars") then
		availableActionbars = 10
	else
		availableActionbars = 6
	end
end

function LAB:TransparentBackdrops()
	for i = 1, availableActionbars do
		local transBars = {_G['ElvUI_Bar'..i]}
		for _, frame in pairs(transBars) do
			if frame.backdrop then
				frame.backdrop:SetTemplate('Transparent')
			end
		end

		for k = 1, 12 do
			local buttonBars = {_G["ElvUI_Bar"..i.."Button"..k]}
			for _, button in pairs(buttonBars) do
				if button.backdrop then
					button.backdrop:Styling()
					button.backdrop:SetTemplate("Transparent")
				end
			end
		end
	end

	for _, frame in pairs(styleOtherBacks) do
		if frame.backdrop then
			frame.backdrop:SetTemplate('Transparent')
		end
	end

	for i = 1, NUM_PET_ACTION_SLOTS do
		local petButtons = {_G['PetActionButton'..i]}
		for _, button in pairs(petButtons) do
			if button.backdrop then
				button.backdrop:SetTemplate('Transparent')
			end
		end
	end
end

function LAB:StyleBackdrops()
	for i = 1, availableActionbars do
		local styleBacks = {_G['ElvUI_Bar'..i]}
		for _, frame in pairs(styleBacks) do
			if frame.backdrop then
				frame.backdrop:Styling()
			end
		end
	end

	for _, frame in pairs(styleOtherBacks) do
		if frame.backdrop then
			frame.backdrop:Styling()
		end
	end

	for i = 1, NUM_PET_ACTION_SLOTS do
		local petButtons = {_G['PetActionButton'..i]}
		for _, button in pairs(petButtons) do
			if button.backdrop then
				button.backdrop:Styling()
			end
		end
	end
end

function LAB:Initialize()
	CheckExtraAB()
	C_TimerAfter(1, LAB.StyleBackdrops)
	C_TimerAfter(1, LAB.TransparentBackdrops)
end

local function InitializeCallback()
	LAB:Initialize()
end

E:RegisterModule(LAB:GetName(), InitializeCallback)