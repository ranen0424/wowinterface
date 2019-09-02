local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "general", "repPeaksTimes") then return end
local LMI = E:GetModule("LuiMisc")

local NUM_FACTIONS_DISPLAYED = NUM_FACTIONS_DISPLAYED
local REPUTATION_PROGRESS_FORMAT = REPUTATION_PROGRESS_FORMAT

local function RepPeaksTimes()
    local numFactions = T.GetNumFactions()
    local factionOffset = T.FauxScrollFrame_GetOffset(ReputationListScrollFrame)
    for i = 1, NUM_FACTIONS_DISPLAYED, 1 do
        local factionIndex = factionOffset + i
        local factionRow = _G["ReputationBar" .. i]
        local factionBar = _G["ReputationBar" .. i .. "ReputationBar"]
        local factionStanding = _G["ReputationBar" .. i .. "ReputationBarFactionStanding"]
        if factionIndex <= numFactions then
            local factionID = select(14, T.GetFactionInfo(factionIndex))
            if factionID and T.C_Reputation_IsFactionParagon(factionID) then
                local currentValue, threshold = T.C_Reputation_GetFactionParagonInfo(factionID)
                local barValue = T.mod(currentValue, threshold)
                local factionStandingtext = T.string_format(L["RepPeaksTimesText"], T.floor(currentValue / threshold))
                factionBar:SetMinMaxValues(0, threshold)
                factionBar:SetValue(barValue)
                factionStanding:SetText(factionStandingtext)
                factionRow.standingText = factionStandingtext
                factionRow.rolloverText = T.string_format(REPUTATION_PROGRESS_FORMAT, barValue, threshold)
            end
        end
    end
end

function LMI:LoadRepPeaksTimes()
    T.hooksecurefunc("ReputationFrame_Update", RepPeaksTimes)
end
