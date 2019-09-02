local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local S = E:GetModule("Skins")

local _G = _G
local GameMenuFrame = _G["GameMenuFrame"]

LUI.PEPE = {
    [1] = "World/expansion05/doodads/ORC/DOODADS/6HU_GARRISON_ORANGEBIRD_VAR_HALLOWEEN.m2",
    [2] = "World/expansion05/doodads/ORC/DOODADS/6HU_GARRISON_ORANGEBIRD_VAR1.m2",
    [3] = "World/expansion05/doodads/ORC/DOODADS/6HU_GARRISON_ORANGEBIRD_VAR2.m2",
    [4] = "World/expansion05/doodads/ORC/DOODADS/6HU_GARRISON_ORANGEBIRD_VAR3.m2",
    [5] = "World/expansion05/doodads/ORC/DOODADS/6HU_GARRISON_ORANGEBIRD_VAR4.m2",
    [6] = "World/Expansion05/Doodads/Human/Doodads/6HU_Garrison_OrangeBird_VAR5.M2",
    [7] = "World/Expansion06/Doodads/Dalaran/7DL_DALARAN_ORANGEBIRD.m2",
    [8] = "world/expansion07/doodads/human/8hu_kultiras_orangebird01.m2",
    [9] = "world/expansion07/doodads/zandalaritroll/8tr_zandalari_orangebird01.m2",
}

local function Pepe_Model(self)
    local npc = LUI.PEPE
    local mod = T.random(1, #npc)
    local id = npc[mod]
    
    self:ClearModel()
    self:SetModel(id)
    self:SetSize(150, 150)
    self:SetCamDistanceScale(1)
    self:SetFacing(6)
    self:SetAlpha(1)
    T.UIFrameFadeIn(self, 1, self:GetAlpha(), 1)
end

function LUI:CreateGameMenu()
    if not GameMenuFrame.VIIbottomPanel then
        GameMenuFrame.VIIbottomPanel = T.CreateFrame("Frame", nil, GameMenuFrame)
        local bottomPanel = GameMenuFrame.VIIbottomPanel
        bottomPanel:SetFrameLevel(0)
        bottomPanel:SetPoint("BOTTOM", E.UIParent, "BOTTOM", 0, -E.Border)
        bottomPanel:SetWidth(T.GetScreenWidth() + (E.Border * 2))
        bottomPanel:Styling()
        
        bottomPanel.ignoreFrameTemplates = true
        bottomPanel.ignoreBackdropColors = true
        E["frames"][bottomPanel] = true
        
        bottomPanel.anim = CreateAnimationGroup(bottomPanel)
        bottomPanel.anim.height = bottomPanel.anim:CreateAnimation("Height")
        bottomPanel.anim.height:SetChange(GetScreenHeight() * (1 / 4))
        bottomPanel.anim.height:SetDuration(1.4)
        bottomPanel.anim.height:SetSmoothing("Bounce")
        
        bottomPanel:SetScript("OnShow", function(self)
            self:SetHeight(0)
            self.anim.height:Play()
        end)
        
        bottomPanel.Logo = bottomPanel:CreateTexture(nil, "ARTWORK")
        bottomPanel.Logo:SetSize(150, 150)
        bottomPanel.Logo:SetPoint("CENTER", bottomPanel, "CENTER", 0, 0)
        bottomPanel.Logo:SetTexture(LUI.Logo)
    end
    
    if not GameMenuFrame.VIItopPanel then
        GameMenuFrame.VIItopPanel = T.CreateFrame("Frame", nil, GameMenuFrame)
        local topPanel = GameMenuFrame.VIItopPanel
        topPanel:SetFrameLevel(0)
        topPanel:SetPoint("TOP", E.UIParent, "TOP", 0, 0)
        topPanel:SetWidth(T.GetScreenWidth() + (E.Border * 2))
        topPanel:Styling()
        
        topPanel.ignoreFrameTemplates = true
        topPanel.ignoreBackdropColors = true
        E["frames"][topPanel] = true
        
        topPanel.anim = CreateAnimationGroup(topPanel)
        topPanel.anim.height = topPanel.anim:CreateAnimation("Height")
        topPanel.anim.height:SetChange(GetScreenHeight() * (1 / 4))
        topPanel.anim.height:SetDuration(1.4)
        topPanel.anim.height:SetSmoothing("Bounce")
        
        topPanel:SetScript("OnShow", function(self)
            self:SetHeight(0)
            self.anim.height:Play()
        end)
        
        topPanel.factionLogo = topPanel:CreateTexture(nil, "ARTWORK")
        topPanel.factionLogo:SetPoint("CENTER", topPanel, "CENTER", 0, 0)
        topPanel.factionLogo:SetSize(156, 150)
        topPanel.factionLogo:SetTexture("Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\classIcons\\CLASS-" .. E.myclass)
    end
    
    -- if not pepeHolder then
    --     local pepeHolder = T.CreateFrame("Frame", nil, GameMenuFrame)
    --     pepeHolder:SetSize(150, 150)
    --     pepeHolder:SetPoint("BOTTOM", GameMenuFrame, "TOP", 0, -40)
        
    --     pepeModel = T.CreateFrame("PlayerModel", nil, pepeHolder)
    --     pepeModel:SetPoint("CENTER", pepeHolder, "CENTER")
    --     pepeModel:SetScript("OnShow", Pepe_Model)
    --     pepeModel.isIdle = nil
    --     pepeModel:Show()
    -- end
end

function LUI:GameMenu()
    self:CreateGameMenu()
    E:UpdateBorderColors()
end
