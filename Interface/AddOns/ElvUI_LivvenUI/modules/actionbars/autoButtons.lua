--来源：EUI
--修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "actionbars", "autoButtons", "enable") then return end
local LAB = E:NewModule("LuiAutoButtons", "AceEvent-3.0")
local LSM = E.LSM or E.Libs.LSM

local _G = _G

local QuestItemList = {}
local garrisonsmv = {118897, 118903}
local garrisonsc = {114116, 114119, 114120, 120301, 120302}

BINDING_HEADER_AutoSlotButton = LUI.Title.. L["soltAutoButtons"]
BINDING_HEADER_AutoQuestButton = LUI.Title.. L["questAutoButtons"]

for i = 1, 12 do
	_G["BINDING_NAME_CLICK AutoSlotButton"..i..":LeftButton"] = L["soltAutoButtons"]..i
	_G["BINDING_NAME_CLICK AutoQuestButton"..i..":LeftButton"] = L["questAutoButtons"]..i
end

local function GetQuestItemList()
    T.table_wipe(QuestItemList)
    for i = 1, T.GetNumQuestWatches() do
        local questID, title, questLogIndex, numObjectives, requiredMoney, isComplete, startEvent, isAutoComplete, failureTime, timeElapsed, questType, isTask, isStory, isOnMap, hasLocalPOI = T.GetQuestWatchInfo(i)
        if questLogIndex then
            local link, item, charges, showItemWhenComplete = T.GetQuestLogSpecialItemInfo(questLogIndex)
            if link then
                local itemID = T.tonumber(link:match(":(%d+):"))
                QuestItemList[itemID] = {
                    ["isComplete"] = isComplete,
                    ["showItemWhenComplete"] = showItemWhenComplete,
                    ["questLogIndex"] = questLogIndex,
                }
            end
        end
    end
    
    LAB:ScanItem("QUEST")
end

