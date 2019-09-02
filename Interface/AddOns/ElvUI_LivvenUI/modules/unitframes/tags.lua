local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local ElvUF = E.oUF
assert(ElvUF, "ElvUI was unable to locate oUF.")

local function HealthSmart(style, min, max)
    assert(style, 'Invalid T.string_format style: ' .. style)
    assert(min, 'You need to provide a current value. Usage: HealthSmart(style, min, max)')
    assert(max, 'You need to provide a maximum value. Usage: HealthSmart(style, min, max)')
    
    if max == 0 then max = 1 end
    
    local per = min / max * 100
    if style == "HEALTH_SMART_LEFT" then
        if per == 100 then
            return T.string_format("%s", E:ShortValue(min))
        elseif per >= 10 and per < 100 then
            return T.string_format("%.1f%% | %s", per, E:ShortValue(min))
        elseif per > 0 and per < 10 then
            return T.string_format("%.2f%% | %s", per, E:ShortValue(min))
        else
            return nil
        end
    elseif style == "HEALTH_SMART_RIGHT" then
        if per == 100 then
            return T.string_format("%s", E:ShortValue(min))
        elseif per >= 10 and per < 100 then
            return T.string_format("%s | %.1f%%", E:ShortValue(min), per)
        elseif per > 0 and per < 10 then
            return T.string_format("%s | %.2f%%", E:ShortValue(min), per)
        else
            return nil
        end
    end
end

local function PowerSmart(min, max)
    assert(min, 'You need to provide a current value. Usage: HealthSmart(style, min, max)')
    assert(max, 'You need to provide a maximum value. Usage: HealthSmart(style, min, max)')
    local per = min / max * 100
    if per >= 10 and per < 100 then
        return T.string_format("%.1f%%", per)
    elseif per > 0 and per < 10 then
        return T.string_format("%.2f%%", per)
    else
        return T.string_format("%.0f%%", per)
    end
end

ElvUF.Tags.Events["health:smart-left"] = "UNIT_HEALTH_FREQUENT UNIT_MAXHEALTH UNIT_CONNECTION PLAYER_FLAGS_CHANGED"
ElvUF.Tags.Methods["health:smart-left"] = function(unit)
    local status = T.UnitIsDead(unit) and L["Dead"] or T.UnitIsGhost(unit) and L["Ghost"] or not T.UnitIsConnected(unit) and L["Offline"]
    
    if (status) then
        return status
    else
        return HealthSmart("HEALTH_SMART_LEFT", T.UnitHealth(unit), T.UnitHealthMax(unit))
    end
end

ElvUF.Tags.Events["health:smart-right"] = "UNIT_HEALTH_FREQUENT UNIT_MAXHEALTH UNIT_CONNECTION PLAYER_FLAGS_CHANGED"
ElvUF.Tags.Methods["health:smart-right"] = function(unit)
    local status = T.UnitIsDead(unit) and L["Dead"] or T.UnitIsGhost(unit) and L["Ghost"] or not T.UnitIsConnected(unit) and L["Offline"]
    
    if (status) then
        return status
    else
        return HealthSmart("HEALTH_SMART_RIGHT", T.UnitHealth(unit), T.UnitHealthMax(unit))
    end
end

ElvUF.Tags.Events["power:smart"] = "UNIT_DISPLAYPOWER UNIT_POWER_FREQUENT UNIT_MAXPOWER"
ElvUF.Tags.Methods["power:smart"] = function(unit)
    local pType = T.UnitPowerType(unit)
    local min = T.UnitPower(unit, pType)
    if min == 0 then
        return nil
    else
        local max = T.UnitPowerMax(unit, pType)
        if pType == 0 then
            return PowerSmart(min, max)
        else
            return T.string_format("%s", min)
        end
    end
end
