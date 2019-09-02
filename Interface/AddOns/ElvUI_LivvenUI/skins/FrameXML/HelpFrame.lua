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

local function styleHelp()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.help ~= true or E.private.lui.luiSkins.blizzard.help ~= true then return end

	local frames = {
		"HelpFrame",
		"HelpFrameKnowledgebase",
	}

	-- skin main frames
	for i = 1, #frames do
		_G[frames[i]]:Styling()
	end

	local HelpFrameHeader = _G.HelpFrameHeader
	if HelpFrameHeader.backdrop then
		HelpFrameHeader.backdrop:Hide()
	end

	LS:CreateBD(HelpFrameHeader, .65)
	HelpFrameHeader:Styling()
end

S:AddCallback("LuiHelp", styleHelp)
