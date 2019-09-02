local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if IsAddOnLoaded("TinyInspect") then return end
if LUI:CheckDB("db", "modules", "armory", "inspect", "enable") then return end
local LI = E:GetModule("LuiInspect")

local LibEvent = LibStub:GetLibrary("LibEvent-Lui")
local LibItemInfo = LibStub:GetLibrary("LibItemInfo-Lui")

local function SetItemLevelString(self, text, quality)
    if (quality) then
        local r, g, b, hex = GetItemQualityColor(quality)
        text = format("|c%s%s|r", hex, text)
    end
    self:SetText(text)
end

local function GetItemLevelFrame(self, category)
    if (not self.ItemLevelFrame) then
        local fontAdjust = GetLocale():sub(1, 2) == "zh" and 0 or -3
        local anchor, w, h = self.IconBorder or self, self:GetSize()
        local ww, hh = anchor:GetSize()
        if (ww == 0 or hh == 0) then
            anchor = self.Icon or self.icon or self
            w, h = anchor:GetSize()
        else
            w, h = min(w, ww), min(h, hh)
        end
        self.ItemLevelFrame = CreateFrame("Frame", nil, self)
        self.ItemLevelFrame:SetScale(max(0.75, h < 32 and h / 32 or 1))
        self.ItemLevelFrame:SetFrameLevel(8)
        self.ItemLevelFrame:SetSize(w, h)
        self.ItemLevelFrame:SetPoint("CENTER", anchor, "CENTER", 0, 0)
        self.ItemLevelFrame.levelString = self.ItemLevelFrame:CreateFontString(nil, "OVERLAY")
        self.ItemLevelFrame.levelString:SetFont(STANDARD_TEXT_FONT, 12 + fontAdjust, "OUTLINE")
        self.ItemLevelFrame.levelString:SetPoint("TOP")
        self.ItemLevelFrame.levelString:SetTextColor(1, 0.82, 0)
        LibEvent:trigger("ITEMLEVEL_FRAME_CREATED", self.ItemLevelFrame, self)
    end
    if 1 == 1 then
        self.ItemLevelFrame:Show()
        LibEvent:trigger("ITEMLEVEL_FRAME_SHOWN", self.ItemLevelFrame, self, category or "")
    else
        self.ItemLevelFrame:Hide()
    end
    if (category) then
        self.ItemLevelCategory = category
    end
    return self.ItemLevelFrame
end

local function SetItemLevel(self, link, category, BagID, SlotID)
    if (not self) then return end
    local frame = GetItemLevelFrame(self, category)
    if (self.OrigItemLink == link) then
        SetItemLevelString(frame.levelString, self.OrigItemLevel, self.OrigItemQuality)
    else
        local level = ""
        local _, count, quality, class, subclass, equipSlot
        if (link and string.match(link, "item:(%d+):")) then
            if (BagID and SlotID and (category == "Bag" or category == "AltEquipment")) then
                count, level = LibItemInfo:GetContainerItemLevel(BagID, SlotID)
                _, _, quality, _, _, class, subclass, _, equipSlot = GetItemInfo(link)
            else
                count, level, _, _, quality, _, _, class, subclass, _, equipSlot = LibItemInfo:GetItemInfo(link)
            end
            if ((equipSlot and string.find(equipSlot, "INVTYPE_"))
                or (subclass and string.find(subclass, RELICSLOT))) then else
                level = ""
            end
            if (subclass and subclass == MOUNTS) then
                class = subclass
            end
            if (count > 0) then
                SetItemLevelString(frame.levelString, "...")
                return SetItemLevelScheduled(self, frame, link)
            else
                if (tonumber(level) == 0) then level = "" end
                SetItemLevelString(frame.levelString, level, quality)
            end
        else
            SetItemLevelString(frame.levelString, "")
        end
        self.OrigItemLink = link
        self.OrigItemLevel = level
        self.OrigItemQuality = quality
        self.OrigItemClass = class
        self.OrigItemEquipSlot = equipSlot
    end
end

