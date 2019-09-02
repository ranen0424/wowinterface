local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "general", "meetingStonePlus", "enable") then return end
local LMSP = E:NewModule("LuiMeetingStonePlus", "AceEvent-3.0")
local S = E:GetModule("Skins")
local GetRaidProgressionData
local CUSTOM_PROGRESSION_LIST
local RAID_PROGRESSION_LIST

local Panels = {
    "MainPanel",
    "ExchangePanel",
    "BrowsePanel.AdvFilterPanel",
    "BrowsePanel.AutoCompleteFrame",
}

local Buttons = {
    "BrowsePanel.SignUpButton",
    "ManagerPanel.RefreshButton",
    "BrowsePanel.RefreshButton",
    "BrowsePanel.AdvButton",
    "CreatePanel.CreateButton",
    "CreatePanel.DisbandButton",
    "BrowsePanel.NoResultBlocker.Button",
    "RecentPanel.BatchDeleteButton",
    "BrowsePanel.RefreshFilterButton",
    "BrowsePanel.ResetFilterButton",
    "MallPanel.PurchaseButton",
}

local Dropdowns = {
    "BrowsePanel.ActivityDropdown",
    "CreatePanel.ActivityType",
    "RecentPanel.ActivityDropdown",
    "RecentPanel.ClassDropdown",
    "RecentPanel.RoleDropdown",
}

local GridViews = {
    "ApplicantPanel.ApplicantList",
    "BrowsePanel.ActivityList",
    "RecentPanel.MemberList",
}

local EditBoxes = {
    "CreatePanel.HonorLevel",
    "CreatePanel.ItemLevel",
    "RecentPanel.SearchInput",
}

local function strToPath(str)
    local path = {}
    for v in string.gmatch(str, "([^\.]+)") do
        table.insert(path, v)
    end
    return path
end

local function getValue(pathStr, tbl)
    local keys = strToPath(pathStr)
    local value
    for _, key in T.pairs(keys) do
        value = value and value[key] or tbl[key]
    end
    return value
end

