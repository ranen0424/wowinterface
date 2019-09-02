local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "unitframes", "playerframe", "swingBar", "enable") then return end
local PSB = E:NewModule("PlayerSwingBar", "AceEvent-3.0")
local LSM = E.LSM or E.Libs.LSM

local COMBATLOG_FILTER_ME = COMBATLOG_FILTER_ME

local autoshotname = T.GetSpellInfo(75)
local slam = T.GetSpellInfo(1464)
local resetautoshotspells = {}

local swingmode
local starttime, duration
local slamstart

local playerclass
local swingbar

local function OnUpdate()
    if slamstart then return end
    if starttime then
        local spent = T.GetTime() - starttime
        local perc = spent / duration
        swingbar.remainingtext:SetFormattedText("%.1f", duration - spent)
        if perc > 1 then
            return swingbar:Hide()
        else
            swingbar:SetValue(perc)
        end
    end
end

function PSB:PLAYER_ENTER_COMBAT()
    local _, _, offhandlow, offhandhigh = T.UnitDamage("player")
    if T.math_abs(offhandlow - offhandhigh) <= 0.1 or playerclass == "DRUID" then
        swingmode = 0
    end
end

function PSB:PLAYER_LEAVE_COMBAT()
    if not swingmode or swingmode == 0 then
        swingmode = nil
    end
end

function PSB:START_AUTOREPEAT_SPELL()
    swingmode = 1
end

function PSB:STOP_AUTOREPEAT_SPELL()
    if not swingmode or swingmode == 1 then
        swingmode = nil
    end
end

function PSB:COMBAT_LOG_EVENT_UNFILTERED()
    if swingmode ~= 0 then return end
    local timestamp, combatevent, hideCaster, srcGUID, srcName, srcFlags, srcRaidFlags, dstName, dstGUID, dstFlags, dstRaidFlags, spellID, spellName = CombatLogGetCurrentEventInfo()
    if (combatevent == "SWING_DAMAGE" or combatevent == "SWING_MISSED") and (T.bit_band(srcFlags, COMBATLOG_FILTER_ME) == COMBATLOG_FILTER_ME) then
        self:MeleeSwing()
    elseif (combatevent == "SWING_MISSED") and (T.bit_band(dstFlags, COMBATLOG_FILTER_ME) == COMBATLOG_FILTER_ME) and spellID == "PARRY" and duration then
        duration = duration * 0.6
    end
end

function PSB:UNIT_SPELLCAST_SUCCEEDED(event, unit, spell)
    if unit ~= "player" then return end
    if swingmode == 0 then
        if spell == slam and slamstart then
            starttime = starttime + T.GetTime() - slamstart
            slamstart = nil
        end
    elseif swingmode == 1 then
        if spell == autoshotname then
            self:Shoot()
        end
    end
    if resetautoshotspells[spell] then
        swingmode = 1
        self:Shoot()
    end
end

function PSB:UNIT_SPELLCAST_START(event, unit, spell)
    if unit == "player" and spell == slam then
        slamstart = T.GetTime()
    end
end

function PSB:UNIT_SPELLCAST_INTERRUPTED(event, unit, spell)
    if unit == "player" and spell == slam and slamstart then
        slamstart = nil
    end
end

function PSB:UNIT_ATTACK(event, unit)
    if unit == "player" then
        if not swingmode then
            return
        elseif swingmode == 0 then
            duration = T.UnitAttackSpeed("player")
        else
            duration = T.UnitRangedDamage("player")
        end
        swingbar.durationtext:SetFormattedText("%.1f", duration)
    end
end

function PSB:MeleeSwing()
    duration = T.UnitAttackSpeed("player")
    if not duration or duration == 0 then
        duration = nil
        starttime = nil
        swingbar:Hide()
        return
    end
    
    swingbar.durationtext:SetFormattedText("%.1f", duration)
    starttime = T.GetTime()
    swingbar:Show()
end

function PSB:Shoot()
    duration = T.UnitRangedDamage("player")
    if not duration or duration == 0 then
        duration = nil
        starttime = nil
        swingbar:Hide()
        return
    end
    
    swingbar.durationtext:SetFormattedText("%.1f", duration)
    starttime = T.GetTime()
    swingbar:Show()
end

