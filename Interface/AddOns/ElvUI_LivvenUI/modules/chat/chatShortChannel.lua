local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "chat", "chatShortChannel", "enable") then return end
local LCSC = E:NewModule("LuiChatShortChannel", "AceEvent-3.0")

local newAddMsg = {}
local channellist
local channellistshort
local channleNum

local function NewAddMessage(frame, text, ...)
    if T.string_match(text, "频道：") or channleNum == 1 then return newAddMsg[frame](frame, text, ...) end
    for i = 1, channleNum do
        text = T.string_gsub(text, channellist[i], channellistshort[i])
    end
    --if E.db.lui.modules.chat.chatShortChannel["hideChannelNum"] then text = T.string_gsub(text, "|h%[(%d0?)%. ", "|h%[") end
    if type(text) ~= "string" then
        text = T.tostring(text)
    end
    return newAddMsg[frame](frame, text, ...)
end

function LCSC:SetChannelsShort()
    channellist = {}
    channellistshort = {}
    local cNumtemp = 1
    for i = 1, select("#", T.GetChannelList()), 3 do
        local id, name = select(i, T.GetChannelList())
        if name then
            local shortname
            if E.db.lui.modules.chat.chatShortChannel["channelLen"] == "1" then
                if name == "大脚世界频道" then
                    shortname = T.string_sub(name, 7, 9)
                elseif name == "ElvUIGVC" then
                    shortname = T.string_sub(name, 1, 5)
                elseif T.string_find(name, "Community:") then
                    shortname = name
                else
                    shortname = T.string_sub(name, 1, 3)
                end
            elseif E.db.lui.modules.chat.chatShortChannel["channelLen"] == "2" then
                if name == "大脚世界频道" then
                    shortname = T.string_sub(name, 7, 12)
                elseif name == "ElvUIGVC" then
                    shortname = T.string_sub(name, 1, 5)
                elseif T.string_find(name, "Community:") then
                    shortname = name
                else
                    shortname = T.string_sub(name, 1, 6)
                end
            end
            name = "|h%[(%d+)%. " .. name .. ".-%]|h"
            channellist[cNumtemp] = name
            if E.db.lui.modules.chat.chatShortChannel["hideChannelNum"] then
                shortname = "|h%[" .. shortname .. "%]|h"
            else
                shortname = "|h%[%1%. " .. shortname .. "%]|h"
            end
            channellistshort[cNumtemp] = shortname
            cNumtemp = cNumtemp + 1
        end
    end
    channleNum = cNumtemp - 1
end

function LCSC:Initialize()
    self:SetChannelsShort()
    for i = 1, NUM_CHAT_WINDOWS do
        local name, fontSize, r, g, b, alpha, shown, locked, docked, uninteractable = T.GetChatWindowInfo(i)
        if docked and name ~= L["CombatLog"] then
            local chatfrm = _G["ChatFrame" .. i]
            newAddMsg[chatfrm] = chatfrm.AddMessage
            chatfrm.AddMessage = NewAddMessage
        end
    end
    self:RegisterEvent("CHAT_MSG_CHANNEL_NOTICE", "SetChannelsShort")
end

local function InitializeCallback()
    if not E.db.lui.modules.chat.chatShortChannel["enable"] or E.db.chat["shortChannels"] then return end
    LCSC:Initialize()
end

E:RegisterModule(LCSC:GetName(), InitializeCallback)
