--来源：LivvenUI
--作者：L
--修改：
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "general", "autoScreenShoot", "enable") then return end

local LMI = E:GetModule("LuiMisc")

local function TakeScreen()
	E:Delay(1, T.Screenshot)
end

function LMI:LoadAutoScreenShoot()
	self:RegisterEvent("ACHIEVEMENT_EARNED", TakeScreen)
end