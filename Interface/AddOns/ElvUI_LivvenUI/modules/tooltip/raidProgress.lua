local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "tooltip", "raidProg", "enable") then return end
local LRP = E:NewModule("LuiRaidProgress", "AceHook-3.0", "AceEvent-3.0")
local TT = E:GetModule("Tooltip")

local _G = _G

LRP.RP = {
	["tiers"] = { "Uldir", "BattleOfDazaralor", "CrucibleOfStorms", "EternalPalace" },
	["levels"] = { "Mythic", "Heroic", "Normal", "LFR" },
	["Raid"] = {
		["Uldir"] = {
			["Mythic"] = {
				12789, 12793, 12797, 12801, 12805, 12811, 12816, 12820,
			},
			["Heroic"] = {
				12788, 12792, 12796, 12800, 12804, 12810, 12815, 12819,
			},
			["Normal"] = {
				12787, 12791, 12795, 12799, 12803, 12809, 12814, 12818,
			},
			["LFR"] = {
				12786, 12790, 12794, 12798, 12802, 12808, 12813, 12817,
			},
		},
		["BattleOfDazaralor"] = {
			["Alliance"] = {
				["Mythic"] = {
					13331, 13353, 13348, 13362, 13366, 13370, 13374, 13378, 13382,
				},
				["Heroic"] = {
					13330, 13351, 13347, 13361, 13365, 13369, 13373, 13377, 13381,
				},
				["Normal"] = {
					13329, 13350, 13346, 13359, 13364, 13368, 13372, 13376, 13380,
				},
				["LFR"] = {
					13328, 13349, 13344, 13358, 13363, 13367, 13371, 13375, 13379,
				},
			},
			["Horde"] = {
				["Mythic"] = {
					13331, 13336, 13357, 13374, 13378, 13382, 13362, 13366, 13370,
				},
				["Heroic"] = {
					13330, 13334, 13356, 13373, 13377, 13381, 13361, 13365, 13369,
				},
				["Normal"] = {
					13329, 13333, 13355, 13372, 13376, 13380, 13359, 13364, 13368,
				},
				["LFR"] = {
					13328, 13332, 13354, 13371, 13375, 13379, 13358, 13363, 13367,
				},
			},
		},
		["CrucibleOfStorms"] = {
			["Mythic"] = {
				13407, 13413,
			},
			["Heroic"] = {
				13406, 13412,
			},
			["Normal"] = {
				13405, 13411,
			},
			["LFR"] = {
				13404, 13408,
			},
		},
		["EternalPalace"] = {
			["Mythic"] = {
				13590, 13594, 13598, 13603, 13607, 13611, 13615, 13619,
			},
			["Heroic"] = {
				13589, 13593, 13597, 13602, 13606, 13610, 13614, 13618,
			},
			["Normal"] = {
				13588, 13592, 13596, 13601, 13605, 13609, 13613, 13617,
			},
			["LFR"] = {
				13587, 13591, 13595, 13600, 13604, 13608, 13612, 13616,
			},
		},
	},
}

local playerGUID = T.UnitGUID("player")
local playerFaction = T.UnitFactionGroup("player")
local progressCache = {}

local function GetLevelColorString(level, short)
    local color = "ff8000"
    if level == "Mythic" then
        color = "a335ee"
    elseif level == "Heroic" then
        color = "0070dd"
    elseif level == "Normal" then
        color = "1eff00"
    end
    
    if short then
        return "|cff" .. color .. T.string_sub(level, 1, 1) .. "|r"
    else
        return "|cff" .. color .. L[level] .. "|r"
    end
end

