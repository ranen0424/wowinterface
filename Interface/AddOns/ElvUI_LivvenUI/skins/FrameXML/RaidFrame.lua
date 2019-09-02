local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

-- Cache global variables
-- Lua functions
local _G = _G
local unpack = unpack
-- WoW API / Variables

--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local r, g, b = unpack(E["media"].rgbvaluecolor)

local function styleRaidFrame()
	if E.private.skins.blizzard.enable ~= true then return end

	local RaidInfoFrame = _G.RaidInfoFrame
	if RaidInfoFrame.backdrop then
		RaidInfoFrame.backdrop:Styling()
	end
end

S:AddCallback("LuiQRaidFrame", styleRaidFrame)
