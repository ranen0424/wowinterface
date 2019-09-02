local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "quest", "questAnnouncment", "enable") then return end
local LQAN = E:NewModule("LuiQuestAnnouncement", "AceEvent-3.0")

local LE_PARTY_CATEGORY_HOME = LE_PARTY_CATEGORY_HOME
local LE_PARTY_CATEGORY_INSTANCE = LE_PARTY_CATEGORY_INSTANCE

local QN_Locale = {
    ["Colon"] = ":",
    ["Quest"] = "Quest",
    ["Progress"] = "Progress",
    ["Complete"] = "Completed!",
    ["Accept"] = "Accept Quest",
}

if T.GetLocale() == "zhCN" then
    QN_Locale = {
        ["Colon"] = "：",
        ["Quest"] = "任务",
        ["Progress"] = "进度",
        ["Complete"] = "已完成!",
        ["Accept"] = "接受任务",
    }
elseif T.GetLocale() == "zhTW" then
    QN_Locale = {
        ["Colon"] = ":",
        ["Quest"] = "任務",
        ["Progress"] = "進度",
        ["Complete"] = "已完成!",
        ["Accept"] = "接受任務",
    }
end

local QHisFirst = true
local lastList
local RGBStr = {
    R = "|CFFFF0000",
    G = "|CFF00FF00",
    B = "|CFF0000FF",
    Y = "|CFFFFFF00",
    K = "|CFF00FFFF",
    D = "|C0000AAFF",
    P = "|CFFD74DE1"
}

local function RScanQuests()
    local QuestList = {}
    local qIndex = 1
    local qLink
    local splitdot = QN_Locale["Colon"]
    while T.GetQuestLogTitle(qIndex) do
        local qTitle, qLevel, qGroup, qisHeader, qisCollapsed, qisComplete, frequency, qID = T.GetQuestLogTitle(qIndex)
        local qTag, qTagName = T.GetQuestTagInfo(qID)
        if not qisHeader then
            qLink = T.GetQuestLink(qID)
            QuestList[qID] = {
                Title = qTitle,
                Level = qLevel,
                Tag = qTagName,
                Group = qGroup,
                Header = qisHeader,
                Collapsed = qisCollapsed,
                Complete = qisComplete,
                Daily = 0,
                QuestID = qID,
                Link = qLink
            }
            if qisComplete == 1 and (T.IsQuestWatched(qIndex)) then
                T.RemoveQuestWatch(qIndex)
                T.ObjectiveTracker_Update()
            end
            for i = 1, T.GetNumQuestLeaderBoards(qIndex) do
                local leaderboardTxt, itemType, isDone = T.GetQuestLogLeaderBoard(i, qIndex)
                local _, _, numItems, numNeeded, itemName = T.string_find(leaderboardTxt, "(%d+)/(%d+) ?(.*)")
                QuestList[qID][i] = {
                    NeedItem = itemName,
                    NeedNum = numNeeded,
                    DoneNum = numItems
                }
            end
        end
        qIndex = qIndex + 1
    end
    return QuestList
end

local function PrtChatMsg(msg)
    if (not T.IsInGroup(LE_PARTY_CATEGORY_HOME) or T.IsInRaid(LE_PARTY_CATEGORY_HOME)) and T.IsInGroup(LE_PARTY_CATEGORY_INSTANCE) then
        if E.db.lui.modules.quest.questAnnouncment["questInstance"] then
            T.SendChatMessage(msg, "instance_chat", nil)
        end
    elseif T.UnitInRaid("player") then
        if E.db.lui.modules.quest.questAnnouncment["questRaid"] then
            T.SendChatMessage(msg, "raid", nil)
        end
    elseif T.UnitInParty("Party1") then
        if E.db.lui.modules.quest.questAnnouncment["questParty"] then
            T.SendChatMessage(msg, "party", nil)
        end
    else
        if E.db.lui.modules.quest.questAnnouncment["questSolo"] then
            ChatFrame1:AddMessage(msg)
        end
    end
end

local function CreateQuestAnnouncmentButton()
    if QuestFrameAnnouncmentBtn then return end
    local accept = T.CreateFrame("CheckButton", "QuestFrameAnnouncmentBtn", ObjectiveTrackerFrame.HeaderMenu, "UICheckButtonTemplate")
    accept:Size(24, 24)
    accept.text:FontTemplate(nil, nil, "OUTLINE")
    accept.text:SetText(L["QuestFrameAnnouncmentBtn"])
    accept:Point("LEFT", ObjectiveTrackerFrame.HeaderMenu, "LEFT", -80, -9)
    if E.db.lui.modules.quest.questAnnouncment["ElvUISkins"] then
        E.Skins:HandleCheckBox(accept)
    end
    accept:SetScript("OnClick", function(self)
        E.db.lui.modules.quest.questAnnouncment["syncBtn"] = not E.db.lui.modules.quest.questAnnouncment["syncBtn"]
        LQAN:CheckSyncBtn()
    end)
    accept:SetChecked(E.db.lui.modules.quest.questAnnouncment["syncBtn"])
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

local function isSuppliesQuest(title)
    if E.db.lui.modules.quest.questAnnouncment["ignoreSupplies"] then
        if T.GetLocale() == "zhCN" then
            if T.string_find(title, "补给需求：") then return true end
            if T.string_find(title, "产品订单：") then return true end
        elseif T.GetLocale() == "zhTW" then
            if T.string_find(title, "需要的補給品：") then return true end
            if T.string_find(title, "工作訂單：") then return true end
        elseif T.GetLocale() == "enUS" then
            if T.string_find(title, "Supplies Needed:") then return true end
            if T.string_find(title, "Work Order:") then return true end
        end
    end
    return false
