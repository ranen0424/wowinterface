-- 来源：EUI
-- 作者：EUI
-- 链接：
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "combat", "combatNotification", "enable") then return end
local LCN = E:NewModule("LuiCombatNotification")
local LSM = E.LSM or E.Libs.LSM

local FadingFrame_Show = FadingFrame_Show
local speed = .03333
local count, len, step, word, stringE, a

local function GetNextChar(word, num)
	local c = word:byte(num)
	local shift
	if not c then return "", num end
	if (c > 0 and c <= 127) then
		shift = 1
	elseif (c >= 192 and c <= 223) then
		shift = 2
	elseif (c >= 224 and c <= 239) then
		shift = 3
	elseif (c >= 240 and c <= 247) then
		shift = 4
	end
	return word:sub(num, num + shift - 1), (num + shift)
end

local function nextstep()
	a, step = GetNextChar(word, step)
	LCN.flowingtext:SetText(stringE)
	stringE = stringE .. a
	a = T.string_upper(a)
	LCN.rightchar:SetText(a)
end

local function updatestring(self, t)
	count = count - t
	if count < 0 then
		if step > len then
			self:Hide()
			LCN.flowingtext:SetText(stringE)
			FadingFrame_Show(LCN.flowingframe)
			LCN.rightchar:SetText("")
			word = ""
		else
			nextstep()
			FadingFrame_Show(LCN.flowingframe)
			count = speed
		end
	end
end

function LCN:CombatNotiRun(f, r, g, b)
	LCN.flowingframe:Hide()
	LCN.updaterun:Hide()
	
	LCN.flowingtext:SetText(f)
	local l = LCN.flowingtext:GetWidth()
	
	local color1 = r or 1
	local color2 = g or 1
	local color3 = b or 1
	
	LCN.flowingtext:SetTextColor(color1 * .95, color2 * .95, color3 * .95)
	LCN.rightchar:SetTextColor(color1, color2, color3)
	
	word = f
	len = f:len()
	step = 1
	count = speed
	stringE = ""
	a = ""
	
	LCN.flowingtext:SetText("")
	LCN.flowingframe:SetWidth(l)
	
	LCN.rightchar:SetText("")
	FadingFrame_Show(LCN.flowingframe)
	LCN.updaterun:Show()
end

function LCN:Initialize()
	LCN.flowingframe = T.CreateFrame("Frame", nil, E.UIParent)
	LCN.flowingframe:SetFrameStrata("HIGH")
	LCN.flowingframe:SetPoint("CENTER", E.UIParent, E.db.lui.modules.combat.combatNotification["rangePoiX"], E.db.lui.modules.combat.combatNotification["rangePoiY"])
	LCN.flowingframe:SetHeight(64)
	LCN.flowingframe:SetScript("OnUpdate", FadingFrame_OnUpdate)
	LCN.flowingframe:Hide()
	LCN.flowingframe.fadeInTime = 0
	LCN.flowingframe.holdTime = 1
	LCN.flowingframe.fadeOutTime = .3

	LCN.flowingtext = LCN.flowingframe:CreateFontString(nil, "OVERLAY")
	LCN.flowingtext:SetPoint("Left")
	LCN.flowingtext:FontTemplate(LSM:Fetch("font", E.db.lui.modules.combat.combatNotification["combatNotiFont"]), E.db.lui.modules.combat.combatNotification["combatNotiSize"], E.db.lui.modules.combat.combatNotification["combatNotiFlag"])
	LCN.flowingtext:SetShadowOffset(0, 0)
	LCN.flowingtext:SetJustifyH("LEFT")

	LCN.rightchar = LCN.flowingframe:CreateFontString(nil, "OVERLAY")
	LCN.rightchar:SetPoint("LEFT", LCN.flowingtext, "RIGHT")
	LCN.rightchar:FontTemplate(LSM:Fetch("font", E.db.lui.modules.combat.combatNotification["combatNotiFont"]), E.db.lui.modules.combat.combatNotification["combatNotiSize"] * 2, E.db.lui.modules.combat.combatNotification["combatNotiFlag"])
	LCN.rightchar:SetShadowOffset(0, 0)
	LCN.rightchar:SetJustifyH("LEFT")

	LCN.updaterun = T.CreateFrame("Frame")
	LCN.updaterun:SetScript("OnUpdate", updatestring)
	LCN.updaterun:Hide()

    local CombatNotification = T.CreateFrame("Frame")
    CombatNotification:RegisterEvent("PLAYER_REGEN_ENABLED")
    CombatNotification:RegisterEvent("PLAYER_REGEN_DISABLED")
    CombatNotification:SetScript("OnEvent", function(self, event)
        if (T.UnitIsDead("player")) then return end
        if event == "PLAYER_REGEN_ENABLED" then
            LCN:CombatNotiRun(E.db.lui.modules.combat.combatNotification["combatNotiLeaving"], 0.1, 1, 0.1)
        elseif event == "PLAYER_REGEN_DISABLED" then
            LCN:CombatNotiRun(E.db.lui.modules.combat.combatNotification["combatNotiEntering"], 1, 0.1, 0.1)
        end
    end)
end

local function InitializeCallback()
	if not E.db.lui.modules.combat.combatNotification["enable"] then return end
	LCN:Initialize()
end

E:RegisterModule(LCN:GetName(), InitializeCallback)
