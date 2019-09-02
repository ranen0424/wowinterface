local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "quest", "questTrackerVisibility", "enable") then return end
local LQTV = E:NewModule("LuiQuestTrackerVisibility", "AceEvent-3.0")

local statedriver = {
    ["FULL"] = function(frame)
        T.ObjectiveTracker_Expand()
        if _G["QuestFrameAutomationBtn"] then _G["QuestFrameAutomationBtn"]:Show() end
        if _G["QuestFrameAnnouncmentBtn"] then _G["QuestFrameAnnouncmentBtn"]:Show() end
        frame:Show()
    end,
    ["COLLAPSED"] = function(frame)
        T.ObjectiveTracker_Collapse()
        if _G["QuestFrameAutomationBtn"] then _G["QuestFrameAutomationBtn"]:Hide() end
        if _G["QuestFrameAnnouncmentBtn"] then _G["QuestFrameAnnouncmentBtn"]:Hide() end
        frame:Show()
    end,
    ["HIDE"] = function(frame)
        if _G["QuestFrameAutomationBtn"] then _G["QuestFrameAutomationBtn"]:Hide() end
        if _G["QuestFrameAnnouncmentBtn"] then _G["QuestFrameAnnouncmentBtn"]:Hide() end
        frame:Hide()
    end
}

function LQTV:ChangeState(event)
    if T.InCombatLockdown() and event ~= "PLAYER_REGEN_DISABLED" then
        return
    end
    local inCombat = event == "PLAYER_REGEN_DISABLED" and true or false
    
    if inCombat and E.db.lui.modules.quest.questTrackerVisibility["combat"] ~= "NONE" then
        statedriver[E.db.lui.modules.quest.questTrackerVisibility["combat"]](ObjectiveTrackerFrame)
    elseif T.C_Garrison_IsPlayerInGarrison(2) then
        statedriver[E.db.lui.modules.quest.questTrackerVisibility["garrison"]](ObjectiveTrackerFrame)
    elseif T.C_Garrison_IsPlayerInGarrison(3) then
        statedriver[E.db.lui.modules.quest.questTrackerVisibility["orderhall"]](ObjectiveTrackerFrame)
    elseif T.IsResting() then
        statedriver[E.db.lui.modules.quest.questTrackerVisibility["isResting"]](ObjectiveTrackerFrame)
    else
        local instance, instanceType = T.IsInInstance()
        if instance then
            if instanceType == "pvp" then
                statedriver[E.db.lui.modules.quest.questTrackerVisibility["battlegrounds"]](ObjectiveTrackerFrame)
            elseif instanceType == "arena" then
                statedriver[E.db.lui.modules.quest.questTrackerVisibility["arena"]](ObjectiveTrackerFrame)
            elseif instanceType == "party" then
                statedriver[E.db.lui.modules.quest.questTrackerVisibility["dungeon"]](ObjectiveTrackerFrame)
            elseif instanceType == "scenario" then
                statedriver[E.db.lui.modules.quest.questTrackerVisibility["scenario"]](ObjectiveTrackerFrame)
            elseif instanceType == "raid" then
                statedriver[E.db.lui.modules.quest.questTrackerVisibility["raid"]](ObjectiveTrackerFrame)
            end
        else
            statedriver["FULL"](ObjectiveTrackerFrame)
        end
    end
	if IsAddOnLoaded("WorldQuestTracker") then
		local y = 0
		for i = 1, #ObjectiveTrackerFrame.MODULES do
			local module = ObjectiveTrackerFrame.MODULES[i]
			if (module.Header:IsShown()) then
				y = y + module.contentsHeight
			end
		end
		if (ObjectiveTrackerFrame.collapsed) then
			WorldQuestTrackerAddon.TrackerHeight = 20
		else
			WorldQuestTrackerAddon.TrackerHeight = y
		end

		WorldQuestTrackerAddon.RefreshTrackerAnchor()
	end
end

function LQTV:Initialize()
    self:RegisterEvent("LOADING_SCREEN_DISABLED", "ChangeState")
    self:RegisterEvent("PLAYER_UPDATE_RESTING", "ChangeState")
    self:RegisterEvent("ZONE_CHANGED_NEW_AREA", "ChangeState")
    self:RegisterEvent("PLAYER_REGEN_ENABLED", "ChangeState")
    self:RegisterEvent("PLAYER_REGEN_DISABLED", "ChangeState")
end

local function InitializeCallback()
    if not E.db.lui.modules.quest.questTrackerVisibility["enable"] then
        return
    end
    LQTV:Initialize()
end

E:RegisterModule(LQTV:GetName(), InitializeCallback)
