local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
if LUI:CheckDB("db", "skins", "shadowOverlay", "enable") then return end
local LUIL = E:NewModule("LuiLayout", "AceHook-3.0", "AceEvent-3.0")

function LUIL:SetShadowLevel(n)
    self.f:SetAlpha(n / 100)
end

function LUIL:ShadowOverlay()
    self.f = T.CreateFrame("Frame", LUI.Title .. "ShadowBackground")
    self.f:SetPoint("TOPLEFT")
    self.f:SetPoint("BOTTOMRIGHT")
    self.f:SetFrameLevel(0)
    self.f:SetFrameStrata("BACKGROUND")
    
    self.f.tex = self.f:CreateTexture()
    self.f.tex:SetTexture([[Interface\Addons\ElvUI_LivvenUI\media\textures\mshadow]])
    self.f.tex:SetAllPoints(self.f)
    
    self:SetShadowLevel(E.db.lui.skins.shadowOverlay["shadowAlpha"] or 50)
end


function LUIL:PLAYER_ENTERING_WORLD(...)
    self:ShadowOverlay()
    self:UnregisterEvent("PLAYER_ENTERING_WORLD")
end

function LUIL:Initialize()
    if not E.db.lui.skins.shadowOverlay["enable"] then return end
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
end

local function InitializeCallback()
    LUIL:Initialize()
end

E:RegisterModule(LUIL:GetName(), InitializeCallback)
