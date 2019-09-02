-- 来源：爱不易
-- 作者：爱不易
-- 链接：
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "raid", "teamStats") then return end

local LTS = E:NewModule("LuiTeamStats", "AceEvent-3.0", "AceTimer-3.0")

local InspectLess = LibStub("LibInspectLess-1.0")

LTS.names = {}
LTS.db = TeamStatsDB
if LTS.db == nil then
    LTS.db = {
        players = {}
    }
end

local CHECK_DELAY = 3
local CHECK_INTERVAL = 1.5
local INSPECT_TIMEOUT = 3
local MAX_KEEP_DAYS = 2
local PLAYER_REALM = GetRealmName()

local function GetPlayerData(name)
    if LTS.names[name] ~= nil then
        return LTS.db.players[name]
    end
end

local function UnitFullName(unit)
    if not unit then return UNKNOWNOBJECT end
    local name, realm = UnitName(unit)
    if not realm or realm == "" then
        if not PLAYER_REALM or PLAYER_REALM == "" then
            PLAYER_REALM = GetRealmName()
        end
        realm = PLAYER_REALM
    end
    return name .. "-" .. realm
end

local function GetAchieveOrStatById(id, isStat, isPlayer)
    local func
    if id < 0 then isStat = false id = -id end
    if isStat then
        local info = isPlayer and GetStatistic(id) or GetComparisonStatistic(id)
        if not info or info == "--" then
            return 0
        elseif info:find("MoneyFrame") then
            local _, _, gold = info:find("(%d*)/TInterface\\MoneyFrame\\UI%-GoldIcon")
            return gold or 0
        else
            return tonumber(info) or info
        end
    else
        local completed, month, day, year
        if isPlayer then
            _, _, _, completed, month, day, year = GetAchievementInfo(id)
        else
            completed, month, day, year = GetAchievementComparisonInfo(id)
        end
        return completed and floor(time({year = 2000 + year, month = month, day = day}) / 86400) or 0
    end
end

local SLOT_NAME = {"头", "项", "肩", "", "胸", "腰", "裤", "鞋", "腕", "手", "戒", "戒", "饰", "饰", "披", "武", "副", "", "", }

local function SaveGearScore(name, unit, isPlayer)
    local player = GetPlayerData(name)
    if (player) then
        local gem_info, waist_extra_slot = U1GetUnitGemInfo(unit)
        local total_enchant, has_enchant, missing_enchant = U1GetUnitEnchantInfo(unit, waist_extra_slot)
        player.gem_info = gem_info
        
        if (not player.gsGot) then
            local avgLevel, color, pvp, totalLevel, count, slotCount, itemLinks = U1GetInventoryLevel(unit, true)
            if avgLevel and avgLevel > 0 then
                player.legends = nil
                for id, link in pairs(itemLinks) do
                    local _, _, quality = GetItemInfo(link)
                    if quality == 5 then
                        if player.legends then
                            player.legends = player.legends .. "^" .. SLOT_NAME[id] .. "^" .. link
                            break
                        else
                            player.legends = SLOT_NAME[id] .. "^" .. link
                        end
                    end
                end
                player.gs = avgLevel
                player.re = pvp
                player.bad = count ~= slotCount
                player.gsGot = true
                LTS:UIUpdate(not isPlayer)
            end
        end
    end
end

local function SaveTalents(name, unit, isPlayer)
    local player = GetPlayerData(name)
    if not player then return end
    local inspecting = not isPlayer
    if (inspecting) then
        local active = GetInspectSpecialization(unit)
        active = (active and active > 0) and select(2, GetSpecializationInfoByID(active))
        player.talent1 = active
    else
        local active = GetActiveSpecGroup()
        active = active and GetSpecialization(false, false, active)
        active = active and select(2, GetSpecializationInfo(active))
        player.talent1 = active
    end
    player.inspected = time()
    LTS:UIUpdate()
    LTS:SetStatusText("已获得[" .. (player.name or name or UNKNOWNOBJECT) .. "]的天赋和GS")
end

local function SaveAchievements(name, unit, isPlayer)
    local player = LTS.db.players[name]
    local list = {}
    for i, id in ipairs(LTS.db.map) do
        list[i] = GetAchieveOrStatById(id, true, isPlayer)
    end
    player.stats = list
    player.compared = time()
    LTS:UIUpdate()
    LTS:SetStatusText("已获得[" .. (player.name or name or UNKNOWNOBJECT) .. "]的成就资料")
end

function LTS:DEFAULT_EVENT(event, ...)
    debug(event, ...)
end

function LTS:PLAYER_LOGIN()
    self:StartCheckTimer(CHECK_DELAY)
end

function LTS:UNIT_INVENTORY_CHANGED(event, unitId)
    local player = LTS.db.players[UnitFullName(unitId)]
    if player then
        player.inspected = false
        player.gsGot = false
        self:StartCheckTimer(1)
    end
end

