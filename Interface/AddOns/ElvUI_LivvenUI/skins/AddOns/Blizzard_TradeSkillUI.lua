local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule("Skins")

--Cache global variables
--Lua functions
local _G = _G

--WoW API / Variables
--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local function styleTradeSkill()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.tradeskill ~= true or E.private.lui.luiSkins.blizzard.tradeskill ~= true then return end

	-- MainFrame
	local TradeSkillFrame = _G.TradeSkillFrame
	TradeSkillFrame:Styling()

	if TradeSkillFrame.bg1 then
		TradeSkillFrame.bg1:Hide()
	end

	if TradeSkillFrame.bg2 then
		TradeSkillFrame.bg2:Hide()
	end
end

S:AddCallbackForAddon("Blizzard_TradeSkillUI", "LuiTradeSkill", styleTradeSkill)
