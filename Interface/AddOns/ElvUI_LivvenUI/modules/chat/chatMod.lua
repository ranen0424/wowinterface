--来源：EUI
--作者：EUI
--链接：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "chat", "chatBar", "enable") then return end
local LCB = E:GetModule("LuiChatBar")

local _G = _G
local LE_PARTY_CATEGORY_INSTANCE = LE_PARTY_CATEGORY_INSTANCE
local ChatEdit_UpdateHeader = ChatEdit_UpdateHeader
local NUM_CHAT_WINDOWS = NUM_CHAT_WINDOWS

function LCB:LoadChatMod()
    function ChatEdit_CustomTabPressed(self)
        if T.string_sub(T.tostring(self:GetText()), 1, 1) == "/" then return end
        if (self:GetAttribute("chatType") == "SAY") then
            if (T.GetNumSubgroupMembers() > 0) then
                self:SetAttribute("chatType", "PARTY")
                ChatEdit_UpdateHeader(self)
            elseif (T.IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and T.IsInInstance()) then
                self:SetAttribute("chatType", "INSTANCE_CHAT")
                ChatEdit_UpdateHeader(self)
            elseif (T.GetNumGroupMembers() > 0 and T.IsInRaid()) then
                self:SetAttribute("chatType", "RAID")
                ChatEdit_UpdateHeader(self)
            elseif (T.IsInGuild()) then
                self:SetAttribute("chatType", "GUILD")
                ChatEdit_UpdateHeader(self)
            elseif (T.CanEditOfficerNote()) then
                self:SetAttribute("chatType", "OFFICER")
                ChatEdit_UpdateHeader(self)
            else
                return
            end
        elseif (self:GetAttribute("chatType") == "PARTY") then
            if (T.IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and T.IsInInstance()) then
                self:SetAttribute("chatType", "INSTANCE_CHAT")
                ChatEdit_UpdateHeader(self)
            elseif (T.GetNumGroupMembers() > 0 and T.IsInRaid()) then
                self:SetAttribute("chatType", "RAID")
                ChatEdit_UpdateHeader(self)
            elseif (T.IsInGuild()) then
                self:SetAttribute("chatType", "GUILD")
                ChatEdit_UpdateHeader(self)
            elseif (T.CanEditOfficerNote()) then
                self:SetAttribute("chatType", "OFFICER")
                ChatEdit_UpdateHeader(self)
            else
                self:SetAttribute("chatType", "SAY")
                ChatEdit_UpdateHeader(self)
            end
        elseif (self:GetAttribute("chatType") == "INSTANCE_CHAT") then
            if (T.IsInGuild()) then
                self:SetAttribute("chatType", "GUILD")
                ChatEdit_UpdateHeader(self)
            elseif (T.CanEditOfficerNote()) then
                self:SetAttribute("chatType", "OFFICER")
                ChatEdit_UpdateHeader(self)
            else
                self:SetAttribute("chatType", "SAY")
                ChatEdit_UpdateHeader(self)
            end
        elseif (self:GetAttribute("chatType") == "RAID") then
            if (T.IsInGuild) then
                self:SetAttribute("chatType", "GUILD")
                ChatEdit_UpdateHeader(self)
            elseif (T.CanEditOfficerNote()) then
                self:SetAttribute("chatType", "OFFICER")
                ChatEdit_UpdateHeader(self)
            else
                self:SetAttribute("chatType", "SAY")
                ChatEdit_UpdateHeader(self)
            end
        elseif (self:GetAttribute("chatType") == "GUILD") then
            if (T.CanEditOfficerNote()) then
                self:SetAttribute("chatType", "OFFICER")
                ChatEdit_UpdateHeader(self)
            else
                self:SetAttribute("chatType", "SAY")
                ChatEdit_UpdateHeader(self)
            end
        elseif (self:GetAttribute("chatType") == "OFFICER") then
            self:SetAttribute("chatType", "SAY")
            ChatEdit_UpdateHeader(self)
        elseif (self:GetAttribute("chatType") == "CHANNEL") then
            if (T.GetNumSubgroupMembers() > 0) then
                self:SetAttribute("chatType", "PARTY")
                ChatEdit_UpdateHeader(self)
            elseif (T.IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and T.IsInInstance()) then
                self:SetAttribute("chatType", "INSTANCE_CHAT")
                ChatEdit_UpdateHeader(self)
            elseif (T.GetNumGroupMembers() > 0 and T.IsInRaid()) then
                self:SetAttribute("chatType", "RAID")
                ChatEdit_UpdateHeader(self)
            elseif (T.IsInGuild()) then
                self:SetAttribute("chatType", "GUILD")
                ChatEdit_UpdateHeader(self)
            elseif (T.CanEditOfficerNote()) then
                self:SetAttribute("chatType", "OFFICER")
                ChatEdit_UpdateHeader(self)
            else
                self:SetAttribute("chatType", "SAY")
                ChatEdit_UpdateHeader(self)
            end
        end
    end
end