function LTS:PLAYER_EQUIPMENT_CHANGED(event, unitId)
    self:UNIT_INVENTORY_CHANGED(event, "player")
end

function LTS:PLAYER_SPECIALIZATION_CHANGED(event, unit)
    return LTS:UNIT_INVENTORY_CHANGED(event, unit)
end

function LTS:GROUP_ROSTER_UPDATE()
    if not IsInGroup() then
        LTS.solo = true
    else
        if LTS.solo then
            LTS.solo = nil
            for name, _ in pairs(LTS.names) do
                LTS.names[name] = nil
            end
        end
    end
    self:StartUpdateNameTimer(0.2)
end

LTS.UNIT_NAME_UPDATE = LTS.GROUP_ROSTER_UPDATE
LTS.UNIT_PORTRAIT_UPDATE = LTS.GROUP_ROSTER_UPDATE

function LTS:VARIABLES_LOADED()
    TeamStatsDB = LTS.db
    LTS.db.names = LTS.db.names or LTS.names
    LTS.names = LTS.db.names
    setmetatable(LTS.db.players, {__index = function(self, key)self[key] = {} return self[key] end})
    
    self:ReMapData()
    
    local now = time()
    for k, v in pairs(LTS.db.players) do
        if not v.compared or now - v.compared > MAX_KEEP_DAYS * 24 * 60 * 60 then
            LTS.db.players[k] = nil
        end
    end
    
    self:GROUP_ROSTER_UPDATE()
    if TeamStatsUI_CreateMinimapButton then TeamStatsUI_CreateMinimapButton() end
end

function LTS:PLAYER_REGEN_DISABLED()
    LTS:SetStatusText(L["StatusPaused"])
end

function LTS:PLAYER_REGEN_ENABLED()
    if LTS.queueForNameUpdate then
        LTS:StartUpdateNameTimer(CHECK_DELAY)
        LTS.queueForNameUpdate = nil
    else
        LTS:StartCheckTimer(CHECK_DELAY)
    end
end

local party_units, raid_units = {"player"}, {}
for i = 1, MAX_PARTY_MEMBERS do table.insert(party_units, "party" .. i) end
for i = 1, MAX_RAID_MEMBERS do table.insert(raid_units, "raid" .. i) end
local current_names = {}
function LTS:OnUpdateNameTimer()
    self.updateNameTimer = nil
    local units = IsInRaid() and raid_units or party_units
    for _, unit in ipairs(units) do
        if UnitExists(unit) then
            if UnitName(unit) == UNKNOWNOBJECT or not UnitClass(unit) then
                self:StartUpdateNameTimer(0.2)
                return
            end
            local fullname = UnitFullName(unit)
            local player = LTS.db.players[fullname]
            if not player then
                player = {}
                LTS.db.players[fullname] = player
            end
            player.name = UnitName(unit)
            player.heath = UnitHealthMax(unit)
            player.class = select(2, UnitClass(unit))
            current_names[fullname] = true
        end
    end
    
    for name, _ in pairs(LTS.names) do
        if not current_names[name] then
            LTS.names[name] = false
        end
    end
    
    local now = time()
    for name, _ in pairs(current_names) do
        if not LTS.names[name] then
            local player = LTS.db.players[name]
            if player.inspected and now - player.inspected > 60 * 60 then
                player.inspected = false
                player.gsGot = false
            end
        end
        LTS.names[name] = true
        current_names[name] = nil
    end
    
    if (false and DEBUG_MODE) then
        for k, v in pairs(LTS.db.players) do
            LTS.names[k] = true
        end
    end
    
    self:StartCheckTimer(0.2)
    LTS:UIUpdateNames()
end

