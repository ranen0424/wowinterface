local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "tooltip", "daisyCosp") then return end
local huanhuadata = LibStub("LibItemData-1.1")
local LDC = E:NewModule("LuiDaisyCosp", "AceHook-3.0")

local function CreateHHInfo(tooltip, itemID)
    local iType, subType, setName, setsdata = huanhuadata:FindItem(itemID)
    if (iType) then
        local curCount, totalCount = LDC:GetSetItemCount(setsdata)
        local text = "[" .. L["Transmogrify"] .. "]"
        text = text .. setName .. "(" .. curCount .. "/" .. totalCount .. ")"
        tooltip:AddLine(text, 0.97, 0.51, 0.97)
        for i, id in T.ipairs(setsdata) do
            local name = T.GetItemInfo(id)
            local c = T.GetItemCount(id)
            if (c > 0) then
                tooltip:AddLine(name, 1, 1, 1)
            else
                tooltip:AddLine(name, 0.62, 0.62, 0.62)
            end
        end
        tooltip:AddLine(SPLASH_LEGION_NEW_7_2_FEATURE2_TITLE .. "-" .. iType .. "-" .. subType, 0.9, 0.9, 0.9)
        tooltip:AddLine(L["DAISYCOSP_DESC"], 0, 0.6, 0.8)
    end
end

function LDC:GetSetItemCount(sets)
    local count = 0
    for i, itemID in T.ipairs(sets) do
        local c = T.GetItemCount(itemID)
        if (c > 0) then
            count = count + 1
        end
    end
    return count, #sets
end

function LDC:DressUpItemLink(link)
    if T.IsAltKeyDown() then
        local itemID = T.string_match(link, "item:(%d+)")
        local iType, subType, setName, setsdata = huanhuadata:FindItem(itemID)
        if (not iType) then
            return
        end
        
        local model = DressUpModel
        if (SideDressUpFrame.parentFrame and SideDressUpFrame.parentFrame:IsShown()) then
            model = SideDressUpModel
        end
        
        model:Undress()
        for _, id in T.ipairs(setsdata) do
            if (T.IsDressableItem(id)) then
                model:TryOn(id)
            end
        end
    end
end

GameTooltip:HookScript("OnTooltipSetItem", function(tooltip, ...)
    if E.private.tooltip["enable"] ~= true or not E.db.lui.modules.tooltip["daisyCosp"] or LUI:IsPRType() then return end
    
    local item = select(2, tooltip:GetItem())
    if not item then return end
    local itemID = T.string_match(item, "item:(%d+)")
    
    if itemID then
        CreateHHInfo(tooltip, itemID)
    end
end)

function LDC:Initialize()
    if E.private.tooltip["enable"] ~= true or not E.db.lui.modules.tooltip["daisyCosp"] or LUI:IsPRType() then return end
    self:SecureHook("DressUpItemLink")
end

local function InitializeCallback()
    LDC:Initialize()
end

E:RegisterModule(LDC:GetName(), InitializeCallback)
