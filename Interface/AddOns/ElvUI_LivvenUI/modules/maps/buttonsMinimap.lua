local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "maps", "minimapIcons", "enable") then return end
if LUI:CheckDB("db", "modules", "maps", "minimapIcons", "buttons", "enable") then return end
local LSMB = E:NewModule("LuiButtonsMinimap", "AceEvent-3.0", "AceHook-3.0", "AceTimer-3.0")

local _G = _G

LSMB.Buttons = {}

local ignoreButtons = {
    "GameTimeFrame",
    "HelpOpenWebTicketButton",
    "MiniMapVoiceChatFrame",
    "TimeManagerClockButton",
    "BattlefieldMinimap",
    "ButtonCollectFrame",
    "GameTimeFrame",
    "QueueStatusMinimapButton",
    "GarrisonLandingPageMinimapButton",
    "MiniMapMailFrame",
    "MiniMapTracking",
    "TukuiMinimapZone",
    "TukuiMinimapCoord",
}

local GenericIgnores = {
    "Archy",
    "GatherMatePin",
    "GatherNote",
    "GuildInstance",
    "HandyNotesPin",
    "MiniMap",
    "Spy_MapNoteList_mini",
    "ZGVMarker",
    "poiMinimap",
    "GuildMap3Mini",
    "LibRockConfig-1.0_MinimapButton",
    "NauticusMiniIcon",
    "WestPointer",
    "Cork",
    "DugisArrowMinimapPoint",
}

local PartialIgnores = {"Node", "Note", "Pin", "POI"}

local ButtonFunctions = {"SetParent", "ClearAllPoints", "SetPoint", "SetSize", "SetScale", "SetFrameStrata", "SetFrameLevel"}

function LSMB:LockButton(Button)
    for _, Function in T.pairs(ButtonFunctions) do
        Button[Function] = LUI.dummy
    end
end

function LSMB:UnlockButton(Button)
    for _, Function in T.pairs(ButtonFunctions) do
        Button[Function] = nil
    end
end

