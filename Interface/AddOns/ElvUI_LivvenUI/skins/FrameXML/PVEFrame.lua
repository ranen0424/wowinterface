local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

--Cache global variables
--Lua functions
local _G = _G
--WoW API / Variables

--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS: hooksecurefunc

local function stylePVE()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.lfg ~= true or E.private.lui.luiSkins.blizzard.lfg ~= true then return end

	local PVEFrame = _G.PVEFrame
	PVEFrame:Styling()

	local iconSize = 60-2*E.mult
	for i = 1, 4 do
		local bu = _G["GroupFinderFrame"]["groupButton"..i]

		LS:Reskin(bu)

		bu.icon:SetSize(iconSize, iconSize)
		bu.icon:SetDrawLayer("OVERLAY")
		bu.icon:ClearAllPoints()
		bu.icon:SetPoint("LEFT", bu, "LEFT", 4, 0)
	end
end

S:AddCallback("LuiPVE", stylePVE)
