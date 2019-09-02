local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "blizzard", "minimapWheel") then return end
local LMW = E:NewModule("LuiMinimapWheel")

function LMW:Initialize()
    Minimap:EnableMouseWheel(true)
    Minimap:SetScript("OnMouseWheel", function(self, wheel)
        if wheel > 0 then
            _G.MinimapZoomIn:Click()
        elseif wheel < 0 then
            _G.MinimapZoomOut:Click()
        end
    end)
end

local function InitializeCallback()
    if not E.db.lui.modules.blizzard.general["minimapWheel"] then return end
    LMW:Initialize()
end

E:RegisterModule(LMW:GetName(), InitializeCallback)
