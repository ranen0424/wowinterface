--来源：爱不易
--作者：爱不易
--修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "chat", "chatTradeLog", "enable") then return end
local LCTL = E:NewModule("LuiChatTradeLog")

TBT_CURRENT_TRADE = nil

local function curr()
    if not TBT_CURRENT_TRADE then
        TBT_CURRENT_TRADE = TradeLog_CreateNewTrade()
    end
    return TBT_CURRENT_TRADE
end

function TradeLog_CreateNewTrade()
    local trade = {
        id = nil,
        when = nil,
        where = nil,
        target = nil,
        class = nil,
        player = T.UnitName("player"),
        playerMoney = 0,
        targetMoney = 0,
        playerItems = {},
        targetItems = {},
        events = {},
        toofar = nil,
        result = nil,
        reason = nil,
    }
    return trade
end

function TradeLog_OnEvent(self, event, arg1, arg2, ...)
    if event == "UI_ERROR_MESSAGE" then
        if arg2 == ERR_TRADE_BAG_FULL or arg2 == ERR_TRADE_MAX_COUNT_EXCEEDED or arg2 == ERR_TRADE_TARGET_BAG_FULL or arg2 == ERR_TRADE_TARGET_MAX_COUNT_EXCEEDED then
            curr().result = "error"
            curr().reason = arg2
            TradeLog_LogTradeAndReset()
        elseif arg2 == ERR_TRADE_TARGET_DEAD or arg2 == ERR_TRADE_TOO_FAR then
            DEFAULT_CHAT_FRAME:AddMessage(arg2, 1, 0.2, 0.2)
        end
    
    elseif event == "UI_INFO_MESSAGE" and (arg2 == ERR_TRADE_CANCELLED or arg2 == ERR_TRADE_COMPLETE) then
        curr().result = (arg2 == ERR_TRADE_CANCELLED) and "cancelled" or "complete"
        TradeLog_LogTradeAndReset()
    
    elseif event == "TRADE_CLOSED" or event == "TRADE_REQUEST_CANCEL" or event == "TRADE_SHOW" then
        T.table_insert(curr().events, event)
    
    elseif event == "TRADE_PLAYER_ITEM_CHANGED" then
        TradeLog_UpdateItemInfo(arg1, "Player", curr().playerItems)
    
    elseif event == "TRADE_TARGET_ITEM_CHANGED" then
        TradeLog_UpdateItemInfo(arg1, "Target", curr().targetItems)
    
    elseif event == "TRADE_MONEY_CHANGED" then
        TradeLog_UpdateMoney()
    
    elseif event == "TRADE_ACCEPT_UPDATE" then
        for i = 1, 7 do
            TradeLog_UpdateItemInfo(i, "Player", curr().playerItems)
            TradeLog_UpdateItemInfo(i, "Target", curr().targetItems)
        end
        TradeLog_UpdateMoney()
    end
    
    if event == "TRADE_REQUEST_CANCEL" then
        if T.UnitName("NPC") then
            curr().toofar = T.CheckInteractDistance("npc", 2) and "no" or "yes"
        end
    end
    
    if event == "TRADE_SHOW" then
        local _, class = T.UnitClass("NPC")
        curr().target = T.GetUnitName("NPC", true)
        curr().class = class
    end
end

function TradeLog_UpdateItemInfo(id, unit, items)
    local funcInfo = T.getglobal("GetTrade" .. unit .. "ItemInfo")
    local funcLink = T.getglobal("GetTrade" .. unit .. "ItemLink")
    
    local name, texture, numItems, quality, isUsable, enchantment
    if unit == "Target" then
        name, texture, numItems, quality, isUsable, enchantment = funcInfo(id)
    else
        name, texture, numItems, quality, enchantment = funcInfo(id)
    end
    
    if not name then
        items[id] = nil
        return
    end
    
    local itemLink = funcLink(id)
    
    items[id] = {
        name = name,
        texture = texture,
        numItems = numItems,
        isUsable = isUsable,
        enchantment = enchantment,
        itemLink = itemLink,
    }
end

function TradeLog_UpdateMoney()
    curr().playerMoney = T.GetPlayerTradeMoney()
    curr().targetMoney = T.GetTargetTradeMoney()
end

