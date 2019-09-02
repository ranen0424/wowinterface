local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "armory", "enable") then return end
local LA = E:NewModule("LuiArmory", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0")
local LCG = LibStub("LibCustomGlow-1.0")
local LSM = E.LSM or E.Libs.LSM

local _G = _G

local slots = {
    ["HeadSlot"] = {true, true},
    ["NeckSlot"] = {true, false},
    ["ShoulderSlot"] = {true, true},
    ["BackSlot"] = {true, false},
    ["ChestSlot"] = {true, true},
    ["WristSlot"] = {true, true},
    ["MainHandSlot"] = {true, true},
    ["SecondaryHandSlot"] = {true, true},
    ["HandsSlot"] = {true, true},
    ["WaistSlot"] = {true, true},
    ["LegsSlot"] = {true, true},
    ["FeetSlot"] = {true, true},
    ["Finger0Slot"] = {true, false},
    ["ShirtSlot"] = {false, false},
    ["Finger1Slot"] = {true, false},
    ["TabardSlot"] = {false, false},
    ["Trinket0Slot"] = {true, false},
    ["Trinket1Slot"] = {true, false},
}

local slotIDs = {
    [1] = "HeadSlot",
    [2] = "NeckSlot",
    [3] = "ShoulderSlot",
    [5] = "ChestSlot",
    [6] = "ShirtSlot",
    [7] = "TabardSlot",
    [8] = "WaistSlot",
    [9] = "LegsSlot",
    [10] = "FeetSlot",
    [11] = "WristSlot",
    [12] = "HandsSlot",
    [13] = "Finger0Slot",
    [14] = "Finger1Slot",
    [15] = "Trinket0Slot",
    [16] = "Trinket1Slot",
    [17] = "BackSlot",
    [18] = "MainHandSlot",
    [19] = "SecondaryHandSlot",
}

local AZSlots = {
    "Head", "Shoulder", "Chest",
}

local BlizzardBackdropList = {
    ["Alliance-bliz"] = [[Interface\LFGFrame\UI-PVP-BACKGROUND-Alliance]],
    ["Horde-bliz"] = [[Interface\LFGFrame\UI-PVP-BACKGROUND-Horde]],
    ["Arena-bliz"] = [[Interface\PVPFrame\PvpBg-NagrandArena-ToastBG]]
}

function LA:OnEnter()
    if self.Link and self.Link ~= "" then
        _G["GameTooltip"]:SetOwner(self, "ANCHOR_RIGHT")
        
        self:SetScript("OnUpdate", function()
            _G["GameTooltip"]:ClearLines()
            _G["GameTooltip"]:SetHyperlink(self.Link)
            
            _G["GameTooltip"]:Show()
        end)
    end
end

function LA:OnLeave()
    self:SetScript("OnUpdate", nil)
    _G["GameTooltip"]:Hide()
end

function LA:Transmog_OnEnter()
    if self.Link and self.Link ~= "" then
        self.Texture:SetVertexColor(1, .8, 1)
        _G["GameTooltip"]:SetOwner(self, "ANCHOR_BOTTOMRIGHT")
        
        self:SetScript("OnUpdate", function()
            _G["GameTooltip"]:ClearLines()
            _G["GameTooltip"]:SetHyperlink(self.Link)
            
            _G["GameTooltip"]:Show()
        end)
    end
end

function LA:Transmog_OnLeave()
    self.Texture:SetVertexColor(1, .5, 1)
    
    self:SetScript("OnUpdate", nil)
    _G["GameTooltip"]:Hide()
end

function LA:UpdatePaperDoll()
    if not E.db.lui.modules.armory.enable then return end
    
    local unit = "player"
    if not unit then return end
    
    local frame, slot, current, maximum, r, g, b
    local itemLink, itemLevel, itemLevelMax
    local _, numBonuses, affixes
    local avgItemLevel, avgEquipItemLevel = T.GetAverageItemLevel()
    
    for k, _ in T.pairs(slots) do
        frame = _G[("Character") .. k]
        slot = T.GetInventorySlotInfo(k)
        if slot and slot ~= "" then
            frame.DurabilityInfo:SetText("")
            frame.Transmog:Hide()
            frame.Transmog.Link = nil
            frame.Gradiation:Hide()
            
            itemLink = T.GetInventoryItemLink(unit, slot)
            if (itemLink and itemLink ~= nil) then
                if type(itemLink) ~= "string" then return end
                _, _, _, _, _, _, _, _, _, _, _, _, _, numBonuses, affixes = T.string_split(":", itemLink, 15)
                numBonuses = T.tonumber(numBonuses) or 0
                
                local _, _, itemRarity, _, _, _, _, _, itemEquipLoc = T.GetItemInfo(itemLink)
                
                if E.db.lui.modules.armory.general.durability.enable then
                    frame.DurabilityInfo:SetText()
                    current, maximum = T.GetInventoryItemDurability(slot)
                    if current and maximum and (not E.db.lui.modules.armory.general.durability.onlydamaged or current < maximum) then
                        r, g, b = E:ColorGradient((current / maximum), 1, 0, 0, 1, 1, 0, 0, 1, 0)
                        frame.DurabilityInfo:SetFormattedText("%s%.0f%%|r", E:RGBToHex(r, g, b), (current / maximum) * 100)
                    end
                end
                
                if E.db.lui.modules.armory.general.transmog.enable then
                    if not (slot == 2 or slot == 11 or slot == 12 or slot == 13 or slot == 14 or slot == 18) and T.C_Transmog_GetSlotInfo(slot, T.LE_TRANSMOG_TYPE_APPEARANCE) then
                        frame.Transmog:Show()
                        frame.Transmog.Link = select(6, T.C_TransmogCollection_GetAppearanceSourceInfo(select(3, T.C_Transmog_GetSlotVisualInfo(slot, T.LE_TRANSMOG_TYPE_APPEARANCE))))
                    end
                end
                
                if E.db.lui.modules.armory.general.gradient.enable then
                    frame.Gradiation:Show()
                    frame.Gradiation:SetAlpha(E.db.lui.modules.armory.general.gradient.alpha)
                    if itemRarity and E.db.lui.modules.armory.general.gradient.colorStyle == "RARITY" then
                        local r, g, b = T.GetItemQualityColor(itemRarity)
                        frame.Gradiation.Texture:SetVertexColor(r, g, b)
                    elseif E.db.lui.modules.armory.general.gradient.colorStyle == "VALUE" then
                        frame.Gradiation.Texture:SetVertexColor(unpack(E["media"].rgbvaluecolor))
                    else
                        frame.Gradiation.Texture:SetVertexColor(LUI:unpackColor(E.db.lui.modules.armory.general.gradient.color))
                    end
                end
            end
        end
    end
end

function LA:InitialUpdatePaperDoll()
	LA:UnregisterEvent("PLAYER_ENTERING_WORLD")
	self:BuildInformation()
	self:ScheduleTimer("UpdatePaperDoll", 2)
end

local function UpdateDurabilityPoints(id)
    if not id then return end
    
    if id <= 7 or id == 17 or id == 11 then
        return "TOPRIGHT", "TOPRIGHT", 3, -2
    elseif id <= 16 then
        return "TOPLEFT", "TOPLEFT", 1, -2
    else
        return "TOPLEFT", "TOPLEFT", 1, -2
    end
end

function LA:BuildInformation()
    for id, slotName in T.pairs(slotIDs) do
        if not id then return end
        
        local frame = _G["Character" .. slotIDs[id]]
        local DuraPoint, DuraParentPoint, x2, y2 = UpdateDurabilityPoints(id)
        
        frame.DurabilityInfo = frame:CreateFontString(nil, "OVERLAY")
        frame.DurabilityInfo:SetPoint(DuraPoint, frame, DuraParentPoint, x2 or 0, y2 or 0)
        frame.DurabilityInfo:FontTemplate(LSM:Fetch("font", E.db.lui.modules.armory.general.durability.fontName), E.db.lui.modules.armory.general.durability.fontSize, E.db.lui.modules.armory.general.durability.fontFlag)
        
        frame.Transmog = T.CreateFrame("Button", nil, frame)
        frame.Transmog:Size(12)
        frame.Transmog:SetScript("OnEnter", self.Transmog_OnEnter)
        frame.Transmog:SetScript("OnLeave", self.Transmog_OnLeave)
        
        frame.Transmog.Texture = frame.Transmog:CreateTexture(nil, "OVERLAY")
        frame.Transmog.Texture:SetInside()
        frame.Transmog.Texture:SetTexture("Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\anchor")
        frame.Transmog.Texture:SetVertexColor(1, .5, 1)
        
        if id <= 7 or id == 17 or id == 11 then
            frame.Transmog:Point("TOPLEFT", _G["Character" .. slotName], "TOPLEFT", -2, 2)
            frame.Transmog.Texture:SetTexCoord(0, 1, 1, 0)
        elseif id <= 16 then
            frame.Transmog:Point("TOPRIGHT", _G["Character" .. slotName], "TOPRIGHT", 2, 2)
            frame.Transmog.Texture:SetTexCoord(1, 0, 1, 0)
        elseif id == 18 then
            frame.Transmog:Point("BOTTOMRIGHT", _G["Character" .. slotName], "BOTTOMRIGHT", 2, -2)
            frame.Transmog.Texture:SetTexCoord(1, 0, 0, 1)
        elseif id == 19 then
            frame.Transmog:Point("BOTTOMLEFT", _G["Character" .. slotName], "BOTTOMLEFT", -2, -2)
            frame.Transmog.Texture:SetTexCoord(0, 1, 0, 1)
        end
        
        frame.Gradiation = T.CreateFrame("Frame", nil, frame)
        frame.Gradiation:Size(120, 41)
        frame.Gradiation:SetFrameLevel(_G["CharacterModelFrame"]:GetFrameLevel())
        
        frame.Gradiation.Texture = frame.Gradiation:CreateTexture(nil, "OVERLAY")
        frame.Gradiation.Texture:SetInside()
        frame.Gradiation.Texture:SetTexture("Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\Gradation")
        
        if id <= 7 or id == 17 or id == 11 or id == 19 then
            frame.Gradiation:SetPoint("LEFT", _G["Character" .. slotName], "RIGHT", -20, 0)
            frame.Gradiation.Texture:SetTexCoord(0, 1, 0, 1)
        elseif id <= 16 or id == 18 then
            frame.Gradiation:SetPoint("RIGHT", _G["Character" .. slotName], "LEFT", 20, 0)
            frame.Gradiation.Texture:SetTexCoord(1, 0, 0, 1)
        end
    end
    if E.db.lui.modules.armory.general.neckSlotTop then
        _G["CharacterNeckSlot"].RankFrame:SetPoint("TOP", _G["CharacterNeckSlot"], 0, 0)
    end
end

function LA:AzeriteGlow()
    for i = 1, #AZSlots do
        local azslot = _G["Character" .. AZSlots[i] .. "Slot"]
        local r, g, b = unpack(E["media"].rgbvaluecolor)
        
        T.hooksecurefunc(azslot, "DisplayAsAzeriteEmpoweredItem", function(self, itemLocation)
            -- self.AzeriteTexture:Hide()
            -- self.AvailableTraitFrame:Hide()
            -- PaperDollItemsFrame.EvaluateHelpTip = function(self)self.UnspentAzeriteHelpBox:Hide() end
            if T.C_AzeriteEmpoweredItem_HasAnyUnselectedPowers(itemLocation) then
                LCG.PixelGlow_Start(self, {r, g, b, 1}, nil, -0.25, nil, 2)
            else
                LCG.PixelGlow_Stop(self)
            end
        end)
    end
end

function LA:firstGarrisonToast()
    LA:UnregisterEvent("GARRISON_MISSION_FINISHED")
    self:ScheduleTimer("UpdatePaperDoll", 7)
end

function LA:Update_BG(frame)
    if E.db.lui.modules.armory.general.backdrop.selectedBG == "NONE" then
        frame.BG:SetTexture(nil)
    elseif E.db.lui.modules.armory.general.backdrop.selectedBG == "CUSTOM" then
        frame.BG:SetTexture(E.db.lui.modules.armory.general.backdrop.customAddress)
    elseif E.db.lui.modules.armory.general.backdrop.selectedBG == "CLASS" then
        frame.BG:SetTexture("Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\armory\\"..E.myclass)
    elseif E.db.lui.modules.armory.general.backdrop.selectedBG == "FACTION" then
        frame.BG:SetTexture("Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\armory\\"..E.myfaction)
    elseif E.db.lui.modules.armory.general.backdrop.selectedBG == "RACE" then
        frame.BG:SetTexture("Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\armory\\"..E.myrace)
    else
        frame.BG:SetTexture(BlizzardBackdropList[E.db.lui.modules.armory.general.backdrop.selectedBG] or "Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\armory\\"..E.db.lui.modules.armory.general.backdrop.selectedBG)
    end
    frame.BG:SetAlpha(E.db.lui.modules.armory.general.backdrop.alpha)
end

function LA:ElvOverlayToggle()
	if E.db.lui.modules.armory.general.backdrop.overlay then
		_G["CharacterModelFrameBackgroundOverlay"]:Show()
	else
		_G["CharacterModelFrameBackgroundOverlay"]:Hide()
	end
end

function LA:Initialize()
    if E.db.lui.modules.armory.general.backdrop["enable"] then
        T.hooksecurefunc("CharacterFrame_Expand", function()
            if _G["PaperDollFrame"]:IsShown() then
                _G["CharacterFrame"]:SetWidth(650)
                _G["CharacterFrame"]:SetHeight(450)
            end
        end)
        
        E:Delay(.1, function()
            _G["CharacterHandsSlot"]:SetPoint("TOPRIGHT", _G["CharacterFrameInsetRight"], "TOPLEFT", -4, -2)
            _G["CharacterMainHandSlot"]:SetPoint("BOTTOMLEFT", _G["PaperDollItemsFrame"], "BOTTOMLEFT", 185, 14)
            _G["CharacterFrameInsetRight"]:SetPoint("TOPLEFT", _G["CharacterFrameInset"], "TOPRIGHT", 110, 0)
            _G["CharacterModelFrame"]:ClearAllPoints()
            _G["CharacterModelFrame"]:SetPoint("TOPLEFT", _G["CharacterHeadSlot"])
            _G["CharacterModelFrame"]:SetPoint("TOPRIGHT", _G["CharacterHandsSlot"])
            _G["CharacterModelFrame"]:SetPoint("BOTTOM", _G["CharacterMainHandSlot"])
            _G["CharacterModelFrameBackgroundOverlay"]:SetPoint("TOPLEFT", _G["CharacterModelFrame"], 0, 0)
            _G["CharacterModelFrameBackgroundOverlay"]:SetPoint("BOTTOMRIGHT", _G["CharacterModelFrame"], 0, 0)
            if E.db.lui.modules.armory.general.backdrop.overlay then
                _G["CharacterModelFrameBackgroundOverlay"]:Show()
            else
                _G["CharacterModelFrameBackgroundOverlay"]:Hide()
            end
        end)
        
        if CharacterModelFrame and CharacterModelFrame.BackgroundTopLeft and CharacterModelFrame.BackgroundTopLeft:IsShown() then
            CharacterModelFrame.BackgroundTopLeft:Hide()
            CharacterModelFrame.BackgroundTopRight:Hide()
            CharacterModelFrame.BackgroundBotLeft:Hide()
            CharacterModelFrame.BackgroundBotRight:Hide()
            if _G.CharacterModelFrame.backdrop then
                _G.CharacterModelFrame.backdrop:Hide()
            end
        end
        
        local frame = T.CreateFrame("Frame", "LuiCharacterArmory", _G["PaperDollFrame"])
        frame:SetFrameLevel(_G["CharacterModelFrame"]:GetFrameLevel() - 1)
        frame.BG = frame:CreateTexture(nil, "OVERLAY")
        frame.BG:SetPoint("TOPLEFT", _G["CharacterModelFrame"], 0, 0)
        frame.BG:SetPoint("BOTTOMRIGHT", _G["CharacterModelFrame"], 0, 0)
        LA:Update_BG(frame)

        _G["CharacterModelFrame"]:ClearAllPoints()
        _G["CharacterModelFrame"]:Size(221, 310)
        _G["CharacterModelFrame"]:SetPoint("TOPLEFT", _G["PaperDollFrame"], "TOPLEFT", 65, -70)
    end

    LA:RegisterEvent("UPDATE_INVENTORY_DURABILITY", "UpdatePaperDoll", false)
    LA:RegisterEvent("PLAYER_EQUIPMENT_CHANGED", "UpdatePaperDoll", false)
    LA:RegisterEvent("SOCKET_INFO_UPDATE", "UpdatePaperDoll", false)
    LA:RegisterEvent("COMBAT_RATING_UPDATE", "UpdatePaperDoll", false)
    LA:RegisterEvent("MASTERY_UPDATE", "UpdatePaperDoll", false)
    LA:RegisterEvent("GARRISON_MISSION_FINISHED", "firstGarrisonToast", false)
    LA:RegisterEvent("PLAYER_ENTERING_WORLD", "InitialUpdatePaperDoll")
    
    if E.db.lui.modules.armory.general.azeriteGlow then
        LA:AzeriteGlow()
    end
    
    if not T.IsAddOnLoaded("DejaCharacterStats") then
        T.hooksecurefunc("PaperDollFrame_UpdateStats", LA.PaperDollFrame_UpdateStats)
        LA:ToggleStats()
    end
    
    if T.IsAddOnLoaded("Pawn") then
        _G["PawnUI_InventoryPawnButton"]:SetFrameLevel(_G["CharacterModelFrame"]:GetFrameLevel() + 1)
    end
end

local function InitializeCallback()
    if not E.db.lui.modules.armory["enable"] or not E.private.skins.blizzard.character or T.IsAddOnLoaded("ElvUI_SLE") or not ElvUI then return end
    LA:Initialize()
end

E:RegisterModule(LA:GetName(), InitializeCallback)
