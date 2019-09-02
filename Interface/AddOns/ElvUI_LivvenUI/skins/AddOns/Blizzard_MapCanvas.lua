local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

--Cache global variables
local _G = _G
--WoW API / Variables
local C_Map_GetMapArtLayers = C_Map.GetMapArtLayers
local hooksecurefunc = hooksecurefunc
--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local function styleMapCanvas()
	if E.private.skins.blizzard.enable ~= true then return end

	--[[ AddOns\Blizzard_MapCanvasDetailLayer.lua ]]
	function LUI.MapCanvasDetailLayerMixin_RefreshDetailTiles(self)
		local layers = C_Map_GetMapArtLayers(self.mapID)
		local layerInfo = layers[self.layerIndex]

		for detailTile in self.detailTilePool:EnumerateActive() do
			if not detailTile.isSkinned then
				detailTile:SetSize(layerInfo.tileWidth, layerInfo.tileHeight)
				detailTile.isSkinned = true
			end
		end
	end

	--[[ AddOns\Blizzard_MapCanvas.lua ]]

	--[[ AddOns\Blizzard_MapCanvas.xml ]]
	function LUI:MapCanvasFrameScrollContainerTemplate(ScrollFrame)
	end

	function LUI:MapCanvasFrameTemplate(Frame)
	end

	hooksecurefunc(_G.MapCanvasDetailLayerMixin, "RefreshDetailTiles", LUI.MapCanvasDetailLayerMixin_RefreshDetailTiles)
end

S:AddCallbackForAddon("Blizzard_MapCancas", "LuiMapCanvas", styleMapCanvas)
