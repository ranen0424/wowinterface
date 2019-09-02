local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "combat", "raidMarkers", "enable") then return end
local LRM = E:NewModule("LuiRaidMarkers", "AceHook-3.0", "AceEvent-3.0")

local _G = _G

LRM.VisibilityStates = {
    ["DEFAULT"] = "[noexists, nogroup] hide show",
    ["INPARTY"] = "[group] show [petbattle] hide hide",
    ["ALWAYS"] = "[petbattle] hide show",
}

local layouts = {
    [1] = {RT = 1, WM = 5}, -- Star
    [2] = {RT = 2, WM = 6}, -- Circle
    [3] = {RT = 3, WM = 3}, -- Diamond
    [4] = {RT = 4, WM = 2}, -- Triangle
    [5] = {RT = 5, WM = 7}, -- Moon
    [6] = {RT = 6, WM = 1}, -- Square
    [7] = {RT = 7, WM = 4}, -- Cross
    [8] = {RT = 8, WM = 8}, -- Skull
    [9] = {RT = 0, WM = 0}, -- clear target/worldmarker
}

function LRM:Make(name, command, description)
    _G["BINDING_NAME_CLICK " .. name .. ":LeftButton"] = description
    local btn = T.CreateFrame("Button", name, nil, "SecureActionButtonTemplate")
    btn:SetAttribute("type", "macro")
    btn:SetAttribute("macrotext", command)
    btn:RegisterForClicks("AnyDown")
end

function LRM:Bar_OnEnter()
    LRM.frame:SetAlpha(1)
end

function LRM:Bar_OnLeave()
    if E.db.lui.modules.combat.raidMarkers.mouseover then LRM.frame:SetAlpha(0) end
end

function LRM:CreateButtons()
    for k, layout in T.ipairs(layouts) do
        local button = T.CreateFrame("Button", T.string_format("LUI_RaidMarkerBarButton%d", k), LRM.frame, "SecureActionButtonTemplate")
        button:SetHeight(E.db.lui.modules.combat.raidMarkers.buttonSize)
        button:SetWidth(E.db.lui.modules.combat.raidMarkers.buttonSize)
        -- button:SetTemplate("Transparent")
        -- button:Styling()
        local image = button:CreateTexture(nil, "ARTWORK")
        image:SetAllPoints()
        if E.db.lui.modules.combat.raidMarkers.raidicons == "Classic" then
            image:SetTexture(k == 9 and "Interface\\BUTTONS\\UI-GroupLoot-Pass-Up" or T.string_format("Interface\\TargetingFrame\\UI-RaidTargetingIcon_%d", k))
        elseif E.db.lui.modules.combat.raidMarkers.raidicons == "Anime" then
            image:SetTexture(k == 9 and "Interface\\BUTTONS\\UI-GroupLoot-Pass-Up" or T.string_format("Interface\\Addons\\ElvUI_LivvenUI\\media\\textures\\raidmarkers\\anime\\UI-RaidTargetingIcon_%d", k))
        elseif E.db.lui.modules.combat.raidMarkers.raidicons == "Aurora" then
            image:SetTexture(k == 9 and "Interface\\BUTTONS\\UI-GroupLoot-Pass-Up" or T.string_format("Interface\\Addons\\ElvUI_LivvenUI\\media\\textures\\raidmarkers\\aurora\\UI-RaidTargetingIcon_%d", k))
        elseif E.db.lui.modules.combat.raidMarkers.raidicons == "Myth" then
            image:SetTexture(k == 9 and "Interface\\BUTTONS\\UI-GroupLoot-Pass-Up" or T.string_format("Interface\\Addons\\ElvUI_LivvenUI\\media\\textures\\raidmarkers\\myth\\UI-RaidTargetingIcon_%d", k))
        end
        
        local target, worldmarker = layout.RT, layout.WM
        
        if target then
            button:SetAttribute("type1", "macro")
            button:SetAttribute("macrotext1", T.string_format("/tm %d", k == 9 and 0 or k))
        end
        
        button:RegisterForClicks("AnyDown")
        self.frame.buttons[k] = button
    end
end

