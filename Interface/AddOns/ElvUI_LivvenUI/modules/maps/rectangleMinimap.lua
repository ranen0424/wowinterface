local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LRM = E:NewModule("LuiRectangleMinimap")
local M = E:GetModule('Minimap')
local _G = _G

local function SetRectangleMinimap()
    if not E.private.general.minimap.enable then
		_G.Minimap:SetMaskTexture("Textures\\MinimapMask")
		return
	end
    local Minimap = _G.Minimap
    local MMHolder = _G.MMHolder
    Minimap:SetMaskTexture("Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\rectangle")
    Minimap.backdrop:Hide()
    Minimap:SetHitRectInsets(0, 0, E.MinimapSize / 8, E.MinimapSize / 8)
    Minimap:SetClampedToScreen(true)
    Minimap:SetClampRectInsets(0, 0, 100, 0)
    local temp
    if E.db.datatexts.minimapPanels then
        MMHolder:Height((Minimap:GetHeight() + (LeftMiniPanel and (LeftMiniPanel:GetHeight() + E.Border) or 24) + E.Spacing * 3) * .75)
        temp = Minimap:GetHeight() - ((Minimap:GetHeight() + (LeftMiniPanel and (LeftMiniPanel:GetHeight() + E.Border) or 24) + E.Spacing * 3) * .75)
    else
        MMHolder:Height((Minimap:GetHeight() + E.Border + E.Spacing * 3) * .75)
        temp = Minimap:GetHeight() - ((Minimap:GetHeight() + E.Border + E.Spacing * 3) * .75)
    end
    Minimap:ClearAllPoints()
    Minimap:Point("TOPRIGHT", MMHolder, "TOPRIGHT", 0, temp / 2)
end

function LRM:Initialize()
    T.hooksecurefunc(M, "UpdateSettings", SetRectangleMinimap)
end

local function InitializeCallback()
    LRM:Initialize()
end

E:RegisterModule(LRM:GetName(), InitializeCallback)
