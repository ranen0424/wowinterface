--来源：LivvenUI
--作者：L
--修改：
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "nameplates", "castbarTarget") then return end
local LCT = E:NewModule("LuiCastbarTarget")
local NP = E:GetModule("NamePlates")

function LCT:Initialize()
    function NP:Castbar_PostCastStart(unit)
        self:CheckInterrupt(unit)
        NP:StyleFilterUpdate(self.__owner, "FAKE_Casting")
        local name, _, texture, startTime, endTime, isTradeSkill, castID, notInterruptible, spellID = UnitCastingInfo(unit)
        if(not name) then
            name, _, texture, startTime, endTime, isTradeSkill, notInterruptible, spellID = UnitChannelInfo(unit)
        end
        local _, class = UnitClass (unit .. "target")
        if class then
            local colors = (CUSTOM_CLASS_COLORS and CUSTOM_CLASS_COLORS[class]) or RAID_CLASS_COLORS[class]
            class = colors and colors.colorStr
            local targetName = UnitName (unit .. "target")
            targetName =(class and strjoin("", "|c", class, targetName)) or targetName
            self.Text:SetText(name .. " > " .. targetName)
        end
    end
end

local function InitializeCallback()
    if not E.db.lui.modules.nameplates["castbarTarget"] then return end
	LCT:Initialize()
end

E:RegisterModule(LCT:GetName(), InitializeCallback)