function LRM:UpdateWorldMarkersAndTooltips()
    for i = 1, 9 do
        local target, worldmarker = layouts[i].RT, layouts[i].WM
        local button = self.frame.buttons[i]
        
        if target and not worldmarker then
            button:SetScript("OnEnter", function(self)
                self:SetBackdropBorderColor(.7, .7, 0)
                if E.db.lui.modules.combat.raidMarkers.notooltip then return end
                T.GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
                T.GameTooltip:SetText(L["raidMarkers"])
                T.GameTooltip:AddLine(i == 9 and L["Click to clear the mark."] or L["Click to mark the target."], 1, 1, 1)
                T.GameTooltip:Show()
            end)
        else
            local modifier = E.db.lui.modules.combat.raidMarkers.modifier or "shift-"
            button:SetAttribute(T.string_format("%stype1", modifier), "macro")
            button.modifier = modifier
            button:SetAttribute(T.string_format("%smacrotext1", modifier), worldmarker == 0 and "/cwm 0" or T.string_format("/cwm %d\n/wm %d", worldmarker, worldmarker))
            
            button:SetScript("OnEnter", function(self)
                self:SetBackdropBorderColor(.7, .7, 0)
                if E.db.lui.modules.combat.raidMarkers.notooltip then return end
                T.GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
                T.GameTooltip:SetText(L["raidMarkers"])
                T.GameTooltip:AddLine(i == 9 and T.string_format("%s\n%s", L["Click to clear the mark."], T.string_format(L["%sClick to remove all worldmarkers."], button.modifier:upper()))
                    or T.string_format("%s\n%s", L["Click to mark the target."], T.string_format(L["%sClick to place a worldmarker."], button.modifier:upper())), 1, 1, 1)
                T.GameTooltip:Show()
                LRM.frame:SetAlpha(1)
            end)
        end
        
        button:SetScript("OnLeave", function(self)
            self:SetBackdropBorderColor(0, 0, 0)
            T.GameTooltip:Hide()
            if E.db.lui.modules.combat.raidMarkers.mouseover then
                LRM.frame:SetAlpha(0)
            end
        end)
    end
end

function LRM:UpdateBar(update)
    local height, width
    
    if E.db.lui.modules.combat.raidMarkers.orientation == "VERTICAL" then
        width = E.db.lui.modules.combat.raidMarkers.buttonSize + 4
        height = (E.db.lui.modules.combat.raidMarkers.buttonSize * 9) + (E.db.lui.modules.combat.raidMarkers.spacing * 8) + 4
    else
        width = (E.db.lui.modules.combat.raidMarkers.buttonSize * 9) + (E.db.lui.modules.combat.raidMarkers.spacing * 8) + 4
        height = E.db.lui.modules.combat.raidMarkers.buttonSize + 4
    end
    
    self.frame:SetWidth(width)
    self.frame:SetHeight(height)
    local head, tail
    for i = 9, 1, -1 do
        local button = self.frame.buttons[i]
        local prev = self.frame.buttons[i + 1]
        button:ClearAllPoints()
        
        button:SetWidth(E.db.lui.modules.combat.raidMarkers.buttonSize)
        button:SetHeight(E.db.lui.modules.combat.raidMarkers.buttonSize)
        
        if E.db.lui.modules.combat.raidMarkers.orientation == "VERTICAL" then
            head = E.db.lui.modules.combat.raidMarkers.reverse and "BOTTOM" or "TOP"
            tail = E.db.lui.modules.combat.raidMarkers.reverse and "TOP" or "BOTTOM"
            if i == 9 then
                button:SetPoint(head, 0, (E.db.lui.modules.combat.raidMarkers.reverse and 2 or -2))
            else
                button:SetPoint(head, prev, tail, 0, E.db.lui.modules.combat.raidMarkers.spacing * (E.db.lui.modules.combat.raidMarkers.reverse and 1 or -1))
            end
        else
            head = E.db.lui.modules.combat.raidMarkers.reverse and "RIGHT" or "LEFT"
            tail = E.db.lui.modules.combat.raidMarkers.reverse and "LEFT" or "RIGHT"
            if i == 9 then
                button:SetPoint(head, (E.db.lui.modules.combat.raidMarkers.reverse and -2 or 2), 0)
            else
                button:SetPoint(head, prev, tail, E.db.lui.modules.combat.raidMarkers.spacing * (E.db.lui.modules.combat.raidMarkers.reverse and -1 or 1), 0)
            end
        end
    end
    
    if E.db.lui.modules.combat.raidMarkers["enable"] then self.frame:Show() else self.frame:Hide() end
