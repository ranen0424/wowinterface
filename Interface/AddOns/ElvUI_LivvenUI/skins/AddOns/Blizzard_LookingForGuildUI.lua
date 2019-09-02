local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule("Skins")

--Cache global variables
--Lua functions
local _G = _G
--WoW API / Variables
local hooksecurefunc = hooksecurefunc
--Global variables that we don't cache, list them here for mikk's FindGlobals script
-- GLOBALS:

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.lfguild ~= true or E.private.lui.luiSkins.blizzard.lfguild ~= true then return end

	local function SkinLFGuild(self)
		self:Styling()
	end
	hooksecurefunc("LookingForGuildFrame_OnShow", SkinLFGuild)

	local styled
	hooksecurefunc("LookingForGuildFrame_CreateUIElements", function()
		if styled then return end
		LUI:ReskinRole(_G.LookingForGuildTankButton, "TANK")
		LUI:ReskinRole(_G.LookingForGuildHealerButton, "HEALER")
		LUI:ReskinRole(_G.LookingForGuildDamagerButton, "DPS")
		styled = true
	end)
end

S:AddCallbackForAddon("Blizzard_LookingForGuildUI", "LuiLookingForGuild", LoadSkin)
