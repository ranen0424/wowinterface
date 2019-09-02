-- 来源：EUI
-- 作者：EUI
-- 链接：
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "filters", "pmFilter", "enable") then return end

local LFI = E:GetModule("LuiFilters")

local good, maybe, filterTable = {}, {}, {}
local login = nil
local whisp = "LivvenUI: You need to be level %d to whisper me."
local whispTestLevel = "LivvenUI: 刚110级的角色无法密语我，请通过其他方式联系。"
local err = "LivvenUI: You have reached the maximum amount of friends, remove 2 for this addon to function properly!"

local ERR_FRIEND_LIST_FULL, ERR_FRIEND_REMOVED_S, ERR_FRIEND_ADDED_S = ERR_FRIEND_LIST_FULL, ERR_FRIEND_REMOVED_S, ERR_FRIEND_ADDED_S

do
    local L = T.GetLocale()
    if L == "zhTW" then
        whisp = "LivvenUI: 你起碼要達到%d級才能密我。"
        err = "LivvenUI: 你的好友列表滿了，此功能需要你騰出2個好友空位!"
    elseif L == "zhCN" then
        whisp = "LivvenUI: 你起码要达到%d级才能和我讲话。"
        err = "LivvenUI: 你的好友列表满了，此功能需要你腾出2个好友空位！"
    end
end

local addMsg, hookFunc
do
    local addFrnd = ERR_FRIEND_ADDED_S:gsub("%%s", "([^ ]+)")
    local rmvFrnd = ERR_FRIEND_REMOVED_S:gsub("%%s", "([^ ]+)")
    local info = ChatTypeInfo.SYSTEM
    hookFunc = function(f, msg, r, g, b, ...)
        if r == info.r and g == info.g and b == info.b then
            local _, _, player = msg:find(addFrnd)
            if not player then
                _, _, player = msg:find(rmvFrnd)
            end
            if player and filterTable[player] then
                return
            end
        end
        return addMsg(f, msg, r, g, b, ...)
    end
end

