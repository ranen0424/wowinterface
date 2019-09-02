local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule('Skins')

--Cache global variables
local _G = _G
local ipairs, pairs, select, unpack = ipairs, pairs, select, unpack
--WoW API / Variables
local C_QuestLine_GetQuestLineQuests = C_QuestLine.GetQuestLineQuests
local C_QuestLog_IsOnQuest = C_QuestLog.IsOnQuest
local C_TaskQuest_RequestPreloadRewardData = C_TaskQuest.RequestPreloadRewardData
local CreateFrame = CreateFrame
local hooksecurefunc = hooksecurefunc
local GetCurrencyInfo = GetCurrencyInfo
local GetItemInfo = GetItemInfo
local GetItemQualityColor = GetItemQualityColor
local GetQuestLogRewardInfo = GetQuestLogRewardInfo
local CurrencyContainerUtil_GetCurrencyContainerInfo = CurrencyContainerUtil.GetCurrencyContainerInfo
local IsQuestFlaggedCompleted = IsQuestFlaggedCompleted
local HaveQuestRewardData = HaveQuestRewardData
--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local r, g, b = unpack(E["media"].rgbvaluecolor)

local function stylePvP()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.pvp ~= true or E.private.lui.luiSkins.blizzard.pvp ~= true then return end

	_G.PVPReadyDialog:Styling()

	local PVPQueueFrame = _G.PVPQueueFrame
	local HonorFrame = _G.HonorFrame
	local ConquestFrame = _G.ConquestFrame
	local WarGamesFrame = _G.WarGamesFrame

	local iconSize = 60-2*E.mult
	for i = 1, 3 do
		local bu = PVPQueueFrame["CategoryButton"..i]
		local cu = bu.CurrencyDisplay

		LS:Reskin(bu)

		bu.Icon:SetSize(iconSize, iconSize)
		bu.Icon:SetDrawLayer("OVERLAY")
		bu.Icon:ClearAllPoints()
		bu.Icon:SetPoint("LEFT", bu, "LEFT", 4, 0)

		if cu then
			local ic = cu.Icon

			ic:SetSize(16, 16)
			ic:SetPoint("TOPLEFT", bu.Name, "BOTTOMLEFT", 0, -8)
			cu.Amount:SetPoint("LEFT", ic, "RIGHT", 4, 0)

			ic:SetTexCoord(unpack(E.TexCoords))
			ic.bg = LS:CreateBG(ic)
			ic.bg:SetDrawLayer("BACKGROUND", 1)
		end
	end

	-- Casual - HonorFrame
	local Inset = HonorFrame.Inset
	local BonusFrame = HonorFrame.BonusFrame

	BonusFrame.WorldBattlesTexture:Hide()
	BonusFrame.ShadowOverlay:Hide()

	local buttons = { ['RandomBGButton'] = HonorFrame.BonusFrame, ['RandomEpicBGButton'] = HonorFrame.BonusFrame, ['Arena1Button'] = HonorFrame.BonusFrame, ['BrawlButton'] = HonorFrame.BonusFrame, ['RatedBG'] = ConquestFrame, ['Arena2v2'] = ConquestFrame, ['Arena3v3'] = ConquestFrame }

	for section, parent in pairs(buttons) do
		local button = parent[section]

		if button.backdrop then button.backdrop:Hide() end

		button.SelectedTexture:SetDrawLayer("BACKGROUND")
		button.SelectedTexture:SetColorTexture(r, g, b, .2)
		button.SelectedTexture:SetAllPoints()

		button.Reward.Icon:SetInside(button.Reward)

		LS:CreateBackdrop(button.Reward)
		button.Reward.backdrop:SetOutside(button.Reward)
	end

	hooksecurefunc('PVPUIFrame_ConfigureRewardFrame', function(rewardFrame, honor, experience, itemRewards, currencyRewards)
		local rewardTexture, rewardQuaility = nil, 1

		if currencyRewards then
			for _, reward in ipairs(currencyRewards) do
				local name, _, texture, _, _, _, _, quality = GetCurrencyInfo(reward.id)
				if quality == _G.LE_ITEM_QUALITY_ARTIFACT then
					_, rewardTexture, _, rewardQuaility = CurrencyContainerUtil_GetCurrencyContainerInfo(reward.id, reward.quantity, name, texture, quality)
				end
			end
		end

		local _
		if not rewardTexture and itemRewards then
			local reward = itemRewards[1]
			if reward then
				_, _, rewardQuaility, _, _, _, _, _, _, rewardTexture = GetItemInfo(reward.id)
			end
		end

		if rewardTexture then
			rewardFrame.Icon:SetTexture(rewardTexture)
			rewardFrame.backdrop:SetBackdropBorderColor(GetItemQualityColor(rewardQuaility))
		end
	end)

	-- Honor frame specific
	for _, bu in pairs(HonorFrame.SpecificFrame.buttons) do
		bu.Bg:Hide()
		bu.Border:Hide()

		LS:Reskin(bu)

		-- Hide ElvUI backdrop
		if bu.backdrop then
			bu.backdrop:Hide()
		end

		bu:SetNormalTexture("")
		bu:SetHighlightTexture("")

		local bg = CreateFrame("Frame", nil, bu)
		bg:SetPoint("TOPLEFT", 2, 0)
		bg:SetPoint("BOTTOMRIGHT", -1, 2)
		LS:CreateBD(bg, 0)
		bg:SetFrameLevel(bu:GetFrameLevel()-1)

		bu.tex = LS:CreateGradient(bu)
		bu.tex:SetDrawLayer("BACKGROUND")
		bu.tex:SetPoint("TOPLEFT", bg, 1, -1)
		bu.tex:SetPoint("BOTTOMRIGHT", bg, -1, 1)

		bu.SelectedTexture:SetDrawLayer("BACKGROUND")
		bu.SelectedTexture:SetColorTexture(r, g, b, .2)
		bu.SelectedTexture:SetAllPoints(bu.tex)

		bu.Icon:SetTexCoord(unpack(E.TexCoords))
		bu.Icon.bg = LS:CreateBG(bu.Icon)
		bu.Icon.bg:SetDrawLayer("BACKGROUND", 1)
		bu.Icon:SetPoint("TOPLEFT", 5, -3)
	end

	local rewardIcon = HonorFrame.ConquestBar.Reward.Icon
	if not rewardIcon.backdrop then
		LS:CreateBackdrop(rewardIcon)
		rewardIcon.backdrop:SetOutside(rewardIcon)
	end

	-- Credits Azilroka
	hooksecurefunc(HonorFrame.ConquestBar.Reward.Icon, 'SetTexture', function(self) -- Code taken from :GetConquestLevelInfo the function isn't returning the correct id somehow.
		local Quality
		for _, questID in ipairs(C_QuestLine_GetQuestLineQuests(782)) do
			if not IsQuestFlaggedCompleted(questID) and not C_QuestLog_IsOnQuest(questID) then
				break
			end
			if HaveQuestRewardData(questID) then
				local itemID = select(6, GetQuestLogRewardInfo(1, questID))
				Quality = select(3, GetItemInfo(itemID))
			else
				C_TaskQuest_RequestPreloadRewardData(questID) -- Taken from WorldMapFrame
			end
		end
		if Quality then
			self.backdrop:SetBackdropBorderColor(GetItemQualityColor(Quality))
		else
			self.backdrop:SetBackdropBorderColor(unpack(E["media"].bordercolor))
		end
	end)

	-- Rated - ConquestFrame
	local rewardIcon = ConquestFrame.ConquestBar.Reward.Icon
	if not rewardIcon.backdrop then
		LS:CreateBackdrop(rewardIcon)
		rewardIcon.backdrop:SetOutside(rewardIcon)
	end

	-- Credits Azilroka
	hooksecurefunc(ConquestFrame.ConquestBar.Reward.Icon, 'SetTexture', function(self) -- Code taken from :GetConquestLevelInfo the function isn't returning the correct id somehow.
		local Quality
		for _, questID in ipairs(C_QuestLine_GetQuestLineQuests(782)) do
			if not IsQuestFlaggedCompleted(questID) and not C_QuestLog_IsOnQuest(questID) then
				break
			end
			if HaveQuestRewardData(questID) then
				local itemID = select(6, GetQuestLogRewardInfo(1, questID))
				Quality = select(3, GetItemInfo(itemID))
			else
				C_TaskQuest_RequestPreloadRewardData(questID) -- Taken from WorldMapFrame
			end
		end
		if Quality then
			self.backdrop:SetBackdropBorderColor(GetItemQualityColor(Quality))
		else
			self.backdrop:SetBackdropBorderColor(unpack(E["media"].bordercolor))
		end
	end)
end

S:AddCallbackForAddon("Blizzard_PVPUI", "LuiPvPUI", stylePvP)
