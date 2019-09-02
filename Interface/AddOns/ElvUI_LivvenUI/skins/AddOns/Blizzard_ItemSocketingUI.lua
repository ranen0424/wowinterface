local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

-- Cache global variables
-- Lua functions
local _G = _G
local select, unpack = select, unpack
-- WoW API
local hooksecurefunc = hooksecurefunc
local GetNumSockets = GetNumSockets
local GetSocketTypes = GetSocketTypes
--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local function styleSocketing()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.socket ~= true or E.private.lui.luiSkins.blizzard.socket ~= true then return end

	local ItemSocketingFrame = _G["ItemSocketingFrame"]
	ItemSocketingFrame:Styling()

	ItemSocketingFrame:DisableDrawLayer("ARTWORK")

	local title = select(18, ItemSocketingFrame:GetRegions())
	title:ClearAllPoints()
	title:SetPoint("TOP", 0, -5)

	for i = 1, _G.MAX_NUM_SOCKETS do
		local bu = _G["ItemSocketingSocket"..i]
		local shine = _G["ItemSocketingSocket"..i.."Shine"]

		_G["ItemSocketingSocket"..i.."BracketFrame"]:Hide()
		_G["ItemSocketingSocket"..i.."Background"]:SetAlpha(0)
		select(2, bu:GetRegions()):Hide()

		bu:SetPushedTexture("")
		bu:GetHighlightTexture():SetColorTexture(1, 1, 1, .25)
		bu.icon:SetTexCoord(unpack(E.TexCoords))

		shine:ClearAllPoints()
		shine:SetPoint("TOPLEFT", bu)
		shine:SetPoint("BOTTOMRIGHT", bu, 1, 0)

		bu.bg = LS:CreateBDFrame(bu, .25)
	end
end

S:AddCallbackForAddon("Blizzard_ItemSocketingUI", "LuiSocketing", styleSocketing)
