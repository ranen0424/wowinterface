local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:NewModule("LuiSkins", "AceHook-3.0", "AceEvent-3.0")
local S = E:GetModule("Skins")

local _G = _G

local alpha
local backdropcolorr, backdropcolorg, backdropcolorb
local backdropfadecolorr, backdropfadecolorg, backdropfadecolorb
local unitFrameColorR, unitFrameColorG, unitFrameColorB
local rgbValueColorR, rgbValueColorG, rgbValueColorB
local bordercolorr, bordercolorg, bordercolorb

local r, g, b = unpack(E["media"].rgbvaluecolor)

local buttons = {
    "UI-Panel-MinimizeButton-Disabled",
    "UI-Panel-MinimizeButton-Up",
    "UI-Panel-SmallerButton-Up",
    "UI-Panel-BiggerButton-Up",
}

LS.ArrowRotation = {
    ["UP"] = 3.14,
    ["DOWN"] = 0,
    ["LEFT"] = -1.57,
    ["RIGHT"] = 1.57,
}

function LS:CreateSD(parent, size, r, g, b, alpha, offset)
    local sd = T.CreateFrame("Frame", nil, parent)
    sd.size = size or 5
    sd.offset = offset or 0
    sd:SetBackdrop({
        bgFile = E.LSM:Fetch("background", "ElvUI Blank"),
        edgeFile = E.LSM:Fetch("border", "ElvUI GlowBorder"),
        edgeSize = sd.size,
    })
    sd:SetPoint("TOPLEFT", parent, -sd.size - 1 - sd.offset, sd.size + 1 + sd.offset)
    sd:SetPoint("BOTTOMRIGHT", parent, sd.size + 1 + sd.offset, -sd.size - 1 - sd.offset)
    sd:SetBackdropBorderColor(r or 0, g or 0, b or 0)
    sd:SetBackdropColor(r or 0, g or 0, b or 0, alpha or 0)
    
    return sd
end

function LS:CreateBG(frame)
    T.assert(frame, "doesn't exist!")
    
    local f = frame
    if frame:IsObjectType("Texture") then f = frame:GetParent() end
    
    local bg = f:CreateTexture(nil, "BACKGROUND")
    bg:Point("TOPLEFT", frame, -E.mult, E.mult)
    bg:Point("BOTTOMRIGHT", frame, E.mult, -E.mult)
    bg:SetTexture(E["media"].blankTex)
    bg:SetVertexColor(0, 0, 0)
    
    return bg
end

function LS:CreateGF(f, w, h, o, r, g, b, a1, a2)
    T.assert(f, "doesn't exist!")
    
    f:SetSize(w, h)
    f:SetFrameStrata("BACKGROUND")
    local gf = f:CreateTexture(nil, "BACKGROUND")
    gf:SetPoint("TOPLEFT", f, -E.mult, E.mult)
    gf:SetPoint("BOTTOMRIGHT", f, E.mult, -E.mult)
    gf:SetTexture(E["media"].luiNormTex)
    gf:SetVertexColor(r, g, b)
    gf:SetGradientAlpha(o, r, g, b, a1, r, g, b, a2)
end

function LS:CreateGradient(f)
    T.assert(f, "doesn't exist!")
    
    local tex = f:CreateTexture(nil, "BACKGROUND")
    tex:SetPoint("TOPLEFT", 1, -1)
    tex:SetPoint("BOTTOMRIGHT", -1, 1)
    tex:SetTexture([[Interface\AddOns\ElvUI_LivvenUI\media\textures\gradient.tga]])
    tex:SetVertexColor(.3, .3, .3, .15)
    tex:SetSnapToPixelGrid(false)
    tex:SetTexelSnappingBias(0)
    
    return tex
end

function LS:CreateBackdrop(frame)
    if frame.backdrop then return end
    
    local parent = frame.IsObjectType and frame:IsObjectType("Texture") and frame:GetParent() or frame
    
    local backdrop = T.CreateFrame("Frame", nil, parent)
    backdrop:SetOutside(frame)
    backdrop:SetTemplate("Transparent")
    
    if (parent:GetFrameLevel() - 1) >= 0 then
        backdrop:SetFrameLevel(parent:GetFrameLevel() - 1)
    else
        backdrop:SetFrameLevel(0)
    end
    
    frame.backdrop = backdrop
end

