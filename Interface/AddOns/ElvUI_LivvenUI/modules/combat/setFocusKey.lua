-- 来源：EUI
-- 作者：EUI
-- 链接：
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LSFK = E:NewModule("LuiSetFocusKey")

local function SetFocusHotkey(frame)
    if not frame then return end
    frame:SetAttribute(E.db.lui.modules.combat.combatShortcut.setFocusKey["setFocusButton1"] .. "-type" .. E.db.lui.modules.combat.combatShortcut.setFocusKey["setFocusButton2"], "focus")
end

local function CreateFrame_Hook(type, name, parent, template)
    if template == "SecureUnitButtonTemplate" then
        SetFocusHotkey(_G[name])
    end
end

function LSFK:Initialize()
    T.hooksecurefunc("CreateFrame", CreateFrame_Hook)
    local f = T.CreateFrame("CheckButton", "FocuserButton", E.UIParent, "SecureActionButtonTemplate")
    f:SetAttribute("type1", "macro")
    f:SetAttribute("macrotext", "/focus mouseover")
    T.SetOverrideBindingClick(FocuserButton, true, E.db.lui.modules.combat.combatShortcut.setFocusKey["setFocusButton1"] .. "-BUTTON" .. E.db.lui.modules.combat.combatShortcut.setFocusKey["setFocusButton2"], "FocuserButton")
    local duf = {
        PlayerFrame,
        PetFrame,
        TargetFrame,
        TargetFrameToT,
        FocusFrame,
        FocusFrameToT,

        PartyMemberFrame1,
        PartyMemberFrame2,
        PartyMemberFrame3,
        PartyMemberFrame4,

        ElvUF_Player,
        ElvUF_Target,
        ElvUF_TargetTarget,

        ElvUF_PartyGroup1UnitButton1,
        ElvUF_PartyGroup1UnitButton2,
        ElvUF_PartyGroup1UnitButton3,
        ElvUF_PartyGroup1UnitButton4,
        ElvUF_PartyGroup1UnitButton5,
        ElvUF_PartyGroup2UnitButton1,
        ElvUF_PartyGroup2UnitButton2,
        ElvUF_PartyGroup2UnitButton3,
        ElvUF_PartyGroup2UnitButton4,
        ElvUF_PartyGroup2UnitButton5,
        ElvUF_PartyGroup3UnitButton1,
        ElvUF_PartyGroup3UnitButton2,
        ElvUF_PartyGroup3UnitButton3,
        ElvUF_PartyGroup3UnitButton4,
        ElvUF_PartyGroup3UnitButton5,
        ElvUF_PartyGroup4UnitButton1,
        ElvUF_PartyGroup4UnitButton2,
        ElvUF_PartyGroup4UnitButton3,
        ElvUF_PartyGroup4UnitButton4,
        ElvUF_PartyGroup4UnitButton5,
        ElvUF_PartyGroup5UnitButton1,
        ElvUF_PartyGroup5UnitButton2,
        ElvUF_PartyGroup5UnitButton3,
        ElvUF_PartyGroup5UnitButton4,
        ElvUF_PartyGroup5UnitButton5,
        ElvUF_PartyGroup6UnitButton1,
        ElvUF_PartyGroup6UnitButton2,
        ElvUF_PartyGroup6UnitButton3,
        ElvUF_PartyGroup6UnitButton4,
        ElvUF_PartyGroup6UnitButton5,
        ElvUF_PartyGroup7UnitButton1,
        ElvUF_PartyGroup7UnitButton2,
        ElvUF_PartyGroup7UnitButton3,
        ElvUF_PartyGroup7UnitButton4,
        ElvUF_PartyGroup7UnitButton5,
        ElvUF_PartyGroup8UnitButton1,
        ElvUF_PartyGroup8UnitButton2,
        ElvUF_PartyGroup8UnitButton3,
        ElvUF_PartyGroup8UnitButton4,
        ElvUF_PartyGroup8UnitButton5,

        ElvUF_RaidGroup1UnitButton1,
        ElvUF_RaidGroup1UnitButton2,
        ElvUF_RaidGroup1UnitButton3,
        ElvUF_RaidGroup1UnitButton4,
        ElvUF_RaidGroup1UnitButton5,
        ElvUF_RaidGroup2UnitButton1,
        ElvUF_RaidGroup2UnitButton2,
        ElvUF_RaidGroup2UnitButton3,
        ElvUF_RaidGroup2UnitButton4,
        ElvUF_RaidGroup2UnitButton5,
        ElvUF_RaidGroup3UnitButton1,
        ElvUF_RaidGroup3UnitButton2,
        ElvUF_RaidGroup3UnitButton3,
        ElvUF_RaidGroup3UnitButton4,
        ElvUF_RaidGroup3UnitButton5,
        ElvUF_RaidGroup4UnitButton1,
        ElvUF_RaidGroup4UnitButton2,
        ElvUF_RaidGroup4UnitButton3,
        ElvUF_RaidGroup4UnitButton4,
        ElvUF_RaidGroup4UnitButton5,
        ElvUF_RaidGroup5UnitButton1,
        ElvUF_RaidGroup5UnitButton2,
        ElvUF_RaidGroup5UnitButton3,
        ElvUF_RaidGroup5UnitButton4,
        ElvUF_RaidGroup5UnitButton5,
        ElvUF_RaidGroup6UnitButton1,
        ElvUF_RaidGroup6UnitButton2,
        ElvUF_RaidGroup6UnitButton3,
        ElvUF_RaidGroup6UnitButton4,
        ElvUF_RaidGroup6UnitButton5,
        ElvUF_RaidGroup7UnitButton1,
        ElvUF_RaidGroup7UnitButton2,
        ElvUF_RaidGroup7UnitButton3,
        ElvUF_RaidGroup7UnitButton4,
        ElvUF_RaidGroup7UnitButton5,
        ElvUF_RaidGroup8UnitButton1,
        ElvUF_RaidGroup8UnitButton2,
        ElvUF_RaidGroup8UnitButton3,
        ElvUF_RaidGroup8UnitButton4,
        ElvUF_RaidGroup8UnitButton5,

        ElvUF_Raid40Group1UnitButton1,
        ElvUF_Raid40Group1UnitButton2,
        ElvUF_Raid40Group1UnitButton3,
        ElvUF_Raid40Group1UnitButton4,
        ElvUF_Raid40Group1UnitButton5,
        ElvUF_Raid40Group2UnitButton1,
        ElvUF_Raid40Group2UnitButton2,
        ElvUF_Raid40Group2UnitButton3,
        ElvUF_Raid40Group2UnitButton4,
        ElvUF_Raid40Group2UnitButton5,
        ElvUF_Raid40Group3UnitButton1,
        ElvUF_Raid40Group3UnitButton2,
        ElvUF_Raid40Group3UnitButton3,
        ElvUF_Raid40Group3UnitButton4,
        ElvUF_Raid40Group3UnitButton5,
        ElvUF_Raid40Group4UnitButton1,
        ElvUF_Raid40Group4UnitButton2,
        ElvUF_Raid40Group4UnitButton3,
        ElvUF_Raid40Group4UnitButton4,
        ElvUF_Raid40Group4UnitButton5,
        ElvUF_Raid40Group5UnitButton1,
        ElvUF_Raid40Group5UnitButton2,
        ElvUF_Raid40Group5UnitButton3,
        ElvUF_Raid40Group5UnitButton4,
        ElvUF_Raid40Group5UnitButton5,
        ElvUF_Raid40Group6UnitButton1,
        ElvUF_Raid40Group6UnitButton2,
        ElvUF_Raid40Group6UnitButton3,
        ElvUF_Raid40Group6UnitButton4,
        ElvUF_Raid40Group6UnitButton5,
        ElvUF_Raid40Group7UnitButton1,
        ElvUF_Raid40Group7UnitButton2,
        ElvUF_Raid40Group7UnitButton3,
        ElvUF_Raid40Group7UnitButton4,
        ElvUF_Raid40Group7UnitButton5,
        ElvUF_Raid40Group8UnitButton1,
        ElvUF_Raid40Group8UnitButton2,
        ElvUF_Raid40Group8UnitButton3,
        ElvUF_Raid40Group8UnitButton4,
        ElvUF_Raid40Group8UnitButton5,

        ElvUF_Boss1,
        ElvUF_Boss2,
        ElvUF_Boss3,
        ElvUF_Boss4,
        ElvUF_Boss5,
    }
    
    for i, frame in T.pairs(duf) do
        SetFocusHotkey(frame)
    end
end

local function InitializeCallback()
    if E.db.lui.modules.combat.combatShortcut.setFocusKey["setFocusButton1"] == "none" then return end
	LSFK:Initialize()
end

E:RegisterModule(LSFK:GetName(), InitializeCallback)

