local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LWD = E:NewModule("LuiWarlordsofDraenor", "AceEvent-3.0")

local _G = _G

local buildID = {
    [8] = "Warmill",
    [9] = "Warmill",
    [10] = "Warmill",
    [111] = "TradingPost",
    [144] = "TradingPost",
    [145] = "TradingPost",
    [205] = "Shipyard",
    [206] = "Shipyard",
    [207] = "Shipyard",
}

function LWD:SHIPMENT_CRAFTER_INFO(event, success, shipmentCount, maxShipments, ownedShipments, plotID)
    if not _G["GarrisonCapacitiveDisplayFrame"] then return end
    if not T.C_Garrison_IsPlayerInGarrison(2) and not T.C_Garrison_IsOnShipyardMap() then return end
    local n = _G["GarrisonCapacitiveDisplayFrame"].available or 0
    if LWD.clicked or n == 0 or not E.db.lui.modules.misc.autoWorkOrders.WarlordsofDraenor.enable then return end
    LWD.clicked = true
    local ID = T.C_Garrison_GetOwnedBuildingInfo(plotID)
    local nope = buildID[ID]
    if nope then
        if E.db.lui.modules.misc.autoWorkOrders.WarlordsofDraenor.autoOrder["auto" .. nope] then
            _G["GarrisonCapacitiveDisplayFrame"].CreateAllWorkOrdersButton:Click()
        end
    else
        _G["GarrisonCapacitiveDisplayFrame"].CreateAllWorkOrdersButton:Click()
    end
end

function LWD:SHIPMENT_CRAFTER_CLOSED()
    LWD.clicked = false
end

function LWD:Initialize()
    LWD.clicked = false
    self:RegisterEvent("SHIPMENT_CRAFTER_INFO")
    self:RegisterEvent("SHIPMENT_CRAFTER_CLOSED")
end

local function InitializeCallback()
    LWD:Initialize()
end

E:RegisterModule(LWD:GetName(), InitializeCallback)