function LS:CreateBDFrame(f, a, left, right, top, bottom)
    T.assert(f, "doesn't exist!")
    
    local frame
    if f:IsObjectType("Texture") then
        frame = f:GetParent()
    else
        frame = f
    end
    
    local lvl = frame:GetFrameLevel()
    
    local bg = T.CreateFrame("Frame", nil, frame)
    bg:SetPoint("TOPLEFT", f, left or -1, top or 1)
    bg:SetPoint("BOTTOMRIGHT", f, right or 1, bottom or -1)
    bg:SetFrameLevel(lvl == 0 and 1 or lvl - 1)
    
    LS:CreateBD(bg, a or .5)
    
    return bg
end

function LS:CreateBD(f, a)
    T.assert(f, "doesn't exist!")
    
    f:SetBackdrop({
        bgFile = E["media"].normTex,
        edgeFile = E["media"].normTex,
        edgeSize = E.mult * 1.1,
        insets = {left = 0, right = 0, top = 0, bottom = 0},
    })
    
    f:SetBackdropColor(E["media"].backdropfadecolor.r, E["media"].backdropfadecolor.g, E["media"].backdropfadecolor.b, a or alpha)
    f:SetBackdropBorderColor(unpack(E["media"].bordercolor))
end

local function GrabScrollBarElement(frame, element)
    local FrameName = frame:GetDebugName()
    return frame[element] or FrameName and (_G[FrameName .. element] or T.string_find(FrameName, element)) or nil
end

function LS:ReskinScrollBar(frame, thumbTrimY, thumbTrimX)
    local parent = frame:GetParent()
    
    local Thumb = GrabScrollBarElement(frame, "ThumbTexture") or GrabScrollBarElement(frame, "thumbTexture") or frame.GetThumbTexture and frame:GetThumbTexture()
    
    if Thumb and Thumb.backdrop then
        Thumb.backdrop:SetBackdropColor(unpack(E["media"].rgbvaluecolor))
    end
end

function LS:ReskinTab(tab)
    if not tab then return end
    
    if tab.backdrop then
        tab.backdrop:SetTemplate("Transparent")
        tab.backdrop:Styling()
    end
end

function LS:ColorButton()
    if self.backdrop then self = self.backdrop end
    
    self:SetBackdropColor(r, g, b, .3)
    self:SetBackdropBorderColor(r, g, b)
end

function LS:ClearButton()
    if self.backdrop then self = self.backdrop end
    
    self:SetBackdropColor(0, 0, 0, 0)
    
    if self.isUnitFrameElement then
        self:SetBackdropBorderColor(unpack(E["media"].unitframeBorderColor))
    else
        self:SetBackdropBorderColor(bordercolorr, bordercolorg, bordercolorb)
    end
end

local function StartGlow(f)
	if not (f and f:IsEnabled()) then return end
    f:SetBackdropBorderColor(r, g, b)
    f.glow:SetAlpha(1)
    LUI:CreatePulse(f.glow)
end

local function StopGlow(f)
    f.glow:SetScript("OnUpdate", nil)
    f:SetBackdropBorderColor(bordercolorr, bordercolorg, bordercolorb)
    f.glow:SetAlpha(0)
end

function LS:Reskin(button, strip, noGlow)
    T.assert(button, "doesn't exist!")
    
    if strip then button:StripTextures() end
    
    if button.template then
        button:SetTemplate("Transparent", true)
    end
    
    LS:CreateGradient(button)
    
    if button.Icon then
        local Texture = button.Icon:GetTexture()
        if Texture and T.string_find(Texture, [[Interface\ChatFrame\ChatFrameExpandArrow]]) then
            button.Icon:SetTexture([[Interface\AddOns\ElvUI_LivvenUI\media\textures\arrow]])
            button.Icon:SetVertexColor(1, 1, 1)
            button.Icon:SetRotation(LS.ArrowRotation["RIGHT"])
        end
    end

    if not noGlow then
		button.glow = CreateFrame("Frame", nil, button)
		button.glow:SetBackdrop({
			edgeFile = E.LSM:Fetch("statusbar", "Livv_Flat"), edgeSize = E:Scale(3),
			insets = {left = E:Scale(3), right = E:Scale(3), top = E:Scale(3), bottom = E:Scale(3)},
		})
		button.glow:SetPoint("TOPLEFT", -1, 1)
		button.glow:SetPoint("BOTTOMRIGHT", 1, -1)
		button.glow:SetBackdropBorderColor(r, g, b)
		button.glow:SetAlpha(0)

		button:HookScript("OnEnter", StartGlow)
		button:HookScript("OnLeave", StopGlow)
    end
end

