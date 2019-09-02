local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "quest", "questSmartTracker", "enable") then return end
local LQST = E:NewModule("LuiQuestSmartTracker", "AceEvent-3.0", "AceTimer-3.0")

local autoTracked = {}
local autoRemove
local autoSort
local removeComplete
local keepComplete
local removeLegendary
local showDailies
local removeWaypoints

local skippedUpdate = false
local updateQuestIndex = nil
local newQuestIndex = nil
local doUpdate = false

local function getQuestInfo(index)
    local title, _, _, isHeader, _, isCompleted, frequency, questID, startEvent, displayQuestID, isOnMap, hasLocalPOI, isTask, isBounty, isStory, isHidden, isScaling = T.GetQuestLogTitle(index)
    
    local isLegendaryQuest = T.C_QuestLog_IsLegendaryQuest(questID)
    local nextWaypoint = T.C_QuestLog_GetNextWaypoint(questID)
    
    if isHeader then
        return nil
    end
    
    local questMapId = T.C_TaskQuest_GetQuestZoneID(questID)
    if questMapId == nil then
        questMapId = T.GetQuestUiMapID(questID)
    end
    if nextWaypoint ~= nil and nextWaypoint ~= questMapId and removeWaypoints then
        questMapId = 0
    end
    local distance, reachable = T.GetDistanceSqToQuest(index)
    local areaid = T.C_Map_GetBestMapForUnit("player")
    
    local isDaily = frequency == LE_QUEST_FREQUENCY_DAILY
    local isWeekly = frequency == LE_QUEST_FREQUENCY_WEEKLY
    
    local isCompleted = isCompleted ~= nil
    
    local tagId = T.GetQuestTagInfo(questID)
    local isInstance = false
	if tagId then
	    isInstance = tagId == QUEST_TAG_DUNGEON or tagId == QUEST_TAG_HEROIC or tagId == QUEST_TAG_RAID or tagId == QUEST_TAG_RAID10 or tagId == QUEST_TAG_RAID25
	end
    
    return questID, questMapId, isOnMap or hasLocalPOI, isCompleted, isDaily, isWeekly, isInstance, isTask, isLegendaryQuest, distance
end

local function trackQuest(index, questID, markAutoTracked)
    if autoTracked[questID] ~= true and markAutoTracked then
        autoTracked[questID] = true
        T.AddQuestWatch(index)
    end
    
    if autoSort then
        T.SortQuestWatches()
    end
end

local function untrackQuest(index, questID)
    if autoTracked[questID] == true then
        T.RemoveQuestWatch(index)
        autoTracked[questID] = nil
    end
    
    if autoSort then
        T.SortQuestWatches()
    end
end

function LQST:untrackAllQuests()
    local numEntries, _ = T.GetNumQuestLogEntries()
    for index = 1, numEntries do
        local _, _, _, isHeader, _, _, _, _, _, _, _, _, _, _ = T.GetQuestLogTitle(index)
        if (not isHeader) then
            T.RemoveQuestWatch(index)
        end
    end
    autoTracked = {}
end

function LQST:debugPrintQuestsHelper(onlyWatched)
    local areaid = T.C_Map_GetBestMapForUnit("player")
    LUI:Print("#########################")
    LUI:Print(L["Current MapID: "] .. areaid)
    
    local inInstance, instanceType = T.IsInInstance()
    LUI:Print(L["In instance: "] .. T.tostring(inInstance))
    LUI:Print(L["Instance type: "] .. instanceType)
    
    local numEntries, numQuests = T.GetNumQuestLogEntries()
    LUI:Print(numQuests .. L[" Quests receved."])
    local numWatches = T.GetNumQuestWatches()
    LUI:Print(numWatches .. L[" Quests tracked."])
    LUI:Print("#########################")
    
    for questIndex = 1, numEntries do
        local questID, questMapId, isOnMap, isCompleted, isDaily, isWeekly, isInstance, isWorldQuest, isLegendaryQuest = getQuestInfo(questIndex)
        if not (questID == nil) then
            if (not onlyWatched) or (onlyWatched and autoTracked[questID] == true) then
                LUI:Print("#" .. questID .. " - |cffFF6A00" .. select(1, T.GetQuestLogTitle(questIndex)) .. "|r")
                LUI:Print(L["MapID: "] .. T.tostring(questMapId) .. L[" IsOnMap: "] .. T.tostring(isOnMap) .. L[" isInstance: "] .. T.tostring(isInstance))
                LUI:Print(L["AutoTracked: "] .. T.tostring(autoTracked[questID] == true) .. L[" isLocal: "] .. T.tostring(((questMapId == 0 and isOnMap) or (questMapId == areaid)) and not (isInstance and not inInstance and not isCompleted)))
                LUI:Print(L["Completed: "] .. T.tostring(isCompleted) .. L[" Daily: "] .. T.tostring(isDaily) .. L[" Weekly: "] .. T.tostring(isWeekly) .. L[" WorldQuest: "] .. T.tostring(isWorldQuest) .. L[" LegendaryQuest: "] .. tostring(isLegendaryQuest))
            end
        end
    end
    LUI:Print(L["GetQuestsOnMap: "])
    local quests = C_QuestLog.GetQuestsOnMap(areaid)
    for qid = 1, #quests do
        local quest = quests[qid]
        LUI:Print(L["questID: "] .. quest.questID)
    end
