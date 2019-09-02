local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "blizzard", "castbarTime") then return end

local LCT = E:NewModule("LuiCastbarTime")

local function CastingBarFrame_OnUpdate_Hook(self, elapsed)
    if not self.timer then return end
    if self.update and self.update < elapsed then
        if self.casting then
            self.timer:SetText(T.string_format("%.1f / %.1f", max(self.maxValue - self.value, 0), self.maxValue))
        elseif self.channeling then
            self.timer:SetText(T.string_format("%.1f / %.1f", max(self.value, 0), self.maxValue))
        else
            self.timer:SetText("")
        end
        self.update = .1
    else
        self.update = self.update - elapsed
    end
end

function LCT:Initialize()
    CastingBarFrame.timer = CastingBarFrame:CreateFontString(nil)
    CastingBarFrame.timer:SetFont("Fonts\\ARIALN.ttf", 14, "NONE")
    CastingBarFrame.timer:SetPoint("RIGHT", CastingBarFrame, "RIGHT", 0, -15)
    CastingBarFrame.update = .1
    CastingBarFrame:HookScript("OnUpdate", CastingBarFrame_OnUpdate_Hook)
end

local function InitializeCallback()
    if not E.db.lui.modules.blizzard.general["castbarTime"] then return end
    LCT:Initialize()
end

E:RegisterModule(LCT:GetName(), InitializeCallback)

