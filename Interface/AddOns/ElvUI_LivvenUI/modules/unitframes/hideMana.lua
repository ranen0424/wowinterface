local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "unitframes", "general", "hideMana", "enable") then return end
local LHMO = E:NewModule("LuihideMana", "AceEvent-3.0")
local UF = E:GetModule('UnitFrames')

local _G = _G

local function BlizzardhideMana(frame)
    if frame:IsForbidden() or not frame:IsVisible() or not DefaultCompactUnitFrameSetupOptions.displayPowerBar then return end
    local role = T.UnitGroupRolesAssigned(frame.unit)
    if role ~= "NONE" then
        local barHeight = 8
        if role == "DAMAGER" and E.db.lui.modules.unitframes.general.hideMana.hideManaRoles["DAMAGER"] then
            barHeight = 0
        end
        if role == "HEALER" and E.db.lui.modules.unitframes.general.hideMana.hideManaRoles["HEALER"] then
            barHeight = 0
        end
        if role == "TANK" and E.db.lui.modules.unitframes.general.hideMana.hideManaRoles["TANK"] then
            barHeight = 0
        end
        frame.healthBar:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -1, 1 + barHeight)
        -- if frame.buffFrames[1] then
        --     frame.buffFrames[1]:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -3, CUF_AURA_BOTTOM_OFFSET + barHeight)
        -- end
        -- if frame.debuffFrames[1] then
        --     frame.debuffFrames[1]:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 3, CUF_AURA_BOTTOM_OFFSET + barHeight)
        -- end
    end
end

local function SetHideMana(frame)
    if not frame.Power:IsShown() then frame.Power:Show() end
    if frame.BOTTOM_OFFSET == 0 then frame.BOTTOM_OFFSET = UF:GetHealthBottomOffset(frame) end
    local role = T.UnitGroupRolesAssigned(frame.unit)
    if role ~= "NONE" then
        if role == "DAMAGER" and E.db.lui.modules.unitframes.general.hideMana.hideManaRoles["DAMAGER"] then
            frame.Power:Hide()
            frame.BOTTOM_OFFSET = 0
        end
        if role == "HEALER" and E.db.lui.modules.unitframes.general.hideMana.hideManaRoles["HEALER"] then
            frame.Power:Hide()
            frame.BOTTOM_OFFSET = 0
        end
        if role == "TANK" and E.db.lui.modules.unitframes.general.hideMana.hideManaRoles["TANK"] then
            frame.Power:Hide()
            frame.BOTTOM_OFFSET = 0
        end
        UF:Configure_HealthBar(frame)
    end
end

local function FramesEnable(header)
    for i = 1, header:GetNumChildren() do
        local group = select(i, header:GetChildren())
        for j = 1, group:GetNumChildren() do
            local frame = select(j, group:GetChildren())
            if frame then
                SetHideMana(frame)
            end
        end
    end
end

function LHMO:ElvUIHideMana()
    if E.db.unitframe.units.party.power["enable"] and _G["ElvUF_Party"] then
        FramesEnable(_G["ElvUF_Party"])
    end
    if E.db.unitframe.units.raid.power["enable"] and _G["ElvUF_Raid"] then
        FramesEnable(_G["ElvUF_Raid"])
    end
    if E.db.unitframe.units.raid40.power["enable"] and _G["ElvUF_Raid40"] then
        FramesEnable(_G["ElvUF_Raid40"])
    end
end

function LHMO:Initialize()
    if E.db.lui.modules.unitframes.general.hideMana.hideManaFrames["elvuiFrames"] then
        self:RegisterEvent("PLAYER_ENTERING_WORLD", function()
            E:Delay(.1, LHMO.ElvUIHideMana)
        end)
        self:RegisterEvent("GROUP_ROSTER_UPDATE", function()
            E:Delay(.1, LHMO.ElvUIHideMana)
        end)
    end
    
    if E.db.lui.modules.unitframes.general.hideMana.hideManaFrames["blizzardFrames"] then
        T.hooksecurefunc("CompactUnitFrame_UpdateAll", BlizzardhideMana)
    end
end

local function InitializeCallback()
    if not E.db.lui.modules.unitframes.general.hideMana["enable"] then return end
    LHMO:Initialize()
end

E:RegisterModule(LHMO:GetName(), InitializeCallback)
