-- 来源：爱不易
-- 作者：爱不易
-- 链接：
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "tooltip", "atlasLootReverse") then return end

local LALR = E:NewModule("LuiAtlasLootReverse")

local db

function LALR:OnTooltipSetItem(tooltip, item)
    item = item or select(2, tooltip:GetItem())
    if type(item) == "string" then
        local _, itemId = strsplit(":", item)
        local from = db.whoTable[tonumber(itemId)]
        if from then
            for id in string.gmatch(from, "[^,]+") do
                local v = db.sources[tonumber(id)]
                if not string.find(v, "Tier ") and not string.find(v, "Tabards") and not string.find(v, "PvP ") then
                    v = string.format(L["Drops from %s"], v)
                end
                tooltip:AddLine(v, .7, .7, 1)
            end
        end
    end
end

function LALR:OnInitialize()
    db = LALR.AtlasLootReverseDB or {}
    db.sources = db.sources or {}
    db.whoTable = db.whoTable or {}
    local OnTooltipSetItem = function(...)
        return LALR:OnTooltipSetItem(...)
    end
    for _, tip in next, {"GameTooltip", "ItemRefTooltip", "ShoppingTooltip1", "ShoppingTooltip2", "ShoppingTooltip3", "AtlasLootTooltipTEMP"} do
        local f = _G[tip]
        if (f) then
            local origin = f:GetScript("OnTooltipSetItem")
            if not origin then
                f:SetScript("OnTooltipSetItem", OnTooltipSetItem)
            else
                f:SetScript("OnTooltipSetItem", function(...)
                    origin(...)
                    return OnTooltipSetItem(...)
                end)
            end
        end
    end
end
