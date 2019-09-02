local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LACP = E:NewModule("LuiAddonControlPanel", "AceEvent-3.0")
local S = E:GetModule("Skins")
local LSM = E.LSM or E.Libs.LSM

AddonPanelProfilesDB = {}
AddonPanelServerDB = {}

local _G = _G
local unpack = unpack
local UIParent = UIParent

StaticPopupDialogs["ADDONPANEL_OVERWRITEPROFILE"] = {
    button1 = L["Overwrite"],
    button2 = CANCEL,
    timeout = 0,
    whileDead = 1,
    enterClicksFirstButton = 1,
    hideOnEscape = 1,
}

StaticPopupDialogs["ADDONPANEL_NEWPROFILE"] = {
    text = L["Enter a name for your new Addon Profile:"],
    button1 = L["Create"],
    button2 = CANCEL,
    timeout = 0,
    hasEditBox = 1,
    whileDead = 1,
    OnAccept = function(self)LACP:NewAddOnProfile(self.editBox:GetText()) end,
    EditBoxOnEnterPressed = function(self)LACP:NewAddOnProfile(self:GetText())self:GetParent():Hide() end,
    EditBoxOnEscapePressed = function(self)self:GetParent():Hide() end,
}

StaticPopupDialogs["ADDONPANEL_RENAMEPROFILE"] = {
    text = L["Enter a name for your AddOn Profile:"],
    button1 = L["Update"],
    button2 = CANCEL,
    timeout = 0,
    hasEditBox = 1,
    whileDead = 1,
    EditBoxOnEscapePressed = function(self)self:GetParent():Hide() end,
}

StaticPopupDialogs["ADDONPANEL_DELETECONFIRMATION"] = {
    button1 = DELETE,
    button2 = CANCEL,
    timeout = 0,
    whileDead = 1,
    enterClicksFirstButton = 1,
    hideOnEscape = 1,
}

local function strtrim(string)
    return string:gsub("^%s*(.-)%s*$", "%1")
end