function LSMB:HandleBlizzardButtons()
    if not E.db.lui.modules.maps.minimapIcons.buttons["enable"] then return end
    if E.db.lui.modules.maps.minimapIcons.buttons["hideGarrison"] then
        GarrisonLandingPageMinimapButton:UnregisterAllEvents()
        GarrisonLandingPageMinimapButton:SetParent(self.Hider)
        GarrisonLandingPageMinimapButton:Hide()
    elseif E.db.lui.modules.maps.minimapIcons.buttons["moveGarrison"] and not GarrisonLandingPageMinimapButton.LSMB then
        GarrisonLandingPageMinimapButton:SetParent(Minimap)
        GarrisonLandingPageMinimapButton:Show()
        GarrisonLandingPageMinimapButton:SetScale(1)
        GarrisonLandingPageMinimapButton:SetHitRectInsets(0, 0, 0, 0)
        GarrisonLandingPageMinimapButton:SetScript("OnEnter", nil)
        GarrisonLandingPageMinimapButton:SetScript("OnLeave", nil)
        GarrisonLandingPageMinimapButton:HookScript("OnEnter", function(self)
            self:SetBackdropBorderColor(unpack(E["media"].rgbvaluecolor))
            if LSMB.Bar:IsShown() then
                T.UIFrameFadeIn(LSMB.Bar, 0.2, LSMB.Bar:GetAlpha(), 1)
            end
        end)
        GarrisonLandingPageMinimapButton:HookScript("OnLeave", function(self)
            self:SetTemplate()
            if LSMB.Bar:IsShown() and E.db.lui.modules.maps.minimapIcons.buttons["BarMouseOver"] then
                T.UIFrameFadeOut(LSMB.Bar, 0.2, LSMB.Bar:GetAlpha(), 0)
            end
        end)
        
        GarrisonLandingPageMinimapButton.LSMB = true
        T.table_insert(self.Buttons, GarrisonLandingPageMinimapButton)
    end
    
    if E.db.lui.modules.maps.minimapIcons.buttons["moveMail"] and not MiniMapMailFrame.LSMB then
        local Frame = T.CreateFrame("Frame", "SMB_MailFrame", self.Bar)
        Frame:SetSize(E.db.lui.modules.maps.minimapIcons.buttons["iconSize"], E.db.lui.modules.maps.minimapIcons.buttons["iconSize"])
        Frame:SetTemplate()
        Frame.Icon = Frame:CreateTexture(nil, "ARTWORK")
        Frame.Icon:SetPoint("CENTER")
        Frame.Icon:Size(18)
        Frame.Icon:SetTexture(MiniMapMailIcon:GetTexture())
        Frame:EnableMouse(true)
        Frame:HookScript("OnEnter", function(self)
            if T.HasNewMail() then
                GameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
                if GameTooltip:IsOwned(self) then
                    MinimapMailFrameUpdate()
                end
            end
            self:SetBackdropBorderColor(unpack(E["media"].rgbvaluecolor))
            if LSMB.Bar:IsShown() then
                T.UIFrameFadeIn(LSMB.Bar, 0.2, LSMB.Bar:GetAlpha(), 1)
            end
        end)
        Frame:HookScript("OnLeave", function(self)
            GameTooltip:Hide()
            self:SetTemplate()
            if LSMB.Bar:IsShown() and E.db.lui.modules.maps.minimapIcons.buttons["BarMouseOver"] then
                T.UIFrameFadeOut(LSMB.Bar, 0.2, LSMB.Bar:GetAlpha(), 0)
            end
        end)
        MiniMapMailFrame:HookScript("OnShow", function()Frame.Icon:SetVertexColor(0, 1, 0) end)
        MiniMapMailFrame:HookScript("OnHide", function()Frame.Icon:SetVertexColor(1, 1, 1) end)
        
        MiniMapMailIcon:Hide()
        MiniMapMailBorder:Hide()
        
        MiniMapMailFrame.LSMB = true
        T.table_insert(self.Buttons, Frame)
    end
    
    if E.db.lui.modules.maps.minimapIcons.buttons["moveTracker"] and not MiniMapTrackingButton.LSMB then
        MiniMapTracking.Show = nil
        
        MiniMapTracking:Show()
        
        MiniMapTracking:SetParent(self.Bar)
        MiniMapTracking:SetSize(E.db.lui.modules.maps.minimapIcons.buttons["iconSize"], E.db.lui.modules.maps.minimapIcons.buttons["iconSize"])
        
        MiniMapTrackingIcon:ClearAllPoints()
        MiniMapTrackingIcon:SetPoint("CENTER")
        
        MiniMapTrackingBackground:SetAlpha(0)
        MiniMapTrackingIconOverlay:SetAlpha(0)
        MiniMapTrackingButton:SetAlpha(0)
        
        MiniMapTrackingButton:SetParent(MinimapTracking)
        MiniMapTrackingButton:ClearAllPoints()
        MiniMapTrackingButton:SetAllPoints(MiniMapTracking)
        
        MiniMapTrackingButton:SetScript("OnMouseDown", nil)
        MiniMapTrackingButton:SetScript("OnMouseUp", nil)
        
        MiniMapTrackingButton:HookScript("OnEnter", function(self)
            MiniMapTracking:SetBackdropBorderColor(unpack(E["media"].rgbvaluecolor))
            if LSMB.Bar:IsShown() then
                T.UIFrameFadeIn(LSMB.Bar, 0.2, LSMB.Bar:GetAlpha(), 1)
            end
        end)
        MiniMapTrackingButton:HookScript("OnLeave", function(self)
            MiniMapTracking:SetTemplate()
            if LSMB.Bar:IsShown() and E.db.lui.modules.maps.minimapIcons.buttons["barMouseOver"] then
                T.UIFrameFadeOut(LSMB.Bar, 0.2, LSMB.Bar:GetAlpha(), 0)
            end
        end)
        
        MiniMapTrackingButton.LSMB = true
        T.table_insert(self.Buttons, MiniMapTracking)
    end
    
    if E.db.lui.modules.maps.minimapIcons.buttons["moveQueue"] and not QueueStatusMinimapButton.LSMB then
        local Frame = T.CreateFrame("Frame", "SMB_QueueFrame", self.Bar)
        Frame:SetTemplate()
        Frame:SetSize(E.db.lui.modules.maps.minimapIcons.buttons["iconSize"], E.db.lui.modules.maps.minimapIcons.buttons["iconSize"])
        Frame.Icon = Frame:CreateTexture(nil, "ARTWORK")
        Frame.Icon:SetSize(E.db.lui.modules.maps.minimapIcons.buttons["iconSize"], E.db.lui.modules.maps.minimapIcons.buttons["iconSize"])
        Frame.Icon:SetPoint("CENTER")
        Frame.Icon:SetTexture([[Interface\LFGFrame\LFG-Eye]])
        Frame.Icon:SetTexCoord(0, 64 / 512, 0, 64 / 256)
        Frame:SetScript("OnMouseDown", function()
            if PVEFrame:IsShown() then
                T.HideUIPanel(PVEFrame)
            else
                T.ShowUIPanel(PVEFrame)
                GroupFinderFrame_ShowGroupFrame()
            end
        end)
        Frame:HookScript("OnEnter", function(self)
            self:SetBackdropBorderColor(unpack(E["media"].rgbvaluecolor))
            if LSMB.Bar:IsShown() then
                T.UIFrameFadeIn(LSMB.Bar, 0.2, LSMB.Bar:GetAlpha(), 1)
            end
        end)
        Frame:HookScript("OnLeave", function(self)
            self:SetTemplate()
            if LSMB.Bar:IsShown() and E.db.lui.modules.maps.minimapIcons.buttons["barMouseOver"] then
                T.UIFrameFadeOut(LSMB.Bar, 0.2, LSMB.Bar:GetAlpha(), 0)
            end
        end)
        
        QueueStatusMinimapButton:SetParent(self.Bar)
        QueueStatusMinimapButton:SetFrameLevel(Frame:GetFrameLevel() + 2)
        QueueStatusMinimapButton:ClearAllPoints()
        QueueStatusMinimapButton:SetPoint("CENTER", Frame, "CENTER", 0, 0)
        
        QueueStatusMinimapButton:SetHighlightTexture(nil)
        
        QueueStatusMinimapButton:HookScript("OnShow", function(self)
            Frame:EnableMouse(false)
        end)
        QueueStatusMinimapButton:HookScript("PostClick", QueueStatusMinimapButton_OnLeave)
        QueueStatusMinimapButton:HookScript("OnHide", function(self)
            Frame:EnableMouse(true)
        end)
        
        QueueStatusMinimapButton.LSMB = true
        T.table_insert(self.Buttons, Frame)
    end