local function MSMemberInfo(frame, activity, tooltip)
    if not tooltip then
        tooltip = frame.GameTooltip
        tooltip:SetOwner(frame, 'ANCHOR_NONE')
        tooltip:SetPoint('TOPLEFT', frame, 'TOPRIGHT', 1, -10)
        if E.db.lui.modules.misc.general.meetingStonePlus.ElvUISkins then tooltip:SetTemplate("Transparent") end --Livven: 鼠标提示背景美化
    end
    
    tooltip:AddHeader(activity:GetName(), 1, 1, 1)
    tooltip:AddLine(activity:GetSummary(), GREEN_FONT_COLOR.r, GREEN_FONT_COLOR.g, GREEN_FONT_COLOR.b, true)
    if activity:GetComment() then
        tooltip:AddLine(activity:GetComment(), GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b, true)
    end
    
    tooltip:AddSepatator()
    
    if activity:GetLeader() then
        tooltip:AddLine(T.string_format(LFG_LIST_TOOLTIP_LEADER, activity:GetLeaderText()))
        
        if activity:GetLeaderItemLevel() then
            tooltip:AddLine(T.string_format(L['队长物品等级：|cffffffff%s|r'], activity:GetLeaderItemLevel()))
        end
        if activity:GetLeaderHonorLevel() then
            tooltip:AddLine(T.string_format(L['队长荣誉等级：|cffffffff%s|r'], activity:GetLeaderHonorLevel()))
        end
        if activity:GetLeaderPvPRating() then
            tooltip:AddLine(T.string_format(L['队长PvP 等级：|cffffffff%s|r'], activity:GetLeaderPvPRating()))
        end
        tooltip:AddSepatator()
    end
    
    if activity:GetItemLevel() > 0 then
        tooltip:AddLine(T.string_format(LFG_LIST_TOOLTIP_ILVL, activity:GetItemLevel()))
    end
    if activity:IsUseHonorLevel() and activity:GetHonorLevel() > 0 then
        tooltip:AddLine(T.string_format(LFG_LIST_TOOLTIP_HONOR_LEVEL, activity:GetHonorLevel()))
    end
    if activity:GetVoiceChat() then
        tooltip:AddLine(T.string_format(L['语音聊天：|cffffffff%s|r'], activity:GetVoiceChat()), nil, nil, nil, true)
    end
    if activity:GetAge() > 0 then
        tooltip:AddLine(T.string_format(LFG_LIST_TOOLTIP_AGE, T.SecondsToTime(activity:GetAge(), false, false, 1, false)))
    end
    
    if activity:GetDisplayType() == LE_LFG_LIST_DISPLAY_TYPE_CLASS_ENUMERATE then
        tooltip:AddSepatator()
        tooltip:AddLine(T.string_format(LFG_LIST_TOOLTIP_MEMBERS_SIMPLE, activity:GetNumMembers()))
        for i = 1, activity:GetNumMembers() do
            local role, class, classLocalized = T.C_LFGList_GetSearchResultMemberInfo(activity:GetID(), i)
            local classColor = RAID_CLASS_COLORS[class] or NORMAL_FONT_COLOR
            tooltip:AddLine(T.string_format(LFG_LIST_TOOLTIP_CLASS_ROLE, classLocalized, _G[role]), classColor.r, classColor.g, classColor.b)
        end
    else
        local memberCounts = T.C_LFGList_GetSearchResultMemberCounts(activity:GetID())
        if memberCounts then
            tooltip:AddSepatator()
            tooltip:AddLine(T.string_format(LFG_LIST_TOOLTIP_MEMBERS, activity:GetNumMembers(), memberCounts.TANK, memberCounts.HEALER, memberCounts.DAMAGER))
        end
        local roles = {}
        local classInfo = {}
        for i = 1, activity:GetNumMembers() do
            local role, class, classLocalized = T.C_LFGList_GetSearchResultMemberInfo(activity:GetID(), i)
            if not class then return end
            classInfo[class] = {
                name = classLocalized,
                color = RAID_CLASS_COLORS[class] or NORMAL_FONT_COLOR
            }
            if not roles[role] then roles[role] = {} end
            if not roles[role][class] then roles[role][class] = 0 end
            roles[role][class] = roles[role][class] + 1
        end
        
        for role, classes in T.pairs(roles) do
            tooltip:AddLine(_G[role] .. ": ")
            for class, count in T.pairs(classes) do
                local text = "   "
                if count > 1 then text = text .. count .. " " else text = text .. "   " end
                text = text .. "|c" .. classInfo[class].color.colorStr .. classInfo[class].name .. "|r "
                tooltip:AddLine(text)
            end
        end
    end
    
    if activity:IsAnyFriend() then
        tooltip:AddSepatator()
        tooltip:AddLine(LFG_LIST_TOOLTIP_FRIENDS_IN_GROUP)
        tooltip:AddLine(LFGListSearchEntryUtil_GetFriendList(activity:GetID()), 1, 1, 1, true)
    end
    
    local progressions = GetRaidProgressionData(activity:GetActivityID(), activity:GetCustomID())
    local progressionValue = activity:GetLeaderProgression()
    local completedEncounters = T.C_LFGList_GetSearchResultEncounterInfo(activity:GetID())
    if progressions and progressionValue then
        tooltip:AddSepatator()
        tooltip:AddDoubleLine(L['副本进度/经验：'], activity:GetShortName())
        for i, v in iT.pairs(progressions) do
            local color = activity:IsBossKilled(v.name) and RED_FONT_COLOR or GREEN_FONT_COLOR
            tooltip:AddDoubleLine(v.name, GetProgressionTex(progressionValue, i), color.r, color.g, color.b)
        end
    elseif completedEncounters and #completedEncounters > 0 then
        tooltip:AddSepatator()
        tooltip:AddLine(LFG_LIST_BOSSES_DEFEATED)
        for i = 1, #completedEncounters do
            tooltip:AddLine(completedEncounters[i], RED_FONT_COLOR.r, RED_FONT_COLOR.g, RED_FONT_COLOR.b)
        end
    end
    
    if activity:IsDelisted() then
        tooltip:AddSepatator()
        tooltip:AddLine(LFG_LIST_ENTRY_DELISTED, RED_FONT_COLOR.r, RED_FONT_COLOR.g, RED_FONT_COLOR.b, true)
    end
    
    local version = activity:GetVersion()
    if version then
        tooltip:AddDoubleLine(' ', GetFullVersion(version), 1, 1, 1, 0.5, 0.5, 0.5)
    end
    tooltip:Show()
