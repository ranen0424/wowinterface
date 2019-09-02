local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LILF = E:NewModule("LuiItemLevelFlyout")

local _G = _G
local ITEM_QUALITY_COLORS = ITEM_QUALITY_COLORS

local function SetupFlyoutLevel(button, bag, slot, quality)
    if not button.iLvl then
        button.iLvl = LUI:CreateText(button, "OVERLAY", E.db.general.fontSize or 11, E.db.general.fontStyle or "OUTLINE")
        button.iLvl:SetPoint("TOPRIGHT", 0, -2)
    end
    
    local link, level
    if bag then
        link = T.GetContainerItemLink(bag, slot)
        level = LUI:GetItemLevel(link, bag, slot)
    else
        link = T.GetInventoryItemLink("player", slot)
        level = LUI:GetItemLevel(link, "player", slot)
    end
    
    local color = ITEM_QUALITY_COLORS[quality or 1]
    button.iLvl:SetText(level)
    if color then
        button.iLvl:SetTextColor(color.r, color.g, color.b)
    end
end

function LILF:Initialize()
	hooksecurefunc("EquipmentFlyout_DisplayButton", function(button)
		local location = button.location
		
		if not location or location >= _G.EQUIPMENTFLYOUT_FIRST_SPECIAL_LOCATION then
			if button.iLvl then button.iLvl:SetText("") end
			return
		end
		
		local _, _, bags, voidStorage, slot, bag = T.EquipmentManager_UnpackLocation(location)
		if voidStorage then return end
		
		local quality = select(13, T.EquipmentManager_GetItemInfoByLocation(location))
		if bags then
			SetupFlyoutLevel(button, bag, slot, quality)
		else
			SetupFlyoutLevel(button, nil, slot, quality)
		end
	end)
end

local function InitializeCallback()
	if not E.db.general.itemLevel.displayCharacterInfo then return end
    LILF:Initialize()
end

E:RegisterModule(LILF:GetName(), InitializeCallback)
