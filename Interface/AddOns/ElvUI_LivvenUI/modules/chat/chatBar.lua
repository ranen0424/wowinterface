--来源：EUI
--作者：EUI
--修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "chat", "chatBar", "enable") then return end
local LCB = E:NewModule("LuiChatBar")
local LSM = E.LSM or E.Libs.LSM

local ChatFrame_OpenChat = ChatFrame_OpenChat

local Button = {}

local ChatButton = {}

local ChannelList = {
    [L["bigFootChannel"]] = T.string_sub(L["bigFootChannel"], 7, 9),
}

local BlackChannelName = {
    ["EUIGVC"] = true,
    ["ElvUIGVC"] = true,
}

local function ChannelShortText(index)
    local channelNum, channelName = T.GetChannelName(index)
    if not channelName or BlackChannelName[channelName] then return 0 end
    
    if T.string_find(channelName, "Community") then
        local _, clubId, _ = T.string_split(":", channelName)
        local clubInfo = T.C_Club_GetClubInfo(clubId)
        if clubInfo then
            channelName = clubInfo.shortName or clubInfo.name
        end
        return E:ShortenString(gsub(channelName, "%s%-%s.*", ""), 1)
    else
        if channelNum ~= 0 and channelName ~= "集合石" then
            if channelName == L["bigFootChannel"] then
                return ChannelList[L["bigFootChannel"]]
            else
                return E:ShortenString(gsub(channelName, "%s%-%s.*", ""), 1)
            end
        else
            return 0
        end
    end
end

local ChatTypesList = {
    ["CHANNEL1"] = 1,
    ["CHANNEL2"] = 2,
    ["CHANNEL3"] = 3,
    ["CHANNEL4"] = 4,
    ["CHANNEL5"] = 5,
    ["CHANNEL6"] = 6,
    ["CHANNEL7"] = 7,
    ["CHANNEL8"] = 8,
    ["CHANNEL9"] = 9,
    ["CHANNEL10"] = 10,
    ["SAY"] = {
        ["name"] = L["chatBar_says"] or "S",
        ["cmd"] = "/s ",
        ["show"] = function() return true end,
    },
    ["YELL"] = {
        ["name"] = L["chatBar_yells"] or "Y",
        ["cmd"] = "/y ",
        ["show"] = function() return true end,
    },
    ["GUILD"] = {
        ["name"] = L["chatBar_G"],
        ["cmd"] = "/g ",
        ["show"] = function() return T.IsInGuild() end,
    },
    ["OFFICER"] = {
        ["name"] = L["chatBar_O"],
        ["cmd"] = "/o ",
        ["show"] = function() return T.CanEditOfficerNote() end,
    },
    ["PARTY"] = {
        ["name"] = L["chatBar_P"],
        ["cmd"] = "/p ",
        ["show"] = function() return T.IsPartyLFG() or T.IsInGroup() or T.IsInRaid() end,
    },
    ["RAID"] = {
        ["name"] = L["chatBar_R"],
        ["cmd"] = "/raid ",
        ["show"] = function() return T.IsInRaid() end,
    },
    ["RAID_WARNING"] = {
        ["name"] = L["chatBar_RW"],
        ["cmd"] = "/rw ",
        ["show"] = function() return T.IsInRaid() end,
    },
    ["INSTANCE_CHAT"] = {
        ["name"] = L["chatBar_I"],
        ["cmd"] = "/i ",
        ["show"] = function() return T.IsPartyLFG() end,
    },
    ["BATTLE_CHAT"] = {
        ["name"] = L["chatBar_BG"],
        ["cmd"] = "/bg ",
        ["show"] = function() local inInstance, instanceType = T.IsInInstance() local isInPVP = inInstance and (instanceType == "pvp") return isInPVP end,
    },
}
local chatTypesListTable = {}
for k, v in T.pairs(ChatTypesList) do
    T.table_insert(chatTypesListTable, k)
end
T.table_sort(chatTypesListTable, function(a, b)
    return a < b
end)

