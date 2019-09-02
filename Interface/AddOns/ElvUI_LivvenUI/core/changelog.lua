local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local S = E:GetModule("Skins")

local SOUNDKIT = SOUNDKIT
local PlaySound = PlaySound
local CLOSE = CLOSE

local ChangeLogData = {
    "20190819 v1.3.1",
    "修复 因皮肤造成的无法在战斗中捐献的bug",
    "新增 换装界面特质图标显示",
    "新增 换装界面装等 随 ElvUI - 一般 - 暴雪界面优化 - 显示角色信息 按钮控制",
    "暂时屏蔽装备列表功能, 寻找观察慢的问题, 有需求该功能的请另行下载其他单体插件",
}

local function ModifiedString(string)
    local count = T.string_find(string, ":")
    local newString = string
    
    if count then
        local prefix = T.string_sub(string, 0, count)
        local suffix = T.string_sub(string, count + 1)
        local subHeader = T.string_find(string, "•")
        
        if subHeader then
            newString = T.tostring("|cff9482c9" .. prefix .. "|r" .. suffix)
        else
            newString = T.tostring("|cfff960d9" .. prefix .. "|r" .. suffix)
        end
    end
    
    for pattern in T.string_gmatch(string, "('.*')") do
        newString = newString:gsub(pattern, "|cff9482c9" .. pattern:gsub("'", "") .. "|r")
    end
    
    return newString
end

local function GetChangeLogInfo(i)
    for line, info in T.pairs(ChangeLogData) do
        if line == i then
            return info
        end
    end
end

function LUI:CreateChangelog()
    local frame = T.CreateFrame("Frame", "VIIChangeLog", E.UIParent)
    frame:SetPoint("CENTER")
    frame:SetSize(600, 500)
    frame:SetTemplate("Transparent")
    frame:Styling()
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
    frame:SetClampedToScreen(true)
    
    local icon = T.CreateFrame("Frame", nil, frame)
    icon:SetPoint("BOTTOMLEFT", frame, "TOPLEFT", 0, 3)
    icon:SetSize(20, 20)
    icon:SetTemplate("Transparent")
    icon:Styling()
    icon.bg = icon:CreateTexture(nil, "ARTWORK")
    icon.bg:Point("TOPLEFT", 2, -2)
    icon.bg:Point("BOTTOMRIGHT", -2, 2)
    icon.bg:SetTexture(LUI.SmallLogo)
    icon.bg:SetBlendMode("ADD")
    
    local title = T.CreateFrame("Frame", nil, frame)
    title:SetPoint("LEFT", icon, "RIGHT", 3, 0)
    title:SetSize(577, 20)
    title:SetTemplate("Transparent")
    title:Styling()
    title.text = LUI:CreateText(title, "OVERLAY", 15, nil, "CENTER")
    title.text:SetPoint("CENTER", title, 0, -1)
    title.text:SetText(T.string_format(L["LUI_CHANGELOG_TITLE"], LUI.Header))
    
    local close = T.CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
    close:Point("BOTTOM", frame, "BOTTOM", 0, 10)
    close:SetText(CLOSE)
    close:SetSize(80, 20)
    close:SetScript("OnClick", function()frame:Hide() end)
    S:HandleButton(close)
    close:Disable()
    frame.close = close
    
    local countdown = LUI:CreateText(close, "OVERLAY", 12, nil, "CENTER")
    countdown:SetPoint("LEFT", close.Text, "RIGHT", 3, 0)
    countdown:SetTextColor(DISABLED_FONT_COLOR:GetRGB())
    frame.countdown = countdown
    
    local offset = 4
    for i = 1, #ChangeLogData do
        local button = T.CreateFrame("Frame", "Button" .. i, frame)
        button:SetSize(375, 16)
        button:SetPoint("TOPLEFT", frame, "TOPLEFT", 5, -offset)
        
        if i <= #ChangeLogData then
            local string = ModifiedString(GetChangeLogInfo(i))
            
            button.Text = LUI:CreateText(button, "OVERLAY", 13, nil, "CENTER")
            button.Text:SetText(string)
            button.Text:SetPoint("LEFT", 0, 0)
        end
        offset = offset + 16
    end
end

function LUI:CountDown()
    self.time = self.time - 1
    if self.time == 0 then
        VIIChangeLog.countdown:SetText("")
        VIIChangeLog.close:Enable()
        self:CancelAllTimers()
    else
        VIIChangeLog.countdown:SetText(T.string_format("(%s)", self.time))
    end
end

function LUI:ToggleChangeLog()
    if not VIIChangeLog then
        self:CreateChangelog()
    end
    PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF or 857)
    
    local fadeInfo = {}
    fadeInfo.mode = "IN"
    fadeInfo.timeToFade = 0.5
    fadeInfo.startAlpha = 0
    fadeInfo.endAlpha = 1
    E:UIFrameFade(VIIChangeLog, fadeInfo)
    
    self.time = 5
    self:CancelAllTimers()
    LUI:CountDown()
    self:ScheduleRepeatingTimer("CountDown", 1)
end

function LUI:CheckVersion(self)
    if not ElvDB.Version or (ElvDB.Version and ElvDB.Version ~= LUI.Version) then
        ElvDB.Version = LUI.Version
        LUI:ToggleChangeLog()
    end
end