function TradeLog_AnalyseCancelReason()
    local reason = "unknown"
    local e = curr().events
    local n = T.table_getn(e)
    if n >= 3 and e[n] == "TRADE_REQUEST_CANCEL" and e[n - 1] == "TRADE_CLOSED" and e[n - 2] == "TRADE_CLOSED" then
        reason = "self"
    elseif n >= 3 and e[n] == "TRADE_REQUEST_CANCEL" and e[n - 1] == "TRADE_CLOSED" and e[n - 2] == "TRADE_SHOW" then
        reason = "selfrunaway"
    elseif n >= 3 and e[n] == "TRADE_CLOSED" and e[n - 1] == "TRADE_CLOSED" and e[n - 2] == "TRADE_REQUEST_CANCEL" then
        if curr().toofar == "yes" then
            reason = "toofar"
        elseif curr().toofar == "no" then
            reason = "other"
        else
            reason = "wrong!!"
        end
    elseif n >= 3 and e[n] == "TRADE_REQUEST_CANCEL" and e[n - 1] == "TRADE_SHOW" and e[n - 2] == "TRADE_CLOSED" then
        reason = "selfhideui"
    end
    
    curr().events = nil
    return reason
end

function TradeLog_LogTradeAndReset()
    curr().when = T.date("%Y-%m-%d %H:%M:%S")
    curr().where = T.GetRealZoneText()
    if curr().result == "cancelled" then
        curr().reason = TradeLog_AnalyseCancelReason()
    elseif curr().result == "error" then
        curr().reason = curr().reason
    end
    TradeLog_OutputLog()
    TBT_CURRENT_TRADE = nil
end

function TBT_nextId(tab)
    local n = 0
    for k, v in T.ipairs(tab) do
        if v.id > n then n = v.id end
    end
    return n + 1
end

function TradeLog_GetTradeList(money, items, enchant, moneyText, countOnly)
    local list = {}
    if money > 0 then
        T.table_insert(list, moneyText(money))
    end
    local count = 0
    for i = 1, 6 do
        if items[i] then
            count = count + 1
            local tmp = items[i].itemLink
            if items[i].numItems > 1 then
                tmp = tmp .. "x" .. items[i].numItems
            end
            if not countOnly then T.table_insert(list, tmp) end
        end
    end
    if countOnly and count > 0 then
        local text = T.string_gsub(TRADE_LOG_ITEM_NUMBER, "%%d", count)
        T.table_insert(list, text)
    end
    
    if enchant and enchant.name and enchant.enchantment then
        T.table_insert(list, countOnly and TRADE_LOG_ENCHANT or enchant.enchantment)
    end
    return list
end

local function SendChat(msg, name)
    T.SendChatMessage(msg, "WHISPER", nil, name)
end

local function GetClassColor(name, class)
    if class and RAID_CLASS_COLORS[class] then
        return "|c" .. RAID_CLASS_COLORS[class].colorStr .. name .. "|r"
    else
        return name
    end
end

function TradeLog_Output(trade, func, plain)
    local whoLink = plain and trade.target or "|Hplayer:" .. trade.target .. "|h" .. GetClassColor(trade.target, trade.class) .. "|h"
    if trade.result == "complete" then
        local playerList = TradeLog_GetTradeList(trade.playerMoney, trade.playerItems, trade.targetItems[7], plain and TradeLog_GetMoneyPlainText or TradeLog_GetMoneyColorText)
        local targetList = TradeLog_GetTradeList(trade.targetMoney, trade.targetItems, trade.playerItems[7], plain and TradeLog_GetMoneyPlainText or TradeLog_GetMoneyColorText)
        
        if #playerList == 0 and #targetList == 0 then
            func(T.string_gsub(TRADE_LOG_SUCCESS_NO_EXCHANGE, "%%t", whoLink))
        else
            if plain then
                local breaked = false
                local first = true
                local msg = T.string_gsub(TRADE_LOG_SUCCESS, "%%t", whoLink)
                if #playerList > 0 then
                    msg = msg .. "(" .. TRADE_LOG_HANDOUT .. ")"
                    for _, v in T.pairs(playerList) do
                        if T.string_len(msg .. v) > 255 then
                            breaked = true
                            func(msg)
                            msg = "(" .. TRADE_LOG_HANDOUT .. ")" .. v
                            first = false
                        else
                            if not first then msg = msg .. "," end
                            first = false
                            msg = msg .. v
                        end
                    end
                    first = true
                end
                
                if #targetList > 0 then
                    if breaked then
                        func(msg)
                        msg = "(" .. TRADE_LOG_RECEIVE .. ")"
                    else
                        msg = msg .. " (" .. TRADE_LOG_RECEIVE .. ")"
                    end
                    for _, v in T.pairs(targetList) do
                        if (T.string_len(msg .. v) > 255) then
                            func(msg)
                            msg = "(" .. TRADE_LOG_RECEIVE .. ")" .. v
                            first = false
                        else
                            if not first then msg = msg .. "," end
                            first = false
                            msg = msg .. v
                        end
                    end
                end
                func(msg)
            else
                local detailString = TradeLogFrame and ("|CFF00B4FF|Htradelog:" .. TEXT(curr().id) .. "|h[" .. TRADE_LOG_DETAIL .. "]|h|r") or TRADE_LOG_DETAIL
                func(T.string_gsub(TRADE_LOG_SUCCESS, "%%t", whoLink) .. detailString .. ":")
                if #playerList > 0 then
                    func("(" .. TRADE_LOG_HANDOUT .. ") " .. T.table_concat(playerList, ","))
                end
                if #targetList > 0 then
                    func("(" .. TRADE_LOG_RECEIVE .. ") " .. T.table_concat(targetList, ","))
                end
            end
        end
    elseif (trade.result == "cancelled") then
        msg = T.string_gsub(TRADE_LOG_CANCELLED, "%%t", whoLink)
        msg = T.string_gsub(msg, "%%r", CANCEL_REASON_TEXT[trade.reason])
        func(msg)
    else
        msg = T.string_gsub(TRADE_LOG_FAILED, "%%t", whoLink)
        msg = T.string_gsub(msg, "%%r", trade.reason)
        func(msg)
    end