function LACP:BuildFrame()
    local Frame = T.CreateFrame("Frame", "APFrame", UIParent)
    local Close = T.CreateFrame("Button", "APCloseButton", Frame)
    local Reload = T.CreateFrame("Button", "APReload", Frame)
    local Search = T.CreateFrame("EditBox", "APSearchBox", Frame)
    local CharacterSelect = T.CreateFrame("Button", nil, Frame)
    local Profiles = T.CreateFrame("Button", "APProfiles", Frame)
    local AddOns = T.CreateFrame("Frame", "APAddOns", Frame)
    local Slider = T.CreateFrame("Slider", nil, AddOns)
    local EnableAll = T.CreateFrame("Button", "APEnableAll", Frame)
    local DisableAll = T.CreateFrame("Button", "APDisableAll", Frame)
    
    local Title = Frame:CreateFontString(nil, "OVERLAY")
    
    Frame:SetSize(E.db.lui.modules.misc.addonpanel["frameWidth"], 10 + E.db.lui.modules.misc.addonpanel["numAddOns"] * 25 + 40)
    Frame:SetPoint("CENTER", E.UIParent, "CENTER", 0, 0)
    Frame:SetTemplate("Transparent")
    Frame:SetFrameStrata("HIGH")
    Frame:SetClampedToScreen(true)
    Frame:SetMovable(true)
    Frame:EnableMouse(true)
    Frame:SetScript("OnMouseDown", function(self)self:StartMoving() end)
    Frame:SetScript("OnMouseUp", function(self)self:StopMovingOrSizing() end)
    Frame:Styling()
    
    Title:SetPoint("TOPLEFT", 0, -5)
    Title:SetPoint("TOPRIGHT", 0, -5)
    Title:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 14, E.db.lui.modules.misc.addonpanel["fontFlag"])
    Title:SetText(LUI.Title .. " " .. L["Addon Control Panel"])
    Title:SetJustifyH("CENTER")
    Title:SetJustifyV("MIDDLE")
    
    CharacterSelect:SetPoint("TOPLEFT", Title, "BOTTOMLEFT", 10, -10)
    CharacterSelect.DropDown = T.CreateFrame("Frame", "APCharacterSelectDropDown", CharacterSelect, "UIDropDownMenuTemplate")
    CharacterSelect:SetTemplate("Transparent")
    CharacterSelect:SetSize(70, 20)
    CharacterSelect:SetScript("OnEnter", function(self)self:SetBackdropBorderColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"])) end)
    CharacterSelect:SetScript("OnLeave", function(self)self:SetTemplate("Transparent") end)
    CharacterSelect:SetScript("OnClick", function(self)T.EasyMenu(LACP.Menu, self.DropDown, self, 0, 38 + (LACP.MenuOffset * 16), "MENU", 5) end)
    CharacterSelect.Text = CharacterSelect:CreateFontString(nil, "OVERLAY")
    CharacterSelect.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    CharacterSelect.Text:SetText(L["Character Select"])
    CharacterSelect.Text:SetPoint("CENTER", 0, 0)
    CharacterSelect.Text:SetJustifyH("CENTER")
    
    Search:SetPoint("LEFT", CharacterSelect, "RIGHT", 5, 0)
    Search:SetPoint("RIGHT", Profiles, "LEFT", -5, 0)
    Search:SetSize(1, 20)
    Search:SetTemplate("Transparent")
    Search:SetAutoFocus(false)
    Search:SetTextInsets(5, 5, 0, 0)
    Search:SetTextColor(1, 1, 1)
    Search:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    Search:SetShadowOffset(0, 0)
    Search:SetText(L["Search"])
    Search.AddOns = {}
    Search:HookScript("OnEscapePressed", function(self)LACP:UpdateAddonList()self:SetText(L["Search"])self:ClearFocus() end)
    Search:HookScript("OnTextChanged", function(self, userInput)LACP.scrollOffset = 0 LACP.searchQuery = userInput LACP:UpdateAddonList() end)
    Search:HookScript("OnEditFocusGained", function(self)self:SetBackdropBorderColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"]))self:HighlightText() end)
    Search:HookScript("OnEditFocusLost", function(self)self:SetTemplate("Transparent")self:HighlightText(0, 0) end)
    Search:HookScript("OnEnterPressed", function(self)
        if T.string_len(strtrim(self:GetText())) == 0 then
            LACP:UpdateAddonList()
            self:SetText("Search")
            LACP.searchQuery = false
        end
        self:ClearFocus()
    end)
    
    Profiles:SetPoint("TOPRIGHT", Title, "BOTTOMRIGHT", -10, -10)
    Profiles:SetTemplate("Transparent")
    Profiles:SetSize(70, 20)
    Profiles:SetScript("OnEnter", function(self)self:SetBackdropBorderColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"])) end)
    Profiles:SetScript("OnLeave", function(self)self:SetTemplate("Transparent") end)
    Profiles:SetScript("OnClick", function()LACP:ToggleProfiles() end)
    Profiles.Text = Profiles:CreateFontString(nil, "OVERLAY")
    Profiles.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    Profiles.Text:SetText(L["Profiles"])
    Profiles.Text:SetPoint("CENTER", 0, 0)
    Profiles.Text:SetJustifyH("CENTER")
    
    AddOns:SetPoint("TOPLEFT", CharacterSelect, "BOTTOMLEFT", 0, -5)
    AddOns:SetPoint("TOPRIGHT", Profiles, "BOTTOMRIGHT", 0, -5)
    AddOns:SetHeight(E.db.lui.modules.misc.addonpanel["numAddOns"] * (E.db.lui.modules.misc.addonpanel["buttonHeight"] + 5) + 15)
    AddOns.Buttons = {}
    AddOns:EnableMouse(true)
    AddOns:EnableMouseWheel(true)
    AddOns:SetTemplate("Transparent")
    Slider:SetPoint("RIGHT", -2, 0)
    Slider:SetWidth(14)
    Slider:SetHeight(E.db.lui.modules.misc.addonpanel["numAddOns"] * (E.db.lui.modules.misc.addonpanel["buttonHeight"] + 5) + 11)
    Slider:SetThumbTexture(LSM:Fetch("statusbar", E.db.lui.modules.misc.addonpanel["buttonTexture"]))
    Slider:SetOrientation("VERTICAL")
    Slider:SetValueStep(1)
    Slider:SetTemplate("Transparent")
    Slider:SetMinMaxValues(0, 1)
    Slider:SetValue(0)
    Slider:EnableMouse(true)
    Slider:EnableMouseWheel(true)
    
    EnableAll:SetPoint("TOPLEFT", AddOns, "BOTTOMLEFT", 0, -10)
    EnableAll:SetTemplate("Transparent")
    EnableAll:SetSize(70, 20)
    EnableAll:SetScript("OnEnter", function(self)self:SetBackdropBorderColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"])) end)
    EnableAll:SetScript("OnLeave", function(self)self:SetTemplate("Transparent") end)
    EnableAll:SetScript("OnClick", function(self)T.EnableAllAddOns(LACP.SelectedCharacter)LACP:UpdateAddonList() end)
    EnableAll.Text = EnableAll:CreateFontString(nil, "OVERLAY")
    EnableAll.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    EnableAll.Text:SetText(L["Enable All"])
    EnableAll.Text:SetPoint("CENTER", 0, 0)
    EnableAll.Text:SetJustifyH("CENTER")
    
    DisableAll:SetPoint("LEFT", EnableAll, "RIGHT", 5, 0)
    DisableAll:SetTemplate("Transparent")
    DisableAll:SetSize(70, 20)
    DisableAll:SetScript("OnEnter", function(self)self:SetBackdropBorderColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"])) end)
    DisableAll:SetScript("OnLeave", function(self)self:SetTemplate("Transparent") end)
    DisableAll:SetScript("OnClick", function(self)T.DisableAllAddOns(LACP.SelectedCharacter)LACP:UpdateAddonList() end)
    DisableAll.Text = DisableAll:CreateFontString(nil, "OVERLAY")
    DisableAll.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    DisableAll.Text:SetText(L["Disable All"])
    DisableAll.Text:SetPoint("CENTER", 0, 0)
    DisableAll.Text:SetJustifyH("CENTER")
    
    Close:SetPoint("TOPRIGHT", AddOns, "BOTTOMRIGHT", 0, -10)
    Close:SetTemplate("Transparent")
    Close:SetSize(70, 20)
    Close:SetScript("OnEnter", function(self)self:SetBackdropBorderColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"])) end)
    Close:SetScript("OnLeave", function(self)self:SetTemplate("Transparent") end)
    Close:SetScript("OnClick", function(self)Frame:Hide() end)
    Close.Text = Close:CreateFontString(nil, "OVERLAY")
    Close.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    Close.Text:SetText(L["Close"])
    Close.Text:SetPoint("CENTER", 0, 0)
    Close.Text:SetJustifyH("CENTER")
    
    Reload:SetPoint("RIGHT", Close, "LEFT", -5, 0)
    Reload:SetTemplate("Transparent")
    Reload:SetSize(70, 20)
    Reload:SetScript("OnEnter", function(self)self:SetBackdropBorderColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"])) end)
    Reload:SetScript("OnLeave", function(self)self:SetTemplate("Transparent") end)
    Reload:SetScript("OnClick", ReloadUI)
    Reload.Text = Reload:CreateFontString(nil, "OVERLAY")
    Reload.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    Reload.Text:SetText(L["Reload"])
    Reload.Text:SetPoint("CENTER", 0, 0)
    Reload.Text:SetJustifyH("CENTER")
    
    local Thumb = Slider:GetThumbTexture()
    Thumb:SetSize(10, 16)
    Thumb:SetVertexColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"]))
    
    AddOns.ScrollBar = Slider
    
    local OnScroll = function(self, delta)
        local numAddons = LACP.searchQuery and #Search.AddOns or #LACP.AddOnInfo
        if T.IsShiftKeyDown() then
            if delta == 1 then
                LACP.scrollOffset = T.math_max(0, LACP.scrollOffset - E.db.lui.modules.misc.addonpanel["numAddOns"])
            elseif delta == -1 then
                LACP.scrollOffset = T.math_min(numAddons - E.db.lui.modules.misc.addonpanel["numAddOns"], LACP.scrollOffset + E.db.lui.modules.misc.addonpanel["numAddOns"])
            end
        else
            if delta == 1 and LACP.scrollOffset > 0 then
                LACP.scrollOffset = LACP.scrollOffset - 1
            elseif delta == -1 then
                if LACP.scrollOffset < numAddons - E.db.lui.modules.misc.addonpanel["numAddOns"] then
                    LACP.scrollOffset = LACP.scrollOffset + 1
                end
            end
        end
        Slider:SetMinMaxValues(0, (numAddons - E.db.lui.modules.misc.addonpanel["numAddOns"]))
        Slider:SetValue(LACP.scrollOffset)
        LACP:UpdateAddonList()
    end
    
    AddOns:SetScript("OnMouseWheel", OnScroll)
    Slider:SetScript("OnMouseWheel", OnScroll)
    Slider:SetScript("OnValueChanged", function(self, value)
        LACP.scrollOffset = value
        OnScroll()
    end)
    
    for i = 1, 30 do
        local CheckButton = T.CreateFrame("CheckButton", "APCheckButton_" .. i, AddOns)
        CheckButton:SetTemplate("Transparent")
        CheckButton:SetSize(E.db.lui.modules.misc.addonpanel["buttonWidth"], E.db.lui.modules.misc.addonpanel["buttonHeight"])
        CheckButton:SetPoint(unpack(i == 1 and {"TOPLEFT", AddOns, "TOPLEFT", 10, -10} or {"TOP", AddOns.Buttons[i - 1], "BOTTOM", 0, -5}))
        CheckButton:SetScript("OnClick", function(self)
            if self.name then
                if LUI:IsAddOnEnabled(self.name, LACP.SelectedCharacter) then
                    T.DisableAddOn(self.name, LACP.SelectedCharacter)
                else
                    T.EnableAddOn(self.name, LACP.SelectedCharacter)
                end
                LACP:UpdateAddonList()
            end
        end)
        CheckButton:SetScript("OnEnter", function(self)
            T.GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT", 0, 4)
            T.GameTooltip:ClearLines()
            T.GameTooltip:AddDoubleLine("AddOn:", self.title, 1, 1, 1, 1, 1, 1)
            T.GameTooltip:AddDoubleLine("Notes:", self.notes, 1, 1, 1, 1, 1, 1)
            if self.requireddeps or self.optionaldeps then
                T.GameTooltip:AddLine(" ")
            end
            if self.requireddeps then
                T.GameTooltip:AddDoubleLine("Required Dependencies:", self.requireddeps, 1, 1, 1, 1, 1, 1)
            end
            if self.optionaldeps then
                T.GameTooltip:AddDoubleLine("Optional Dependencies:", self.optionaldeps, 1, 1, 1, 1, 1, 1)
            end
            T.GameTooltip:Show()
            self:SetBackdropBorderColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"]))
        end)
        CheckButton:SetScript("OnLeave", function(self)
            self:SetTemplate("Transparent")
            T.GameTooltip:Hide()
        end)
        
        local Checked = CheckButton:CreateTexture(nil, "OVERLAY", nil, 1)
        Checked:SetTexture(LSM:Fetch("statusbar", E.db.lui.modules.misc.addonpanel["buttonTexture"]))
        Checked:SetVertexColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"]))
        Checked:SetInside(CheckButton)
        
        CheckButton.buttonTexture = Checked
        CheckButton:SetCheckedTexture(Checked)
        
        CheckButton:SetHighlightTexture("")
        
        local Text = CheckButton:CreateFontString(nil, "OVERLAY")
        Text:SetPoint("LEFT", 5, 0)
        Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), E.db.lui.modules.misc.addonpanel["fontSize"], E.db.lui.modules.misc.addonpanel["fontFlag"])
        Text:SetText("")
        Text:SetJustifyH("CENTER")
        Text:ClearAllPoints()
        Text:SetPoint("LEFT", CheckButton, "RIGHT", 10, 0)
        Text:SetPoint("TOP", CheckButton, "TOP")
        Text:SetPoint("BOTTOM", CheckButton, "BOTTOM")
        Text:SetPoint("RIGHT", AddOns, "RIGHT", -10, 0)
        Text:SetJustifyH("LEFT")
        
        CheckButton.Text = Text
        
        AddOns.Buttons[i] = CheckButton
    end
    
    Frame.Title = Title
    Frame.Close = Close
    Frame.Reload = Reload
    Frame.Search = Search
    Frame.CharacterSelect = CharacterSelect
    Frame.Profiles = Profiles
    Frame.AddOns = AddOns
    Frame.EnableAll = EnableAll
    Frame.DisableAll = DisableAll
    self.Frame = Frame
    
    T.table_insert(UISpecialFrames, self.Frame:GetName())
    
    GameMenuButtonAddons:SetScript("OnClick", function()self.Frame:Show()HideUIPanel(GameMenuFrame) end)
end

function LACP:NewAddOnProfile(name, overwrite)
    if AddonPanelProfilesDB[name] and (not overwrite) then
        StaticPopupDialogs["ADDONPANEL_OVERWRITEPROFILE"].text = T.string_format(L["There is already a profile named %s. Do you want to overwrite it?"], name)
        StaticPopupDialogs["ADDONPANEL_OVERWRITEPROFILE"].OnAccept = function(self)LACP:NewAddOnProfile(name, true) end
        StaticPopup_Show("ADDONPANEL_OVERWRITEPROFILE")
        return
    end
    
    AddonPanelProfilesDB[name] = {}
    
    for i = 1, #self.AddOnInfo do
        local AddOn, isEnabled = unpack(self.AddOnInfo[i]), LUI:IsAddOnEnabled(i, LACP.SelectedCharacter)
        if isEnabled then
            T.table_insert(AddonPanelProfilesDB[name], AddOn)
        end
    end
    
    self:UpdateProfiles()
end

function LACP:InitProfiles()
    local ProfileMenu = T.CreateFrame("Frame", "APProfileMenu", self.Frame)
    ProfileMenu:SetPoint("TOPLEFT", self.Frame, "TOPRIGHT", 3, 0)
    ProfileMenu:SetSize(300, 50)
    ProfileMenu:SetTemplate("Transparent")
    ProfileMenu:Hide()
    ProfileMenu:Styling()
    
    local NewButton = T.CreateFrame("Button", nil, ProfileMenu)
    NewButton:SetTemplate("Transparent")
    NewButton:SetSize(E.db.lui.modules.misc.addonpanel["buttonWidth"], E.db.lui.modules.misc.addonpanel["buttonHeight"])
    NewButton:SetScript("OnEnter", function(self)self:SetBackdropBorderColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"])) end)
    NewButton:SetScript("OnLeave", function(self)
        self:SetTemplate("Transparent")
    end)
    
    NewButton.Text = NewButton:CreateFontString(nil, "OVERLAY")
    NewButton.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, "OUTLINE")
    NewButton.Text:SetPoint("CENTER", 0, 0)
    NewButton.Text:SetJustifyH("CENTER")
    
    
    NewButton.Text:SetText(L["New Profile"])
    NewButton:SetPoint("TOPLEFT", ProfileMenu, "TOPLEFT", 10, -10)
    NewButton:SetPoint("TOPRIGHT", ProfileMenu, "TOPRIGHT", -10, -10)
    NewButton:SetScript("OnClick", function()StaticPopup_Show("ADDONPANEL_NEWPROFILE") end)
    
    
    ProfileMenu["NewButton"] = NewButton
    ProfileMenu.Buttons = {}
    
    for i = 1, 10 do
        local Pullout = T.CreateFrame("Frame", nil, ProfileMenu)
        Pullout:SetWidth(260)
        Pullout:SetHeight(E.db.lui.modules.misc.addonpanel.buttonHeight)
        Pullout:Hide()
        
        for _, Frame in T.pairs({"Load", "Delete", "Update"}) do
            local Button = T.CreateFrame("Button", nil, Pullout)
            Button:SetTemplate("Transparent")
            if Frame == "Load" then
                Button:SetSize(150, E.db.lui.modules.misc.addonpanel.buttonHeight)
            else
                Button:SetSize(60, E.db.lui.modules.misc.addonpanel.buttonHeight)
            end
            Button:RegisterForClicks("AnyDown")
            Button:SetScript("OnEnter", function(self)self:SetBackdropBorderColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"])) end)
            Button:SetScript("OnLeave", function(self)self:SetTemplate("Transparent") end)
            
            Button.Text = Button:CreateFontString(nil, "OVERLAY")
            Button.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, "OUTLINE")
            Button.Text:SetPoint("CENTER", 0, 0)
            Button.Text:SetJustifyH("CENTER")
            
            Pullout[Frame] = Button
        end
        Pullout.Load:SetPoint("LEFT", Pullout, 0, 0)
        Pullout.Load.Text:SetText(L["Load"])
        Pullout.Load:SetScript("OnClick", function(self, btn)
            if btn == "RightButton" then
                local Dialog = StaticPopupDialogs["ADDONPANEL_RENAMEPROFILE"]
                Dialog.OnAccept = function(self)
                    AddonPanelProfilesDB[Pullout.Name] = nil
                    LACP:NewAddOnProfile(self.editBox:GetText())
                    LACP:UpdateProfiles()
                end
                Dialog.EditBoxOnEnterPressed = function(self)
                    AddonPanelProfilesDB[Pullout.Name] = nil
                    LACP:NewAddOnProfile(self:GetText())
                    LACP:UpdateProfiles()
                    self:GetParent():Hide()
                end
                StaticPopup_Show("ADDONPANEL_RENAMEPROFILE")
            else
                if not T.IsShiftKeyDown() then
                    T.DisableAllAddOns(LACP.SelectedCharacter)
                end
                for _, AddOn in T.pairs(AddonPanelProfilesDB[Pullout.Name]) do
                    T.EnableAddOn(AddOn, LACP.SelectedCharacter)
                end
                
                LACP:UpdateAddonList()
            end
        end)
        Pullout.Update:SetPoint("LEFT", Pullout.Load, "RIGHT", 5, 0)
        Pullout.Update.Text:SetText(L["Update"])
        Pullout.Update:SetScript("OnClick", function(self)
            LACP:NewAddOnProfile(Pullout.Name, true)
        end)
        Pullout.Delete:SetPoint("LEFT", Pullout.Update, "RIGHT", 5, 0)
        Pullout.Delete.Text:SetText(L["Delete"])
        Pullout.Delete:SetScript("OnClick", function(self)
            local dialog = StaticPopupDialogs["ADDONPANEL_DELETECONFIRMATION"]
            dialog.text = T.string_format(L["Are you sure you want to delete %s?"], Pullout.Name)
            dialog.OnAccept = function(self)
                AddonPanelProfilesDB[Pullout.Name] = nil
                LACP:UpdateProfiles()
            end
            StaticPopup_Show("ADDONPANEL_DELETECONFIRMATION")
        end)
        
        ProfileMenu.Buttons[i] = Pullout
    end
    self.ProfileMenu = ProfileMenu
end

function LACP:UpdateProfiles()
    local ProfileMenu = self.ProfileMenu
    local Buttons = self.ProfileMenu.Buttons
    
    T.table_wipe(self.Profiles)
    
    for name, _ in T.pairs(AddonPanelProfilesDB) do
        T.table_insert(self.Profiles, name)
    end
    
    T.table_sort(self.Profiles)
    
    for i = 1, #Buttons do
        Buttons[i]:Hide()
        Buttons[i].Name = nil
    end
    
    for i = 1, #self.Profiles do
        if i == 1 then
            Buttons[i]:SetPoint("TOPLEFT", ProfileMenu.NewButton, "BOTTOMLEFT", 0, -5)
        else
            Buttons[i]:SetPoint("TOP", Buttons[i - 1], "BOTTOM", 0, -5)
        end
        
        Buttons[i]:Show()
        Buttons[i].Load.Text:SetText(L["Load"] .. " " .. self.Profiles[i])
        Buttons[i].Name = self.Profiles[i]
    end
    
    ProfileMenu:SetHeight((#self.Profiles + 1) * (E.db.lui.modules.misc.addonpanel.buttonHeight + 5) + 15)
end

function LACP:ToggleProfiles()
    ToggleFrame(self.ProfileMenu)
    self:UpdateProfiles()
end

function LACP:UpdateAddonList()
    if self.searchQuery then
        local query = T.string_lower(strtrim(self.Frame.Search:GetText()))
        
        if (T.string_len(query) == 0) then
            self.searchQuery = false
        end
        
        T.table_wipe(self.Frame.Search.AddOns)
        
        for i = 1, #self.AddOnInfo do
            local name, title = unpack(self.AddOnInfo[i])
            
            if T.string_find(T.string_lower(name), query) or T.string_find(T.string_lower(title), query) then
                T.table_insert(self.Frame.Search.AddOns, i)
            end
        end
    end
    
    for i = 1, E.db.lui.modules.misc.addonpanel["numAddOns"] do
        local addonIndex = (not self.searchQuery and (LACP.scrollOffset + i)) or self.Frame.Search.AddOns[LACP.scrollOffset + i]
        local button = self.Frame.AddOns.Buttons[i]
        if addonIndex and addonIndex <= #self.AddOnInfo then
            button.name, button.title, button.author, button.notes, button.requireddeps, button.optionaldeps = unpack(self.AddOnInfo[addonIndex])
            button.Text:SetText(button.title)
            button:SetChecked(LUI:IsAddOnPartiallyEnabled(addonIndex, LACP.SelectedCharacter) or LUI:IsAddOnEnabled(addonIndex, LACP.SelectedCharacter))
            button.buttonTexture:SetVertexColor(unpack(LUI:IsAddOnPartiallyEnabled(addonIndex, LACP.SelectedCharacter) and {.6, .6, .6} or E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"]))
            button:Show()
        else
            button:Hide()
        end
    end
    
    for i = E.db.lui.modules.misc.addonpanel["numAddOns"] + 1, #self.Frame.AddOns.Buttons do
        self.Frame.AddOns.Buttons[i]:Hide()
    end
    
    self.Frame.AddOns:SetHeight(E.db.lui.modules.misc.addonpanel["numAddOns"] * (E.db.lui.modules.misc.addonpanel["buttonHeight"] + 5) + 15)
    self.Frame:SetSize(E.db.lui.modules.misc.addonpanel["frameWidth"], self.Frame.Title:GetHeight() + 5 + self.Frame.Search:GetHeight() + 5 + self.Frame.AddOns:GetHeight() + 10 + self.Frame.Profiles:GetHeight() + 20)
end

function LACP:Update()
    for i = 1, 30 do
        local CheckButton = self.Frame.AddOns.Buttons[i]
        
        CheckButton:SetSize(E.db.lui.modules.misc.addonpanel["buttonWidth"], E.db.lui.modules.misc.addonpanel["buttonHeight"])
        CheckButton.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), E.db.lui.modules.misc.addonpanel["fontSize"], E.db.lui.modules.misc.addonpanel["fontFlag"])
        CheckButton.buttonTexture:SetTexture(LSM:Fetch("statusbar", E.db.lui.modules.misc.addonpanel["buttonTexture"]))
        CheckButton.buttonTexture:SetVertexColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"]))
        CheckButton:SetCheckedTexture(CheckButton.buttonTexture)
    end
    
    self.Frame.AddOns.ScrollBar:GetThumbTexture():SetVertexColor(unpack(E.db.lui.modules.misc.addonpanel["buttonclassColor"] and E["media"].rgbvaluecolor or E.db.lui.modules.misc.addonpanel["buttonCustomColor"]))
    self.Frame.Title:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 14, E.db.lui.modules.misc.addonpanel["fontFlag"])
    self.Frame.Search:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    self.Frame.Reload.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    self.Frame.Profiles.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    self.Frame.CharacterSelect.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    self.Frame.EnableAll.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    self.Frame.DisableAll.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    self.Frame.Close.Text:SetFont(LSM:Fetch("font", E.db.lui.modules.misc.addonpanel["fontName"]), 12, E.db.lui.modules.misc.addonpanel["fontFlag"])
    
    if E.db.lui.modules.misc.addonpanel["fontColor"] == 1 then
        self.Frame.Search:SetTextColor(unpack(E["media"].rgbvaluecolor))
        self.Frame.Reload.Text:SetTextColor(unpack(E["media"].rgbvaluecolor))
        self.Frame.CharacterSelect.Text:SetTextColor(unpack(E["media"].rgbvaluecolor))
        self.Frame.Profiles.Text:SetTextColor(unpack(E["media"].rgbvaluecolor))
        self.Frame.EnableAll.Text:SetTextColor(unpack(E["media"].rgbvaluecolor))
        self.Frame.DisableAll.Text:SetTextColor(unpack(E["media"].rgbvaluecolor))
        self.Frame.Close.Text:SetTextColor(unpack(E["media"].rgbvaluecolor))
        self.ProfileMenu.NewButton.Text:SetTextColor(unpack(E["media"].rgbvaluecolor))
        for i = 1, 10 do
            self.ProfileMenu.Buttons[i].Load.Text:SetTextColor(unpack(E["media"].rgbvaluecolor))
            self.ProfileMenu.Buttons[i].Update.Text:SetTextColor(unpack(E["media"].rgbvaluecolor))
            self.ProfileMenu.Buttons[i].Delete.Text:SetTextColor(unpack(E["media"].rgbvaluecolor))
        end
    elseif E.db.lui.modules.misc.addonpanel["fontColor"] == 2 then
        self.Frame.Search:SetTextColor(LUI:unpackColor(E.db.lui.modules.misc.addonpanel["fontCustomColor"]))
        self.Frame.Reload.Text:SetTextColor(LUI:unpackColor(E.db.lui.modules.misc.addonpanel["fontCustomColor"]))
        self.Frame.CharacterSelect.Text:SetTextColor(LUI:unpackColor(E.db.lui.modules.misc.addonpanel["fontCustomColor"]))
        self.Frame.Profiles.Text:SetTextColor(LUI:unpackColor(E.db.lui.modules.misc.addonpanel["fontCustomColor"]))
        self.Frame.EnableAll.Text:SetTextColor(LUI:unpackColor(E.db.lui.modules.misc.addonpanel["fontCustomColor"]))
        self.Frame.DisableAll.Text:SetTextColor(LUI:unpackColor(E.db.lui.modules.misc.addonpanel["fontCustomColor"]))
        self.Frame.Close.Text:SetTextColor(LUI:unpackColor(E.db.lui.modules.misc.addonpanel["fontCustomColor"]))
        self.ProfileMenu.NewButton.Text:SetTextColor(LUI:unpackColor(E.db.lui.modules.misc.addonpanel["fontCustomColor"]))
        for i = 1, 10 do
            self.ProfileMenu.Buttons[i].Load.Text:SetTextColor(LUI:unpackColor(E.db.lui.modules.misc.addonpanel["fontCustomColor"]))
            self.ProfileMenu.Buttons[i].Update.Text:SetTextColor(LUI:unpackColor(E.db.lui.modules.misc.addonpanel["fontCustomColor"]))
            self.ProfileMenu.Buttons[i].Delete.Text:SetTextColor(LUI:unpackColor(E.db.lui.modules.misc.addonpanel["fontCustomColor"]))
        end
    else
        self.Frame.Search:SetTextColor(LUI:unpackColor(E.db.general.valuecolor))
        self.Frame.Reload.Text:SetTextColor(LUI:unpackColor(E.db.general.valuecolor))
        self.Frame.CharacterSelect.Text:SetTextColor(LUI:unpackColor(E.db.general.valuecolor))
        self.Frame.Profiles.Text:SetTextColor(LUI:unpackColor(E.db.general.valuecolor))
        self.Frame.EnableAll.Text:SetTextColor(LUI:unpackColor(E.db.general.valuecolor))
        self.Frame.DisableAll.Text:SetTextColor(LUI:unpackColor(E.db.general.valuecolor))
        self.Frame.Close.Text:SetTextColor(LUI:unpackColor(E.db.general.valuecolor))
        self.ProfileMenu.NewButton.Text:SetTextColor(LUI:unpackColor(E.db.general.valuecolor))
        for i = 1, 10 do
            self.ProfileMenu.Buttons[i].Load.Text:SetTextColor(LUI:unpackColor(E.db.general.valuecolor))
            self.ProfileMenu.Buttons[i].Update.Text:SetTextColor(LUI:unpackColor(E.db.general.valuecolor))
            self.ProfileMenu.Buttons[i].Delete.Text:SetTextColor(LUI:unpackColor(E.db.general.valuecolor))
        end
    end
    
    LACP:UpdateAddonList()
end

function LACP:Initialize()
    if not E.db.lui.modules.misc.addonpanel["enable"] then return end
    
    LACP.AddOnInfo = {}
    LACP.Profiles = {}
    
    for i = 1, T.GetNumAddOns() do
        local name, title, notes = T.GetAddOnInfo(i)
        local requireddeps, optionaldeps = T.GetAddOnDependencies(i), T.GetAddOnOptionalDependencies(i)
        local author = T.GetAddOnMetadata(i, "Author")
        LACP.AddOnInfo[i] = {name, title, author, notes, requireddeps, optionaldeps}
    end
    
    LACP.SelectedCharacter = T.UnitName("player")
    
    LACP.Menu = {
        {
            text = "All",
            checked = function()
                return LACP.SelectedCharacter == true
            end,
            func = function()
                LACP.SelectedCharacter = true
                LACP:UpdateAddonList()
            end
        }
    }
    
    AddonPanelServerDB[T.GetRealmName()] = AddonPanelServerDB[T.GetRealmName()] or {}
    AddonPanelServerDB[T.GetRealmName()][T.UnitName("player")] = true
    
    local index = 2
    for Character in LUI:PairsByKeys(AddonPanelServerDB[T.GetRealmName()]) do
        LACP.Menu[index] = {
            text = Character,
            checked = function()
                return LACP.SelectedCharacter == Character
            end,
            func = function()
                LACP.SelectedCharacter = Character
                LACP:UpdateAddonList()
            end
        }
        index = index + 1
    end
    
    LACP.MenuOffset = index
    
    LACP.scrollOffset = 0
    
    LACP:BuildFrame()
    LACP:InitProfiles()
end

local function InitializeCallback()
    LACP:Initialize()
end

E:RegisterModule(LACP:GetName(), InitializeCallback)