function LS:StyleButton(button)
    if button.isStyled then return end
    
    if button.SetHighlightTexture then
        button:SetHighlightTexture(E["media"].blankTex)
        button:GetHighlightTexture():SetVertexColor(1, 1, 1, .2)
        button:GetHighlightTexture():SetInside()
        button.SetHighlightTexture = E.noop
    end
    
    if button.SetPushedTexture then
        button:SetPushedTexture(E["media"].blankTex)
        button:GetPushedTexture():SetVertexColor(.9, .8, .1, .5)
        button:GetPushedTexture():SetInside()
        button.SetPushedTexture = E.noop
    end
    
    if button.GetCheckedTexture then
        button:SetPushedTexture(E["media"].blankTex)
        button:GetCheckedTexture():SetVertexColor(0, 1, 0, .5)
        button:GetCheckedTexture():SetInside()
        button.GetCheckedTexture = E.noop
    end
    
    local Cooldown = button:GetName() and _G[button:GetName() .. "Cooldown"] or button.Cooldown or button.cooldown or nil
    
    if Cooldown then
        Cooldown:SetInside()
        if Cooldown.SetSwipeColor then
            Cooldown:SetSwipeColor(0, 0, 0, 1)
        end
    end
    
    button.isStyled = true
end

function LS:ReskinIcon(icon, backdrop)
    T.assert(icon, "doesn't exist!")
    
    icon:SetTexCoord(unpack(E.TexCoords))
    if backdrop then
        LS:CreateBackdrop(icon)
    end
end

function LS:SkinPanel(panel)
    panel.tex = panel:CreateTexture(nil, "ARTWORK")
    panel.tex:SetAllPoints()
    panel.tex:SetTexture(E["media"].luiFlat)
    panel.tex:SetGradient("VERTICAL", unpack(E["media"].rgbvaluecolor))
    LS:CreateSD(panel, 2, 0, 0, 0, 0, -1)
end

function LS:ReskinGarrisonPortrait(self)
    self.Portrait:ClearAllPoints()
    self.Portrait:SetPoint("TOPLEFT", 4, -4)
    self.PortraitRing:Hide()
    self.PortraitRingQuality:SetTexture("")
    if self.Highlight then self.Highlight:Hide() end
    
    self.LevelBorder:SetScale(.0001)
    self.Level:ClearAllPoints()
    self.Level:SetPoint("BOTTOM", self, 0, 12)
    
    self.squareBG = LS:CreateBDFrame(self, 1)
    self.squareBG:SetFrameLevel(self:GetFrameLevel())
    self.squareBG:SetPoint("TOPLEFT", 3, -3)
    self.squareBG:SetPoint("BOTTOMRIGHT", -3, 11)
    
    if self.PortraitRingCover then
        self.PortraitRingCover:SetColorTexture(0, 0, 0)
        self.PortraitRingCover:SetAllPoints(self.squareBG)
    end
    
    if self.Empty then
        self.Empty:SetColorTexture(0, 0, 0)
        self.Empty:SetAllPoints(self.Portrait)
    end
end

local buttons = {
    "ElvUIMoverNudgeWindowUpButton",
    "ElvUIMoverNudgeWindowDownButton",
    "ElvUIMoverNudgeWindowLeftButton",
    "ElvUIMoverNudgeWindowRightButton",
}

local function replaceConfigArrows(button)
    local tex = _G[button:GetName() .. "Icon"]
    if tex then
        tex:SetTexture(nil)
    end

    if not button.img then
        button.img = button:CreateTexture(nil, "ARTWORK")
        button.img:SetTexture("Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\arrow")
        button.img:SetSize(12, 12)
        button.img:Point("CENTER")
        button.img:SetVertexColor(1, 1, 1)
        
        button:HookScript("OnMouseDown", function(btn)
            if btn:IsEnabled() then
                btn.img:Point("CENTER", -1, -1)
            end
        end)
        
        button:HookScript("OnMouseUp", function(btn)
            btn.img:Point("CENTER", 0, 0)
        end)
    end
end

function LS:ApplyConfigArrows()
    for _, btn in T.pairs(buttons) do
        replaceConfigArrows(_G[btn])
    end
    _G["ElvUIMoverNudgeWindowUpButton"].img:SetRotation(LS.ArrowRotation["UP"])
    _G["ElvUIMoverNudgeWindowDownButton"].img:SetRotation(LS.ArrowRotation["DOWN"])
    _G["ElvUIMoverNudgeWindowLeftButton"].img:SetRotation(LS.ArrowRotation["LEFT"])
    _G["ElvUIMoverNudgeWindowRightButton"].img:SetRotation(LS.ArrowRotation["RIGHT"])

end
T.hooksecurefunc(E, "CreateMoverPopup", LS.ApplyConfigArrows)

