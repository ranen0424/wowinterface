-- 来源：EUI
-- 作者：EUI
-- 链接：
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LMI = E:GetModule("LuiMisc")

local GuildControlGetNumRanks = GuildControlGetNumRanks

local function AutoInvite(...)
    local event, arg1, arg2 = ...
    if ((not T.UnitExists("party1") or UnitIsGroupLeader("player") or UnitIsGroupAssistant("player")) and (arg1:lower() == E.db.lui.modules.misc.group.inviteGroup["ainvkeyword"]:lower())) and E.db.lui.modules.misc.group.inviteGroup["enable"] == true then
        if event == "CHAT_MSG_BN_WHISPER" then
            local totalBNet = T.BNGetNumFriends()
            for i = 1, totalBNet do
                local _, presenceName, _, _, _, bnetIDGameAccount, client, isOnline = T.BNGetFriendInfo(i)
                if isOnline and presenceName == arg2 and client == "WoW" and bnetIDGameAccount then
                    local _, charName, _, realmName = T.BNGetGameAccountInfo(bnetIDGameAccount)
                    if realmName ~= T.GetRealmName() then charName = charName .. "-" .. realmName end
                    InviteToGroup(charName)
                    return
                end
            end
        else
            InviteToGroup(arg2)
        end
    end
end

function LMI:GetGuildRanks()
    local value = {}
    if T.IsInGuild() then
        local ranks = GuildControlGetNumRanks()
        for i = 1, ranks do
            value[i] = GuildControlGetRankName(i)
        end
    end
    return value
end

function LMI:InviteRanks()
    if not T.IsInGuild() then return end
    
    local numMembers = T.GetNumGuildMembers()
    for i = 1, numMembers do
        local name, _, rankIndex, _, _, _, _, _, online = T.GetGuildRosterInfo(i)
        if online and E.db.lui.modules.misc.group.inviteGroup.inviteRank[rankIndex] then
            T.pcall(T.InviteUnit, name)
        end
        if not T.IsInRaid() and T.IsInGroup() and T.UnitIsGroupLeader("player") then T.ConvertToRaid() end
    end
end

function LMI:LoadInviteGroup()
    self:RegisterEvent("CHAT_MSG_WHISPER", AutoInvite)
    self:RegisterEvent("CHAT_MSG_BN_WHISPER", AutoInvite)
end
