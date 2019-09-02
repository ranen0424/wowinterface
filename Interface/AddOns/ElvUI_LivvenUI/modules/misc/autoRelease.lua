--来源：LivvenUI
--作者：L
--修改：
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "general", "autoRelease") then return end
local LMI = E:GetModule("LuiMisc")

function LMI:LoadAutoRelease()
    local autoreleasepvp = T.CreateFrame("frame")
    autoreleasepvp:RegisterEvent("PLAYER_DEAD")
    autoreleasepvp:SetScript("OnEvent", function(self, event)
        local inInstance, instanceType = T.IsInInstance()
        if (inInstance and (instanceType == "pvp")) then
            local soulstone = T.GetSpellInfo(20707)
            if ((E.myclass ~= "SHAMAN") and not (soulstone and T.AuraUtil_FindAuraByName(soulstone, "player"))) then
                T.RepopMe()
            end
        end
        
        for index = 1, T.GetNumWorldPVPAreas() do
            local pvpID, localizedName, isActive, canQueue, startTime, canEnter = T.GetWorldPVPAreaInfo(index)
            if (T.GetRealZoneText() == localizedName and isActive) then
                T.RepopMe()
            end
        end
    end)
end
