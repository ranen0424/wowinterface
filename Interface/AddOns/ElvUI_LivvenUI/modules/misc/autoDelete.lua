--来源：LivvenUI
--作者：L
--修改：
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "general", "autoDelete") then return end

local LMI = E:GetModule("LuiMisc")

local Panel = StaticPopupDialogs["DELETE_GOOD_ITEM"]

local function AddText(boxEditor)
    boxEditor.editBox:SetText("DELETE")
end

function LMI:LoadAutoDelete()
    T.hooksecurefunc(Panel, "OnShow", AddText)
end
