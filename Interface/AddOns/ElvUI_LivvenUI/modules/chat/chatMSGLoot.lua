--来源：爱不易
--作者：爱不易
--链接：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "chat", "chatMSGLoot", "enable") then return end

local LCML = E:NewModule("LuiChatMSGLoot")

function LCML:Initialize()
    local pattern = "^" .. T.string_format(LOOT_ITEM, "(.+)", "(.+)") .. "$"
    local slot_name = {
        INVTYPE_TRINKET = "饰品",
        INVTYPE_FINGER = "戒指",
        INVTYPE_CLOAK = "披风",
    }
    ChatFrame_AddMessageEventFilter("CHAT_MSG_LOOT", function(self, event, msg, ...)
        local _, _, player, item = msg:find(pattern)
        if player and player ~= YOU then
            local _, _, quality, _, _, _, _, _, slot = T.GetItemInfo(item)
            if quality >= 3 and slot and slot ~= "" then
                local _, class = T.UnitClass(player)
                local color = class and RAID_CLASS_COLORS[class].colorStr
                local playerText = player
                if E.db.lui.modules.chat.chatMSGLoot["chatMSGLootGS"] and TeamStats and TeamStats.db then
                    local fullname = player:find("-") and player or player .. "-" .. T.GetRealmName()
                    local data = TeamStats.db.players[fullname]
                    if data.gsGot and data.gs then
                        playerText = playerText .. "(" .. data.gs .. ")"
                    end
                end
                player = T.string_format("|Hplayer:%s|h%s[%s]%s|h", player, color and "|c" .. color or "", playerText, color and "|r" or "")
                local msg2 = T.string_format(LOOT_ITEM, player, item)
                return false, msg2, ...
            end
        end
    end)
end

local function InitializeCallback()
    if not E.db.lui.modules.chat.chatMSGLoot["enable"] then return end
    LCML:Initialize()
end

E:RegisterModule(LCML:GetName(), InitializeCallback)
