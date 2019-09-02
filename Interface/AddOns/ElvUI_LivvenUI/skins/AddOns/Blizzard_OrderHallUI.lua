local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

-- Cache global variables
-- Lua functions
local _G = _G

-- WoW API / Variables


--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS: hooksecurefunc

local function styleOrderHall()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.orderhall ~= true or E.private.lui.luiSkins.blizzard.orderhall ~= true then return end

	local OrderHallTalentFrame = _G.OrderHallTalentFrame

	OrderHallTalentFrame:HookScript("OnShow", function(self)
		if self.styled then return end
		self:Styling()
		self.styled = true
	end)
end

S:AddCallbackForAddon("Blizzard_OrderHallUI", "LuiOrderHall", styleOrderHall)
