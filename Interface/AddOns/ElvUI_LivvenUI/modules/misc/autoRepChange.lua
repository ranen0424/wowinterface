local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "general", "autoRepChange") then return end
local LMI = E:GetModule("LuiMisc")

local incpat = T.string_gsub(T.string_gsub(FACTION_STANDING_INCREASED, "(%%s)", "(.+)"), "(%%d)", "(.+)")
local changedpat = T.string_gsub(T.string_gsub(FACTION_STANDING_CHANGED, "(%%s)", "(.+)"), "(%%d)", "(.+)")
local decpat = T.string_gsub(T.string_gsub(FACTION_STANDING_DECREASED, "(%%s)", "(.+)"), "(%%d)", "(.+)")

function LMI:SetWatchedFactionOnReputationBar(event, msg)
    if not msg or not incpat or not changedpat or not decpat then return end
    local _, _, faction = string.find(msg, incpat)
    -- if not faction then
    --     _, _, faction = string.find(msg, changedpat)
    -- end
    if not faction then
        _, _, faction = string.find(msg, decpat)
    end
    if faction then
        if faction == GUILD then
            faction = GetGuildInfo("player")
        end
        local active = GetWatchedFactionInfo()
        for factionIndex = 1, GetNumFactions() do
            local name = GetFactionInfo(factionIndex)
            if name == faction and name ~= active then
                local inactive = IsFactionInactive(factionIndex) or SetWatchedFactionIndex(factionIndex)
                break
            end
        end
    end
end

function LMI:LoadAutoRepChange()
    self:RegisterEvent("CHAT_MSG_COMBAT_FACTION_CHANGE", "SetWatchedFactionOnReputationBar")
end