local function ChannelButton(parent, width, height, postion, order, text, color)
    local f = T.CreateFrame("Button", nil, parent)
    f:Width(width)
    f:Height(height)
    f:SetPoint("LEFT", parent, "LEFT", (postion == 1) and 10 or (10 + (postion - 1) * E.db.lui.modules.chat.chatBar["fontSize"] * 1.5), 0)--Lv：“20”间距
    f:RegisterForClicks("AnyUp")
    f:SetScript("OnClick", function()
        local text = ""
        if ChatFrame1EditBox:IsShown() then
            text = ChatFrame1EditBox:GetText()
        end
        if not order:find(" ") then order = order .. " " end
        ChatFrame_OpenChat(order .. text, SELECTED_DOCK_FRAME)
    end)
    
    f.text = f:CreateFontString(nil, "OVERLAY")
    f.text:FontTemplate(LSM:Fetch("font", E.db.lui.modules.chat.chatBar["fontName"]), E.db.lui.modules.chat.chatBar["fontSize"], E.db.lui.modules.chat.chatBar["fontFlag"])
    f.text:SetText(text)
    f.text:SetPoint("CENTER", 0, 0)
    f.text:SetTextColor(unpack(color))
    f:Show()
    T.table_insert(Button, f)
end

local function GetChannelColor(name)
    if name and ChatTypeInfo[name] then
        return {ChatTypeInfo[name].r, ChatTypeInfo[name].g, ChatTypeInfo[name].b}
    else
        return {1, 1, 1}
    end
end

local function SetButtonsOnEnter(button)
    button:SetScript("OnEnter", function(self)
        T.GameTooltip:SetOwner(button, "ANCHOR_TOP", 0, 6)
        if button == _G["LuiBigfootChannel"] then
            T.GameTooltip:AddLine(L["Enable/DisableBigFootChannel"])
        elseif button == _G["LuiRollMacro"] then
            T.GameTooltip:AddLine(L["Roll 1-100"])
        elseif button == _G["LuiChatEmote"] then
            T.GameTooltip:AddLine(L["emoteTip"])
        elseif button == _G["LuiStatReport"] then
            T.GameTooltip:AddLine(LCB.L.INFO_DURABILITY_TIP)
            T.GameTooltip:AddLine(LCB.L.INFO_DURABILITY_TIP2)
        end
        T.GameTooltip:Show()
        
        for k, v in T.pairs(ChatButton) do
            v:SetAlpha(1)
        end
        for i = 1, #Button do
            Button[i]:SetAlpha(1)
        end
    end)
end

local function SetButtonsOnLeave(button)
    button:SetScript("OnLeave", function(self)
        T.GameTooltip:Hide()
        for k, v in T.pairs(ChatButton) do
            v:SetAlpha(0)
        end
        for i = 1, #Button do
            if Button[i] then
                Button[i]:SetAlpha(0)
            end
        end
    end)
end

local function CreateChannelButton(chat)
    if E.db.lui.modules.chat.chatBar["syncBtn"] then
        T.JoinTemporaryChannel(L["bigFootChannel"])
        T.ChatFrame_RemoveChannel(DEFAULT_CHAT_FRAME, L["bigFootChannel"])
        T.ChatFrame_AddChannel(DEFAULT_CHAT_FRAME, L["bigFootChannel"])
        for i = 1, NUM_CHAT_WINDOWS do
            local name, fontSize, r, g, b, alpha, shown, locked, docked, uninteractable = T.GetChatWindowInfo(i)
            if docked and (name == "世界" or name == "World") then
                local chatfrm = _G["ChatFrame" .. i]
                T.ChatFrame_RemoveChannel(chatfrm, L["bigFootChannel"])
                T.ChatFrame_AddChannel(chatfrm, L["bigFootChannel"])
            end
        end
    else
        T.SlashCmdList["LEAVE"](L["bigFootChannel"])
    end
    
    for i = 1, #Button do
        Button[i]:Hide()
        Button[i] = nil
    end
    T.table_wipe(Button)
    
    local i = 1
    
    for n = 1, #chatTypesListTable do
        if chatTypesListTable[n]:find("CHANNEL") and ChannelShortText(ChatTypesList[chatTypesListTable[n]]) ~= 0 then
            ChannelButton(chat, 16, 16, i, "/" .. T.string_sub(chatTypesListTable[n], 8) .. " ", ChannelShortText(ChatTypesList[chatTypesListTable[n]]), GetChannelColor(chatTypesListTable[n]))
            i = i + 1
        end
        if not chatTypesListTable[n]:find("CHANNEL") then
            if ChatTypesList[chatTypesListTable[n]].show() then
                ChannelButton(chat, 16, 16, i, ChatTypesList[chatTypesListTable[n]].cmd, ChatTypesList[chatTypesListTable[n]].name, GetChannelColor(chatTypesListTable[n]))
                i = i + 1
            end
        end
    end
    
    if E.db.lui.modules.chat.chatBar["barMouseOver"] then
        for k = 1, #ChatButton do
            ChatButton[k]:SetAlpha(0)
            SetButtonsOnEnter(ChatButton[k])
            SetButtonsOnLeave(ChatButton[k])
        end
        for i = 1, #Button do
            Button[i]:SetAlpha(0)
            SetButtonsOnEnter(Button[i])
            SetButtonsOnLeave(Button[i])
        end
    end
