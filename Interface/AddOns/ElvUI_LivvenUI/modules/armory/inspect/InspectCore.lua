local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if IsAddOnLoaded("TinyInspect") then return end
if LUI:CheckDB("db", "modules", "armory", "inspect", "enable") then return end
local LI = E:NewModule("LuiInspect")

local LibEvent = LibStub:GetLibrary("LibEvent-Lui")
local LibSchedule = LibStub:GetLibrary("LibSchedule-Lui")
local LibItemInfo = LibStub:GetLibrary("LibItemInfo-Lui")

local guids, inspecting = {}, false

function GetInspectInfo(unit, timelimit, checkhp)
    local guid = UnitGUID(unit)
    if (not guid or not guids[guid]) then return end
    if (checkhp and UnitHealthMax(unit) ~= guids[guid].hp) then return end
    if (not timelimit or timelimit == 0) then
        return guids[guid]
    end
    if (guids[guid].timer > time()-timelimit) then
        return guids[guid]
    end
end

function GetInspecting()
    if (InspectFrame and InspectFrame.unit) then
        local guid = UnitGUID(InspectFrame.unit)
        return guids[guid] or { inuse = true }
    end
    if (inspecting and inspecting.expired > time()) then
        return inspecting
    end
end

function ReInspect(unit)
    local guid = UnitGUID(unit)
    if (not guid) then return end
    local data = guids[guid]
    if (not data) then return end
    LibSchedule:AddTask({
        identity  = guid,
        timer     = 0.5,
        elasped   = 0.5,
        expired   = GetTime() + 3,
        data      = data,
        unit      = unit,
        onExecute = function(self)
            local count, ilevel, _, weaponLevel, isArtifact, maxLevel = LibItemInfo:GetUnitItemLevel(self.unit)
            if (ilevel <= 0) then return true end
            if (count == 0 and ilevel > 0) then
                self.data.timer = time()
                self.data.ilevel = ilevel
                self.data.maxLevel = maxLevel
                self.data.weaponLevel = weaponLevel
                self.data.isArtifact = isArtifact
                LibEvent:trigger("UNIT_REINSPECT_READY", self.data)
                return true
            end
        end,
    })
end

function GetInspectSpec(unit)
    if (UnitLevel(unit) > 10) then
        local specID, specName
        if (unit == "player") then
            specID = GetSpecialization()
            specName = select(2, GetSpecializationInfo(specID))
        else
            specID = GetInspectSpecialization(unit)
            if (specID and specID > 0) then
                specName = select(2, GetSpecializationInfoByID(specID))
            end
        end
        return specName
    end
end

hooksecurefunc("ClearInspectPlayer", function()
    inspecting = false
end)

hooksecurefunc("NotifyInspect", function(unit)
    local guid = UnitGUID(unit)
    if (not guid) then return end
    local data = guids[guid]
    if (data) then
        data.unit = unit
        data.name, data.realm = UnitName(unit)
    else
        data = {
            unit   = unit,
            guid   = guid,
            class  = select(2, UnitClass(unit)),
            level  = UnitLevel(unit),
            ilevel = -1,
            spec   = nil,
            hp     = UnitHealthMax(unit),
            timer  = time(),
        }
        data.name, data.realm = UnitName(unit)
        guids[guid] = data
    end
    if (not data.realm) then
        data.realm = GetRealmName()
    end
    data.expired = time() + 3
    inspecting = data
    LibEvent:trigger("UNIT_INSPECT_STARTED", data)
end)

LibEvent:attachEvent("INSPECT_READY", function(this, guid)
    if (not guids[guid]) then return end
    LibSchedule:AddTask({
        identity  = guid,
        timer     = 0.5,
        elasped   = 0.8,
        expired   = GetTime() + 4,
        data      = guids[guid],
        onTimeout = function(self) inspecting = false end,
        onExecute = function(self)
            local count, ilevel, _, weaponLevel, isArtifact, maxLevel = LibItemInfo:GetUnitItemLevel(self.data.unit)
            if (ilevel <= 0) then return true end
            if (count == 0 and ilevel > 0) then
                self.data.timer = time()
                self.data.name = UnitName(self.data.unit)
                self.data.class = select(2, UnitClass(self.data.unit))
                self.data.ilevel = ilevel
                self.data.maxLevel = maxLevel
                self.data.spec = GetInspectSpec(self.data.unit)
                self.data.hp = UnitHealthMax(self.data.unit)
                self.data.weaponLevel = weaponLevel
                self.data.isArtifact = isArtifact
                LibEvent:trigger("UNIT_INSPECT_READY", self.data)
                inspecting = false
                return true
            end
        end,
    })
end)

function LI:Initialize()
    self:LoadEquipmentFlyout()
    if E.db.lui.modules.armory.inspect["ShowCharacterItemSheet"] then
        self:LoadInspectUnit()
        self:LoadInspectUnitGemAndEnchant()
        self:LoadInspectUnitSpecialization()
    end
    if E.db.lui.modules.armory.inspect.EnablePartyItemLevel["enable"] then self:LoadInspectParty() end
    if E.db.lui.modules.armory.inspect["ShowPluginGreenState"] then self:LoadPluginGreenState() end
end

local function InitializeCallback()
    if not E.db.lui.modules.armory.inspect["enable"] or IsAddOnLoaded("TinyInspect") then return end
    LI:Initialize()
end

E:RegisterModule(LI:GetName(), InitializeCallback)