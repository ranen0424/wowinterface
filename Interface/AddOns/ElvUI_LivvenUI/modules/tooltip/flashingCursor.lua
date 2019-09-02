local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "tooltip", "flashingCursor") then return end
local LFC = E:NewModule("LuiFlashingCursor")

local GetEffectiveScale = GetEffectiveScale

local x = 0
local y = 0
local speed = 0
local maxSize = 0
local color = nil

local function OnUpdate(self, elapsed)
    if E.db.lui.modules.tooltip.flashingCursor["cursorMode"] == "always" or (E.db.lui.modules.tooltip.flashingCursor["cursorMode"] == "modifier" and IsModifierKeyDown()) or (E.db.lui.modules.tooltip.flashingCursor["cursorMode"] == "combat" and InCombatLockdown()) then
        local dX = x
        local dY = y
        x, y = T.GetCursorPosition()
        dX = x - dX
        dY = y - dY
        local weight = 2048 ^ -elapsed
        speed = T.math_min(weight * speed + (1 - weight) * T.math_sqrt(dX * dX + dY * dY) / elapsed, maxSize)
        local size = speed / 6 - 16
        if (size > 0) then
            local scale = UIParent:GetEffectiveScale()
            LFC.texture:SetHeight(size)
            LFC.texture:SetWidth(size)
            LFC.texture:SetPoint("CENTER", UIParent, "BOTTOMLEFT", (x + 0.5 * dX) / scale, (y + 0.5 * dY) / scale)
            LFC.texture:Show()
        else
            LFC.texture:Hide()
        end
    else
        LFC.texture:Hide()
    end
end

function LFC:Initialize()
    LFC.frame = T.CreateFrame("Frame", nil, UIParent)
    LFC.frame:SetFrameStrata("TOOLTIP")
    
    LFC.texture = LFC.frame:CreateTexture()
    LFC.texture:SetTexture([[Interface\Cooldown\star4]])
    LFC.texture:SetBlendMode("ADD")
    color = E.db.lui.modules.tooltip.flashingCursor["cursorColor"]
    LFC.texture:SetVertexColor(color.r, color.g, color.b, color.a)
    maxSize = E.db.lui.modules.tooltip.flashingCursor["cursorSize"]
    LFC.frame:SetScript("OnUpdate", OnUpdate)
end

local function InitializeCallback()
    if not E.db.lui.modules.tooltip.flashingCursor["enable"] then return end
    LFC:Initialize()
end

E:RegisterModule(LFC:GetName(), InitializeCallback)