-- 来源：EUI
-- 作者：EUI
-- 链接：
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "filters", "infoFilter", "enable") then return end

local LFI = E:GetModule("LuiFilters")

local IFSSymbols = {
    "`", " ", "~", "@", "#", "^", "*", "＝", " ", "，", "。", "、", "？", "！", "：", "’", "‘", "“", "”", "【", "】", "{", "}", "『", "』", "《", "》", "<", ">", "（", "）", "丨", "（", "）", "＃", "——", "－", "＆", "×", "＠", "～", "!", "＼", "％", "　", "│", "☆", "★", "○", "●", "◎", "◇", "◆", "◆", "■", "△", "▲", "※", "▇", "▓", "∑",
}

local InvaildNum = {
    ["１"] = "1", ["２"] = "2", ["３"] = "3", ["４"] = "4", ["５"] = "5", ["６"] = "6", ["７"] = "7", ["８"] = "8", ["９"] = "9", ["０"] = "0", ["①"] = "1", ["②"] = "2", ["③"] = "3", ["④"] = "4", ["⑤"] = "5", ["⑥"] = "6", ["⑦"] = "7", ["⑧"] = "8", ["⑨"] = "9", ["㈠"] = "1", ["㈡"] = "2", ["㈢"] = "3", ["㈣"] = "4", ["㈤"] = "5", ["㈥"] = "6", ["㈦"] = "7", ["㈧"] = "8", ["㈨"] = "9", ["⑴"] = "1", ["⑵"] = "2", ["⑶"] = "3", ["⑷"] = "4", ["⑸"] = "5", ["⑹"] = "6", ["⑺"] = "7", ["⑻"] = "8", ["⑼"] = "9",
}

local cacheBlackName = {}
local FriendList = {}
local runOnce = false
local IFSid2 = 0

local sameUser = {
    ["name"] = {
        ["time"] = T.GetTime(),
        ["memo1"] = "",
        ["memo2"] = "",
        ["id"] = 1,
    }
}

local function FilterChinaChar(s)
    if not s then return end
    if type(s) ~= "string" then return s end
    s = s:gsub("%w", "")
    s = s:gsub("%p", "")
    return s
end

