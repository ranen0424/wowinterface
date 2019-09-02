-- 作者：L
-- 链接：
-- 修改：
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "tooltip", "tooltipIcon") then return end
local LTI = E:NewModule("LuiTooltipIcon", "AceHook-3.0")

local function InsertFactionFrame(self, faction)
    if not self.factionFrame then
        local f = self:CreateTexture(nil, "OVERLAY")
        f:SetPoint("TOPRIGHT", 0, -5)
        f:SetBlendMode("ADD")
        self.factionFrame = f
    end
    self.factionFrame:SetTexture("Interface\\FriendsFrame\\PlusManz-" .. faction)
    self.factionFrame:SetAlpha(.5)
    self.factionFrame:SetSize(35, 35)
end

local function InsertPetIcon(self, petType)
    if not self.petIcon then
        local f = self:CreateTexture(nil, "OVERLAY")
        f:SetPoint("TOPRIGHT", -5, -5)
        f:SetSize(35, 35)
        f:SetBlendMode("ADD")
        self.petIcon = f
    end
    self.petIcon:SetTexture("Interface\\PetBattles\\PetIcon-" .. PET_TYPE_SUFFIX[petType])
    self.petIcon:SetTexCoord(.188, .883, 0, .348)
    self.petIcon:SetAlpha(1)
end

local function getUnit(self)
    local _, unit = self and self:GetUnit()
    if (not unit) then
        local mFocus = T.GetMouseFocus()
        unit = mFocus and (mFocus.unit or (mFocus.GetAttribute and mFocus:GetAttribute("unit"))) or "mouseover"
    end
    return unit
end

function LTI:Initialize()
    self:SecureHookScript(GameTooltip, "OnTooltipSetUnit", function(self)
        if GameTooltip:IsForbidden() then return end
        local unit = getUnit(self)
        
        if T.UnitExists(unit) then
            if T.UnitIsPlayer(unit) then
                local faction = T.UnitFactionGroup(unit)
                if faction and faction ~= "Neutral" then
                    InsertFactionFrame(self, faction)
                end
            end
            
            if T.UnitIsBattlePet(unit) then
                local _, unit = self:GetUnit()
                InsertPetIcon(self, T.UnitBattlePetType(unit))
                local speciesID = T.UnitBattlePetSpeciesID(unit)
                self:AddDoubleLine(PET .. ID .. ":", ((T.InfoColor .. speciesID .. "|r") or (T.GreyColor .. UNKNOWN .. "|r")))
                InsertPetIcon(self, T.UnitBattlePetType(unit))
            end
        end
    end)
    
    self:SecureHookScript(GameTooltip, "OnTooltipCleared", function(self)
        if GameTooltip:IsForbidden() then return end
        if self.modelFrame and self.modelFrame:GetAlpha() ~= 0 then
            self.modelFrame:Hide()
            self.modelFrame:ClearModel()
        end
        if self.factionFrame and self.factionFrame:GetAlpha() ~= 0 then
            self.factionFrame:SetAlpha(0)
        end
        if self.petIcon and self.petIcon:GetAlpha() ~= 0 then
            self.petIcon:SetAlpha(0)
        end
    end)
end

local function InitializeCallback()
    if not E.db.lui.modules.tooltip["tooltipIcon"] then return end
    LTI:Initialize()
end

E:RegisterModule(LTI:GetName(), InitializeCallback)