end

function LMSP:Initialize()
    local MSEnv = LibStub:GetLibrary("NetEaseEnv-1.0")._NSList.MeetingStone
    if E.db.lui.modules.misc.general.meetingStonePlus.ElvUISkins then
        local GUI = LibStub("NetEaseGUI-2.0")
    
        for _, v in T.pairs(Panels) do
            local frame = getValue(v, MSEnv)
            if frame then
                if frame.Inset then LUI:StripTextures(frame.Inset) end
                if frame.Inset2 then LUI:StripTextures(frame.Inset2) end
                LUI:StripTextures(frame)
                frame:Styling()
                frame:SetTemplate("Transparent")
            end
        end
        
        for _, v in T.pairs(Buttons) do
            local button = getValue(v, MSEnv)
            if button then
                LUI:StripTextures(button)
                S:HandleButton(button)
            end
        end
        
        for _, v in T.pairs(Dropdowns) do
            local frame = getValue(v, MSEnv)
            local text = frame.Text
            local button = frame.MenuButton
            LUI:StripTextures(frame)
            text:ClearAllPoints()
            text:Point("RIGHT", button, "LEFT", -2, 0)
            
            button:ClearAllPoints()
            button:SetPoint("TOPRIGHT", -14, 0)
            button:SetSize(16, 16)
            S:HandleNextPrevButton(button)
            frame:CreateBackdrop("Transparent")
            frame.backdrop:Point("TOPLEFT", -2, 2)
            frame.backdrop:Point("BOTTOMRIGHT", button, "BOTTOMRIGHT", 2, -2)
        end
        
        for _, v in T.pairs(GridViews) do
            local grid = getValue(v, MSEnv)
            if not grid.skinned_h then
                for _, button in T.pairs(grid.sortButtons) do
                    LUI:StripTextures(button, true)
                    button.Arrow:SetAlpha(1)
                    button:SetTemplate("Transparent")
                end
                S:HandleScrollBar(grid:GetScrollBar())
                grid.skinned_h = true
            end
        end
        
        for _, v in T.pairs(EditBoxes) do
            local edit = getValue(v, MSEnv)
            LUI:StripTextures(edit)
            S:HandleEditBox(edit)
        end
        
        local Menu = GUI:GetClass("DropMenu")
        local Original_DropMenu_Constructor = Menu.Constructor
        function Menu:Constructor(_, style, withOtherMenu, menuList, level)
            Original_DropMenu_Constructor(self, _, style, withOtherMenu, menuList, level)
            if self.skinned_h then return end
            self:SetTemplate("Transparent")
            self.skinned_h = true
        end
        
        local TabView = GUI:GetClass("TabView")
        local Original_TabView_UpdateItems = TabView.UpdateItems
        function TabView:UpdateItems()
            self:SetItemSpacing(6)
            Original_TabView_UpdateItems(self)
            for i = 1, self:GetItemCount() do
                local tab = self:GetButton(i)
                if not tab.skinned_h then
                    if tab:GetHeight() <= 60 then
                        tab:SetHeight(tab:GetHeight() - 2)
                        LUI:StripTextures(tab)
                        S:HandleButton(tab)
                    end
                    tab.skinned_h = true
                end
            end
        end
        
        local ListView = GUI:GetClass("ListView")
        local Original_ListView_UpdateItems = ListView.UpdateItems
        function ListView:UpdateItems()
            Original_ListView_UpdateItems(self)
            for i = 1, #self.buttons do
                local button = self:GetButton(i)
                if not button.skinned_h and button:IsShown() then
                    LUI:StripTextures(button)
                    button:SetCheckedTexture(E.Media.Textures.Melli)
                    button:SetHighlightTexture(E.Media.Textures.Melli)
                    local checkedTexture = button:GetCheckedTexture()
                    checkedTexture:SetVertexColor(unpack(E["media"].rgbvaluecolor))
                    checkedTexture:SetAlpha(.7)
                    local highlightTexture = button:GetHighlightTexture()
                    highlightTexture:SetVertexColor(unpack(E["media"].rgbvaluecolor))
                    highlightTexture:SetAlpha(.4)
                    button.skinned_h = true
                end
            end
        end
        
        MSEnv.MainPanel.PortraitFrame:Hide()
        S:HandleCheckBox(MSEnv.CreatePanel.PrivateGroup, true)
        
        MSEnv.DataBroker.BrokerIcon:SetAlpha(1)
        LUI:StripTextures(MSEnv.DataBroker.BrokerPanel)
        if not E.db.lui.modules.misc.general.meetingStonePlus["panelNoBackdrop"] then
            MSEnv.DataBroker.BrokerPanel:SetTemplate("Transparent")
            MSEnv.DataBroker.BrokerPanel:Styling()
        end

        MSEnv.ManagerPanel.ApplicantListBlocker:ClearAllPoints()
        MSEnv.ManagerPanel.ApplicantListBlocker:SetPoint("TOPLEFT", 219, 0)
        MSEnv.ManagerPanel.ApplicantListBlocker:SetPoint("BOTTOMRIGHT", -25, 0)

        T.hooksecurefunc(MSEnv.AppParent, "OnEnable", function(self)
            LUI:StripTextures(self.FollowButton)
            self.FollowButton:SetSize(40, 12)
        end)
    end
    
    GetRaidProgressionData = MSEnv.GetRaidProgressionData
    CUSTOM_PROGRESSION_LIST = MSEnv.CUSTOM_PROGRESSION_LIST
    RAID_PROGRESSION_LIST = MSEnv.RAID_PROGRESSION_LIST
    
    T.hooksecurefunc(MSEnv.MainPanel, "OpenActivityTooltip", MSMemberInfo)
    
    MSEnv.BrowsePanel.ActivityDropdown:SetCallback('OnSelectChanged', function(_, data, ...)
        if not MSEnv.BrowsePanel:InSet() then
            if data.activityId then
                T.C_LFGList_SetSearchToActivity(data.activityId)
            else
                T.C_LFGList_ClearSearchTextFields()
            end
            MSEnv.BrowsePanel:StartSet()
            MSEnv.BrowsePanel.ActivityDropdown:SetValue(data.value)
            MSEnv.BrowsePanel:EndSet()
        end
    end)
    
    function MSEnv.BrowsePanel:OnHide()
        self.SearchBox:ClearAllPoints()
        self.SearchBox:SetParent(LFGListFrame.SearchPanel)
        self.SearchBox:SetPoint('TOPLEFT', LFGListFrame.SearchPanel.CategoryName, 'BOTTOMLEFT', 4, -7)
        self.SearchBox:SetWidth(319)
    end
    MSEnv.BrowsePanel:SetScript("OnHide", MSEnv.BrowsePanel.OnHide)
end

local function InitializeCallback()
    if not T.IsAddOnLoaded("MeetingStone") or not E.db.lui.modules.misc.general.meetingStonePlus["enable"] then return end
    LMSP:Initialize()
end

E:RegisterModule(LMSP:GetName(), InitializeCallback)