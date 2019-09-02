--来源：EUI
--作者：EUI
--链接：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "chat", "chatBar", "enable") then return end
local LCB = E:GetModule("LuiChatBar")
local CH = E:GetModule("Chat")

local ChatEdit_ChooseBoxForSend = ChatEdit_ChooseBoxForSend

local ChatEmote = {}
LCB.ChatEmote = ChatEmote

ChatEmote.Config = {
    iconSize = 24,
    enableEmoteInput = true,
}

local customEmoteStartIndex = 9

local emotes = {
    {"{rt1}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_1]=]},
    {"{rt2}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_2]=]},
    {"{rt3}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_3]=]},
    {"{rt4}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_4]=]},
    {"{rt5}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_5]=]},
    {"{rt6}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_6]=]},
    {"{rt7}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_7]=]},
    {"{rt8}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_8]=]},
    {"{天使}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Angel]=]},
    {"{生气}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Angry]=]},
    
    {"{大笑}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Biglaugh]=]},
    {"{鼓掌}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Clap]=]},
    {"{酷}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Cool]=]},
    {"{哭}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Cry]=]},
    {"{可爱}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Cutie]=]},
    {"{鄙视}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Despise]=]},
    {"{美梦}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Dreamsmile]=]},
    {"{尴尬}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Embarrass]=]},
    {"{邪恶}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Evil]=]},
    {"{兴奋}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Excited]=]},
    
    {"{晕}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Faint]=]},
    {"{打架}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Fight]=]},
    {"{流感}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Flu]=]},
    {"{呆}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Freeze]=]},
    {"{皱眉}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Frown]=]},
    {"{致敬}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Greet]=]},
    {"{鬼脸}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Grimace]=]},
    {"{龇牙}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Growl]=]},
    {"{开心}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Happy]=]},
    {"{心}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Heart]=]},
    
    {"{恐惧}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Horror]=]},
    {"{生病}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Ill]=]},
    {"{无辜}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Innocent]=]},
    {"{功夫}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Kongfu]=]},
    {"{花痴}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Love]=]},
    {"{邮件}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Mail]=]},
    {"{化妆}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Makeup]=]},
    {"{马里奥}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Mario]=]},
    {"{沉思}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Meditate]=]},
    {"{可怜}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Miserable]=]},
    
    {"{好}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Okay]=]},
    {"{漂亮}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Pretty]=]},
    {"{吐}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Puke]=]},
    {"{握手}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Shake]=]},
    {"{喊}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Shout]=]},
    {"{闭嘴}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Shuuuu]=]},
    {"{害羞}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Shy]=]},
    {"{睡觉}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Sleep]=]},
    {"{微笑}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Smile]=]},
    {"{吃惊}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Suprise]=]},
    
    {"{失败}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Surrender]=]},
    {"{流汗}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Sweat]=]},
    {"{流泪}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Tear]=]},
    {"{悲剧}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Tears]=]},
    {"{想}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Think]=]},
    {"{偷笑}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Titter]=]},
    {"{猥琐}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Ugly]=]},
    {"{胜利}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Victory]=]},
    {"{雷锋}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Volunteer]=]},
    {"{委屈}", [=[Interface\AddOns\ElvUI_LivvenUI\media\icon\Wronged]=]},
}

LCB.emotes = emotes

local ShowEmoteTableButton
local EmoteTableFrame, EmoteClubTableFrame

local function CreateEmoteClubTableFrame()
    EmoteClubTableFrame = T.CreateFrame("Frame", "EmoteClubTableFrame", CommunitiesFrame)
    EmoteClubTableFrame:SetTemplate("Default")
    EmoteClubTableFrame:SetWidth((ChatEmote.Config.iconSize + 2) * 12 + 4)
    EmoteClubTableFrame:SetHeight((ChatEmote.Config.iconSize + 2) * 5 + 4)
    EmoteClubTableFrame:SetPoint("BOTTOMLEFT", CommunitiesFrame, "BOTTOMRIGHT", E:Scale(2), 0)
    EmoteClubTableFrame:Hide()
    EmoteClubTableFrame:SetFrameStrata("DIALOG")
    
    local icon, row, col
    row = 1
    col = 1
    for i = 1, #emotes do
        text = emotes[i][1]
        texture = emotes[i][2]
        icon = T.CreateFrame("Frame", T.string_format("IconButton%d", i), EmoteClubTableFrame)
        icon:SetWidth(ChatEmote.Config.iconSize)
        icon:SetHeight(ChatEmote.Config.iconSize)
        icon.text = text
        icon.texture = icon:CreateTexture(nil, "ARTWORK")
        icon.texture:SetTexture(texture)
        icon.texture:SetAllPoints(icon)
        icon:Show()
        icon:SetPoint("TOPLEFT", (col - 1) * (ChatEmote.Config.iconSize + 2) + 2, -(row - 1) * (ChatEmote.Config.iconSize + 2) - 2)
        icon:SetScript("OnMouseUp", ChatEmote.EmoteClubIconMouseUp)
        icon:EnableMouse(true)
        col = col + 1
        if (col > 12) then
            row = row + 1
            col = 1
        end
    end
end

local function CreateEmoteTableFrame()
    EmoteTableFrame = T.CreateFrame("Frame", "EmoteTableFrame", E.UIParent)
    EmoteTableFrame:SetTemplate("Default")
    EmoteTableFrame:SetWidth((ChatEmote.Config.iconSize + 2) * 12 + 4)
    EmoteTableFrame:SetHeight((ChatEmote.Config.iconSize + 2) * 5 + 4)
    EmoteTableFrame:SetPoint("BOTTOMLEFT", LeftChatPanel, "TOPLEFT", 0, 20)
    EmoteTableFrame:Hide()
    EmoteTableFrame:SetFrameStrata("DIALOG")
    
    local icon, row, col
    row = 1
    col = 1
    for i = 1, #emotes do
        text = emotes[i][1]
        texture = emotes[i][2]
        icon = T.CreateFrame("Frame", T.string_format("IconButton%d", i), EmoteTableFrame)
        icon:SetWidth(ChatEmote.Config.iconSize)
        icon:SetHeight(ChatEmote.Config.iconSize)
        icon.text = text
        icon.texture = icon:CreateTexture(nil, "ARTWORK")
        icon.texture:SetTexture(texture)
        icon.texture:SetAllPoints(icon)
        icon:Show()
        icon:SetPoint("TOPLEFT", (col - 1) * (ChatEmote.Config.iconSize + 2) + 2, -(row - 1) * (ChatEmote.Config.iconSize + 2) - 2)
        icon:SetScript("OnMouseUp", ChatEmote.EmoteIconMouseUp)
        icon:EnableMouse(true)
        col = col + 1
        if (col > 12) then
            row = row + 1
            col = 1
        end
    end
end

function ChatEmote.ToggleEmoteTable()
    if (not EmoteTableFrame) then CreateEmoteTableFrame() end
    if (EmoteTableFrame:IsShown()) then
        EmoteTableFrame:Hide()
    else
        EmoteTableFrame:Show()
    end
end

function ChatEmote.ToggleClubEmoteTable()
    if (not EmoteClubTableFrame) then CreateEmoteClubTableFrame() end
    if (EmoteClubTableFrame:IsShown()) then
        EmoteClubTableFrame:Hide()
    else
        EmoteClubTableFrame:Show()
    end
end

function ChatEmote.EmoteClubIconMouseUp(frame, button)
    if (button == "LeftButton") then
        CommunitiesFrame.ChatEditBox:Insert(frame.text)
    end
    ChatEmote.ToggleClubEmoteTable()
end

function ChatEmote.EmoteIconMouseUp(frame, button)
    if (button == "LeftButton") then
        local ChatFrameEditBox = ChatEdit_ChooseBoxForSend()
        if (not ChatFrameEditBox:IsShown()) then
            ChatEdit_ActivateChat(ChatFrameEditBox)
        end
        ChatFrameEditBox:Insert(frame.text)
    end
    ChatEmote.ToggleEmoteTable()
end

function LCB:LoadChatEmote()
    function CH:InsertEmotions(msg)
        for k, v in T.pairs(emotes) do
            msg = T.string_gsub(msg, v[1], "|T" .. v[2] .. ":16|t")
        end
        for word in T.string_gmatch(msg, "%s-%S+%s*") do
            word = T.strtrim(word)
            local pattern = T.string_gsub(word, "([%(%)%.%%%+%-%*%?%[%^%$])", "%%%1")
            local emoji = CH.Smileys[pattern]
            if emoji and T.string_match(msg, "[%s%p]-" .. pattern .. "[%s%p]*") then
                local base64 = E.Libs.Base64:Encode(word)
                msg = T.string_gsub(msg, "([%s%p]-)" .. pattern .. "([%s%p]*)", (base64 and ("%1|Helvmoji:%%" .. base64 .. "|h|cFFffffff|r|h") or "%1") .. emoji .. "%2")
            end
        end
        return msg
    end
end