function LTS:ReMapData()
    local oldMap = LTS.db.map
    local mapping = {}
    for _, tab in ipairs(LTS.TABS) do
        for _, id in pairs(tab.ids) do
            if type(id) == "table" then
                for _, iid in ipairs(id) do
                    if type(iid) == "table" then
                        for _, iiid in ipairs(iid) do
                            mapping[#mapping + 1] = iiid
                        end
                    else
                        mapping[#mapping + 1] = iid
                    end
                end
            else
                mapping[#mapping + 1] = id
            end
        end
    end
    for i = 1, #LTS.VERSION_BOSSES, 2 do
        mapping[#mapping + 1] = LTS.VERSION_BOSSES[i]
    end
    
    table.sort(mapping)
    
    local rebuild = false
    if oldMap == nil then
        assert(#LTS.db.players == 0, "Mapping info is missing, this should not happen.")
        table.wipe(LTS.db.players)
        rebuild = true
    else
        for i, id in ipairs(oldMap) do
            if mapping[i] ~= id then
                rebuild = true
                break
            end
        end
    end
    
    if rebuild then
        LTS.db.map = mapping
        
        local oldStats = {}
        for _, player in pairs(LTS.db.players) do
            if player.stats then
                table.wipe(oldStats)
                for i, value in ipairs(player.stats) do
                    if oldMap[i] then oldStats[oldMap[i]] = value end
                end
                for i, id in ipairs(mapping) do
                    local value = oldStats[id]
                    if value == nil then
                        player.stats[i] = 0
                        player.compared = nil
                    else
                        player.stats[i] = value
                    end
                end
            end
        end
        oldStats = nil
    else
        mapping = nil
    end
    
    LTS.mirror = LTS.mirror or {}
    table.wipe(LTS.mirror)
    for i = 1, #LTS.db.map do
        LTS.mirror[LTS.db.map[i]] = i
    end
end

function LTS:StartCheckTimer(delay)
    self.checkTimer = self.checkTimer or self:ScheduleTimer("OnCheck", delay)
end

function LTS:StartUpdateNameTimer(delay)
    if InCombatLockdown() then
        self.queueForNameUpdate = true
    else
        self.updateNameTimer = self.updateNameTimer or self:ScheduleTimer("OnUpdateNameTimer", delay)
    end
end

function LTS:OnCheck()
    self.checkTimer = nil
    
    if InCombatLockdown() then
        LTS:PLAYER_REGEN_DISABLED()
        return
    end
    
    local units = IsInRaid() and raid_units or party_units
    
    local allDone = true
    local gotOne = false
    for i = 1, #units do
        local unit = units[i]
        if not UnitExists(unit) then break end
        
        local name = UnitFullName(unit)
        local curr = LTS.db.players[name]
        if UnitIsUnit("player", unit) then
            if not curr.inspected then
                gotOne = true
                SaveTalents(name, unit, true)
                SaveGearScore(name, unit, true)
            end
            
            if not curr.compared then
                gotOne = true
                SaveAchievements(name, unit, true)
            end
        
        else
            if not curr.compared then
                allDone = false
                if self:CanCompare(unit) then
                    gotOne = true
                    if not self.comparing then
                        self.comparing = name
                        self.comparingUnit = unit
                        RequestProtection:Call("SetAchievementComparisonUnit", unit, self.CompareCallback)
                    end
                end
            end
            
            if not curr.inspected then
                allDone = false
                if InspectLess:IsNotBlocking() and (InspectLess:IsReady() or not InspectLess:GetGUID()) then
                    if self:CanInspect(unit) then
                        gotOne = true
                        NotifyInspect(unit)
                    end
                end
            end
        end
    end
    
    if allDone then
        LTS:SetStatusText(L["StatusAllDone"])
    else
        LTS:StartCheckTimer(CHECK_INTERVAL)
        LTS:SetStatusText(gotOne and L["StatusGetting"] or L["StatusCannotGet"])
    end
end

function LTS:CanCompare(unit)
    return (not AchievementFrame or not AchievementFrameComparison:IsVisible()) and UnitIsVisible(unit)
end
function LTS:CanInspect(unit)
    return (not InspectFrame or not InspectFrame:IsShown()) and (not Examiner or not Examiner:IsShown()) and UnitIsVisible(unit) and CanInspect(unit)
end

local i = 1
function LTS.CompareCallback(success, cause, ...)
    if success then
        SaveAchievements(LTS.comparing, LTS.comparingUnit, false)
    end
    LTS.comparing = false
end

function LTS:InspectLess_InspectItemReady(event, unit, guid)
    local name = UnitFullName(unit)
    if LTS.names[name] ~= nil then
        SaveGearScore(name, unit, false)
    end
end

function LTS:InspectLess_InspectReady(event, unit, guid, done)
    if unit then
        local name = UnitFullName(unit)
        if LTS.names[name] ~= nil then
            SaveTalents(name, unit, false)
        end
    end
end

InspectLess.RegisterCallback(LTS, "InspectLess_InspectItemReady")
InspectLess.RegisterCallback(LTS, "InspectLess_InspectReady")

function LTS:LoadTeamStats()
    local f = CreateFrame("Frame")
    
    f.LTS = LTS or f
    f:SetScript("OnEvent", function(self, event, ...)
        local func = self.LTS[event]
        func(self.LTS, event, ...)
    end)
    f:RegisterEvent("PLAYER_LOGIN")
    f:RegisterEvent("GROUP_ROSTER_UPDATE")
    f:RegisterEvent("UNIT_NAME_UPDATE")
    f:RegisterEvent("UNIT_PORTRAIT_UPDATE")
    f:RegisterEvent("PLAYER_REGEN_DISABLED")
    f:RegisterEvent("PLAYER_REGEN_ENABLED")
    f:RegisterEvent("UNIT_INVENTORY_CHANGED")
    f:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
    f:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
end

function LTS:Initialize()
    if E.db.lui.modules.raid["teamStats"] then
        self:VARIABLES_LOADED()
        self:LoadTeamStats()
        self:LoadTeamStatsUI()
    end
end

local function InitializeCallback()
	LTS:Initialize()
end

E:RegisterModule(LTS:GetName(), InitializeCallback)