end

function LSMB:SkinMinimapButton(Button)
    if (not Button) or Button.isSkinned then return end
    
    local Name = Button:GetName()
    if not Name then return end
    
    if T.tContains(ignoreButtons, Name) then return end
    
    for i = 1, #GenericIgnores do
        if T.string_sub(Name, 1, T.string_len(GenericIgnores[i])) == GenericIgnores[i] then return end
    end
    
    for i = 1, #PartialIgnores do
        if T.string_find(Name, PartialIgnores[i]) ~= nil then return end
    end
    
    for i = 1, Button:GetNumRegions() do
        local Region = select(i, Button:GetRegions())
        if Region.IsObjectType and Region:IsObjectType("Texture") then
            local Texture = T.string_lower(T.tostring(Region:GetTexture()))
            
            if (T.string_find(Texture, "interface\\characterframe") or T.string_find(Texture, "interface\\minimap") or T.string_find(Texture, "border") or T.string_find(Texture, "background") or T.string_find(Texture, "alphamask") or T.string_find(Texture, "highlight")) then
                Region:SetTexture(nil)
                Region:SetAlpha(0)
            else
                if Name == "BagSync_MinimapButton" then
                    Region:SetTexture("Interface\\AddOns\\BagSync\\media\\icon")
                elseif Name == "LibDBIcon10_DBM" then
                    Region:SetTexture("Interface\\Icons\\INV_Helmet_87")
                elseif Name == "OutfitterMinimapButton" then
                    if Texture == "interface\\addons\\outfitter\\textures\\minimapbutton" then
                        Region:SetTexture(nil)
                    end
                elseif Name == "SmartBuff_MiniMapButton" then
                    Region:SetTexture("Interface\\Icons\\Spell_Nature_Purge")
                elseif Name == "VendomaticButtonFrame" then
                    Region:SetTexture("Interface\\Icons\\INV_Misc_Rabbit_2")
                end
                Region:ClearAllPoints()
                Region:SetInside()
                Region:SetTexCoord(unpack(self.TexCoords))
                Button:HookScript("OnLeave", function()Region:SetTexCoord(unpack(self.TexCoords)) end)
                Region:SetDrawLayer("ARTWORK")
                Region.SetPoint = function() return end
            end
        end
    end
    
    Button:SetFrameLevel(Minimap:GetFrameLevel() + 5)
    Button:SetSize(E.db.lui.modules.maps.minimapIcons.buttons["iconSize"], E.db.lui.modules.maps.minimapIcons.buttons["iconSize"])
    Button:SetTemplate()
    Button:HookScript("OnEnter", function(self)
        self:SetBackdropBorderColor(unpack(E["media"].rgbvaluecolor))
        if LSMB.Bar:IsShown() then
            T.UIFrameFadeIn(LSMB.Bar, 0.2, LSMB.Bar:GetAlpha(), 1)
        end
    end)
    Button:HookScript("OnLeave", function(self)
        self:SetTemplate()
        if LSMB.Bar:IsShown() and E.db.lui.modules.maps.minimapIcons.buttons["barMouseOver"] then
            T.UIFrameFadeOut(LSMB.Bar, 0.2, LSMB.Bar:GetAlpha(), 0)
        end
    end)
    
    Button.isSkinned = true
    T.table_insert(self.Buttons, Button)
