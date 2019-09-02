local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if IsAddOnLoaded("TinyInspect") then return end
if LUI:CheckDB("db", "modules", "armory", "inspect", "enable") then return end
local LI = E:GetModule("LuiInspect")

local LibEvent = LibStub:GetLibrary("LibEvent-Lui")
local LibSchedule = LibStub:GetLibrary("LibSchedule-Lui")

local members, numMembers = {}, 0

local function InspectDone()
    for guid, v in pairs(members) do
        if (not v.done) then
            return false
        end
    end
    return true
end

local function GetMembers(num)
    local unit, guid
    local temp = {}
    for i = 1, num do
        unit = "party"..i
        guid = UnitGUID(unit)
        if (guid) then temp[guid] = unit end
    end
    for guid, v in pairs(members) do
        if (not temp[guid]) then
            members[guid] = nil
        end
    end
    for guid, unit in pairs(temp) do
        if (members[guid]) then
            members[guid].done = false
            members[guid].unit = unit
            members[guid].class = select(2, UnitClass(unit))
        else
            members[guid] = {
                done   = false,
                unit   = unit,
                class  = select(2, UnitClass(unit)),
                ilevel = -1,
            }
        end
        members[guid].name, members[guid].realm = UnitName(unit)
        if (not members[guid].realm) then
            members[guid].realm = GetRealmName()
        end
    end
end

local function SendInspect()
    if (GetInspecting()) then return end
    for guid, v in pairs(members) do
        if ((not v.done or v.ilevel <= 0) and UnitIsConnected(v.unit) and CanInspect(v.unit)) then
            ClearInspectPlayer()
            NotifyInspect(v.unit)
            LibEvent:trigger("PARTY_INSPECT_STARTED", v)
            return v
        end
    end
end

local SendAddonMessage = C_ChatInfo and C_ChatInfo.SendAddonMessage or function() end

local function SendPlayerInfo()
    local ilvl = select(2, GetAverageItemLevel())
    local spec = select(2, GetSpecializationInfo(GetSpecialization()))
    SendAddonMessage("LivvenUI", format("%s|%s|%s", "LV", ilvl, spec or ""), "PARTY")
end

local label = "<" .. (ITEM_LEVEL_ABBR or "ItemLevel") .. ">"

local function GetRoleIcon(unit)
    local role = UnitGroupRolesAssigned(unit)
    if (role == "TANK") then
        return "|TInterface\\LFGFrame\\UI-LFG-ICON-PORTRAITROLES:14:14:0:0:64:64:0:19:22:41|t"
    elseif (role == "HEALER") then
        return "|TInterface\\LFGFrame\\UI-LFG-ICON-PORTRAITROLES:14:14:0:0:64:64:20:39:1:20|t"
    elseif (role == "DAMAGER") then
        return "|TInterface\\LFGFrame\\UI-LFG-ICON-PORTRAITROLES:14:14:0:0:64:64:20:39:22:41|t"
    else
        return ""
    end
end

local function PrintItemLevel(members)
    local num, pattern = 32, "  %s %.1f |c%s%s|r |cffcccccc%s|r"
    for _, v in pairs(members) do
        if (v.done or v.slevel or v.ilevel > 0) then
            DEFAULT_CHAT_FRAME:AddMessage(format(pattern,
                GetRoleIcon(v.unit),
                v.slevel or v.ilevel,
                select(4, GetClassColor(v.class)),
                v.name,
                v.spec and "("..v.spec..")" or ""
            ), 1, 0.82, 0)
        end
    end
end

local lastBroadcastTimer = 0
local function filter(self, event, msg, name, ...)
    if (string.find(msg, label)) then
        local uname = UnitName("player") .. "-" .. GetRealmName()
        if (name ~= uname) then
            lastBroadcastTimer = GetTime()
        end
    end
    return false, msg, name, ...
end
ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", filter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT", filter)

local function SendItemLevel(members)
    if (GetTime() - lastBroadcastTimer < 5) then return end
    local channel = IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and "INSTANCE_CHAT" or "PARTY"
    local num, pattern = 30, "%s %.1f %s %s"
    for _, v in pairs(members) do
        if (v.done or v.slevel or v.ilevel > 0) then
            SendChatMessage(format(pattern, label, v.slevel or v.ilevel, v.name, v.spec and "("..v.spec..")" or ""), channel)
        end
    end
end

function LI:LoadInspectParty()
    LibEvent:attachEvent("CHAT_MSG_ADDON", function(self, prefix, text, channel, sender)
        if (prefix == "LivvenUI" and channel == "PARTY") then
            local flag, ilvl, spec = strsplit("|", text)
            if (flag ~= "LV") then return end
            local name, realm = strsplit("-", sender)
            for guid, v in pairs(members) do
                if (v.name == name and v.realm == realm) then
                    v.slevel = ilvl
                    v.done = true
                end
            end
        end
    end)
    
    LibEvent:attachTrigger("UNIT_INSPECT_READY", function(self, data)
        local member = members[data.guid]
        if (member) then
            member.ilevel = data.ilevel
            member.spec = data.spec
            member.name = data.name
            member.class = data.class
            member.realm = data.realm
            member.done = true
        end
    end)
    
    LibEvent:attachEvent("GROUP_ROSTER_UPDATE", function(self)
        if (IsInRaid()) then return end
        local numCurrent = GetNumSubgroupMembers()
        if (numCurrent > numMembers) then
            GetMembers(numCurrent)
            members[UnitGUID("player")] = {
                name   = UnitName("player"),
                class  = select(2, UnitClass("player")),
                ilevel = select(2, GetAverageItemLevel()),
                done   = true,
                unit   = "player",
                spec   = select(2, GetSpecializationInfo(GetSpecialization())),
            }
            SendPlayerInfo()
            LibSchedule:AddTask({
                override  = true,
                identity  = "InspectParty",
                timer     = 1,
                elasped   = 1,
                begined   = GetTime() + 2,
                expired   = GetTime() + 30,
                onTimeout = function(self)
                    if (GetNumSubgroupMembers()==0) then return end
                    LibEvent:trigger("PARTY_INSPECT_TIMEOUT", members)
                end,
                onExecute = function(self)
                    if (IsInRaid()) then return true end
                    if (InspectDone()) then
                        LibEvent:trigger("PARTY_INSPECT_DONE", members)
                        return true
                    end
                    SendInspect()
                end,
            })
        end
        numMembers = numCurrent
    end)
    
    LibEvent:attachTrigger("PARTY_INSPECT_DONE, PARTY_INSPECT_TIMEOUT", function(self, members)
        if E.db.lui.modules.armory.inspect.EnablePartyItemLevel["SendPartyItemLevelToSelf"] then PrintItemLevel(members) end
        if E.db.lui.modules.armory.inspect.EnablePartyItemLevel["SendPartyItemLevelToParty"] then SendItemLevel(members) end
    end)
end
