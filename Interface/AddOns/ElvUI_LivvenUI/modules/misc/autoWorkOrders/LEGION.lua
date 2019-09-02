local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LL = E:NewModule("LuiLEGION", "AceEvent-3.0")

local _G = _G

function LL:SHIPMENT_CRAFTER_INFO(event, success, shipmentCount, maxShipments, ownedShipments, plotID)
	if not _G["GarrisonCapacitiveDisplayFrame"] then return end
	if not T.C_Garrison_IsPlayerInGarrison(3) then return end
	local n = _G["GarrisonCapacitiveDisplayFrame"].available or 0
	if LL.clicked or n == 0 or not E.db.lui.modules.misc.autoWorkOrders.LEGION.enable then return end
	LL.clicked = true
	local _, _, _, _, followerID = T.C_Garrison_GetShipmentItemInfo()
	if followerID then
		_G["GarrisonCapacitiveDisplayFrame"].CreateAllWorkOrdersButton:Click()
	else
		if E.db.lui.modules.misc.autoWorkOrders.LEGION.autoEquip then
			_G["GarrisonCapacitiveDisplayFrame"].CreateAllWorkOrdersButton:Click()
		end
	end
end

function LL:SHIPMENT_CRAFTER_CLOSED()
	LL.clicked = false
end

function LL:Initialize()
	LL.clicked = false
	self:RegisterEvent("SHIPMENT_CRAFTER_INFO")
	self:RegisterEvent("SHIPMENT_CRAFTER_CLOSED")
end

local function InitializeCallback()
    LL:Initialize()
end

E:RegisterModule(LL:GetName(), InitializeCallback)