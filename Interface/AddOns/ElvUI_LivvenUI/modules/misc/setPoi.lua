-- 来源：EUI
-- 作者：EUI
-- 链接：
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LMI = E:GetModule("LuiMisc")

local function CreatePoi()
    local f = T.CreateFrame("Frame", "LUIPoi", E.UIParent)
    f:SetFrameStrata("DIALOG")
    f:SetSize(36, 36)
    f:Point("CENTER", 0, 0)
    f.text = f:CreateFontString(nil, "ARTWORK")
    f.text:SetAllPoints(f)
    f:Hide()
    return f
end

function LMI:LoadSetPoi()
    if E.db.lui.modules.misc.general.setPoi["enable"] then
        LUIPoi = LUIPoi or CreatePoi()
        LUIPoi.text:FontTemplate(nil, E.db.lui.modules.misc.general.setPoi["poiTextSize"], nil)
        LUIPoi.text:SetTextColor(E.db.lui.modules.misc.general.setPoi.poiColor.r,
            E.db.lui.modules.misc.general.setPoi.poiColor.g,
            E.db.lui.modules.misc.general.setPoi.poiColor.b)
        LUIPoi.text:SetText(E.db.lui.modules.misc.general.setPoi["poiText"])
        
        if E.db.lui.modules.misc.general.setPoi["poiCombat"] then
            LUIPoi:RegisterEvent("PLAYER_REGEN_ENABLED")
            LUIPoi:RegisterEvent("PLAYER_REGEN_DISABLED")
            LUIPoi:SetScript("OnEvent", function(self, event)
                if not E.db.lui.modules.misc.general.setPoi["poiCombat"] then return end
                if event == "PLAYER_REGEN_DISABLED" then
                    self:Show()
                else
                    self:Hide()
                end
            end)
            LUIPoi:Hide()
        else
            LUIPoi:UnregisterAllEvents()
            LUIPoi:SetScript("OnEvent", nil)
            LUIPoi:Show()
        end
    else
        if LUIPoi then LUIPoi:Hide() end
    end
end
