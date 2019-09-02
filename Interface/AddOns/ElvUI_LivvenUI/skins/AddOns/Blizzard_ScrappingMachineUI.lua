local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")
local B = E:GetModule('Bags')

--Cache global variables
--Lua functions
local _G = _G

--WoW API / Variables
local ToggleAllBags = ToggleAllBags
--Global variables that we don't cache, list them here for mikk's FindGlobals script
-- GLOBALS:

local weShown = false

local function styleScrappingMachine()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.Scrapping ~= true or E.private.lui.luiSkins.blizzard.Scrapping ~= true then return end

	local MachineFrame = _G.ScrappingMachineFrame
	MachineFrame:Styling()

	-- Automatic open the Bags if the MachineFrame shows
	MachineFrame:HookScript("OnShow", function()
		if E.private.bags.enable ~= true then return end

		if MachineFrame:IsShown() and not B.BagFrame:IsShown() then
			ToggleAllBags()
			weShown = true
		end
	end)
	MachineFrame:HookScript("OnHide", function()
		if (weShown) then
			ToggleAllBags()
		end
		weShown = false
	end)
end

S:AddCallbackForAddon('Blizzard_ScrappingMachineUI', "LuiScrappingMachine", styleScrappingMachine)