end

function LQAN:QuestAnnouncment()
    local QN_Progress = QN_Locale["Progress"]
    local QN_ItemMsg, QN_ItemColorMsg = " ", " "
    
    if QHisFirst then
        lastList = RScanQuests()
        QHisFirst = false
    end
    
    local currList = RScanQuests()
    
    for i, v in T.pairs(currList) do
        local TagStr = " "
        if currList[i].Tag and (currList[i].Group < 2) then TagStr = RGBStr.Y .. "[" .. currList[i].Tag .. "]|r" end
        if currList[i].Tag and (currList[i].Group > 1) then TagStr = RGBStr.Y .. "[" .. currList[i].Tag .. currList[i].Group .. "]|r" end
        if currList[i].Daily == 1 and currList[i].Tag then
            TagStr = RGBStr.D .. "[" .. DAILY .. currList[i].Tag .. "]|r"
        elseif currList[i].Daily == 1 then
            TagStr = RGBStr.D .. "[" .. DAILY .. "]|r"
        elseif currList[i].Tag then
            TagStr = "[" .. currList[i].Tag .. "]"
        end
        
        if lastList[i] then
            if not lastList[i].Complete then
                if (#currList[i] > 0) and (#lastList[i] > 0) then
                    for j = 1, #currList[i] do
                        if currList[i][j] and lastList[i][j] and currList[i][j].DoneNum and lastList[i][j].DoneNum then
                            if currList[i][j].DoneNum > lastList[i][j].DoneNum then
                                QN_ItemMsg = QN_Progress .. ": " .. currList[i][j].NeedItem .. ": " .. currList[i][j].DoneNum .. "/" .. currList[i][j].NeedNum
                                QN_ItemColorMsg = RGBStr.G .. QN_Locale["Quest"] .. "|r " .. RGBStr.P .. "[" .. currList[i].Level .. "]|r " .. currList[i].Link .. RGBStr.G .. QN_Progress .. ": |r" .. RGBStr.K .. currList[i][j].NeedItem .. ":|r" .. RGBStr.Y .. currList[i][j].DoneNum .. "/" .. currList[i][j].NeedNum .. "|r"
                                if not E.db.lui.modules.quest.questAnnouncment["questNoDetail"] then
                                    PrtChatMsg(QN_ItemMsg)
                                end
                            end
                        end
                    end
                end
            end
            if (#currList[i] > 0) and (#lastList[i] > 0) and (currList[i].Complete == 1) then
                if not lastList[i].Complete then
                    if (currList[i].Group > 1) and currList[i].Tag then
                        QN_ItemMsg = QN_Locale["Quest"] .. "[" .. currList[i].Level .. "]" .. "[" .. currList[i].Tag .. currList[i].Group .. "]" .. currList[i].Link .. " " .. QN_Locale["Complete"]
                    else
                        QN_ItemMsg = QN_Locale["Quest"] .. "[" .. currList[i].Level .. "]" .. currList[i].Link .. " " .. QN_Locale["Complete"]
                    end
                    QN_ItemColorMsg = RGBStr.G .. QN_Locale["Quest"] .. "|r" .. RGBStr.P .. "[" .. currList[i].Level .. "]|r " .. currList[i].Link .. TagStr .. RGBStr.K .. QN_Locale["Complete"] .. "|r"
                    PrtChatMsg(QN_ItemMsg)
                    UIErrorsFrame:AddMessage(QN_ItemColorMsg)
                end
            end
        end
        
        if not lastList[i] and not isSuppliesQuest(currList[i].Title) then
            if (currList[i].Group > 1) and currList[i].Tag then
                QN_ItemMsg = QN_Locale["Accept"] .. ": [" .. currList[i].Level .. "]" .. " [" .. currList[i].Tag .. currList[i].Group .. "] " .. currList[i].Link
            elseif currList[i].Daily == 1 then
                QN_ItemMsg = QN_Locale["Accept"] .. ": [" .. currList[i].Level .. "]" .. " [" .. DAILY .. "]" .. currList[i].Link
            else
                QN_ItemMsg = QN_Locale["Accept"] .. ": [" .. currList[i].Level .. "] " .. currList[i].Link
            end
            QN_ItemColorMsg = RGBStr.K .. QN_Locale["Accept"] .. ":|r" .. RGBStr.P .. " [" .. currList[i].Level .. "]|r " .. TagStr .. currList[i].Link
            PrtChatMsg(QN_ItemMsg)
        end
    end
    lastList = currList
end

function LQAN:CheckSyncBtn()
    if E.db.lui.modules.quest.questAnnouncment["syncBtn"] then
        self:RegisterEvent("QUEST_LOG_UPDATE", "QuestAnnouncment")
    
    else
        self:UnregisterEvent("QUEST_LOG_UPDATE", "QuestAnnouncment")
    end
end

function LQAN:Initialize()
    if E.db.lui.modules.quest.questAnnouncment["frameBtn"] then
        CreateQuestAnnouncmentButton()
    end
    self:CheckSyncBtn()
end

local function InitializeCallback()
    if not E.db.lui.modules.quest.questAnnouncment["enable"] then return end
    LQAN:Initialize()
end

E:RegisterModule(LQAN:GetName(), InitializeCallback)
