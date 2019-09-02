-- 来源：Already Known?
-- 作者：ahak
-- 链接：https://wow.curseforge.com/projects/alreadyknown
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "general", "alreadyKnown", "enable") then return end

local LMI = E:GetModule("LuiMisc")

local _G = _G
local knownTable = {}
local r, g, b
local questItems = {
    [128491] = 39359,
    [128251] = 39359,
    [128250] = 39358,
    [128489] = 39358,
}
local specialItems = {
    [152964] = {141605, 11, 269}
}

local S_PET_KNOWN = T.string_match(_G.ITEM_PET_KNOWN, "[^%(]+")

local scantip = T.CreateFrame("GameTooltip", "AKScanningTooltip", nil, "GameTooltipTemplate")
scantip:SetOwner(UIParent, "ANCHOR_NONE")

local function _checkIfKnown(itemLink)
    if knownTable[itemLink] then
        return true
    end
    local itemID = T.tonumber(itemLink:match("item:(%d+)"))
    if itemID and questItems[itemID] then
        if T.IsQuestFlaggedCompleted(questItems[itemID]) then
            knownTable[itemLink] = true
            return true
        end
        return false
    elseif itemID and specialItems[itemID] then
        local specialData = specialItems[itemID]
        local _, specialLink = T.GetItemInfo(specialData[1])
        if specialLink then
            local specialTbl = {T.string_split(":", specialLink)}
            local specialInfo = T.tonumber(specialTbl[specialData[2]])
            if specialInfo == specialData[3] then
                knownTable[itemLink] = true
                return true
            end
        end
        return false
    end
    
    if itemLink:match("|H(.-):") == "battlepet" then
        local _, battlepetID = T.string_split(":", itemLink)
        if T.C_PetJournal_GetNumCollectedInfo(battlepetID) > 0 then
            knownTable[itemLink] = true
            return true
        end
        return false
    end
    
    scantip:ClearLines()
    scantip:SetHyperlink(itemLink)
    
    local lines = scantip:NumLines()
    for i = 2, lines do
        local text = _G["AKScanningTooltipTextLeft" .. i]:GetText()
        if text == _G.ITEM_SPELL_KNOWN or T.string_match(text, S_PET_KNOWN) then
            if lines - i <= 3 then
                knownTable[itemLink] = true
            end
        elseif text == _G.TOY and _G["AKScanningTooltipTextLeft" .. i + 2] and _G["AKScanningTooltipTextLeft" .. i + 2]:GetText() == _G.ITEM_SPELL_KNOWN then
            knownTable[itemLink] = true
        end
    end
    return knownTable[itemLink] and true or false
end

local function _hookAH()
    local offset = T.FauxScrollFrame_GetOffset(BrowseScrollFrame)
    
    for i = 1, _G.NUM_BROWSE_TO_DISPLAY do
        if (_G["BrowseButton" .. i .. "Item"] and _G["BrowseButton" .. i .. "ItemIconTexture"]) or _G["BrowseButton" .. i].id then
            local itemLink
            if _G["BrowseButton" .. i].id then
                itemLink = T.GetAuctionItemLink("list", _G["BrowseButton" .. i].id)
            else
                itemLink = T.GetAuctionItemLink("list", offset + i)
            end
            
            if itemLink and _checkIfKnown(itemLink) then
                if _G["BrowseButton" .. i].id then
                    _G["BrowseButton" .. i].Icon:SetVertexColor(r, g, b)
                else
                    _G["BrowseButton" .. i .. "ItemIconTexture"]:SetVertexColor(r, g, b)
                end
            else
                if _G["BrowseButton" .. i].id then
                    _G["BrowseButton" .. i].Icon:SetVertexColor(1, 1, 1)
                    _G["BrowseButton" .. i].Icon:SetDesaturated(false)
                else
                    _G["BrowseButton" .. i .. "ItemIconTexture"]:SetVertexColor(1, 1, 1)
                    _G["BrowseButton" .. i .. "ItemIconTexture"]:SetDesaturated(false)
                end
            end
        end
    end
end

local function _hookMerchant()
    for i = 1, _G.MERCHANT_ITEMS_PER_PAGE do
        local index = (((MerchantFrame.page - 1) * _G.MERCHANT_ITEMS_PER_PAGE) + i)
        local itemButton = _G["MerchantItem" .. i .. "ItemButton"]
        local merchantButton = _G["MerchantItem" .. i]
        local itemLink = T.GetMerchantItemLink(index)
        
        if itemLink and _checkIfKnown(itemLink) then
            T.SetItemButtonNameFrameVertexColor(merchantButton, r, g, b)
            T.SetItemButtonSlotVertexColor(merchantButton, r, g, b)
            T.SetItemButtonTextureVertexColor(itemButton, 0.9 * r, 0.9 * g, 0.9 * b)
            T.SetItemButtonNormalTextureVertexColor(itemButton, 0.9 * r, 0.9 * g, 0.9 * b)
        else
            _G["MerchantItem" .. i .. "ItemButtonIconTexture"]:SetDesaturated(false)
        end
    end
end

function LMI:LoadAlreadyKnown()
    r, g, b = E.db.lui.modules.misc.general["alreadyKnown"].color.r, E.db.lui.modules.misc.general["alreadyKnown"].color.g, E.db.lui.modules.misc.general["alreadyKnown"].color.b
    local f = T.CreateFrame("Frame")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("OnEvent", function(self, event, ...)
        if event == "ADDON_LOADED" then
            if T.IsAddOnLoaded("Blizzard_AuctionUI") then
                self:UnregisterEvent(event)
                if T.IsAddOnLoaded("Auc-Advanced") and _G.AucAdvanced.Settings.GetSetting("util.compactui.activated") then
                    T.hooksecurefunc("GetNumAuctionItems", _hookAH)
                else
                    T.hooksecurefunc("AuctionFrameBrowse_Update", _hookAH)
                end
            end
            T.hooksecurefunc("MerchantFrame_UpdateMerchantInfo", _hookMerchant)
        elseif event == "ADDON_LOADED" and (...) == "Blizzard_AuctionUI" then
            self:UnregisterEvent(event)
            if T.IsAddOnLoaded("Auc-Advanced") and _G.AucAdvanced.Settings.GetSetting("util.compactui.activated") then
                T.hooksecurefunc("GetNumAuctionItems", _hookAH)
            else
                T.hooksecurefunc("AuctionFrameBrowse_Update", _hookAH)
            end
        end
    end)
end