end

function LRM:Visibility()
    if E.db.lui.modules.combat.raidMarkers["enable"] then
        T.RegisterStateDriver(self.frame, "visibility", E.db.lui.modules.combat.raidMarkers.visibility == "CUSTOM" and E.db.lui.modules.combat.raidMarkers.customVisibility or LRM.VisibilityStates[E.db.lui.modules.combat.raidMarkers.visibility])
        E:EnableMover(self.frame.mover:GetName())
    else
        T.UnregisterStateDriver(self.frame, "visibility")
        self.frame:Hide()
        E:DisableMover(self.frame.mover:GetName())
    end
end

function LRM:UpdateMouseover()
    LRM:Bar_OnEnter()
    LRM:Bar_OnLeave()
end

function LRM:Backdrop()
    if E.db.lui.modules.combat.raidMarkers.backdrop then
        self.frame.backdrop:Show()
        self.frame.backdrop:Styling()
    else
        self.frame.backdrop:Hide()
    end
end

function LRM:Initialize()
    LRM:Make("LUI_RaidFlare1", "/clearworldmarker 1\n/worldmarker 1", "Blue Flare")
    LRM:Make("LUI_RaidFlare2", "/clearworldmarker 2\n/worldmarker 2", "Green Flare")
    LRM:Make("LUI_RaidFlare3", "/clearworldmarker 3\n/worldmarker 3", "Purple Flare")
    LRM:Make("LUI_RaidFlare4", "/clearworldmarker 4\n/worldmarker 4", "Red Flare")
    LRM:Make("LUI_RaidFlare5", "/clearworldmarker 5\n/worldmarker 5", "Yellow Flare")
    LRM:Make("LUI_RaidFlare6", "/clearworldmarker 6\n/worldmarker 6", "Orange Flare")
    LRM:Make("LUI_RaidFlare7", "/clearworldmarker 7\n/worldmarker 7", "White Flare")
    LRM:Make("LUI_RaidFlare8", "/clearworldmarker 8\n/worldmarker 8", "Skull Flare")
    LRM:Make("LUI_ClearRaidFlares", "/clearworldmarker 0", "Clear All Flares")
    
    self.frame = T.CreateFrame("Frame", L["LuiRaidMarkerBar"], E.UIParent, "SecureHandlerStateTemplate")
    self.frame:SetResizable(false)
    self.frame:SetClampedToScreen(true)
    self.frame:SetFrameStrata("LOW")
    self.frame:CreateBackdrop("Transparent")
    self.frame:ClearAllPoints()
    self.frame:Point("BOTTOMRIGHT", E.UIParent, "BOTTOMRIGHT", -10, 194)
    self.frame.buttons = {}
    
    self:HookScript(self.frame, "OnEnter", "Bar_OnEnter")
    self:HookScript(self.frame, "OnLeave", "Bar_OnLeave")
    
    self.frame.backdrop:SetAllPoints()
    
    E:CreateMover(self.frame, "LUI_RaidMarkerBarAnchor", L["LuiRaidMarkerBar"], nil, nil, nil, "ALL, PARTY, RAID, LIVVENUI", nil, "lui, modules, combat, raidmarkers")
    
    self:CreateButtons()
    
    function LRM:ForUpdateAll()
        self:Visibility()
        self:Backdrop()
        self:UpdateBar()
        self:UpdateWorldMarkersAndTooltips()
        self:UpdateMouseover()
    end
    
    self:ForUpdateAll()
end

local function InitializeCallback()
    if not E.db.lui.modules.combat.raidMarkers["enable"] then return end
    LRM:Initialize()
end

E:RegisterModule(LRM:GetName(), InitializeCallback)