end

function TradeLog_OutputLog()
    local numPlayer, numTarget, enPlayer, enTarget, msg
    if not curr().target then
        if curr().reason == "selfhideui" then
            LUI:Print(T.string_gsub(TRADE_LOG_FAILED_NO_TARGET, "%%r", CANCEL_REASON_TEXT[curr().reason]))
        end
        return
    end
    
    TradeLog_Output(curr(), function(m)LUI:Print(m) end)
    
    if E.db.lui.modules.chat.chatTradeLog["tradeSendChat"] then
        TradeLog_Output(curr(), function(m)SendChat(m, curr().target) end, true)
    end
end

function TradeLog_GetMoneyColorText(money)
    local GSC_GOLD = "ffd100"
    local GSC_SILVER = "e6e6e6"
    local GSC_COPPER = "c8602c"
    
    local g = T.floor(money / 10000)
    local s = T.floor(money / 100) - g * 100
    local c = money - (g * 100 + s) * 100
    
    local text = ""
    if g > 0 then text = text .. "|cffffff00" .. g .. "|r" .. "|cff" .. GSC_GOLD .. TRADE_LOG_MONEY_NAME.gold .. "|r" end
    if s > 0 then text = text .. "|cffffff00" .. s .. "|r" .. "|cff" .. GSC_SILVER .. TRADE_LOG_MONEY_NAME.silver .. "|r" end
    if c > 0 then text = text .. "|cffffff00" .. c .. "|r" .. "|cff" .. GSC_COPPER .. TRADE_LOG_MONEY_NAME.copper .. "|r" end
    
    return text
end

function TradeLog_GetMoneyPlainText(money)
    local g = T.floor(money / 10000)
    local s = T.floor(money / 100) - g * 100
    local c = money - (g * 100 + s) * 100
    
    local text = ""
    if g > 0 then text = text .. g .. TRADE_LOG_MONEY_NAME.gold end
    if s > 0 then text = text .. s .. TRADE_LOG_MONEY_NAME.silver end
    if c > 0 then text = text .. c .. TRADE_LOG_MONEY_NAME.copper end
    
    return text
end

function LCTL:Initialize()
    local frame = T.CreateFrame("Frame")
    frame:SetScript("OnEvent", TradeLog_OnEvent)
    frame:RegisterEvent("VARIABLES_LOADED")
    frame:RegisterEvent("TRADE_SHOW")
    frame:RegisterEvent("TRADE_CLOSED")
    frame:RegisterEvent("TRADE_REQUEST_CANCEL")
    frame:RegisterEvent("PLAYER_TRADE_MONEY")
    
    frame:RegisterEvent("TRADE_MONEY_CHANGED")
    frame:RegisterEvent("TRADE_TARGET_ITEM_CHANGED")
    frame:RegisterEvent("TRADE_ACCEPT_UPDATE")
    frame:RegisterEvent("UI_INFO_MESSAGE")
    frame:RegisterEvent("UI_ERROR_MESSAGE")
end

local function InitializeCallback()
    if not E.db.lui.modules.chat.chatTradeLog["enable"] then return end
    LCTL:Initialize()
end

E:RegisterModule(LCTL:GetName(), InitializeCallback)
