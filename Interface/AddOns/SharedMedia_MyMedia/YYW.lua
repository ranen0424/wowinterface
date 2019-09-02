local function defaultcvar()
SetCVar("overrideArchive", 0) --和谐国服  1:开启      0:关闭
SetCVar("screenshotQuality", 10) --截图品质(10最高) 
SetCVar("screenshotFormat", "jpg") --截图格式，tga或jpg 
end 
local frame = CreateFrame("FRAME", "defaultcvar") 
   frame:RegisterEvent("PLAYER_ENTERING_WORLD") 
local function eventHandler(self, event, ...) 
         defaultcvar() 
end 
--国服组队满员时报错修正
frame:SetScript("OnEvent", eventHandler)
ITEM_CREATED_BY=""
if GetLocale() == "zhCN" then 
   StaticPopupDialogs["LFG_LIST_ENTRY_EXPIRED_TOO_MANY_PLAYERS"] = { 
          text = "", 
          button1 = OKAY, 
          timeout = 0.001, 
          whileDead = 1, 
          preferredIndex = 3,
} 
end;
--国服8.0打开社区报错修正
if not GuildControlUIRankSettingsFrameRosterLabel then
GuildControlUIRankSettingsFrameRosterLabel = CreateFrame("frame")
GuildControlUIRankSettingsFrameRosterLabel:Hide()
end
--alt点击批量购买
local savedMerchantItemButton_OnModifiedClick = MerchantItemButton_OnModifiedClick 
function MerchantItemButton_OnModifiedClick(self, ...) 
   if ( IsAltKeyDown() ) then 
      local itemLink = GetMerchantItemLink(self:GetID()) 
      if not itemLink then return end 
      local maxStack = select(8, GetItemInfo(itemLink)) 
      if ( maxStack and maxStack > 1 ) then 
         BuyMerchantItem(self:GetID(), GetMerchantItemMaxStack(self:GetID())) 
      end 
   end 
   savedMerchantItemButton_OnModifiedClick(self, ...) 
end

--自动Delete
hooksecurefunc(StaticPopupDialogs["DELETE_GOOD_ITEM"],"OnShow",function(boxEditor) boxEditor.editBox:SetText(DELETE_ITEM_CONFIRM_STRING) end)