function LRP:UpdateProgression(guid, faction)
    local statFunc = guid == playerGUID and T.GetStatistic or T.GetComparisonStatistic
    
    progressCache[guid] = progressCache[guid] or {}
    progressCache[guid].info = progressCache[guid].info or {}
    progressCache[guid].timer = T.GetTime()
    
    if E.db.lui.modules.tooltip.raidProg.enable then
        progressCache[guid].info.Raid = {}
        for _, tier in T.ipairs(self.RP.tiers) do
            if E.db.lui.modules.tooltip.raidProg[tier] then
                progressCache[guid].info.Raid[tier] = {}
                local bosses = tier == "BattleOfDazaralor" and self.RP.Raid[tier][faction] or self.RP.Raid[tier]
                for _, level in T.ipairs(self.RP.levels) do
                    local highest = 0
                    for _, statId in T.ipairs(bosses[level]) do
                        local kills = T.tonumber(statFunc(statId), 10)
                        if kills and kills > 0 then
                            highest = highest + 1
                        end
                    end
                    if (highest > 0) then
                        progressCache[guid].info.Raid[tier][level] = ("%d/%d"):format(highest, #bosses[level])
                        if E.db.lui.modules.tooltip.raidProg["onlyHighest"] then
                            if highest == #bosses[level] then
                                break
                            end
                        end
                    end
                end
            end
        end
    end
end

function LRP:SetProgressionInfo(guid, tt)
    if progressCache[guid] then
        local updated = false
        for i = 1, tt:NumLines() do
            local leftTip = _G["GameTooltipTextLeft" .. i]
            local leftTipText = leftTip:GetText()
            local found = false
            if (leftTipText) then
                if E.db.lui.modules.tooltip.raidProg.enable then
                    for _, tier in T.ipairs(self.RP.tiers) do
                        if E.db.lui.modules.tooltip.raidProg[tier] then
                            for _, level in T.ipairs(self.RP.levels) do
                                if (leftTipText:find(L[tier]) and leftTipText:find(L[level])) then
                                    local rightTip = _G["GameTooltipTextRight" .. i]
                                    leftTip:SetText(("%s %s:"):format(L[tier], GetLevelColorString(level, false)))
                                    rightTip:SetText(progressCache[guid].info.Raid[tier][level])
                                    updated = true
                                    found = true
                                    break
                                end
                            end
                            if found then break end
                        end
                    end
                end
            end
        end
        if updated then return end
        if E.db.lui.modules.tooltip.raidProg.enable then
            tt:AddLine(" ")
            tt:AddLine(L["raids"])
            for _, tier in T.ipairs(self.RP.tiers) do
                if E.db.lui.modules.tooltip.raidProg[tier] then
                    for _, level in T.ipairs(self.RP.levels) do
                        if (progressCache[guid].info["Raid"][tier][level]) then
                            tt:AddDoubleLine(("%s %s:"):format(L[tier], GetLevelColorString(level, false)), GetLevelColorString(level, true) .. " " .. progressCache[guid].info.Raid[tier][level], nil, nil, nil, 1, 1, 1)
                        end
                    end
                end
            end
        end
    end
end

function TT:INSPECT_ACHIEVEMENT_READY(event, GUID)
    if (self.compareGUID ~= GUID) then return end
    local unit = "mouseover"
    if T.UnitExists(unit) then
        local race = select(3, T.UnitRace(unit))
        local faction = race and T.C_CreatureInfo_GetFactionInfo(race).groupTag
        if (faction) then
            LRP:UpdateProgression(GUID, faction)
            _G.GameTooltip:SetUnit(unit)
        end
    end
    T.ClearAchievementComparisonUnit()
    self:UnregisterEvent("INSPECT_ACHIEVEMENT_READY")
end

function LRP.AddInspectInfo(self, tooltip, unit, numTries, r, g, b)
    if T.InCombatLockdown() then return end
    if (not unit) or (numTries > 3) or not T.CanInspect(unit) then return end
    local level = T.UnitLevel(unit)
    local guid = T.UnitGUID(unit)
    if not level or level < _G.MAX_PLAYER_LEVEL then return end
    if not guid then return end
    if not progressCache[guid] or (T.GetTime() - progressCache[guid].timer) > 600 then
        if guid == playerGUID then
            LRP:UpdateProgression(guid, playerFaction)
        else
            T.ClearAchievementComparisonUnit()
            if not self.loadedComparison and select(2, T.IsAddOnLoaded("Blizzard_AchievementUI")) then
                AchievementFrame_DisplayComparison(unit)
                T.HideUIPanel(_G.AchievementFrame)
                T.ClearAchievementComparisonUnit()
                self.loadedComparison = true
            end
            
            self.compareGUID = guid
            if T.SetAchievementComparisonUnit(unit) then
                self:RegisterEvent("INSPECT_ACHIEVEMENT_READY")
            end
            return
        end
    end
    LRP:SetProgressionInfo(guid, tooltip)
end

function LRP:Initialize()
    T.hooksecurefunc(TT, "AddInspectInfo", LRP.AddInspectInfo)
end

local function InitializeCallback()
    if not E.db.lui.modules.tooltip.raidProg["enable"] then return end
    LRP:Initialize()
end

E:RegisterModule(LRP:GetName(), InitializeCallback)