function LS:ReskinAS(AS)
    function AS:SkinTab(Tab, Strip)
        if Tab.isSkinned then return end
        local TabName = Tab:GetName()
        
        if TabName then
            for _, Region in T.pairs(S.Blizzard.Regions) do
                if _G[TabName .. Region] then
                    _G[TabName .. Region]:SetTexture(nil)
                end
            end
        end
        
        for _, Region in T.pairs(S.Blizzard.Regions) do
            if Tab[Region] then
                Tab[Region]:SetAlpha(0)
            end
        end
        
        if Tab.GetHighlightTexture and Tab:GetHighlightTexture() then
            Tab:GetHighlightTexture():SetTexture(nil)
        else
            Strip = true
        end
        
        if Strip then
            AS:StripTextures(Tab)
        end
        
        AS:CreateBackdrop(Tab)
        
        if AS:CheckAddOn("ElvUI") and AS:CheckOption("ElvUISkinModule") then
            if Tab.backdrop then
                Tab.Backdrop:Hide()
            else
                AS:SetTemplate(Tab.Backdrop, "Transparent")
                Tab.Backdrop:Styling()
            end
        end
        
        Tab.Backdrop:Point("TOPLEFT", 10, AS.PixelPerfect and -1 or -3)
        Tab.Backdrop:Point("BOTTOMRIGHT", -10, 3)
        
        Tab.isSkinned = true
    end
end

function S:UpdateRecapButton()
    if self and self.button4 and self.button4:IsEnabled() then
        self.button4:SetScript("OnEnter", LS.ColorButton)
        self.button4:SetScript("OnLeave", LS.ClearButton)
    end
end

function LS:ReskinSkinTextWithStateWidget(widgetFrame)
    local text = widgetFrame.Text
    if text then
        text:SetTextColor(1, 1, 1)
    end
end

T.hooksecurefunc(S, "HandleTab", LS.ReskinTab)
T.hooksecurefunc(S, "HandleButton", LS.Reskin)
T.hooksecurefunc(S, "HandleScrollBar", LS.ReskinScrollBar)
T.hooksecurefunc(S, "SkinTextWithStateWidget", LS.ReskinSkinTextWithStateWidget)

local function ReskinVehicleExit()
    local f = _G["LeaveVehicleButton"]
    if f then
        f:SetNormalTexture("Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\arrow")
        f:SetPushedTexture("Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\arrow")
        f:SetHighlightTexture("Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\arrow")
    end
end

local function StyleElvUIConfig()
    if InCombatLockdown() or not E.private.skins.ace3.enable then return end
    local frame = _G.ElvUIGUIFrame
    if frame then
        if not frame.IsStyled then
            frame:Styling()
            frame.IsStyled = true
        end
    end
end

local function StyleElvUIInstall()
	if InCombatLockdown() then return end
	local frame = _G.ElvUIInstallFrame
	if not frame.IsStyled then
		frame:Styling()
		frame.IsStyled = true
	end
end

local function updateMedia()
    rgbValueColorR, rgbValueColorG, rgbValueColorB = unpack(E["media"].rgbvaluecolor)
    unitFrameColorR, unitFrameColorG, unitFrameColorB = unpack(E["media"].unitframeBorderColor)
    backdropfadecolorr, backdropfadecolorg, backdropfadecolorb, alpha = unpack(E["media"].backdropfadecolor)
    backdropcolorr, backdropcolorg, backdropcolorb = unpack(E["media"].backdropcolor)
    bordercolorr, bordercolorg, bordercolorb = unpack(E["media"].bordercolor)
end
T.hooksecurefunc(E, "UpdateMedia", updateMedia)

local function pluginInstaller()
    local PluginInstallFrame = _G["PluginInstallFrame"]
    if PluginInstallFrame then
        PluginInstallFrame:Styling()
        PluginInstallTitleFrame:Styling()
    end
end

local function StyleAce3Tooltip(self)
	if not self or self:IsForbidden() then return end
	if not self.styling then
		self:Styling()
	end
end

function LS:Initialize()
    ReskinVehicleExit()
    updateMedia()
    pluginInstaller()
    
    T.hooksecurefunc(E, "ToggleOptionsUI", StyleElvUIConfig)
    hooksecurefunc(E, 'Install', StyleElvUIInstall)
    hooksecurefunc(S, "Ace3_StyleTooltip", StyleAce3Tooltip)
    
    if T.IsAddOnLoaded("AddOnSkins") then
        if AddOnSkins then
            LS:ReskinAS(unpack(AddOnSkins))
        end
    end
end

local function InitializeCallback()
    LS:Initialize()
end

E:RegisterModule(LS:GetName(), InitializeCallback)
