local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LRI = E:NewModule("LuiRoleIcons", "AceEvent-3.0")
local UF = E:GetModule("UnitFrames")

local specNameToRole = {}
for i = 1, T.GetNumClasses() do
    local _, class, classID = T.GetClassInfo(i)
    specNameToRole[class] = {}
    for j = 1, T.GetNumSpecializationsForClassID(classID) do
        local _, spec, _, _, _, role = T.GetSpecializationInfoForClassID(classID, j)
        specNameToRole[class][spec] = role
    end
end

local function GetBattleFieldIndexFromUnitName(name)
    local nameFromIndex
    for index = 1, T.GetNumBattlefieldScores() do
        nameFromIndex = T.GetBattlefieldScore(index)
        if nameFromIndex == name then
            return index
        end
    end
    return nil
end

function LRI:UpdateRoleIcon()
    local lfdrole = self.GroupRoleIndicator
    if not self.db then return end
    local db = self.db.roleIcon
    if (not db) or (db and not db.enable) then
        lfdrole:Hide()
        return
    end
    
    local isInstance, instanceType = T.IsInInstance()
    local role
    if isInstance and instanceType == "pvp" then
        local name = T.GetUnitName(self.unit, true)
        local index = GetBattleFieldIndexFromUnitName(name)
        if index then
            local _, _, _, _, _, _, _, _, classToken, _, _, _, _, _, _, talentSpec = T.GetBattlefieldScore(index)
            if classToken and talentSpec then
                role = specNameToRole[classToken][talentSpec]
            else
                role = T.UnitGroupRolesAssigned(self.unit)
            end
        else
            role = T.UnitGroupRolesAssigned(self.unit)
        end
    else
        role = T.UnitGroupRolesAssigned(self.unit)
        if self.isForced and role == "NONE" then
            local rnd = T.random(1, 3)
            role = rnd == 1 and "TANK" or (rnd == 2 and "HEALER" or (rnd == 3 and "DAMAGER"))
        end
    end
    if (self.isForced or T.UnitIsConnected(self.unit)) and ((role == "DAMAGER" and db.damager) or (role == "HEALER" and db.healer) or (role == "TANK" and db.tank)) then
        lfdrole:SetTexture(LUI.rolePaths[E.db.lui.modules.unitframes.icons["roleIcons"]][role])
        lfdrole:Show()
    else
        lfdrole:Hide()
    end
end

local function SetRoleIcons()
    for _, header in T.pairs(UF.headers) do
        local name = header.groupName
        for i = 1, header:GetNumChildren() do
            local group = select(i, header:GetChildren())
            for j = 1, group:GetNumChildren() do
                local unitbutton = select(j, group:GetChildren())
                if unitbutton.GroupRoleIndicator and unitbutton.GroupRoleIndicator.Override then
                    unitbutton.GroupRoleIndicator.Override = LRI.UpdateRoleIcon
                    unitbutton:UnregisterEvent("UNIT_CONNECTION")
                    unitbutton:RegisterEvent("UNIT_CONNECTION", LRI.UpdateRoleIcon)
                end
            end
        end
    end
    UF:UpdateAllHeaders()
end

function LRI:Initialize()
    self:RegisterEvent("PLAYER_ENTERING_WORLD", SetRoleIcons)
end

local function InitializeCallback()
    if IsAddOnLoaded("ElvUI_SLE") then return end
    LRI:Initialize()
end

E:RegisterModule(LRI:GetName(), InitializeCallback)