-- 原作：Skip Azerite Animations
-- 原作者：Permok
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "azerite", "skipAzeriteAnimations") then return end

local LSAA = E:NewModule("LuiSkipAzeriteAnimations", "AceHook-3.0", "AceEvent-3.0")

function LSAA.OnItemSet(self)
    local itemLocation = self.azeriteItemDataSource:GetItemLocation()
    if self:IsAnyTierRevealing() then
        T.C_Timer_After(0.7, function()
            OpenAzeriteEmpoweredItemUIFromItemLocation(itemLocation)
        end)
    end
end

function LSAA:ADDON_LOADED(event, name)
    if name == "Blizzard_AzeriteUI" then
        self:SecureHook(AzeriteEmpoweredItemUI, "OnItemSet", LSAA.OnItemSet)
        self:UnregisterEvent("ADDON_LOADED")
    end
end

function LSAA:AZERITE_EMPOWERED_ITEM_LOOTED(event, item)
    local itemId = T.GetItemInfoFromHyperlink(item)
    local bag
    local slot
    
    T.C_Timer_After(0.4, function()
        for i = 0, NUM_BAG_SLOTS do
            for j = 1, T.GetContainerNumSlots(i) do
                local id = T.GetContainerItemID(i, j)
                if id and id == itemId then
                    slot = j
                    bag = i
                end
            end
        end
        
        if slot then
            local location = ItemLocation:CreateFromBagAndSlot(bag, slot)
            
            T.C_AzeriteEmpoweredItem_SetHasBeenViewed(location)
            T.C_AzeriteEmpoweredItem_HasBeenViewed(location)
        end
    end)
end

function LSAA:AZERITE_EMPOWERED_ITEM_SELECTION_UPDATED(event, itemLocation)
    OpenAzeriteEmpoweredItemUIFromItemLocation(itemLocation)
end

function LSAA:Initialize()
    if not T.IsAddOnLoaded("Blizzard_AzeriteUI") then
        self:RegisterEvent("ADDON_LOADED")
        T.UIParentLoadAddOn("Blizzard_AzeriteUI")
    else
        self:SecureHook(AzeriteEmpoweredItemUI, "OnItemSet", LSAA.OnItemSet)
    end
    
    self:RegisterEvent("AZERITE_EMPOWERED_ITEM_LOOTED")
    self:RegisterEvent("AZERITE_EMPOWERED_ITEM_SELECTION_UPDATED")
end

local function InitializeCallback()
    if not E.db.lui.modules.misc.azerite["skipAzeriteAnimations"] then return end
    LSAA:Initialize()
end

E:RegisterModule(LSAA:GetName(), InitializeCallback)