end

function LSMB:GrabMinimapButtons()
    if (T.InCombatLockdown() or T.C_PetBattles_IsInBattle()) then return end
    
    for _, Frame in T.pairs({Minimap, MinimapBackdrop}) do
        local NumChildren = Frame:GetNumChildren()
        if NumChildren < (Frame.SMBNumChildren or 0) then return end
        for i = 1, NumChildren do
            local object = select(i, Frame:GetChildren())
            if object then
                local name = object:GetName()
                local width = object:GetWidth()
                if name and width > 15 and width < 40 and (object:IsObjectType("Button") or object:IsObjectType("Frame")) then
                    self:SkinMinimapButton(object)
                end
            end
        end
        Frame.SMBNumChildren = NumChildren
    end
end

function LSMB:Update()
    if not E.db.lui.modules.maps.minimapIcons.buttons["enable"] then return end
    
    local AnchorX, AnchorY, MaxX = 0, 1, E.db.lui.modules.maps.minimapIcons.buttons["buttonsPerRow"] or 8
    local ButtonsPerRow = E.db.lui.modules.maps.minimapIcons.buttons["buttonsPerRow"] or 8
    local NumColumns = T.math_ceil(#LSMB.Buttons / ButtonsPerRow)
    local Spacing, Mult = E.db.lui.modules.maps.minimapIcons.buttons["buttonSpacing"], 1
    local Size = E.db.lui.modules.maps.minimapIcons.buttons["iconSize"] or 22
    local ActualButtons, Maxed = 0
    
    if NumColumns == 1 and ButtonsPerRow > #LSMB.Buttons then
        ButtonsPerRow = #LSMB.Buttons
    end
    
    for _, Button in T.pairs(LSMB.Buttons) do
        if Button:IsVisible() then
            AnchorX = AnchorX + 1
            ActualButtons = ActualButtons + 1
            if AnchorX > MaxX then
                AnchorY = AnchorY + 1
                AnchorX = 1
                Maxed = true
            end
            
            LSMB:UnlockButton(Button)
            
            Button:SetTemplate()
            Button:SetParent(self.Bar)
            Button:ClearAllPoints()
            Button:SetPoint("TOPRIGHT", self.Bar, "TOPRIGHT", (-Spacing - ((Size + Spacing) * (AnchorX - 1))), (-Spacing - ((Size + Spacing) * (AnchorY - 1))))
            Button:SetSize(E.db.lui.modules.maps.minimapIcons.buttons["iconSize"], E.db.lui.modules.maps.minimapIcons.buttons["iconSize"])
            Button:SetScale(1)
            Button:SetFrameStrata("LOW")
            Button:SetFrameLevel(self.Bar:GetFrameLevel() + 1)
            Button:SetScript("OnDragStart", nil)
            Button:SetScript("OnDragStop", nil)
            
            LSMB:LockButton(Button)
            
            if Maxed then ActualButtons = ButtonsPerRow end
        end
    end
    
    local BarWidth = (Spacing + ((Size * (ActualButtons * Mult)) + ((Spacing * (ActualButtons - 1)) * Mult) + (Spacing * Mult)))
    self.Bar:SetWidth(BarWidth)
    
    if E.db.lui.modules.maps.minimapIcons.buttons["backdrop"] then
        self.Bar:SetTemplate("Transparent", true)
    else
        self.Bar:SetBackdrop(nil)
    end
    
    if ActualButtons == 0 then
        self.Bar:Hide()
    else
        self.Bar:Show()
    end
    
    if E.db.lui.modules.maps.minimapIcons.buttons["barMouseOver"] then
        T.UIFrameFadeOut(self.Bar, 0.2, self.Bar:GetAlpha(), 0)
    else
        T.UIFrameFadeIn(self.Bar, 0.2, self.Bar:GetAlpha(), 1)
    end
end

function LSMB:PLAYER_REGEN_DISABLED()
    if E.db.lui.modules.maps.minimapIcons.buttons["hideInCombat"] then LSMB.Bar:Hide() end
end

function LSMB:PLAYER_REGEN_ENABLED()
    if E.db.lui.modules.maps.minimapIcons.buttons["enable"] then LSMB.Bar:Show() end
end

function LSMB:UpdateVisibility()
    T.RegisterStateDriver(LSMB.Bar, "visibility", E.db.lui.modules.maps.minimapIcons.buttons["visibility"])
end

function LSMB:Initialize()
    LSMB.Hider = T.CreateFrame("Frame", nil, UIParent)
    
    LSMB.Bar = T.CreateFrame("Frame", L["LuiMinimapButtonBar"], UIParent)
    LSMB.Bar:Hide()
    
    LSMB.Bar:SetPoint("BOTTOMRIGHT", Minimap, "BOTTOMRIGHT", 1, -44)
    LSMB.Bar:SetFrameStrata("LOW")
    LSMB.Bar:SetClampedToScreen(true)
    LSMB.Bar:SetMovable(true)
    LSMB.Bar:EnableMouse(true)
    LSMB.Bar:SetSize(E.db.lui.modules.maps.minimapIcons.buttons["iconSize"], E.db.lui.modules.maps.minimapIcons.buttons["iconSize"])
    LSMB:UpdateVisibility()
    
    LSMB.Bar:SetScript("OnEnter", function(self)
        T.UIFrameFadeIn(self, 0.2, self:GetAlpha(), 1)
    end)
    LSMB.Bar:SetScript("OnLeave", function(self)
        if E.db.lui.modules.maps.minimapIcons.buttons["barMouseOver"] then
            T.UIFrameFadeOut(self, 0.2, self:GetAlpha(), 0)
        end
    end)
    
    self:RegisterEvent("PLAYER_REGEN_DISABLED")
    self:RegisterEvent("PLAYER_REGEN_ENABLED")
    
    E:CreateMover(LSMB.Bar, "LuiMinimapButtonBarMover", L["LuiMinimapButtonBar"], nil, nil, nil, "ALL,GENERAL,LIVVEN", nil, "LIVVEN,modules,maps,minimap,buttons")
    
    LSMB.TexCoords = {unpack(E.TexCoords)}
    
    E:Delay(.1, function()
        self:GrabMinimapButtons()
        self:HandleBlizzardButtons()
        self:Update()
    end)
end

local function InitializeCallback()
    if not E.private.general.minimap["enable"] or not E.db.lui.modules.maps.minimapIcons["enable"] or E.db.lui.modules.maps.minimapIcons["chooseMinimap"] == "square" then return end
    if E.db.lui.modules.maps.minimapIcons.square["enable"] ~= false then
        E.db.lui.modules.maps.minimapIcons.square["enable"] = false
    end
    LSMB:Initialize()
end

E:RegisterModule(LSMB:GetName(), InitializeCallback)