function PSB:LoadPlayerSwingBar(frame)
    local _, c = T.UnitClass("player")
    playerclass = playerclass or c
    
    self:RegisterEvent("PLAYER_ENTER_COMBAT")
    self:RegisterEvent("PLAYER_LEAVE_COMBAT")
    self:RegisterEvent("START_AUTOREPEAT_SPELL")
    self:RegisterEvent("STOP_AUTOREPEAT_SPELL")
    self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
    self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
    if playerclass == "WARRIOR" then
        self:RegisterEvent("UNIT_SPELLCAST_START")
        self:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED")
    end
    self:RegisterEvent("UNIT_ATTACK")
    
    swingbar = T.CreateFrame("Statusbar", "SwingBar", frame)
    swingbar:SetClampedToScreen(true)
    swingbar:CreateBackdrop()
    swingbar:SetStatusBarTexture(E["media"].normTex)
    
    swingbar.bg = swingbar:CreateTexture(nil, "BORDER")
    swingbar.bg:SetAllPoints(swingbar)
    swingbar.bg:SetVertexColor(RAID_CLASS_COLORS[E.myclass].r, RAID_CLASS_COLORS[E.myclass].g, RAID_CLASS_COLORS[E.myclass].b, 0.2)
    swingbar.bg:Hide()
    
    swingbar.remainingtext = swingbar:CreateFontString(nil, "OVERLAY")
    swingbar.remainingtext:FontTemplate(LSM:Fetch("font", E.db.lui.modules.unitframes.playerframe.swingBar["swingBarFontName"]), E.db.lui.modules.unitframes.playerframe.swingBar["swingBarFontSize"], E.db.lui.modules.unitframes.playerframe.swingBar["swingBarFontFlag"])
    swingbar.remainingtext:SetTextColor(1, 1, 1)
    if E.db.lui.modules.unitframes.playerframe.swingBar["remainingText"] then
        swingbar.remainingtext:SetPoint("RIGHT", swingbar, "RIGHT", 4, 0)
    end
    
    swingbar.durationtext = swingbar:CreateFontString(nil, "OVERLAY")
    swingbar.durationtext:FontTemplate(LSM:Fetch("font", E.db.lui.modules.unitframes.playerframe.swingBar["swingBarFontName"]), E.db.lui.modules.unitframes.playerframe.swingBar["swingBarFontSize"], E.db.lui.modules.unitframes.playerframe.swingBar["swingBarFontFlag"])
    swingbar.durationtext:SetTextColor(1, 1, 1)
    if E.db.lui.modules.unitframes.playerframe.swingBar["durationText"] then
        swingbar.durationtext:SetPoint("LEFT", swingbar, "LEFT", 0, 0)
    end

    local holder = CreateFrame("frame", nil, swingbar)
    swingbar.Holder = holder
    if frame then
        swingbar.Holder:Point("TOPLEFT", frame, "BOTTOMLEFT", 0, -(frame.BORDER - frame.SPACING))
        swingbar:Point("BOTTOMLEFT", swingbar.Holder, "BOTTOMLEFT", frame.BORDER, frame.BORDER)
        swingbar:Width(E.db.lui.modules.unitframes.playerframe.swingBar["swingBarWidth"] - ((frame.BORDER + frame.SPACING) * 2))
        swingbar:Height(E.db.lui.modules.unitframes.playerframe.swingBar["swingBarHeight"] - ((frame.BORDER + frame.SPACING) * 2))
        swingbar.Holder:Width(E.db.lui.modules.unitframes.playerframe.swingBar["swingBarWidth"])
        swingbar.Holder:Height(E.db.lui.modules.unitframes.playerframe.swingBar["swingBarHeight"])
        E:CreateMover(swingbar.Holder, "LuiSwingBarMover", L["LuiSwingBarMover"], nil, -6, nil, "ALL, SOLO")
    else
        swingbar.Holder:Point("CENTER", CastingBarFrame, "CENTER", 0, 0)
        swingbar:SetAllPoints(holder)
        swingbar.Holder:Width(150)
        swingbar.Holder:Height(2)
        swingbar.remainingtext:FontTemplate(nil, 7, "OUTLINE")
        swingbar.durationtext:FontTemplate(nil, 7, "OUTLINE")
    end
    if swingbar.Holder:GetScript("OnSizeChanged") then
        swingbar.Holder:GetScript("OnSizeChanged")(swingbar.Holder)
    end
    
    local swingBarColor = E.db.lui.modules.unitframes.playerframe.swingBar["swingBarColor"]
    swingbar:SetStatusBarColor(swingBarColor.r, swingBarColor.g, swingBarColor.b)
    swingbar:SetMinMaxValues(0, 1)
    swingbar:Hide()
    
    swingbar:SetScript("OnUpdate", OnUpdate)
end


function PSB:Initialize()
    self:LoadPlayerSwingBar(_G["ElvUF_Player"])
end

local function InitializeCallback()
    if not E.db.lui.modules.unitframes.playerframe.swingBar["enable"] then return end
    PSB:Initialize()
end

E:RegisterModule(PSB:GetName(), InitializeCallback)

