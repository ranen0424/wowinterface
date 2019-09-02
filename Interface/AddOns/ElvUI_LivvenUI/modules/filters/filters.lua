local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LFI = E:NewModule("LuiFilters")

function LFI:Initialize()
    if E.global.lui.modules.filters.infoFilter["enable"] then self:LoadInfoFilter() end
    if E.global.lui.modules.filters.pmFilter["enable"] then self:LoadPMFilter() end
end

local function InitializeCallback()
	LFI:Initialize()
end

E:RegisterModule(LFI:GetName(), InitializeCallback)
