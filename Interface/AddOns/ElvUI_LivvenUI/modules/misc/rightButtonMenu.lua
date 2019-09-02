local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "general", "rightButtonMenu") then return end

local RBM = E:NewModule("rightButtonMenu")

local function getfullname()
    local unit = UIDROPDOWNMENU_INIT_MENU.unit
    local name = UIDROPDOWNMENU_INIT_MENU.name
    local server = UIDROPDOWNMENU_INIT_MENU.server
    
    if (server and (not unit or T.UnitRealmRelationship(unit) ~= LE_REALM_RELATION_SAME)) then
        return name .. "-" .. server
    else
        return name
    end
end

RBM.UnitPopupButtonsExtra = {
    ["FRIEND"] = {
        ["SEND_WHO"] = true,
        ["GUILD_ADD"] = true,
        ["FRIEND_ADD"] = true,
        ["NAME_COPY"] = true,
        ["MYSTATS"] = true,
    },
    ["COMMUNITIES_GUILD_MEMBER"] = {
        ["SEND_WHO"] = true,
        ["NAME_COPY"] = true,
        ["MYSTATS"] = true,
    },
    ["PARTY"] = {
        ["SEND_WHO"] = true,
        ["GUILD_ADD"] = true,
        ["NAME_COPY"] = true,
        ["MYSTATS"] = true,
    },
    ["RAID_PLAYER"] = {
        ["SEND_WHO"] = true,
        ["GUILD_ADD"] = true,
        ["NAME_COPY"] = true,
        ["MYSTATS"] = true,
    },
    ["RAID"] = {
        ["SEND_WHO"] = true,
        ["GUILD_ADD"] = true,
        ["NAME_COPY"] = true,
        ["MYSTATS"] = true,
    },
}

local function popupClick(self, info)
    local editBox
    local hasText
    local fullname = getfullname()
    if (info.value == "NAME_COPY") and fullname then
        editBox = ChatEdit_ChooseBoxForSend()
        hasText = (editBox:GetText() ~= "")
        ChatEdit_ActivateChat(editBox)
        editBox:Insert(fullname)
        if (not hasText) then editBox:HighlightText() end
    elseif (info.value == "SEND_WHO") and fullname then
        T.SendWho(fullname)
    elseif (info.value == "GUILD_ADD") and fullname then
        T.GuildInvite(fullname)
    elseif (info.value == "FRIEND_ADD") and fullname then
        T.C_FriendList_AddFriend(fullname)
    elseif (info.value == "MYSTATS") and fullname then
        local CRITICAL = TEXT_MODE_A_STRING_RESULT_CRITICAL or STAT_CRITICAL_STRIKE
        CRITICAL = T.string_gsub(CRITICAL, "[()]", "")
        T.SendChatMessage(T.string_format("%s:%.1f %s:%s", ITEM_LEVEL_ABBR, select(2, T.GetAverageItemLevel()), HP, T.AbbreviateNumbers(T.UnitHealthMax("player"))), "WHISPER", nil, fullname)
        T.SendChatMessage(T.string_format(" - %s:%.2f%%", STAT_HASTE, T.GetHaste()), "WHISPER", nil, fullname)
        T.SendChatMessage(T.string_format(" - %s:%.2f%%", STAT_MASTERY, T.GetMasteryEffect()), "WHISPER", nil, fullname)
        T.SendChatMessage(T.string_format(" - %s:%.2f%%", CRITICAL, T.math_max(T.GetRangedCritChance(), T.GetCritChance(), T.GetSpellCritChance(2))), "WHISPER", nil, fullname)
        T.SendChatMessage(T.string_format(" - %s:%.2f%%", STAT_VERSATILITY, T.GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE) + T.GetVersatilityBonus(CR_VERSATILITY_DAMAGE_DONE)), "WHISPER", nil, fullname)
    end
end

local function GetGuildInfo(unitname)
    local numMembers = T.GetNumGuildMembers()
    for i = 1, numMembers do
        local name, _, rankIndex, _, _, _, _, _, online = T.GetGuildRosterInfo(i)
        if online then
            name = T.string_split("-", name)
            if name == unitname then return true end
        end
    end
end

function RBM:Initialize()
    T.hooksecurefunc("UnitPopup_ShowMenu", function(unit, frame, framebutton, fullname, userData, ...)
        if (UIDROPDOWNMENU_MENU_LEVEL > 1) then return end
        for k, v in T.pairs(RBM.UnitPopupButtonsExtra) do
            if v and frame == k then
                if frame == "COMMUNITIES_GUILD_MEMBER" then
                    if GetGuildInfo(UIDROPDOWNMENU_INIT_MENU.name) then
                        RBM.UnitPopupButtonsExtra[k]["SEND_WHO"] = true
                        RBM.UnitPopupButtonsExtra[k]["MYSTATS"] = true
                    else
                        RBM.UnitPopupButtonsExtra[k]["SEND_WHO"] = false
                        RBM.UnitPopupButtonsExtra[k]["MYSTATS"] = false
                    end
                end
                T.UIDropDownMenu_AddSeparator()
                local info
                info = T.UIDropDownMenu_CreateInfo()
                info.text = L["Enhanced"]
                info.notCheckable = true
                info.isTitle = true
                T.UIDropDownMenu_AddButton(info)
                for k1, v1 in pairs(RBM.UnitPopupButtonsExtra[k]) do
                    if v1 then
                        info = T.UIDropDownMenu_CreateInfo()
                        info.text = L[k1]
                        info.notCheckable = true
                        info.arg1 = {
                            value = k1,
                        }
                        info.func = popupClick
                        T.UIDropDownMenu_AddButton(info)
                    end
                end
            end
        end
    end)
end

local function InitializeCallback()
    if not E.db.lui.modules.misc.general["rightButtonMenu"] then return end
    RBM:Initialize()
end

E:RegisterModule(RBM:GetName(), InitializeCallback)