end

function LCB:Initialize()
    local chat = T.CreateFrame("Frame", "LuiChatbarFrame", LeftChatPanel)
    chat:Point("TOP", LeftChatPanel, "TOP", -3, 24)
    chat:Width(E.db["chat"].panelWidth)
    chat:Height(25)
    self.chatbar = chat
    chat:RegisterEvent("PLAYER_ENTERING_WORLD")
    chat:RegisterEvent("CHAT_MSG_CHANNEL_NOTICE")
    chat:RegisterEvent("UPDATE_CHAT_COLOR")
    chat:RegisterEvent("RAID_ROSTER_UPDATE")
    chat:RegisterEvent("GROUP_ROSTER_UPDATE")
    chat:RegisterEvent("PLAYER_GUILD_UPDATE")
    chat:RegisterEvent("CLUB_ADDED")
    chat:RegisterEvent("CLUB_REMOVED")
    chat:SetScript("OnEvent", function(self)
        E:Delay(.1, CreateChannelButton, chat)
    end)
    
    local big = T.CreateFrame("Button", "LuiBigfootChannel", self.chatbar)
    big:Point("RIGHT", self.chatbar, "RIGHT", 0, 0)
    big:Size(20)
    big:RegisterForClicks("AnyDown")
    big:SetNormalTexture("Interface\\Addons\\ElvUI_LivvenUI\\media\\icon\\world")
    big:SetHighlightTexture("Interface\\Addons\\ElvUI_LivvenUI\\media\\icon\\world-Highlight")
    if E.db.lui.modules.chat.chatBar["syncBtn"] then
        big:GetNormalTexture():SetDesaturated(false)
    else
        big:GetNormalTexture():SetDesaturated(true)
    end
    
    big:SetScript("OnClick", function(self)
        if not E.db.lui.modules.chat.chatBar["syncBtn"] then
            T.JoinTemporaryChannel(L["bigFootChannel"])
            T.ChatFrame_RemoveChannel(DEFAULT_CHAT_FRAME, L["bigFootChannel"])
            T.ChatFrame_AddChannel(DEFAULT_CHAT_FRAME, L["bigFootChannel"])
            for i = 1, NUM_CHAT_WINDOWS do
                local name, fontSize, r, g, b, alpha, shown, locked, docked, uninteractable = T.GetChatWindowInfo(i)
                if docked and (name == "世界" or name == "World") then
                    local chatfrm = _G["ChatFrame" .. i]
                    T.ChatFrame_RemoveChannel(chatfrm, L["bigFootChannel"])
                    T.ChatFrame_AddChannel(chatfrm, L["bigFootChannel"])
                end
            end
            E.db.lui.modules.chat.chatBar["syncBtn"] = true
            big:GetNormalTexture():SetDesaturated(false)
        else
            T.SlashCmdList["LEAVE"](L["bigFootChannel"])
            E.db.lui.modules.chat.chatBar["syncBtn"] = false
            big:GetNormalTexture():SetDesaturated(true)
        end
    end)
    big:SetScript("OnEnter", function(self)
        T.GameTooltip:SetOwner(self, "ANCHOR_TOP", 0, 6)
        T.GameTooltip:AddLine(L["Enable/DisableBigFootChannel"])
        T.GameTooltip:Show()
    end)
    big:SetScript("OnLeave", function(self)
        T.GameTooltip:Hide()
    end)
    
    local roll = T.CreateFrame("Button", "LuiRollMacro", E.UIParent, "SecureActionButtonTemplate")
    roll:SetAttribute("*type*", "macro")
    roll:SetAttribute("macrotext", "/roll")
    roll:SetParent(self.chatbar)
    roll:Width(18)
    roll:Height(18)
    roll:SetPoint("RIGHT", self.chatbar, "RIGHT", -25, 0)
    roll:SetNormalTexture("Interface\\Buttons\\UI-GroupLoot-Dice-Up")
    roll:SetPushedTexture("Interface\\Buttons\\UI-GroupLoot-Dice-Down")
    roll:SetHighlightTexture("Interface\\Buttons\\UI-GroupLoot-Dice-Highlight")
    roll:SetScript("OnEnter", function(self)
        T.GameTooltip:SetOwner(self, "ANCHOR_TOP", 0, 6)
        T.GameTooltip:AddLine(L["Roll 1-100"])
        T.GameTooltip:Show()
    end)
    roll:SetScript("OnLeave", function(self)
        T.GameTooltip:Hide()
    end)
    
    local Emote = self.ChatEmote
    local ChatEmote = T.CreateFrame("Button", "LuiChatEmote", self.chatbar)
    ChatEmote:SetPoint("RIGHT", self.chatbar, "RIGHT", -50, 0)
    ChatEmote:Size(16)
    ChatEmote:SetScript("OnClick", function()
        Emote.ToggleEmoteTable()
    end)
    
    ChatEmote:SetNormalTexture("Interface\\Addons\\ElvUI_LivvenUI\\media\\icon\\Smile")
    ChatEmote:SetHighlightTexture("Interface\\Addons\\ElvUI_LivvenUI\\media\\icon\\Smile-Highlight")
    ChatEmote:SetScript("OnEnter", function(self)
        T.GameTooltip:SetOwner(self, "ANCHOR_TOP", 0, 6)
        T.GameTooltip:AddLine(L["emoteTip"])
        T.GameTooltip:Show()
    end)
    ChatEmote:SetScript("OnLeave", function(self)
        T.GameTooltip:Hide()
    end)
    
    
    local statreport = T.CreateFrame("Button", "LuiStatReport", self.chatbar)
    statreport:Size(16)
    statreport:SetPoint("RIGHT", self.chatbar, "RIGHT", -75, 0)
    statreport:RegisterForClicks("AnyUp")
    statreport:SetScript("OnClick", function(self, btn)
        if btn == "RightButton" then
            LCB:SendBossNotes(T.UnitName("target"))
        else
            LCB:SendReport()
        end
    end)
    statreport:SetNormalTexture("Interface\\Addons\\ElvUI_LivvenUI\\media\\icon\\report")
    statreport:SetHighlightTexture("Interface\\Addons\\ElvUI_LivvenUI\\media\\icon\\report-Highlight")
    
    statreport:SetScript("OnEnter", function(self)
        T.GameTooltip:SetOwner(self, "ANCHOR_TOP", 0, 6)
        T.GameTooltip:AddLine(LCB.L.INFO_DURABILITY_TIP)
        T.GameTooltip:AddLine(LCB.L.INFO_DURABILITY_TIP2)
        T.GameTooltip:Show()
    end)
    statreport:SetScript("OnLeave", function(self)
        T.GameTooltip:Hide()
    end)
    
    T.table_insert(ChatButton, big)
    T.table_insert(ChatButton, roll)
    T.table_insert(ChatButton, ChatEmote)
    T.table_insert(ChatButton, statreport)
end

local function InitializeCallback()
    if not E.db.lui.modules.chat.chatBar["enable"] then return end
    LCB:Initialize()
    LCB:LoadChatMod()
    LCB:LoadChatEmote()
end

E:RegisterModule(LCB:GetName(), InitializeCallback)
