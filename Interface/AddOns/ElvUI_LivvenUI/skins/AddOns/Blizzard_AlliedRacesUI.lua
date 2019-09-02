local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

--Cache global variables
--Lua functions
local _G = _G

--WoW API / Variables

--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:


local function styleAlliedRaces()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.AlliedRaces ~= true or E.private.lui.luiSkins.blizzard.AlliedRaces ~= true then return end

	local AlliedRacesFrame = _G.AlliedRacesFrame
	S:HandlePortraitFrame(AlliedRacesFrame, true)

	local scrollFrame = AlliedRacesFrame.RaceInfoFrame.ScrollFrame
	scrollFrame.Child.ObjectivesFrame:StripTextures()
	scrollFrame.Child.ObjectivesFrame:CreateBackdrop("Transparent")

	AlliedRacesFrame.RaceInfoFrame.AlliedRacesRaceName:SetTextColor(1, .8, 0)
	scrollFrame.Child.RaceDescriptionText:SetTextColor(1, 1, 1)
	scrollFrame.Child.RacialTraitsLabel:SetTextColor(1, .8, 0)

	AlliedRacesFrame:HookScript("OnShow", function(self)
		local parent = scrollFrame.Child
		for i = 1, parent:GetNumChildren() do
			local bu = select(i, parent:GetChildren())
			if bu.Icon then
				bu.Text:SetTextColor(1, 1, 1)
			end
		end
	end)
end

S:AddCallbackForAddon("Blizzard_AlliedRacesUI", "LuiAlliedRaces", styleAlliedRaces)
