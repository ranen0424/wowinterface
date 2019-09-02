local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LCIL = E:NewModule("LuiChatItemlevelLink")

local Caches = {}

local function ChatItemLevel(Hyperlink)
    if (Caches[Hyperlink]) then
        return Caches[Hyperlink]
    end
    local link = T.string_match(Hyperlink, "|H(.-)|h")
    local name, _, _, _, _, class, subclass, _, equipSlot = T.GetItemInfo(link)
    local level = T.GetDetailedItemLevelInfo(link)
    local yes = true
	if level then
		if E.db.lui.modules.chat.chatItemlevelLink["itemsolt"] then
			if equipSlot and T.string_find(equipSlot, "INVTYPE_") then
				level = T.string_format("%s(%s)", level, _G[equipSlot] or equipSlot)
			elseif class == ARMOR then
				level = T.string_format("%s(%s)", level, class)
			elseif subclass and T.string_find(subclass, RELICSLOT) then
				level = T.string_format("%s(%s)", level, RELICSLOT)
			else
				yes = false
			end
		end
        if yes then
            Hyperlink = Hyperlink:gsub("|h%[(.-)%]|h", "|h[" .. level .. ":" .. name .. "]|h")
        end
        Caches[Hyperlink] = Hyperlink
    end
    return Hyperlink
end

local function filter(self, event, msg, ...)
    msg = msg:gsub("(|Hitem:%d+:.-|h.-|h)", ChatItemLevel)
    return false, msg, ...
end

function LCIL:Initialize()
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", filter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", filter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", filter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", filter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER", filter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", filter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID", filter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER", filter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", filter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER", filter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", filter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_BATTLEGROUND", filter)
    T.ChatFrame_AddMessageEventFilter("CHAT_MSG_LOOT", filter)
end

local function InitializeCallback()
    if not E.db.lui.modules.chat.chatItemlevelLink["enable"] then return end
    LCIL:Initialize()
end

E:RegisterModule(LCIL:GetName(), InitializeCallback)
