local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local S = E:GetModule("Skins")

--Cache global variables
--Lua functions
local _G = _G
--WoW API / Variables
local hooksecurefunc = hooksecurefunc

local function styleReputation()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.character ~= true or E.private.lui.luiSkins.blizzard.character ~= true then return end

	local ReputationDetailFrame = _G.ReputationDetailFrame

	local function SkinDetailFrame()
		if ReputationDetailFrame.backdrop then
			if not ReputationDetailFrame.backdrop.styling then
				ReputationDetailFrame.backdrop:Styling()

				ReputationDetailFrame.backdrop.styling = true
			end
		end
	end

	hooksecurefunc("ExpandFactionHeader", SkinDetailFrame)
	hooksecurefunc("CollapseFactionHeader", SkinDetailFrame)
	hooksecurefunc("ReputationFrame_Update", SkinDetailFrame)
end

S:AddCallback("LuiReputation", styleReputation)