local function InfoFilter(IFSself, IFSevent, IFSmsg, IFSauthor, _, _, _, IFSflag, _, _, IFSchannel, _, IFSid, guid)
    local PLAYER_REALM = T.string_gsub(E.myrealm, "[%s%-]", "")
    local PLAYER_NAME = E.myname .. "-" .. PLAYER_REALM
    
    if IFSauthor == PLAYER_NAME then
        return false
    end
    
    local ChatFrameName = IFSself:GetName()
    
    if ((IFSevent == "CHAT_MSG_WHISPER" and (IFSflag == "GM" or IFSflag == "DEV")) or T.UnitIsInMyGuild(IFSauthor) or T.UnitIsUnit(IFSauthor, "player") or T.UnitInRaid(IFSauthor) or T.UnitInParty(IFSauthor)) then
        return false
    end
    
    if IFSchannel == "集合石" then
        return false
    end
    
    local trimmedPlayer = T.Ambiguate(IFSauthor, "none")
    if FriendList[IFSauthor] or FriendList[trimmedPlayer] then
        return false
    end
    
    if E.global.lui.modules.filters.playerFilter["enable"] and E.global.lui.modules.filters.playerFilter.nameFilter[IFSauthor] then
        if (E.global.lui.modules.filters.infoFilter.debugFilter) then
            LUI:Print("屏蔽 " .. IFSauthor)
            LUI:Print("屏蔽 " .. IFSmsg)
        end
        return true
    end
    
    if cacheBlackName[IFSauthor] and cacheBlackName[IFSauthor] >= 10 then
        if (E.global.lui.modules.filters.infoFilter.debugFilter) then
            LUI:Print("屏蔽 " .. IFSauthor)
            LUI:Print("屏蔽 " .. IFSmsg)
        end
        return true
    end
    
    local a = nil
    IFSmsg, a = T.string_gsub(IFSmsg, "{rt%d}", "")
    if (E.global.lui.modules.filters.infoFilter.emoticonMatchNum > 0) and (a >= E.global.lui.modules.filters.infoFilter.emoticonMatchNum) and IFSchannel == L["bigFootChannel"] then
        if (E.global.lui.modules.filters.infoFilter.debugFilter) then
            LUI:Print("屏蔽 " .. IFSauthor)
            LUI:Print("屏蔽 " .. IFSmsg)
        end
        return true
    end
    
    for i = 1, #IFSSymbols do
        IFSmsg, a = T.string_gsub(IFSmsg, IFSSymbols[i], "")
    end
    
    for k, v in T.pairs(InvaildNum) do
        IFSmsg, a = T.string_gsub(IFSmsg, k, v)
    end
    
    local IFSmatch = 0
    
    for IFSword, wordEnable in T.pairs(E.global.lui.modules.filters.infoFilter.keywordFilter) do
        if wordEnable then
            local IFSnewString, IFSresult = T.string_gsub(IFSmsg, IFSword, "")
            if (IFSresult > 0) then
                IFSmatch = IFSmatch + 1
            end
        end
    end
    
    if (IFSmatch >= E.global.lui.modules.filters.infoFilter.keywordMatchNum) then
        if (E.global.lui.modules.filters.infoFilter.debugFilter) then
            LUI:Print("屏蔽 " .. IFSauthor)
            LUI:Print("屏蔽 " .. IFSmsg)
        end
        if not (IFSid == IFSid2) then
            IFSid2 = IFSid
            if not cacheBlackName[IFSauthor] then
                cacheBlackName[IFSauthor] = 1
            elseif cacheBlackName[IFSauthor] < 10 then
                cacheBlackName[IFSauthor] = cacheBlackName[IFSauthor] + 1
            end
        end
        return true
    else
        if ChatFrameName == "ChatFrame1" then
            local noEnChar = FilterChinaChar(IFSmsg)
            if sameUser[IFSauthor] then
                local findIt = false
                if noEnChar == "" then
                    return false
                end
                if noEnChar == sameUser[IFSauthor]["memo1"] or noEnChar == sameUser[IFSauthor]["memo2"] then
                    findIt = true
                end
                if findIt and ((T.GetTime() - sameUser[IFSauthor]["time"]) < E.global.lui.modules.filters.infoFilter.repeatFilter) then
                    if cacheBlackName[IFSauthor] < 10 then
                        cacheBlackName[IFSauthor] = cacheBlackName[IFSauthor] + 1
                    end
                    if (E.global.lui.modules.filters.infoFilter.debugFilter) then
                        LUI:Print("屏蔽 " .. IFSauthor)
                        LUI:Print("屏蔽 " .. IFSmsg)
                    end
                    return true
                elseif sameUser[IFSauthor]["id"] == 1 then
                    sameUser[IFSauthor]["memo2"] = noEnChar
                    sameUser[IFSauthor]["id"] = 2
                    sameUser[IFSauthor]["time"] = T.GetTime()
                    cacheBlackName[IFSauthor] = 1
                elseif sameUser[IFSauthor].id == 2 then
                    sameUser[IFSauthor]["memo1"] = noEnChar
                    sameUser[IFSauthor]["id"] = 1
                    sameUser[IFSauthor]["time"] = T.GetTime()
                    cacheBlackName[IFSauthor] = 1
                end
            else
                sameUser[IFSauthor] = {["time"] = T.GetTime(), ["memo1"] = noEnChar, ["id"] = 1, }
                cacheBlackName[IFSauthor] = 1
            end
        end
        return false
    end
end

function LFI:LoadInfoFilter()
    local fr = T.CreateFrame("Frame")
    fr:RegisterEvent("FRIENDLIST_UPDATE")
    fr:RegisterEvent("PLAYER_ENTERING_WORLD")
    fr:SetScript("OnEvent", function(self, event)
        if event == "PLAYER_ENTERING_WORLD" then
            T.table_wipe(cacheBlackName)
            T.table_wipe(sameUser)
            self:UnregisterEvent("PLAYER_ENTERING_WORLD")
            if E.global.lui.modules.filters.infoFilter.noPMSticky then
                ChatTypeInfo.WHISPER.sticky = 0
                ChatTypeInfo.BN_WHISPER.sticky = 0
            end
        else
            local num = T.C_FriendList_GetNumFriends()
            for i = 1, num do
                local n = T.GetFriendInfo(i)
                if n then
                    FriendList[n] = true
                else
                    if not runOnce then
                        T.ShowFriends()
                        runOnce = true
                    end
                end
            end
            local _, oon = T.BNGetNumFriends()
            for i = 1, oon do
                local toon = T.BNGetFriendInfo(i)
                for j = 1, toon do
                    local _, rName, rGame = T.BNGetGameAccountInfo(i, j)
                    if (rGame == "WoW") then
                        FriendList[rName] = true
                    end
                end
            end
        end
    end)
    
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", InfoFilter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", InfoFilter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", InfoFilter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", InfoFilter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_ADDON", InfoFilter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_TEXT_EMOTE", InfoFilter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_EMOTE", InfoFilter)
end
