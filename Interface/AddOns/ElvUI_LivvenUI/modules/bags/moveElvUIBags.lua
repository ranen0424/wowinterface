--来源：LivvenUI
--作者：L
--修改：
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "bags", "moveElvUIBags") then return end
local LMEB = E:NewModule("LuiMoveElvUIBags")
local B = E:GetModule('Bags')

local _G = _G

function LMEB:MoveBank()
    local f = _G["ElvUI_BankContainerFrame"]
    
    if E.db.lui.modules.bags.enhancedElvUIBank["moveElvUIBank"] then
        f:SetScript("OnDragStart", function(f)
            f:StartMoving()
        end)
    end

    if E.db.lui.modules.bags.enhancedElvUIBank["showBankTab"] then
        B:ShowBankTab(f, f.holderFrame:IsShown())
        B:Layout(true)
        f:Show()
    end

    if E.db.lui.modules.bags.enhancedElvUIBank["autoDepositReagents"] then
        T.DepositReagentBank()
    end
end


function LMEB:Initialize()
    if E.db.lui.modules.bags["moveElvUIBags"] then
        local f = _G["ElvUI_ContainerFrame"]
        if not f then return end
        f:SetScript("OnDragStart", function(f)
            f:StartMoving()
        end)
        if (T.GetLocale() == "zhCN") then
            L["Hold Shift + Drag:"] = "按住鼠标左键:"
        elseif (T.GetLocale() == "zhTW") then
            L["Hold Shift + Drag:"] = "按住滑鼠左鍵:"
        else
            L["Hold Shift + Drag:"] = "Hold Drag:"
        end
    end

    T.hooksecurefunc(B, "OpenBank", LMEB.MoveBank)
end

local function InitializeCallback()
    LMEB:Initialize()
end

E:RegisterModule(LMEB:GetName(), InitializeCallback)