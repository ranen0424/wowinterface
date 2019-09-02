-- local LUI, T, E, L, V, P, G = unpack(select(2, ...))
-- if LUI:CheckDB("db", "modules", "tooltip", "noShiftKeyDown") then return end
-- local LNSK = E:NewModule("LuiNoShiftKeyDown", "AceHook-3.0")
-- local TT = E:GetModule('Tooltip')

-- function LNSK:Initialize()
--     hooksecurefunc(TT, "GameTooltip_OnTooltipSetUnit", function(self, tt)
--         if tt:IsForbidden() then return end
--         local unit = select(2, tt:GetUnit())
--         local isPlayerUnit = T.UnitIsPlayer(unit)
--         if((tt:GetOwner() ~= _G.UIParent) and (self.db.visibility and self.db.visibility.unitFrames ~= 'NONE')) then
--             local modifier = self.db.visibility.unitFrames
    
--             if(modifier == 'ALL' or not ((modifier == 'SHIFT' and isShiftKeyDown) or (modifier == 'CTRL' and isControlKeyDown) or (modifier == 'ALT' and IsAltKeyDown()))) then
--                 tt:Hide()
--                 return
--             end
--         end
--         if not unit then
--             local GMF = T.GetMouseFocus()
--             if GMF and GMF.GetAttribute and GMF:GetAttribute("unit") then
--                 unit = GMF:GetAttribute("unit")
--             end
--             if not unit or not T.UnitExists(unit) then
--                 return
--             end
--         end
--         self:RemoveTrashLines(tt)

--         if isPlayerUnit and not T.IsInGroup() then
--             local color = self:SetUnitText(tt, unit, T.UnitLevel(unit))
--             self:AddInspectInfo(tt, unit, 0, color.r, color.g, color.b)
--         end
--     end)
-- end

-- local function InitializeCallback()
--     if not E.db.lui.modules.tooltip["noShiftKeyDown"] then return end
--     LNSK:Initialize()
-- end

-- E:RegisterModule(LNSK:GetName(), InitializeCallback)