local function SetPaperDollItemLevel(self, unit)
    if (not self) then return end
    local id = self:GetID()
    local frame = GetItemLevelFrame(self, "PaperDoll")
    if (unit and GetInventoryItemTexture(unit, id)) then
        local count, level, _, link, quality, _, _, class, _, _, equipSlot = LibItemInfo:GetUnitItemInfo(unit, id)
        SetItemLevelString(frame.levelString, level > 0 and level or "", quality)
        if (id == 16 or id == 17) then
            local _, mlevel, _, _, mquality = LibItemInfo:GetUnitItemInfo(unit, 16)
            local _, olevel, _, _, oquality = LibItemInfo:GetUnitItemInfo(unit, 17)
            if (mlevel > 0 and olevel > 0 and (mquality == 6 or oquality == 6)) then
                SetItemLevelString(frame.levelString, max(mlevel,olevel), mquality or oquality)
            end
        end
    else
        SetItemLevelString(frame.levelString, "")
    end
end

function LI:LoadEquipmentFlyout()
    if EquipmentFlyout_DisplayButton and E.db.lui.modules.armory.inspect.AltEquipment then
        hooksecurefunc("EquipmentFlyout_DisplayButton", function(button, paperDollItemSlot)
            local location = button.location
            if (not location) then return end
            local player, bank, bags, voidStorage, slot, bag, tab, voidSlot = EquipmentManager_UnpackLocation(location)
            if (not player and not bank and not bags and not voidStorage) then return end
            if (voidStorage) then
                SetItemLevel(button, nil, "AltEquipment")
            elseif (bags) then
                local link = GetContainerItemLink(bag, slot)
                SetItemLevel(button, link, "AltEquipment", bag, slot)
            else
                local link = GetInventoryItemLink("player", slot)
                SetItemLevel(button, link, "AltEquipment")
            end
        end)
    end

    if E.db.lui.modules.armory.inspect.PaperDollEquipment then
        hooksecurefunc("PaperDollItemSlotButton_OnShow", function(self, isBag)
            SetPaperDollItemLevel(self, "player")
        end)
        
        hooksecurefunc("PaperDollItemSlotButton_OnEvent", function(self, event, id, ...)
            if (event == "PLAYER_EQUIPMENT_CHANGED" and self:GetID() == id) then
                SetPaperDollItemLevel(self, "player")
            end
        end)

        LibEvent:attachTrigger("UNIT_INSPECT_READY", function(self, data)
            if (InspectFrame and InspectFrame.unit and UnitGUID(InspectFrame.unit) == data.guid) then
                for _, button in ipairs({
                    InspectHeadSlot,InspectNeckSlot,InspectShoulderSlot,InspectBackSlot,InspectChestSlot,InspectWristSlot,
                    InspectHandsSlot,InspectWaistSlot,InspectLegsSlot,InspectFeetSlot,InspectFinger0Slot,InspectFinger1Slot,
                    InspectTrinket0Slot,InspectTrinket1Slot,InspectMainHandSlot,InspectSecondaryHandSlot
                    , InspectShirtSlot, InspectTabardSlot
                    }) do
                    SetPaperDollItemLevel(button, InspectFrame.unit)
                end
            end
        end)
    end

    LibEvent:attachTrigger("ITEMLEVEL_FRAME_SHOWN", function(self, frame, parent, category)
        frame.levelString:ClearAllPoints()
        frame.levelString:SetPoint("BOTTOM", 0, 2)
    end)
end

LibEvent:attachEvent("ADDON_LOADED", function(self, addonName)
    if (addonName == "Blizzard_InspectUI") then
        hooksecurefunc(InspectFrame, "Hide", function()
            for _, button in ipairs({
                 InspectHeadSlot,InspectNeckSlot,InspectShoulderSlot,InspectBackSlot,InspectChestSlot,InspectWristSlot,
                 InspectHandsSlot,InspectWaistSlot,InspectLegsSlot,InspectFeetSlot,InspectFinger0Slot,InspectFinger1Slot,
                 InspectTrinket0Slot,InspectTrinket1Slot,InspectMainHandSlot,InspectSecondaryHandSlot
                 , InspectShirtSlot, InspectTabardSlot
                }) do
                SetPaperDollItemLevel(button)
            end
        end)
    end
end)
