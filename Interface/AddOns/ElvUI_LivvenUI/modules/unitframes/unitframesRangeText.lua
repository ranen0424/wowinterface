local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LUFRT = E:NewModule("LuiUnitframesRangeText", "AceEvent-3.0")
local RC = LibStub("LibRangeCheck-2.0")
local LSM = E.LSM or E.Libs.LSM
local _G = _G

function LUFRT:LoadRangeText(frame)
    if not frame then return end
    LUFRT.db = nil
    if frame == _G["ElvUF_Target"] then
        frame.RangeText = T.CreateFrame("Frame", "TargetRangeText", frame)
        LUFRT.db = E.db.lui.modules.unitframes.targetframe["rangeText"]
    end
    if frame ==  _G["ElvUF_Focus"] then
        frame.RangeText = T.CreateFrame("Frame", "FocusRangeText", frame)
        LUFRT.db = E.db.lui.modules.unitframes.focusframe["rangeText"]
    end
    local RT = frame.RangeText
    RT.rcText = frame.RaisedElementParent:CreateFontString(nil, "OVERLAY")
    RT.rcText:ClearAllPoints()
    local fontname = LUFRT.db["rangeFontName"]
    local fontsize = LUFRT.db["rangeFontSize"]
    local fontflag = LUFRT.db["rangeFontFlag"]
    local rangePoi = LUFRT.db["rangePoi"]
    local rangePoiX = LUFRT.db["rangePoiX"]
    local rangePoiY = LUFRT.db["rangePoiY"]
    RT.rcText:FontTemplate(LSM:Fetch("font", fontname), fontsize, fontflag)
    RT.rcText:Point(rangePoi, frame.Health, rangePoi, rangePoiX, rangePoiY)
    RT.rcText:Show()
    RT:SetScript("OnUpdate", function(self, elapsed)
        if (self.elapsed and self.elapsed > 0.2) then
            LUFRT:UpdateRangeText(frame)
            self.elapsed = 0
        else
            self.elapsed = (self.elapsed or 0) + elapsed
        end
    end)
end

function LUFRT:UpdateRangeText(frame)
    local rcText
    if not frame or not frame.unitframeType then return end
    
    if not T.UnitName(frame.unitframeType) then
        rcText = ""
    else
        local minRange, maxRange = RC:getRange(frame.unitframeType)
        if maxRange == nil then
            minRange = "?"
            maxRange = "?"
        end
        rcText = minRange .. "-" .. maxRange
    end
    frame.RangeText.rcText:SetText(rcText)
end

function LUFRT:Initialize()
    if E.db.lui.modules.unitframes.targetframe.rangeText["enable"] and (_G["ElvUF_Target"]) then LUFRT:LoadRangeText(_G["ElvUF_Target"]) end
    if E.db.lui.modules.unitframes.focusframe.rangeText["enable"] and (_G["ElvUF_Focus"]) then LUFRT:LoadRangeText(_G["ElvUF_Focus"]) end
end

local function InitializeCallback()
    LUFRT:Initialize()
end

E:RegisterModule(LUFRT:GetName(), InitializeCallback)
