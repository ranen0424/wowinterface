local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "unitframes", "playerframe", "gcdBar") then return end
local LPGCDB = E:NewModule("LuiPlayerGCDBar", "AceEvent-3.0")

local gcdbar

local function OnUpdate()
    if not starttime then return gcdbar:Hide() end
    gcdbar.spark:ClearAllPoints()
    local perc = (T.GetTime() - starttime) / duration
    local width = gcdbar:GetWidth()
    if perc > 1 then
        return gcdbar:Hide()
    else
        gcdbar.spark:SetPoint("CENTER", gcdbar, "LEFT", width * perc, 0)
    end
end

function LPGCDB:CheckGCD(event, unit, guid, spell)
    if unit == "player" then
        local start, dur = T.GetSpellCooldown(spell)
        if dur and dur > 0 and dur <= 1.5 then
            starttime = start
            duration = dur
            gcdbar:Show()
        end
    end
end

function LPGCDB:LoadGCDBar(frame)
    self:RegisterEvent("UNIT_SPELLCAST_START", "CheckGCD")
    self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED", "CheckGCD")
    
    gcdbar = T.CreateFrame("Frame", "GCDBar", frame)
    gcdbar:SetFrameStrata("HIGH")
    gcdbar.Color = {1, 1, 1}
    if frame then
        gcdbar:Width(frame.db.width)
        gcdbar:Point("BOTTOMLEFT", frame, "TOPLEFT", 0, 0)
    else
        gcdbar:Width(150)
        gcdbar:Point("CENTER", CastingBarFrame, "CENTER", 0, 30)
    end
    gcdbar:Height(2)
    gcdbar.width = 3
    gcdbar.height = 2
    gcdbar:Hide()
    
    gcdbar.spark = gcdbar:CreateTexture(nil, "DIALOG")
    gcdbar.spark:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    gcdbar.spark:SetVertexColor(unpack(gcdbar.Color))
    gcdbar.spark:SetWidth(gcdbar.width)
    gcdbar.spark:SetHeight(gcdbar.height)
    gcdbar.spark:SetBlendMode("ADD")
    gcdbar:SetScript("OnUpdate", OnUpdate)
end

function LPGCDB:Initialize()
    self:LoadGCDBar(_G["ElvUF_Player"])
end

local function InitializeCallback()
    if not E.db.lui.modules.unitframes.playerframe["gcdBar"] then return end
    LPGCDB:Initialize()
end

E:RegisterModule(LPGCDB:GetName(), InitializeCallback)
