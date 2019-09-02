local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LUIB = E:NewModule("LuiBags", "AceHook-3.0", "AceEvent-3.0", "AceTimer-3.0")
local B = E:GetModule("Bags")

local ipairs, pairs = ipairs, pairs
local floor = math.floor
local GetContainerNumSlots = GetContainerNumSlots

function LUIB:SkinBags()
	if ElvUI_ContainerFrame then
		ElvUI_ContainerFrame:Styling()
		ElvUI_ContainerFrameContainerHolder:Styling()
	end

	if ElvUIBags then
		ElvUIBags.backdrop:Styling()
	end
end

function LUIB:SkinBank()
	if ElvUI_BankContainerFrame then
		ElvUI_BankContainerFrame:Styling()
		ElvUI_BankContainerFrameContainerHolder:Styling()
	end
end

function LUIB:ReskinSellFrame()
	if B.SellFrame then
		B.SellFrame:Styling()
		B.SellFrame.statusbar:SetStatusBarColor(unpack(E["media"].rgbvaluecolor))
	end
end
hooksecurefunc(B, "CreateSellFrame", LUIB.ReskinSellFrame)

function LUIB:AllInOneBags()
	self:SkinBags()
	self:RegisterEvent('BANKFRAME_OPENED', 'SkinBank')
end

function LUIB:SkinBlizzBags()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.bags ~= true or E.private.bags.enable then return end

	for i = 1, NUM_CONTAINER_FRAMES, 1 do
		local container = _G['ContainerFrame'..i]
		if container.backdrop then
			container.backdrop:Styling()
		end
	end

	if BankFrame then
		BankFrame:Styling()
	end
end

function LUIB:HookBags(isBank)
	local slot
	for _, bagFrame in pairs(B.BagFrames) do
		--Applying transparent template for all current slots
		for _, bagID in pairs(bagFrame.BagIDs) do
			for slotID = 1, GetContainerNumSlots(bagID) do
				if bagFrame.Bags[bagID] then
					slot = bagFrame.Bags[bagID][slotID]
					if slot.template ~= "Transparent" then
						slot:SetTemplate('Transparent')
					end
				end
			end
		end
	end

	--Applying transparent template for reagent bank
	if _G["ElvUIReagentBankFrameItem1"] and _G["ElvUIReagentBankFrameItem1"].template ~= "Transparent" then
		for slotID = 1, 98 do
			local slot = _G["ElvUIReagentBankFrameItem"..slotID]
			if slot.template ~= "Transparent" then slot:SetTemplate('Transparent') end
		end
	end
end

function LUIB:Initialize()
	if E.private.bags.enable ~= true then return end

	self:AllInOneBags()
	self:SkinBlizzBags()
	self:SkinBank()
	-- self:HookBags()
	-- hooksecurefunc(B, "Layout", function(self, isBank)
	-- 	LUIB:HookBags(isBank)
	-- end)

	-- LUIB.InitialUpdates = {
	-- 	Bank = false,
	-- 	ReagentBank = false,
	-- 	ReagentBankButton = false,
	-- }

	-- --Fix borders for bag frames
	-- hooksecurefunc(B, "OpenBank", function()
	-- 	if not LUIB.InitialUpdates.Bank then --For bank, just update on first show
	-- 		B:Layout(true)
	-- 		LUIB.InitialUpdates.Bank = true
	-- 	end

	-- 	if not LUIB.InitialUpdates.ReagentBankButton then --For reagent bank, hook to toggle button and update layout when first clicked
	-- 		_G["ElvUI_BankContainerFrame"].reagentToggle:HookScript("OnClick", function()
	-- 			if not LUIB.InitialUpdates.ReagentBank then
	-- 				B:Layout(true)
	-- 				LUIB.InitialUpdates.ReagentBank = true
	-- 			end
	-- 		end)
	-- 		LUIB.InitialUpdates.ReagentBankButton = true
	-- 	end
	-- end)
end

local function InitializeCallback()
	LUIB:Initialize()
end

E:RegisterModule(LUIB:GetName(), InitializeCallback)