local function GetWorldQuestItemList(toggle)
    local mapID = T.C_Map_GetBestMapForUnit("player") or 0
    local taskInfo = T.C_TaskQuest_GetQuestsForPlayerByMapID(mapID)
    
    if (taskInfo and #taskInfo > 0) then
        for i, info in T.pairs(taskInfo) do
            local questID = info.questId
            local questLogIndex = T.GetQuestLogIndexByID(questID)
            if questLogIndex then
                local link, item, charges, showItemWhenComplete = T.GetQuestLogSpecialItemInfo(questLogIndex)
                if link then
                    local itemID = T.tonumber(link:match(":(%d+):"))
                    QuestItemList[itemID] = {
                        ["isComplete"] = isComplete,
                        ["showItemWhenComplete"] = showItemWhenComplete,
                        ["questLogIndex"] = questLogIndex,
                    }
                end
            end
        end
    end
    
    if (toggle ~= "init") then
        LAB:ScanItem("QUEST")
    end
end

local function haveIt(num, spellName)
    if not spellName then return false end
    
    for i = 1, num do
        local AutoButton = _G["AutoQuestButton" .. i]
        if not AutoButton then break end
        if AutoButton.spellName == spellName then
            return false
        end
    end
    return true
end

local function IsUsableItem(itemId)
    local itemSpell = T.GetItemSpell(itemId)
    if not itemSpell then return false end
    
    return itemSpell
end

local function IsSlotItem(itemId)
    local itemSpell = IsUsableItem(itemId)
    local itemName = T.GetItemInfo(itemId)
    
    return itemSpell
end

local function AutoButtonHide(AutoButton)
    if not AutoButton then return end
    AutoButton:SetAlpha(0)
    if not T.InCombatLockdown() then
        AutoButton:EnableMouse(false)
    else
        AutoButton:RegisterEvent("PLAYER_REGEN_ENABLED")
        AutoButton:SetScript("OnEvent", function(self, event)
            if event == "PLAYER_REGEN_ENABLED" then
                self:EnableMouse(false)
                self:UnregisterEvent("PLAYER_REGEN_ENABLED")
            end
        end)
    end
end

local function HideAllButton(event)
    local i, k = 1, 1

    for i = k, 12 do
        AutoButtonHide(_G["AutoQuestButton" .. i])
    end
    for i = 1, 12 do
        AutoButtonHide(_G["AutoSlotButton" .. i])
    end
end

local function AutoButtonShow(AutoButton)
    if not AutoButton then return end
    AutoButton:SetAlpha(1)
    AutoButton:SetScript("OnEnter", function(self)
        if T.InCombatLockdown() then return end
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", 0, -2)
        GameTooltip:ClearLines()
        if self.slotID then
            GameTooltip:SetInventoryItem("player", self.slotID)
        else
            GameTooltip:SetItemByID(self.itemID)
        end
        GameTooltip:Show()
    end)
    AutoButton:SetScript("OnLeave", function(self)
        GameTooltip:Hide()
    end)
    
    if not T.InCombatLockdown() then
        AutoButton:EnableMouse(true)
        if AutoButton.slotID then
            AutoButton:SetAttribute("type", "macro")
            AutoButton:SetAttribute("macrotext", "/use " .. AutoButton.slotID)
        elseif AutoButton.itemName then
            AutoButton:SetAttribute("type", "item")
            AutoButton:SetAttribute("item", AutoButton.itemName)
        end
    else
        AutoButton:RegisterEvent("PLAYER_REGEN_ENABLED")
        AutoButton:SetScript("OnEvent", function(self, event)
            if event == "PLAYER_REGEN_ENABLED" then
                self:EnableMouse(true)
                if self.slotID then
                    self:SetAttribute("type", "macro")
                    self:SetAttribute("macrotext", "/use " .. self.slotID)
                elseif self.itemName then
                    self:SetAttribute("type", "item")
                    self:SetAttribute("item", self.itemName)
                end
                self:UnregisterEvent("PLAYER_REGEN_ENABLED")
            end
        end)
    end
end

local function CreateButton(name, size)
    if _G[name] then
		_G[name]:Size(size)
		_G[name].c:FontTemplate(LSM:Fetch("font", E.db.lui.modules.actionbars.autoButtons["fontName"]), E.db.lui.modules.actionbars.autoButtons["countFontSize"], "OUTLINE")
		_G[name].k:FontTemplate(LSM:Fetch("font", E.db.lui.modules.actionbars.autoButtons["fontName"]), E.db.lui.modules.actionbars.autoButtons["bindFontSize"], "OUTLINE")
		return _G[name]
    end
    
    local AutoButton = T.CreateFrame("Button", name, E.UIParent, "SecureActionButtonTemplate")
    AutoButton:Size(size)
    AutoButton:SetTemplate("Default")
    AutoButton:StyleButton()
    AutoButton:SetClampedToScreen(true)
    AutoButton:SetAttribute("type", "item")
    AutoButton:SetAlpha(0)
    AutoButton:EnableMouse(false)
    AutoButton:RegisterForClicks("AnyUp")
    
    AutoButton.t = AutoButton:CreateTexture(nil, "OVERLAY", nil)
    AutoButton.t:Point("TOPLEFT", AutoButton, "TOPLEFT", 2, -2)
    AutoButton.t:Point("BOTTOMRIGHT", AutoButton, "BOTTOMRIGHT", -2, 2)
    AutoButton.t:SetTexCoord(0.1, 0.9, 0.1, 0.9)
    
    AutoButton.c = AutoButton:CreateFontString(nil, "OVERLAY")
    AutoButton.c:FontTemplate(LSM:Fetch("font", E.db.lui.modules.actionbars.autoButtons["fontName"]), E.db.lui.modules.actionbars.autoButtons["countFontSize"], "OUTLINE")
    AutoButton.c:SetTextColor(1, 1, 1, 1)
    AutoButton.c:Point("BOTTOMRIGHT", AutoButton, "BOTTOMRIGHT", 0, 0)
    AutoButton.c:SetJustifyH("CENTER")
    
    AutoButton.k = AutoButton:CreateFontString(nil, "OVERLAY")
    AutoButton.k:FontTemplate(LSM:Fetch("font", E.db.lui.modules.actionbars.autoButtons["fontName"]), E.db.lui.modules.actionbars.autoButtons["bindFontSize"], "OUTLINE")
    AutoButton.k:SetTextColor(1, 1, 1)
    AutoButton.k:Point("TOPRIGHT", AutoButton, "TOPRIGHT", 0, 0)
    AutoButton.k:SetJustifyH("RIGHT")
    
    AutoButton.Cooldown = T.CreateFrame("Cooldown", nil, AutoButton, "CooldownFrameTemplate")
    AutoButton.Cooldown:Point("TOPLEFT", AutoButton, "TOPLEFT", 2, -2)
    AutoButton.Cooldown:Point("BOTTOMRIGHT", AutoButton, "BOTTOMRIGHT", -2, 2)
    AutoButton.Cooldown:SetSwipeColor(1, 1, 1, 1)
    AutoButton.Cooldown:SetDrawBling(false)
    
    E:RegisterCooldown(AutoButton.Cooldown)
    
    E.FrameLocks[name] = true
    return AutoButton
end

function LAB:ScanItem(event)
    HideAllButton(event)
    GetWorldQuestItemList("init")
    
    local questItemIDList = {}
    local minimapZoneText = T.GetMinimapZoneText()
    if minimapZoneText == L["Alliance Mine"] or minimapZoneText == L["Horde Mine"] then
        for i = 1, #garrisonsmv do
            local count = T.GetItemCount(garrisonsmv[i])
            if count and (count > 0) and (not E.db.lui.modules.actionbars.autoButtons.blackList[garrisonsmv[i]]) then
                T.table_insert(questItemIDList, garrisonsmv[i])
            end
        end
    elseif minimapZoneText == L["Salvage Yard"] then
        for i = 1, #garrisonsc do
            local count = T.GetItemCount(garrisonsc[i])
            if count and (count > 0) and (not E.db.lui.modules.actionbars.autoButtons.blackList[garrisonsc[i]]) then
                T.table_insert(questItemIDList, garrisonsc[i])
            end
        end
    else
        for k, v in T.pairs(QuestItemList) do
            if (not QuestItemList[k].isComplete) or (QuestItemList[k].isComplete and QuestItemList[k].showItemWhenComplete) then
                if not E.db.lui.modules.actionbars.autoButtons.blackList[k] then
                    T.table_insert(questItemIDList, k)
                end
            end
        end
        for k, v in T.pairs(E.db.lui.modules.actionbars.autoButtons["whiteList"]) do
            local count = T.GetItemCount(k)
            if count and (count > 0) and v and (not E.db.lui.modules.actionbars.autoButtons.blackList[k]) then
                T.table_insert(questItemIDList, k)
            end
        end
        if T.GetItemCount(123866) and (T.GetItemCount(123866) >= 5) and (not E.db.lui.modules.actionbars.autoButtons.blackList[123866]) and (T.C_Map_GetBestMapForUnit("player") == 945) then
            T.table_insert(questItemIDList, 123866)
        end
    end
    
    sort(questItemIDList, function(v1, v2)
        local itemType1 = select(7, T.GetItemInfo(v1))
        local itemType2 = select(7, T.GetItemInfo(v2))
        if itemType1 and itemType2 then
            return itemType1 > itemType2
        else
            return v1 > v2
        end
    end)
    
    if E.db.lui.modules.actionbars.autoButtons.questAutoButtons["enable"] == true and E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questNum"] > 0 then
        for i = 1, #questItemIDList do
            local itemID = questItemIDList[i]
            local itemName, _, rarity = T.GetItemInfo(itemID)
            
            if i > E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questNum"] then break end
            
            local AutoButton = _G["AutoQuestButton" .. i]
            local count = T.GetItemCount(itemID, nil, 1)
            local itemIcon = T.GetItemIcon(itemID)
            
            if not AutoButton then break end
            AutoButton.t:SetTexture(itemIcon)
            AutoButton.itemName = itemName
            AutoButton.itemID = itemID
            AutoButton.ap = false
            AutoButton.questLogIndex = QuestItemList[itemID] and QuestItemList[itemID].questLogIndex or -1
            AutoButton.spellName = IsUsableItem(itemID)
            AutoButton:SetBackdropBorderColor(nil)
            local r, g, b
            if E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questBBColorByItem"] then
                if rarity and rarity > LE_ITEM_QUALITY_COMMON then
                    r, g, b = T.GetItemQualityColor(rarity)
                    AutoButton:SetBackdropBorderColor(r, g, b)
                end
            else
                colorDB = E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questBBColor"]
                r, g, b = colorDB.r, colorDB.g, colorDB.b
                AutoButton:SetBackdropBorderColor(r, g, b)
            end
            
            if count and count > 1 then
                AutoButton.c:SetText(count)
            else
                AutoButton.c:SetText("")
            end
            
            AutoButton:SetScript("OnUpdate", function(self, elapsed)
                local start, duration, enable
                if self.questLogIndex > 0 then
                    start, duration, enable = T.GetQuestLogSpecialItemCooldown(self.questLogIndex)
                else
                    start, duration, enable = T.GetItemCooldown(self.itemID)
                end
                T.CooldownFrame_Set(self.Cooldown, start, duration, enable)
                if (duration and duration > 0 and enable and enable == 0) then
                    self.t:SetVertexColor(0.4, 0.4, 0.4)
                elseif T.IsItemInRange(itemID, "target") == 0 then
                    self.t:SetVertexColor(1, 0, 0)
                else
                    self.t:SetVertexColor(1, 1, 1)
                end
            end)
            AutoButtonShow(AutoButton)
        end
    end
    
    local num = 0
    if E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["enable"] == true and E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotNum"] > 0 then
        for w = 1, 18 do
            local slotID = T.GetInventoryItemID("player", w)
            if slotID and IsSlotItem(slotID) and not E.db.lui.modules.actionbars.autoButtons.blackList[slotID] then
                local itemName, _, rarity = T.GetItemInfo(slotID)
                local itemIcon = T.GetInventoryItemTexture("player", w)
                num = num + 1
                if num > E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotNum"] then break end
                
                local AutoButton = _G["AutoSlotButton" .. num]
                if not AutoButton then break end

                AutoButton:SetBackdropBorderColor(nil)
                local iLvl,_,_,_,iLvlColor = E:GetGearSlotInfo("player", w, true)
                if iLvlColor and E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotBBColorByItem"] then
                    AutoButton:SetBackdropBorderColor(unpack(iLvlColor))
                else
                    local colorDB = E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotBBColor"]
                    local r, g, b = colorDB.r, colorDB.g, colorDB.b
                    AutoButton:SetBackdropBorderColor(r, g, b)
                end

                AutoButton.t:SetTexture(itemIcon)
                AutoButton.c:SetText("")
                AutoButton.slotID = w
                AutoButton.itemID = slotID
                AutoButton.spellName = IsUsableItem(slotID)
                
                AutoButton:SetScript("OnUpdate", function(self, elapsed)
                    local cd_start, cd_finish, cd_enable = T.GetInventoryItemCooldown("player", self.slotID)
                    T.CooldownFrame_Set(AutoButton.Cooldown, cd_start, cd_finish, cd_enable)
                end)
                AutoButtonShow(AutoButton)
            end
        end
    end
end

local lastUpdate = 0
function LAB:ScanItemCount(elapsed)
    lastUpdate = lastUpdate + elapsed
    if lastUpdate < 0.5 then
        return
    end
    lastUpdate = 0
    for i = 1, E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questNum"] do
        local f = _G["AutoQuestButton" .. i]
        if f and f.itemName then
            local count = T.GetItemCount(f.itemID, nil, 1)
            
            if count and count > 1 then
                f.c:SetText(count)
            else
                f.c:SetText("")
            end
        end
    end
end

function LAB:UpdateBind()
    if not E.db.lui.modules.actionbars["autoButtons"] then return end
    if E.db.lui.modules.actionbars.autoButtons.questAutoButtons["enable"] == true then
        for i = 1, E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questNum"] do
            local bindButton = "CLICK AutoQuestButton" .. i .. ":LeftButton"
            local button = _G["AutoQuestButton" .. i]
            local bindText = T.GetBindingKey(bindButton)
            if not bindText then
                bindText = ""
            else
                bindText = T.string_gsub(bindText, "SHIFT--", "S")
                bindText = T.string_gsub(bindText, "CTRL--", "C")
                bindText = T.string_gsub(bindText, "ALT--", "A")
            end
            
            if button then button.k:SetText(bindText) end
        end
    end

    if E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["enable"] == true then
        for i = 1, E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotNum"] do
            local bindButton = "CLICK AutoSlotButton" .. i .. ":LeftButton"
            local button = _G["AutoSlotButton" .. i]
            local bindText = T.GetBindingKey(bindButton)
            if not bindText then
                bindText = ""
            else
                bindText = T.string_gsub(bindText, "SHIFT--", "S")
                bindText = T.string_gsub(bindText, "CTRL--", "C")
                bindText = T.string_gsub(bindText, "ALT--", "A")
            end
            
            if button then button.k:SetText(bindText) end
        end
    end
end

function LAB:ToggleAutoButton()
    if E.db.lui.modules.actionbars.autoButtons["enable"] then
        self:RegisterEvent("UNIT_INVENTORY_CHANGED", "ScanItem")
        self:RegisterEvent("ZONE_CHANGED", "ScanItem")
        self:RegisterEvent("ZONE_CHANGED_NEW_AREA", "ScanItem")
        self:RegisterEvent("UPDATE_BINDINGS", "UpdateBind")
        self:RegisterEvent("QUEST_WATCH_LIST_CHANGED", GetQuestItemList)
        self:RegisterEvent("QUEST_LOG_UPDATE", GetQuestItemList)
        self:RegisterEvent("QUEST_ACCEPTED", GetWorldQuestItemList)
        self:RegisterEvent("QUEST_TURNED_IN", GetWorldQuestItemList)
        if not LAB.Update then LAB.Update = T.CreateFrame("Frame") end
        self.Update:SetScript("OnUpdate", LAB.ScanItemCount)
        self:ScanItem("FIRST")
        self:UpdateBind()
    else
        HideAllButton()
        self:UnregisterEvent("UNIT_INVENTORY_CHANGED")
        self:UnregisterEvent("ZONE_CHANGED")
        self:UnregisterEvent("ZONE_CHANGED_NEW_AREA")
        self:UnregisterEvent("UPDATE_BINDINGS")
        self:UnregisterEvent("QUEST_WATCH_LIST_CHANGED")
        self:UnregisterEvent("QUEST_LOG_UPDATE")
        if self.Update then self.Update:SetScript("OnUpdate", nil) end
    end
end

function LAB:UpdateAutoButton()
    local i = 0
    local lastButton, lastColumnButton, buttonsPerRow
    if E.db.lui.modules.actionbars.autoButtons.questAutoButtons["enable"] == true then
        for i = 1, E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questNum"] do
            local f = CreateButton("AutoQuestButton" .. i, E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questSize"])
            buttonsPerRow = E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questPerRow"]
            lastButton = _G["AutoQuestButton" .. i - 1]
            lastColumnButton = _G["AutoQuestButton" .. i - buttonsPerRow]
            
            if E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questNum"] < E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questPerRow"] then
                buttonsPerRow = E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questNum"]
            end
            f:ClearAllPoints()
            
            if i == 1 then
                f:Point("LEFT", AutoButtonAnchor, "LEFT", 0, 0)
            elseif (i - 1) % buttonsPerRow == 0 then
                f:Point("TOP", lastColumnButton, "BOTTOM", 0, -1)
            else
                if E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questDirection"] == "RIGHT" then
                    f:Point("LEFT", lastButton, "RIGHT", E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questSpace"], 0)
                elseif E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questDirection"] == "LEFT" then
                    f:Point("RIGHT", lastButton, "LEFT", -(E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questSpace"]), 0)
                end
            end
        end
    end

    if E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["enable"] == true then
        for i = 1, E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotNum"] do
            local f = CreateButton("AutoSlotButton" .. i, E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotSize"])
            buttonsPerRow = E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotPerRow"]
            lastButton = _G["AutoSlotButton" .. i - 1]
            lastColumnButton = _G["AutoSlotButton" .. i - buttonsPerRow]
            
            if E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotNum"] < E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotPerRow"] then
                buttonsPerRow = E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questNum"]
            end
            f:ClearAllPoints()
            
            if i == 1 then
                f:Point("LEFT", AutoButtonAnchor2, "LEFT", 0, 0)
            elseif (i - 1) % buttonsPerRow == 0 then
                f:Point("TOP", lastColumnButton, "BOTTOM", 0, -1)
            else
                if E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotDirection"] == "RIGHT" then
                    f:Point("LEFT", lastButton, "RIGHT", E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotSpace"], 0)
                elseif E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotDirection"] == "LEFT" then
                    f:Point("RIGHT", lastButton, "LEFT", -(E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotSpace"]), 0)
                end
            end
        end
    end
    self:ToggleAutoButton()
end

function LAB:Initialize()
    local AutoButtonAnchor = T.CreateFrame("Frame", "AutoButtonAnchor", UIParent)
    AutoButtonAnchor:SetClampedToScreen(true)
    AutoButtonAnchor:Point("BOTTOMLEFT", RightChatPanel or LeftChatPanel, "TOPLEFT", 0, 4)
    AutoButtonAnchor:Size(E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questSize"] or 40, E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questSize"] or 40)
    E:CreateMover(AutoButtonAnchor, "AutoButtonAnchorMover", L["LuiQuestAutoButtonsMover"], nil, nil, nil, "ALL,LIVVENUI", function() return E.db.lui.modules.actionbars.autoButtons["enable"] end)

    local AutoButtonAnchor2 = T.CreateFrame("Frame", "AutoButtonAnchor2", UIParent)
    AutoButtonAnchor2:SetClampedToScreen(true)
    AutoButtonAnchor2:Point("BOTTOMLEFT", RightChatPanel or LeftChatPanel, "TOPLEFT", 0, 48)
    AutoButtonAnchor2:Size(E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotSize"] or 40, E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotSize"] or 40)
    E:CreateMover(AutoButtonAnchor2, "AutoButtonAnchor2Mover", L["LuiSoltAutoButtonsMover"], nil, nil, nil, "ALL,LIVVENUI", function() return E.db.lui.modules.actionbars.autoButtons["enable"] end)

    self:UpdateAutoButton()
end

local function InitializeCallback()
    if not E.db.lui.modules.actionbars.autoButtons["enable"] then return end
    LAB:Initialize()
end

E:RegisterModule(LAB:GetName(), InitializeCallback)