end

function LQST:Update()
    autoRemove = E.db.lui.modules.quest.questSmartTracker["autoRemove"]
    autoSort = E.db.lui.modules.quest.questSmartTracker["autoSort"]
    removeLegendary = E.db.lui.modules.quest.questSmartTracker["removeLegendary"]
    removeWaypoints = E.db.lui.modules.quest.questSmartTracker["removeWaypoints"]
    showDailies = E.db.lui.modules.quest.questSmartTracker["showDailies"]
    handlingComplete = E.db.lui.modules.quest.questSmartTracker["handlingComplete"]
    
    if handlingComplete == "keep" then
        keepComplete = true
        removeComplete = false
    elseif handlingComplete == "keep_local" then
        keepComplete = false
        removeComplete = false
    elseif handlingComplete == "remove" then
        keepComplete = false
        removeComplete = true
    end
    
    LQST:untrackAllQuests()
    LQST:RunUpdate()
end

function LQST:RunUpdate()
    if self.update_running ~= true then
        self.update_running = true
        
        self.areaID = T.C_Map_GetBestMapForUnit("player")
        self.inInstance = select(1, T.IsInInstance())
        self:ScheduleTimer("PartialUpdate", 0.01, 1)
    else
        self.update_required = true
    end
end

function LQST:PartialUpdate(index)
    local numEntries, _ = T.GetNumQuestLogEntries()
    if index >= numEntries then
        if self.update_required == true then
            self.update_required = nil
            self.areaID = C_Map.GetBestMapForUnit("player")
            self.inInstance = select(1, T.IsInInstance())
            self:ScheduleTimer("PartialUpdate", 0.01, 1)
        else
            if autoSort then
                T.SortQuestWatches()
            end
            self.update_running = nil
        end
        return
    end
    
    local questID, questMapId, isOnMap, isCompleted, isDaily, isWeekly, isInstance, isWorldQuest, isLegendaryQuest, distance = getQuestInfo(index)
    if not (questID == nil) then
        if isCompleted and removeComplete then
            untrackQuest(index, questID)
        elseif isCompleted and keepComplete then
            trackQuest(index, questID, not isWorldQuest)
        elseif isLegendaryQuest and removeLegendary and not isOnMap then
            untrackQuest(index, questID)
        elseif (isOnMap or (questMapId == self.areaID)) and not (isInstance and not self.inInstance and not isCompleted) then
            trackQuest(index, questID, not isWorldQuest)
        elseif showDailies and isDaily and not inInstance then
            trackQuest(index, questID, not isWorldQuest)
        elseif showDailies and isWeekly then
            trackQuest(index, questID, not isWorldQuest)
        else
            untrackQuest(index, questID)
        end
    end
    self:ScheduleTimer("PartialUpdate", 0.01, index + 1)
end

function LQST:QUEST_WATCH_UPDATE(event, questIndex)
    local questID, _, _, isCompleted, _, _, _, isWorldQuest, _ = getQuestInfo(questIndex)
    if questID ~= nil then
        updateQuestIndex = nil
        if removeComplete and isCompleted then
            untrackQuest(questIndex, questID)
        elseif not isWorldQuest then
            trackQuest(questIndex, questID, not isWorldQuest)
        end
    end
end

function LQST:QUEST_ACCEPTED(event, questIndex)
    local questID, _, _, isCompleted, _, _, _, isWorldQuest, _ = getQuestInfo(questIndex)
    if questID ~= nil then
        updateQuestIndex = nil
        if removeComplete and isCompleted then
            untrackQuest(questIndex, questID)
        elseif not isWorldQuest then
            trackQuest(questIndex, questID, not isWorldQuest)
        end
    end
end

function LQST:QUEST_REMOVED(event, questIndex)
    autoTracked[questIndex] = nil
end

function LQST:ZONE_CHANGED()
    LQST:RunUpdate()
end

function LQST:ZONE_CHANGED_NEW_AREA()
    LQST:RunUpdate()
end

function LQST:Initialize()
    LQST:RegisterEvent("ZONE_CHANGED")
    LQST:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    LQST:RegisterEvent("QUEST_WATCH_UPDATE")
    LQST:RegisterEvent("QUEST_ACCEPTED")
    LQST:RegisterEvent("QUEST_REMOVED")
    
    LQST:Update()
end

local function InitializeCallback()
    if not E.db.lui.modules.quest.questSmartTracker["enable"] then return end
    LQST:Initialize()
end

E:RegisterModule(LQST:GetName(), InitializeCallback)
