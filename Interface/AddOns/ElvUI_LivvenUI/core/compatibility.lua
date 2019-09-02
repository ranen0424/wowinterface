local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local COMP = E:NewModule("LuiCompatibility")

local _G = _G
local pairs, print = pairs, print
local GetAddOnEnableState = GetAddOnEnableState
local IsAddOnLoaded = IsAddOnLoaded

COMP.SLE = LUI:IsAddOnEnabled('ElvUI_SLE')
COMP.PA = LUI:IsAddOnEnabled("ProjectAzilroka")
COMP.LP = LUI:IsAddOnEnabled("ElvUI_LocPlus")
COMP.LL = LUI:IsAddOnEnabled("ElvUI_LocLite")
COMP.AS = LUI:IsAddOnEnabled("AddOnSkins")
COMP.BUI = LUI:IsAddOnEnabled("ElvUI_BenikUI")
COMP.CUI = LUI:IsAddOnEnabled("ElvUI_ChaoticUI")

local function Disable(tbl, key)
    key = key or ('enable' or 'Enable')
    if (tbl[key]) then
        tbl[key] = false
        return true
    end
    return false
end

function COMP:Print(addon, feature)
    if (E.private.lui.comp and E.private.lui.comp[addon] and E.private.lui.comp[addon][feature]) then
        return
    end
    
    print(LUI.Title .. L["has |cffff2020disabled|r "] .. feature .. L[" from "] .. addon .. L[" due to incompatiblities."])
    
    E.private.lui.comp = E.private.lui.comp or {}
    E.private.lui.comp[addon] = E.private.lui.comp[addon] or {}
    E.private.lui.comp[addon][feature] = true
end

function COMP:ModulePrint(addon, module)
    if (E.private.lui.comp and E.private.lui.comp[addon] and E.private.lui.comp[addon][module]) then
        return
    end
    
    print(LUI.Title .. L["has |cffff2020disabled|r "] .. module .. L[" due to incompatiblities with: "] .. addon)
    
    E.private.lui.comp = E.private.lui.comp or {}
    E.private.lui.comp[addon] = E.private.lui.comp[addon] or {}
    E.private.lui.comp[addon][module] = true
end

function COMP:ProjectAzilrokaCompatibility()
    if Disable(ProjectAzilrokaDB, "SquareMinimapButtons" and E.db.lui["smb"]) then
        self:Print("ProjectAzilroka", "SquareMinimapButtons")
    end
end

function COMP:LocationPlusCompatibility()
    local LP = E:GetModule("LocationPlus")
    
    if Disable(E.db.lui['locPanel']) then
        self:ModulePrint("ElvUI_LocPlus", "Location Panel")
    end
end

function COMP:LocationLiteCompatibility()
    local LLB = E:GetModule("LocationLite")
    
    if Disable(E.db.lui['locPanel']) then
        self:ModulePrint("ElvUI_LocLite", "Location Panel")
    end
end

function COMP:SLECompatibility()
    local SLE = ElvUI_SLE[1]
    
    --Location Panel
    if Disable(E.db.sle["minimap"]["locPanel"]) then
        self:Print(SLE.Title, "Location Panel")
    end
    
    -- Raid Markers
    if Disable(E.db.sle["raidmarkers"]) then
        self:Print(SLE.Title, "Raid Markers")
    end
    
    -- Objective Tracker
    if Disable(E.private.sle["skins"]["objectiveTracker"]) then
        self:Print(SLE.Title, "ObjectiveTracker skin")
    end
    
    -- MinimapButtons
    if Disable(E.private.sle["minimap"]["mapicons"]) then
        self:Print(SLE.Title, "Minimap Buttons")
    end
    
    -- Armory
    if Disable(E.db.sle["Armory"]["Character"]) then
        self:Print(SLE.Title, "Armory Mode")
    end
end

function COMP:WindToolsCompatibility()
    local WIND = E:GetModule("WindTools")
    
    if COMP.WIND and WIND then
        E:StaticPopup_Show("WINDTOOLS_LUI_INCOMPATIBLE")
        return true
    end
end

COMP.CompatibilityFunctions = {}

function COMP:RegisterCompatibilityFunction(addonName, compatFunc)
    COMP.CompatibilityFunctions[addonName] = compatFunc
end

COMP:RegisterCompatibilityFunction("PA", "ProjectAzilrokaCompatibility")
COMP:RegisterCompatibilityFunction("LP", "LocationPlusCompatibility")
COMP:RegisterCompatibilityFunction("LL", "LocationLiteCompatibility")
COMP:RegisterCompatibilityFunction("SLE", "SLECompatibility")

function COMP:RunCompatibilityFunctions()
    for key, compatFunc in pairs(COMP.CompatibilityFunctions) do
        if (COMP[key]) then
            self[compatFunc](self)
        end
    end
end

function COMP:Initialize()
end

hooksecurefunc(E, "CheckIncompatible", function(self)
    COMP:RunCompatibilityFunctions()
end)

E:RegisterModule(COMP:GetName())