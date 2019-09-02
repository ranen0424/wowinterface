local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "raid", "raidManager") then return end
local LRRI = E:NewModule("LuiRaidRoleIcons", "AceEvent-3.0")

local _G = _G
local PLAYER_REALM = T.string_gsub(E.myrealm, "[%s%-]", "")

function LRRI:CreateAndUpdateIcons()
    local members = T.GetNumGroupMembers()
    for i = 1, members do
        local frame = _G["RaidGroupButton" .. i]
        if not frame or (frame and not frame.subframes) then E:Delay(1, LRRI.CreateAndUpdateIcons) return end
        local parent = frame.subframes.class
        if not frame.luiicon then
            frame.luiicon = T.CreateFrame("Frame", nil, frame)
            frame.luiicon:SetSize(14, 14)
            T.RaiseFrameLevel(frame.luiicon)
            frame.luiicon.texture = frame.luiicon:CreateTexture(nil, "OVERLAY")
            frame.luiicon.texture:SetAllPoints(frame.luiicon)
        end
        frame.luiicon:SetPoint("LEFT", parent, "LEFT", -93, 0)
        
        local unit = T.IsInRaid() and "raid" or "party"
        local role = T.UnitGroupRolesAssigned(unit .. i)
        local name, realm = T.UnitName(unit .. i)
        local texture = ""
        if (role and role ~= "NONE") and name then
            name = (realm and realm ~= "") and name .. "-" .. realm or name .. "-" .. PLAYER_REALM
            texture = LUI.rolePaths[E.db.lui.modules.unitframes.icons["roleIcons"]][role]
        end
        frame.luiicon.texture:SetTexture(texture)
    end
end

function LRRI:RaidLoaded(event, addon)
    if addon == "Blizzard_RaidUI" and not IsAddOnLoaded("ElvUI_SLE") then
        T.hooksecurefunc("RaidGroupFrame_Update", function()
            E:Delay(.1, LRRI.CreateAndUpdateIcons)
        end)
        self:UnregisterEvent(event)
    end
end

LRRI:RegisterEvent("ADDON_LOADED", "RaidLoaded")
