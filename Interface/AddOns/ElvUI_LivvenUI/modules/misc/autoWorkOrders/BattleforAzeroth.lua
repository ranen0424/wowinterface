local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LBA = E:NewModule("LuiBattleforAzeroth", "AceEvent-3.0")

function LBA:SHIPMENT_CRAFTER_INFO(event, success, shipmentCount, maxShipments, ownedShipments, plotID)
	if not _G["GarrisonCapacitiveDisplayFrame"] then return end
	if GarrisonCapacitiveDisplayFrame.containerID == nil or (GarrisonCapacitiveDisplayFrame.containerID and GarrisonCapacitiveDisplayFrame.containerID ~= 239) then return end
	local n = _G["GarrisonCapacitiveDisplayFrame"].available or 0
	if clicked or n == 0 or not E.db.lui.modules.misc.autoWorkOrders.BattleforAzeroth.enable then return end
	LBA.clicked = true
	_G["GarrisonCapacitiveDisplayFrame"].CreateAllWorkOrdersButton:Click()
end

function LBA:SHIPMENT_CRAFTER_CLOSED()
	LBA.clicked = false
end

function LBA:Initialize()
	LBA.clicked = false
	self:RegisterEvent("SHIPMENT_CRAFTER_INFO")
	self:RegisterEvent("SHIPMENT_CRAFTER_CLOSED")
end

local function InitializeCallback()
    LBA:Initialize()
end

E:RegisterModule(LBA:GetName(), InitializeCallback)