function LFI:LoadPMFilter()
    local badboy = T.CreateFrame("Frame")
    badboy:RegisterEvent("PLAYER_ENTERING_WORLD")
    badboy:RegisterEvent("FRIENDLIST_UPDATE")
    badboy:RegisterEvent("CHAT_MSG_SYSTEM")
    badboy:SetScript("OnEvent", function(_, evt, msg)
        if evt == "PLAYER_ENTERING_WORLD" then
            T.ShowFriends()
            good[T.UnitName("player")] = true
        elseif evt == "CHAT_MSG_SYSTEM" then
            if msg == ERR_FRIEND_LIST_FULL then
                LUI:Print(err)
                return
            end
        else
            if not login then
                login = true
                local num = T.C_FriendList_GetNumFriends()
                for i = 1, num do
                    local n = T.GetFriendInfo(i)
                    if n then good[n] = true end
                end
                return
            end
            
            local num = T.C_FriendList_GetNumFriends()
            for i = 1, num do
                local player, level, _, _, _, dnd = T.GetFriendInfo(i)
                if not player then
                    T.ShowFriends()
                else
                    if maybe[player] then
                        T.RemoveFriend(player, true)
                        if type(level) ~= "number" then
                            LUI:Print("LivvenUI: 等级不是数字类型，它是" .. level)
                        end
                        if level < filterTable[player] or (level == 110 and E.global.lui.modules.filters.pmFilter["demoLevel"]) then
                            if not dnd or dnd == "" then
                                if level < filterTable[player] then
                                    T.SendChatMessage(whisp:format(filterTable[player]), "WHISPER", nil, player)
                                else
                                    T.SendChatMessage(whispTestLevel, "WHISPER", nil, player)
                                end
                            end
                            for _, v in T.pairs(maybe[player]) do
                                for _, p in T.pairs(v) do
                                    T.table_wipe(p)
                                end
                                T.table_wipe(v)
                            end
                        else
                            good[player] = true
                            for _, v in T.pairs(maybe[player]) do
                                for _, p in T.pairs(v) do
                                    if T.IsAddOnLoaded("WIM") then
                                        WIM.modules.WhisperEngine:CHAT_MSG_WHISPER(select(3, unpack(p)))
                                    elseif T.IsAddOnLoaded("Cellular") then
                                        local _, _, a1, a2, _, _, _, a6, _, _, _, _, a11, a12 = unpack(p)
                                        Cellular:IncomingMessage(a2, a1, a6, nil, a11, a12)
                                    else
                                        ChatFrame_MessageEventHandler(unpack(p))
                                    end
                                    T.table_wipe(p)
                                end
                                T.table_wipe(v)
                            end
                        end
                        T.table_wipe(maybe[player])
                        maybe[player] = nil
                    end
                end
            end
        end
    end)
    
    
    ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", function(...)
        local f, _, _, player, _, _, _, flag, _, _, _, _, id, guid = ...
        local trimmedPlayer = T.Ambiguate(player, "none")
        if good[trimmedPlayer] or trimmedPlayer:find("%-") or T.UnitIsInMyGuild(trimmedPlayer) then return end
        if flag == "GM" or flag == "DEV" then return end
        local _, num = T.BNGetNumFriends()
        for i = 1, num do
            local toon = T.BNGetNumFriendGameAccounts(i)
            for j = 1, toon do
                local _, rName, rGame, rServer = T.BNGetFriendGameAccountInfo(i, j)
                if rName == trimmedPlayer and rGame == "WoW" and rServer == T.GetRealmName() then
                    good[trimmedPlayer] = true
                    return
                end
            end
        end
        if not addMsg then
            addMsg = ChatFrame1.AddMessage
            ChatFrame1.AddMessage = hookFunc
        end
        
        f = f:GetName()
        if not f then f = "?" end
        if f == "WIM3_HistoryChatFrame" then return end
        if not f:find("^ChatFrame%d+$") and f ~= "WIM_workerFrame" and f ~= "Cellular" then
            LUI:Print("错误, 未知框架:" .. f)
            return
        end
        if T.IsAddOnLoaded("WIM") and f ~= "WIM_workerFrame" then return true end
        if T.IsAddOnLoaded("Cellular") and f ~= "Cellular" then return true end
        if not maybe[trimmedPlayer] then maybe[trimmedPlayer] = {} end
        if not maybe[trimmedPlayer][f] then maybe[trimmedPlayer][f] = {} end
        maybe[trimmedPlayer][f][id] = {}
        for i = 1, select("#", ...) do
            maybe[trimmedPlayer][f][id][i] = select(i, ...)
        end
        
        local _, englishClass = T.GetPlayerInfoByGUID(guid)
        
        local level = E.global.lui.modules.filters.pmFilter["levelFilter"]
        local level_dk = E.global.lui.modules.filters.pmFilter["DKLevelFilter"]
        local level_dh = E.global.lui.modules.filters.pmFilter["DHLevelFilter"]
        
        if englishClass == "DEATHKNIGHT" then level = level_dk end
        if englishClass == "DEMONHUNTER" then level = level_dh end
        
        if not filterTable[trimmedPlayer] or filterTable[trimmedPlayer] ~= level then
            filterTable[trimmedPlayer] = level
            T.C_FriendList_AddFriend(trimmedPlayer)
        end
        return true
    end)
    
    ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", function(_, _, msg, player)
        local trimmedPlayer = T.Ambiguate(player, "none")
        if good[trimmedPlayer] then return end
        if filterTable[trimmedPlayer] and msg:find("^BadBoy.*" .. filterTable[trimmedPlayer]) then return true end
        if filterTable[trimmedPlayer] and msg:find("^LivvenUI.*" .. filterTable[trimmedPlayer]) then return true end
        if filterTable[trimmedPlayer] and msg:find(whispTestLevel) then return true end
        good[trimmedPlayer] = true
    end)
end
