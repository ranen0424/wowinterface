local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "quest", "questAutomation", "enable") then return end
local LQAU = E:NewModule("LuiQuestAutomation", "AceEvent-3.0")

local gossip
local gossipraid
local nomi
local faireport
local withered
local share
local modifierKey
local reverse
local blacklistDB = {}
local choiceQueue
local modifier

local ignoreQuestNPC = {
	[88570] = true,		-- Fate-Twister Tiklal
	[87391] = true,		-- Fate-Twister Seress
	[111243] = true,	-- Archmage Lan'dalock
	[108868] = true,	-- Talua (Hunter's order hall)
	[101462] = true,	-- Reaves (Engineering)
	[103792] = true,	-- Griftah (one of his quests is a scam)
	[119388] = true, 	-- Chieftain Hatuun (repeatable resource quest)
	[124312] = true,	-- High Exarch Turalyon (repeatable resource quest)
	[126954] = true,	-- High Exarch Turalyon (repeatable resource quest)
	[127037] = true,	-- Nabiru (repeatable resource quest)
	[141584] = true,	-- Zurvan (Seal of Wartorn Fate, Horde)
	[142063] = true,	-- Tezran (Seal of Wartorn Fate, Alliance)
}

local ignoreGossipNPC = {
	-- Bodyguards
	[86945] = true, -- Aeda Brightdawn (Horde)
	[86933] = true, -- Vivianne (Horde)
	[86927] = true, -- Delvar Ironfist (Alliance)
	[86934] = true, -- Defender Illona (Alliance)
	[86682] = true, -- Tormmok
	[86964] = true, -- Leorajh
	[86946] = true, -- Talonpriest Ishaal

	-- Sassy Imps
	[95139] = true,
	[95141] = true,
	[95142] = true,
	[95143] = true,
	[95144] = true,
	[95145] = true,
	[95146] = true,
	[95200] = true,
	[95201] = true,

	-- Misc NPCs
	[117871] = true, -- War Councilor Victoria (Class Challenges @ Broken Shore)
	[143925] = true, -- Dark Iron Mole Machine (Dark Iron Dwarf racial)
}

local rogueClassHallInsignia = {
	[97004] = true, -- "Red" Jack Findle
	[96782] = true, -- Lucian Trias
	[93188] = true, -- Mongar
}

local darkmoonDailyNPCs = {
	[54601] = true, -- Mola
	[15303] = true, -- Maxima Blastenheimer
	[14841] = true, -- Rinling
	[54605] = true, -- Finlay Coolshot
	[85546] = true, -- Ziggie Sparks
	[54485] = true, -- Jessica Rogers
	[85519] = true, -- Christoph VonFeasel
	[67370] = true, -- Jeremy Feasel
}

local cashRewards = {
	[45724] = 1e5, -- Champion's Purse, 10 gold
	[64491] = 2e6, -- Royal Reward, 200 gold
	[138127] = 15, -- Mysterious Coin, 15 copper
	[138129] = 11, -- Swatch of Priceless Silk, 11 copper
	[138131] = 24, -- Magical Sprouting Beans, 24 copper
	[138123] = 15, -- Shiny Gold Nugget, 15 copper
	[138125] = 16, -- Crystal Clear Gemstone, 16 copper
	[138133] = 27, -- Elixir of Endless Wonder, 27 copper
}

local function CreateAutoQuestButton()
    if QuestFrameAutomationBtn then return end
    local accept = T.CreateFrame("CheckButton", "QuestFrameAutomationBtn", ObjectiveTrackerFrame.HeaderMenu, "UICheckButtonTemplate")
    accept:Size(24, 24)
    accept.text:FontTemplate(nil, nil, "OUTLINE")
    accept.text:SetText(L["QuestFrameAutomationBtn"])
    accept:Point("LEFT", ObjectiveTrackerFrame.HeaderMenu, "LEFT", (E.db.lui.modules.quest.questAnnouncment["enable"] and E.db.lui.modules.quest.questAnnouncment["frameBtn"]) and -140 or -80, -9)
    if E.db.lui.modules.quest.questAutomation["ElvUISkins"] then
        E.Skins:HandleCheckBox(accept)
    end
    accept:SetScript("OnClick", function(self)
        E.db.lui.modules.quest.questAutomation["syncBtn"] = not E.db.lui.modules.quest.questAutomation["syncBtn"]
        LQAU:CheckSyncBtn()
    end)
    accept:SetChecked(E.db.lui.modules.quest.questAutomation["syncBtn"])
    T.hooksecurefunc("ObjectiveTracker_Update", function()
        if ObjectiveTrackerFrame.collapsed then
            if accept:IsShown() then
                accept:Hide()
            end
        else
            if not accept:IsShown() then
                accept:Show()
            end
		end
    end)
    T.hooksecurefunc("ObjectiveTracker_Collapse", function()
        if ObjectiveTrackerFrame.collapsed then
            if accept:IsShown() then
                accept:Hide()
            end
		end
    end)
    T.hooksecurefunc("ObjectiveTracker_Expand", function()
        if ObjectiveTrackerFrame.collapsed then
            if not accept:IsShown() then
                accept:Show()
            end
		end
    end)
end

local function GetNPCID()
	return T.tonumber(T.string_match(T.UnitGUID("npc") or "", "%w+%-.-%-.-%-.-%-.-%-(.-)%-"))
end

local function GetQuestLogQuests(onlyComplete)
	local quests = {}
	for index = 1, T.GetNumQuestLogEntries() do
		local title, _, _, isHeader, _, isComplete, _, questID = T.GetQuestLogTitle(index)
		if(not isHeader) then
			if(onlyComplete and isComplete or not onlyComplete) then
				quests[title] = questID
			end
		end
	end
	return quests
end

local function GetAvailableGossipQuestInfo(index)
	local name, level, isTrivial, frequency, isRepeatable, isLegendary, isIgnored = select(((index * 7) - 7) + 1, T.GetGossipAvailableQuests())
	return name, level, isTrivial, isIgnored, isRepeatable, frequency == 2, frequency == 3, isLegendary
end

local function GetActiveGossipQuestInfo(index)
	local name, level, isTrivial, isComplete, isLegendary, isIgnored = select(((index * 6) - 6) + 1, T.GetGossipActiveQuests())
	return name, level, isTrivial, isIgnored, isComplete, isLegendary
end

local function IsTrackingHidden()
	for index = 1, GetNumTrackingTypes() do
		local name, _, active = GetTrackingInfo(index)
		if(name == (MINIMAP_TRACKING_TRIVIAL_QUESTS or MINIMAP_TRACKING_HIDDEN_QUESTS)) then
			return active
		end
	end
end

function LQAU:QUEST_GREETING()
	if modifier then return end
	local npcID = GetNPCID()
	if(ignoreQuestNPC[npcID]) then
		return
	end
	local active = T.GetNumActiveQuests()
	if(active > 0) then
		local logQuests = GetQuestLogQuests(true)
		for index = 1, active do
			local name, complete = T.GetActiveTitle(index)
			if(complete) then
				local questID = logQuests[name]
				if(not questID) then
					T.SelectActiveQuest(index)
				else
					local _, _, worldQuest = T.GetQuestTagInfo(questID)
					if(not worldQuest) then
						T.SelectActiveQuest(index)
					end
				end
			end
		end
	end

	local available = T.GetNumAvailableQuests()
	if(available > 0) then
		for index = 1, available do
			local isTrivial, _, _, _, isIgnored = T.GetAvailableQuestInfo(index)
			if((not isTrivial and not isIgnored) or IsTrackingHidden()) then
				T.SelectAvailableQuest(index)
			end
		end
	end
end

function LQAU:GOSSIP_SHOW()
	if modifier then return end
	local npcID = GetNPCID()
	if(ignoreQuestNPC[npcID]) then
		return
	end

	local active = T.GetNumGossipActiveQuests()
	if(active > 0) then
		local logQuests = GetQuestLogQuests(true)
		for index = 1, active do
			local name, _, _, _, completed = GetActiveGossipQuestInfo(index)
			if(completed) then
				local questID = logQuests[name]
				if(not questID) then
					T.SelectGossipActiveQuest(index)
				else
					local _, _, worldQuest = T.GetQuestTagInfo(questID)
					if(not worldQuest) then
						T.SelectGossipActiveQuest(index)
					end
				end
			end
		end
	end

	local available = T.GetNumGossipAvailableQuests()
	if(available > 0) then
		for index = 1, available do
			local _, _, trivial, ignored = GetAvailableGossipQuestInfo(index)
			if((not trivial and not ignored) or IsTrackingHidden()) then
				T.SelectGossipAvailableQuest(index)
			elseif(trivial and npcID == 64337 and nomi) then
				T.SelectGossipAvailableQuest(index)
			end
		end
	end

	if(rogueClassHallInsignia[npcID]) then
		return T.SelectGossipOption(1)
	end

	if(darkmoonDailyNPCs[npcID] and active == 1 and not select(5, GetActiveGossipQuestInfo(1))) then
		for index = 1, T.GetNumGossipOptions() do
			if(T.string_find((select((index * 2) - 1, T.GetGossipOptions())), "FF0008E8")) then
				return T.SelectGossipOption(index)
			end
		end
	end

	if(available == 0 and active == 0 and T.GetNumGossipOptions() == 1) then
		if(T.string_match((T.GetGossipOptions()), TRACKER_HEADER_PROVINGGROUNDS)) then
			return
		end

		if(faireport) then
			if(npcID == 57850) then
				return T.SelectGossipOption(1)
			end
		end

		if(gossip) then
			local _, instance, _, _, _, _, _, mapID = T.GetInstanceInfo()
			if(withered and instance == "scenario" and mapID == 1626) then return end

			if(instance == "raid" and gossipraid > 0) then
				if(T.GetNumGroupMembers() > 1 and gossipraid < 2) then
					return
				end
				T.SelectGossipOption(1)
			elseif(instance ~= "raid" and not ignoreGossipNPC[npcID]) then
				T.SelectGossipOption(1)
			end
		end
	end
end

function LQAU:QUEST_DETAIL(self, questStartItemID)
	if modifier then return end
	if(T.QuestGetAutoAccept() or (questStartItemID ~= nil and questStartItemID ~= 0)) then
		T.AcknowledgeAutoAcceptQuest()
	else
		T.AcceptQuest()
	end
end

function LQAU:QUEST_ACCEPT_CONFIRM()
	if modifier then return end
    T.AcceptQuest()
end

function LQAU:QUEST_ACCEPTED(self, id)
    if(share) then
		T.QuestLogPushQuest(id)
	end
end

function LQAU:QUEST_ITEM_UPDATE()
	if(choiceQueue and LQAU[choiceQueue]) then
		LQAU[choiceQueue]()
	end
end

function LQAU:QUEST_PROGRESS()
	if modifier then return end
	if(T.IsQuestCompletable()) then
		local requiredItems = T.GetNumQuestItems()
		if(requiredItems > 0) then
			for index = 1, requiredItems do
				local link = T.GetQuestItemLink("required", index)
				if(link) then
					local id = T.GetItemInfoFromHyperlink(link)
					for _, itemID in next, blacklistDB.items do
						if(itemID == id) then
							return
						end
					end
				else
					choiceQueue = "QUEST_PROGRESS"
					return
				end
			end
		end
		T.CompleteQuest()
	end
end

function LQAU:QUEST_COMPLETE()
	if modifier then return end
	local choices = T.GetNumQuestChoices()
	if(choices <= 1) then
        T.GetQuestReward(1)
    else
        local bestValue, bestIndex = 0

		for index = 1, choices do
			local link = T.GetQuestItemLink("choice", index)
			if(link) then
				local _, _, _, _, _, _, _, _, _, _, value = T.GetItemInfo(link)
				value = cashRewards[(T.GetItemInfoFromHyperlink(link))] or value

				if(value > bestValue) then
					bestValue, bestIndex = value, index
				end
			else
				choiceQueue = "QUEST_COMPLETE"
				return T.GetQuestItemInfo("choice", index)
			end
		end
		if(bestIndex) then
			T.QuestInfoItem_OnClick(QuestInfoRewardsFrame.RewardButtons[bestIndex])
		end
	end
end

function LQAU:MODIFIER_STATE_CHANGED(self, key, state)
	if(T.string_sub(key, 2) == modifierKey) then
		if reverse then
			modifier = not (state == 1)
		else
			modifier = state == 1
		end
	end
end

function LQAU:CheckSyncBtn()
    if E.db.lui.modules.quest.questAutomation["syncBtn"] then
        self:RegisterEvent("QUEST_GREETING")
        self:RegisterEvent("GOSSIP_SHOW")
        self:RegisterEvent("QUEST_DETAIL")
        self:RegisterEvent("QUEST_ACCEPT_CONFIRM")
        self:RegisterEvent("QUEST_ACCEPTED")
        self:RegisterEvent("QUEST_ITEM_UPDATE")
        self:RegisterEvent("QUEST_PROGRESS")
		self:RegisterEvent("QUEST_COMPLETE")
		self:RegisterEvent("MODIFIER_STATE_CHANGED")
    else
        self:UnregisterEvent("QUEST_GREETING")
        self:UnregisterEvent("GOSSIP_SHOW")
        self:UnregisterEvent("QUEST_DETAIL")
        self:UnregisterEvent("QUEST_ACCEPT_CONFIRM")
        self:UnregisterEvent("QUEST_ACCEPTED")
        self:UnregisterEvent("QUEST_ITEM_UPDATE")
        self:UnregisterEvent("QUEST_PROGRESS")
		self:UnregisterEvent("QUEST_COMPLETE")
		self:UnregisterEvent("MODIFIER_STATE_CHANGED")
    end
end

function LQAU:Update()
	nomi = E.db.lui.modules.quest.questAutomation["nomi"]
	faireport = E.db.lui.modules.quest.questAutomation["faireport"]
	gossip = E.db.lui.modules.quest.questAutomation["gossip"]
	withered = E.db.lui.modules.quest.questAutomation["withered"]
	gossipraid = E.db.lui.modules.quest.questAutomation["gossipraid"]
	share = E.db.lui.modules.quest.questAutomation["share"]
	modifierKey = E.db.lui.modules.quest.questAutomation["modifierKey"]
	reverse = E.db.lui.modules.quest.questAutomation["reverse"]
	blacklistDB = E.db.lui.modules.quest.questAutomation["blacklistDB"]
	if reverse then modifier = true
	else modifier = false
	end
end

function LQAU:Initialize()
    if E.db.lui.modules.quest.questAutomation["frameBtn"] then
        CreateAutoQuestButton()
	end
	self:Update()
    self:CheckSyncBtn()
end

local function InitializeCallback()
    if not E.db.lui.modules.quest.questAutomation["enable"] then return end
	LQAU:Initialize()
end

E:RegisterModule(LQAU:GetName(), InitializeCallback)
