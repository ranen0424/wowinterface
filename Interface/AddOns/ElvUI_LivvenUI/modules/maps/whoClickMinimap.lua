--来源：LivvenUI
--作者：L
--修改：
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "maps", "general", "whoClickMinimap") then return end

local LWCM = E:NewModule("LuiWhoClickMinimap")

function LWCM:Initialize()
    local addon = T.CreateFrame("ScrollingMessageFrame", false, Minimap)
    addon:SetHeight(12)
    addon:SetWidth(100)
    addon:SetPoint("BOTTOM", Minimap, 0, 20)
    
    addon:SetFont(STANDARD_TEXT_FONT, 12, "")
    addon:SetJustifyH("CENTER")
    addon:SetJustifyV("CENTER")
    addon:SetMaxLines(1)
    addon:SetFading(true)
    addon:SetFadeDuration(3)
    addon:SetTimeVisible(5)
    
    addon:RegisterEvent("MINIMAP_PING")
    addon:SetScript("OnEvent", function(self, event, u)
        local c = RAID_CLASS_COLORS[select(2, T.UnitClass(u))]
        local name = T.UnitName(u)
        addon:AddMessage(name, c.r, c.g, c.b)
    end)
end

local function InitializeCallback()
    if not E.db.lui.modules.maps.general["whoClickMinimap"] then return end
	LWCM:Initialize()
end

E:RegisterModule(LWCM:GetName(), InitializeCallback)
