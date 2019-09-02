--来源：EUI
--作者：EUI
--链接：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "chat", "chatRepChange") then return end
local LCRC = E:NewModule("LuiChatRepChange", "AceEvent-3.0")

local rep = {}
local extraRep = {}

local SR_REP_MSG = "%s: %+d (%d/%d)"
local SR_EXTRAREP_MSG = "%s: %+d (%d/10000) (巅峰)"

local function createMessage(msg)
    local info = ChatTypeInfo["COMBAT_FACTION_CHANGE"]
    for j = 1, 4, 1 do
        local chatfrm = T.getglobal("ChatFrame" .. j)
        for k, v in T.pairs(chatfrm.messageTypeList) do
            if v == "COMBAT_FACTION_CHANGE" then
                chatfrm:AddMessage(msg, info.r, info.g, info.b, info.id)
                break
            end
        end
    end
end

local function initExtraRep(factionID, name)
    local currentValue, threshold, _, hasRewardPending = T.C_Reputation_GetFactionParagonInfo(factionID)
    if not extraRep[name] then
        extraRep[name] = currentValue % threshold
        if hasRewardPending then
            extraRep[name] = extraRep[name] + threshold
        end
    end
    if extraRep[name] > threshold and (not hasRewardPending) then
        extraRep[name] = extraRep[name] - threshold
    end
end

function LCRC:SR_Update()
    local numFactions = T.GetNumFactions(self)
    for i = 1, numFactions, 1 do
        local name, _, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID = T.GetFactionInfo(i)
        local value = 0
        if barValue >= 42000 then
            local hasParagon = T.C_Reputation_IsFactionParagon(factionID)
            if hasParagon then
                initExtraRep(factionID, name)
                local currentValue, threshold, _, hasRewardPending = T.C_Reputation_GetFactionParagonInfo(factionID)
                value = currentValue % threshold
                if hasRewardPending then
                    value = value + threshold
                end
                local extraChange = value - extraRep[name]
                if extraChange ~= 0 then
                    extraRep[name] = value
                    local extra_msg = T.string_format(SR_EXTRAREP_MSG, name, extraChange, value)
                    createMessage(extra_msg)
                end
            end
        elseif name and (not isHeader) or (hasRep) then
            if not rep[name] then
                rep[name] = barValue
            end
            local change = barValue - rep[name]
            if change ~= 0 then
                rep[name] = barValue
                local msg = T.string_format(SR_REP_MSG, name, change, barValue - barMin, barMax - barMin)
                createMessage(msg)
            end
        end
    end
end

function LCRC:Initialize()
    self:RegisterEvent("UPDATE_FACTION", "SR_Update")
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_COMBAT_FACTION_CHANGE", function() return true end)
end

local function InitializeCallback()
    if not E.db.lui.modules.chat["chatRepChange"] then return end
    LCRC:Initialize()
end

E:RegisterModule(LCRC:GetName(), InitializeCallback)
