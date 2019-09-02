--来源：EUI
--作者：EUI
--修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "chat", "chatBar", "enable") then return end
local LCB = E:GetModule("LuiChatBar")

local STAT_VERSATILITY, STAT_MULTISTRIKE, STAT_LIFESTEAL = STAT_VERSATILITY, STAT_MULTISTRIKE, STAT_LIFESTEAL

local MyData = {}
local L = {}
if (T.GetLocale() == "zhCN") then
    L.StatReport_Strings_COMMA = "，"
    L.StatReport_Strings_END = "。"
    L.StatReport_Strings_LV = "等级"
    L.StatReport_Strings_CLASS = "职业"
    L.StatReport_Strings_HP = "生命"
    L.StatReport_Strings_MP = "法力"
    L.StatReport_Strings_TALENT = "天赋"
    L.StatReport_Strings_STR = "力量"
    L.StatReport_Strings_AGI = "敏捷"
    L.StatReport_Strings_STA = "耐力"
    L.StatReport_Strings_INT = "智力"
    L.StatReport_Strings_SPI = "精神"
    L.StatReport_Strings_AP = "强度"
    L.StatReport_Strings_HIT = "命中"
    L.StatReport_Strings_CRIT = "爆击"
    L.StatReport_Strings_MST = "精通"
    L.StatReport_Strings_EXPER = "精准"
    L.StatReport_Strings_SSP = "法伤"
    L.StatReport_Strings_SHP = "治疗"
    L.StatReport_Strings_HASTE = "急速"
    L.StatReport_Strings_SMR = "5秒战斗回蓝"
    L.StatReport_Strings_ARMOR = "护甲"
    L.StatReport_Strings_DEF = "防御"
    L.StatReport_Strings_DODGE = "躲闪"
    L.StatReport_Strings_PARRY = "招架"
    L.StatReport_Strings_BLOCK = "格挡"
    L.StatReport_Strings_CRDEF = "PvP韧性"
    L.StatReport_Strings_CRPP = "PvP强度"
    L.StatReport_Strings_NONE = "无"
    L.StatReport_Strings_ILVL = "装等"
    L.StatReport_Strings_MRPEN = "护甲穿透"
    L.EUI_StatReport = "属性通报"
    L.ArtifactForgeLevel = "神器总等级"
    L.INFO_DURABILITY_TIP = "左键:发送属性报告"
    L.INFO_DURABILITY_TIP2 = "右键:发送BOSS攻略"
elseif (T.GetLocale() == "zhTW") then
    L.StatReport_Strings_COMMA = "，"
    L.StatReport_Strings_END = "。"
    L.StatReport_Strings_LV = "等級"
    L.StatReport_Strings_CLASS = "職業"
    L.StatReport_Strings_HP = "生命"
    L.StatReport_Strings_MP = "法力"
    L.StatReport_Strings_TALENT = "天賦"
    L.StatReport_Strings_STR = "力量"
    L.StatReport_Strings_AGI = "敏捷"
    L.StatReport_Strings_STA = "耐力"
    L.StatReport_Strings_INT = "智力"
    L.StatReport_Strings_SPI = "精神"
    L.StatReport_Strings_AP = "強度"
    L.StatReport_Strings_HIT = "命中"
    L.StatReport_Strings_CRIT = "爆擊"
    L.StatReport_Strings_MST = "精通"
    L.StatReport_Strings_EXPER = "熟練"
    L.StatReport_Strings_SSP = "法傷"
    L.StatReport_Strings_SHP = "治療"
    L.StatReport_Strings_HASTE = "急速"
    L.StatReport_Strings_SMR = "5秒法力回復"
    L.StatReport_Strings_ARMOR = "護甲"
    L.StatReport_Strings_DEF = "防禦"
    L.StatReport_Strings_DODGE = "閃躲"
    L.StatReport_Strings_PARRY = "招架"
    L.StatReport_Strings_BLOCK = "格擋"
    L.StatReport_Strings_CRDEF = "PvP韌性"
    L.StatReport_Strings_CRPP = "PvP強度"
    L.StatReport_Strings_NONE = "無"
    L.StatReport_Strings_ILVL = "裝等"
    L.StatReport_Strings_MRPEN = "護甲穿透"
    L.EUI_StatReport = "屬性通報"
    L.ArtifactForgeLevel = "神器總等級"
    L.INFO_DURABILITY_TIP = "左鍵:發送屬性報告"
    L.INFO_DURABILITY_TIP2 = "右鍵:發送BOSS攻略"
else
    L.StatReport_Strings_COMMA = ", "
    L.StatReport_Strings_END = "."
    L.StatReport_Strings_LV = "Lvl"
    L.StatReport_Strings_CLASS = "Class"
    L.StatReport_Strings_HP = "HP"
    L.StatReport_Strings_MP = "Mana"
    L.StatReport_Strings_TALENT = "Talent"
    L.StatReport_Strings_STR = "Str"
    L.StatReport_Strings_AGI = "Agi"
    L.StatReport_Strings_STA = "Sta"
    L.StatReport_Strings_INT = "Int"
    L.StatReport_Strings_SPI = "Spi"
    L.StatReport_Strings_AP = "AP"
    L.StatReport_Strings_HIT = "HR"
    L.StatReport_Strings_CRIT = "Crit"
    L.StatReport_Strings_MST = "Master"
    L.StatReport_Strings_EXPER = "Exp"
    L.StatReport_Strings_SSP = "Bonus Dam"
    L.StatReport_Strings_SHP = "Bonus Heal"
    L.StatReport_Strings_HASTE = "Haste"
    L.StatReport_Strings_SMR = "MP5"
    L.StatReport_Strings_ARMOR = "Armor"
    L.StatReport_Strings_DEF = "Def"
    L.StatReport_Strings_DODGE = "Dodge"
    L.StatReport_Strings_PARRY = "Parry"
    L.StatReport_Strings_BLOCK = "Block"
    L.StatReport_Strings_CRDEF = "PvPRes"
    L.StatReport_Strings_CRPP = "PvPCR"
    L.StatReport_Strings_NONE = "None"
    L.StatReport_Strings_ILVL = "iLevel"
    L.StatReport_Strings_MRPEN = "Penetration"
    L.EUI_StatReport = "Status Report"
    L.ArtifactForgeLevel = "Artifact Forge Level"
    L.INFO_DURABILITY_TIP = "Left:Send status report"
    L.INFO_DURABILITY_TIP2 = "Right:send boss notes"
end

LCB.L = L

local function StatReport_GetPvPSpecText(switch)
    local text = ""
    if T.GetCombatRating(16) > 0 then
        text = text .. L.StatReport_Strings_CRDEF .. "：" .. MyData.CRDEF
        text = text .. L.StatReport_Strings_COMMA
    end
    if T.GetCombatRating(27) > 0 then
        text = text .. L.StatReport_Strings_CRPP .. "：" .. MyData.CRPP
        text = text .. L.StatReport_Strings_COMMA
    end
    if switch or T.GetCombatRating(16) > 0 or T.GetCombatRating(27) > 0 then
        text = text .. L.StatReport_Strings_HP .. "：" .. MyData.HP
        text = text .. L.StatReport_Strings_COMMA
    end
    
    return text
end

local function StatReport_GetSpellText()
    local text = ""
    text = text .. StatReport_GetPvPSpecText()
    if T.GetCombatRating(20) > 0 then
        text = text .. L.StatReport_Strings_HASTE .. "：" .. MyData.SHASTE
        text = text .. L.StatReport_Strings_COMMA
    end
    if T.GetCombatRating(8) > 0 then
        text = text .. L.StatReport_Strings_HIT .. "：" .. MyData.SHIT
        text = text .. L.StatReport_Strings_COMMA
    end
    text = text .. L.StatReport_Strings_CRIT .. "：" .. MyData.SCRIT
    text = text .. L.StatReport_Strings_COMMA
    text = text .. L.StatReport_Strings_SSP .. "：" .. MyData.SSP
    
    return text
end

local function StatReport_GetHealText()
    local text = "" text = text .. StatReport_GetPvPSpecText()
    if T.GetCombatRating(20) > 0 then
        text = text .. L.StatReport_Strings_HASTE .. "：" .. MyData.SHASTE
        text = text .. L.StatReport_Strings_COMMA
    end
    text = text .. L.StatReport_Strings_CRIT .. "：" .. MyData.SCRIT
    text = text .. L.StatReport_Strings_COMMA
    text = text .. L.StatReport_Strings_SHP .. "：" .. MyData.SHP
    
    return text
end

local function StatReport_GetSpellAndHealText()
    local text = ""
    text = text .. StatReport_GetPvPSpecText()
    if T.GetCombatRating(20) > 0 then
        text = text .. L.StatReport_Strings_HASTE .. "：" .. MyData.SHASTE
        text = text .. L.StatReport_Strings_COMMA
    end
    if T.GetCombatRating(8) > 0 then
        text = text .. L.StatReport_Strings_HIT .. "：" .. MyData.SHIT
        text = text .. L.StatReport_Strings_COMMA
    end
    text = text .. L.StatReport_Strings_CRIT .. "：" .. MyData.SCRIT
    text = text .. L.StatReport_Strings_COMMA
    text = text .. L.StatReport_Strings_SSP .. "：" .. MyData.SSP
    text = text .. L.StatReport_Strings_COMMA
    text = text .. L.StatReport_Strings_SHP .. "：" .. MyData.SHP
    
    return text
end

local function StatReport_GetMeleeText()
    local text = "" text = text .. StatReport_GetPvPSpecText()
    if T.GetCombatRating(18) > 0 then
        text = text .. L.StatReport_Strings_HASTE .. "：" .. MyData.MHASTE
        text = text .. L.StatReport_Strings_COMMA
    end
    if T.GetCombatRating(6) > 0 then
        text = text .. L.StatReport_Strings_HIT .. "：" .. MyData.MHIT
        text = text .. L.StatReport_Strings_COMMA
    end
    if T.GetCombatRating(9) > 0 then
        text = text .. L.StatReport_Strings_CRIT .. "：" .. MyData.MCRIT
        text = text .. L.StatReport_Strings_COMMA
    end
    if T.GetCombatRating(24) > 0 then
        text = text .. L.StatReport_Strings_EXPER .. "：" .. MyData.MEXPER
        text = text .. L.StatReport_Strings_COMMA
    end
    text = text .. L.StatReport_Strings_AP .. "：" .. MyData.MAP
    return text
end

local function StatReport_GetRangedText()
    local text = ""
    text = text .. StatReport_GetPvPSpecText()
    if T.GetCombatRating(19) > 0 then
        text = text .. L.StatReport_Strings_HASTE .. "：" .. MyData.RHASTE
        text = text .. L.StatReport_Strings_COMMA
    end
    if T.GetCombatRating(7) > 0 then
        text = text .. L.StatReport_Strings_HIT .. "：" .. MyData.RHIT
        text = text .. L.StatReport_Strings_COMMA
    end
    if T.GetCombatRating(10) > 0 then
        text = text .. L.StatReport_Strings_CRIT .. "：" .. MyData.RCRIT
        text = text .. L.StatReport_Strings_COMMA
    end
    if T.GetCombatRating(24) > 0 then
        text = text .. L.StatReport_Strings_EXPER .. "：" .. MyData.REXPER
        text = text .. L.StatReport_Strings_COMMA
    end
    text = text .. L.StatReport_Strings_AP .. "：" .. MyData.RAP
    
    return text
end

local function StatReport_GetTankText(rHaste)
    local text = ""
    text = text .. StatReport_GetPvPSpecText(1)
    text = text .. L.StatReport_Strings_DODGE .. "：" .. MyData.DODGE
    text = text .. L.StatReport_Strings_COMMA
    if T.GetCombatRating(6) > 0 then
        text = text .. L.StatReport_Strings_HIT .. "：" .. MyData.MHIT
        text = text .. L.StatReport_Strings_COMMA
    end
    if T.GetCombatRating(24) > 0 then
        text = text .. L.StatReport_Strings_EXPER .. "：" .. MyData.MEXPER
        text = text .. L.StatReport_Strings_COMMA
    end
    if (rHaste and T.GetCombatRating(18) > 0) then
        text = text .. L.StatReport_Strings_HASTE .. "：" .. MyData.MHASTE
        text = text .. L.StatReport_Strings_COMMA
    end
    if (MyData.CLASS_EN ~= "DRUID") then
        text = text .. L.StatReport_Strings_PARRY .. "：" .. MyData.PARRY
        text = text .. L.StatReport_Strings_COMMA
    end
    if (MyData.CLASS_EN == "WARRIOR" or MyData.CLASS_EN == "PALADIN") then
        text = text .. L.StatReport_Strings_BLOCK .. "：" .. MyData.BLOCK
        text = text .. L.StatReport_Strings_COMMA
    end
    text = text .. L.StatReport_Strings_ARMOR .. "：" .. MyData.ARMOR
    
    return text
end

local function StatReport_TalentData()
    local curT = T.GetSpecialization()
    local tname, duties
    if curT then
        _, tname, _, _, duties = T.GetSpecializationInfo(curT)
    end
    local TalentStat = duties and _G[duties]
    
    return tname, TalentStat
end

local function StatReport_UnitAttackPower()
    local base, posBuff, negBuff = T.UnitAttackPower("player")
    
    return T.floor(base + posBuff + negBuff)
end

local function StatReport_UnitRangedAttackPower()
    local base, posBuff, negBuff = T.UnitRangedAttackPower("player")
    
    return T.floor(base + posBuff + negBuff)
end

local function StatReport_UnitArmor()
    local base, effectiveArmor, armor, posBuff = T.UnitArmor("player")
    
    return T.string_format("%s(%.1f%%)", T.floor(base + posBuff), PaperDollFrame_GetArmorReduction(effectiveArmor, MyData.LV))
end

local function StatReport_GetSpellBonusDamage()
    local SSP = T.GetSpellBonusDamage(2)
    for i = 3, 7 do
        SSP = T.math_min(SSP, T.GetSpellBonusDamage(i))
    end
    return T.floor(SSP)
end

local function StatReport_GetSpellCritChance()
    local SCRIT = T.GetSpellCritChance(2)
    for i = 3, 7 do
        SCRIT = T.math_min(SCRIT, T.GetSpellCritChance(i))
    end
    
    return T.string_format("%s(%.1f%%)", T.GetCombatRating(11), SCRIT)
end

local function StatReport_UpdateMyData()
    MyData.Name = T.UnitName("player")
    MyData.LV = T.UnitLevel("player")
    MyData.CLASS, MyData.CLASS_EN = T.UnitClass("player")
    MyData.HP = T.UnitHealthMax("player")
    MyData.TKEY, MyData.TDATA = StatReport_TalentData()
    local sysLv, curLv = T.GetAverageItemLevel()
    
    if curLv then MyData.ILVL = T.floor(curLv) end
    if GearScore_GetScore then
        MyData.GS = GearScore_GetScore(T.UnitName("player"), "player") or GS_Data[T.GetRealmName()].Players[T.UnitName("player")].GearScore or 0
    end
    
    MyData.STR = T.UnitStat("player", 1)
    MyData.AGI = T.UnitStat("player", 2)
    MyData.STA = T.UnitStat("player", 3)
    MyData.INT = T.UnitStat("player", 4)
    MyData.Versatility = T.GetCombatRating(CR_VERSATILITY_DAMAGE_DONE)
    
    if T.GetLifesteal() > 0 then
        MyData.lifesteal = T.string_format("%.2F%%", T.GetLifesteal())
    end
    
    if MyData.LV >= 80 then MyData.MST = GetMasteryEffect() end
    MyData.MEXPER = T.string_format("%s(%.1f%%)", T.GetCombatRating(24), select(1, GetExpertise()))
    MyData.MHASTE = T.string_format("%s(%.1f%%)", T.GetCombatRating(18), T.GetMeleeHaste())
    MyData.MHIT = T.string_format("%s(%.1f%%)", T.GetCombatRating(6), T.GetCombatRatingBonus(6) + T.GetHitModifier())
    MyData.MCRIT = T.string_format("%s(%.1f%%)", T.GetCombatRating(9), T.GetCritChance())
    MyData.MAP = StatReport_UnitAttackPower()
    MyData.REXPER = T.string_format("%s(%.1f%%)", T.GetCombatRating(24), select(3, GetExpertise()))
    MyData.RHASTE = T.string_format("%s(%.1f%%)", T.GetCombatRating(19), T.GetRangedHaste())
    MyData.RHIT = T.string_format("%s(%.1f%%)", T.GetCombatRating(7), T.GetCombatRatingBonus(7) + T.GetHitModifier())
    MyData.RCRIT = T.string_format("%s(%.1f%%)", T.GetCombatRating(10), T.GetRangedCritChance())
    MyData.RAP = StatReport_UnitRangedAttackPower()
    MyData.SHASTE = T.string_format("%s(%.1f%%)", T.GetCombatRating(20), T.UnitSpellHaste("player"))
    MyData.SHIT = T.string_format("%s(%.1f%%)", T.GetCombatRating(8), T.GetCombatRatingBonus(8) + T.GetSpellHitModifier())
    MyData.SCRIT = StatReport_GetSpellCritChance()
    MyData.SSP = StatReport_GetSpellBonusDamage()
    MyData.SHP = T.GetSpellBonusHealing()
    
    local _, casting = T.GetManaRegen()
    if casting then MyData.SMR = T.floor(casting * 5) end
    MyData.ARMOR = StatReport_UnitArmor()
    MyData.DODGE = T.string_format("%s(%.1f%%)", T.GetCombatRating(3), T.GetDodgeChance())
    MyData.PARRY = T.string_format("%s(%.1f%%)", T.GetCombatRating(4), T.GetParryChance())
    MyData.BLOCK = T.string_format("%s(%.1f%%)", T.GetCombatRating(5), T.GetBlockChance())
    MyData.CRDEF = T.string_format("%s(%.1f%%)", T.GetCombatRating(16), T.GetCombatRatingBonus(16) + T.GetModResilienceDamageReduction())
    MyData.CRPP = T.string_format("%s(%.1f%%)", T.GetCombatRating(27), T.GetCombatRatingBonus(27))
end

local function GetArtifactForgeLevel()
    if not ArtifactFrame then
        T.ShowUIPanel(T.SocketInventoryItem(16))
        T.HideUIPanel(ArtifactFrame)
    end
    if ArtifactFrame then
        return ArtifactFrame.ForgeBadgeFrame.ForgeLevelLabel:GetText()
    end
end

function LCB:SendReport(self, button)
    StatReport_UpdateMyData()
    
    local msg = L.EUI_StatReport .. ": "
    msg = msg .. MyData.CLASS
    msg = msg .. L.StatReport_Strings_COMMA
    if MyData.ILVL then
        msg = msg .. L.StatReport_Strings_ILVL .. ": " .. MyData.ILVL
        msg = msg .. L.StatReport_Strings_COMMA
    end
    local Alv = GetArtifactForgeLevel()
    if Alv then
        msg = msg .. L.ArtifactForgeLevel .. ": " .. Alv
        msg = msg .. L.StatReport_Strings_COMMA
    end
    if MyData.GS then
        msg = msg .. " GS:" .. MyData.GS
        msg = msg .. L.StatReport_Strings_COMMA
    end
    if MyData.TKEY and MyData.TDATA then
        msg = msg .. L.StatReport_Strings_TALENT .. "：" .. MyData.TKEY .. "(" .. MyData.TDATA .. ")"
        msg = msg .. L.StatReport_Strings_COMMA
    end
    if MyData.LV >= 80 then
        msg = msg .. L.StatReport_Strings_MST .. "：" .. T.string_format("%.1f%%", MyData.MST)
        msg = msg .. L.StatReport_Strings_COMMA
    end
    if MyData.CLASS_EN == "MAGE" or MyData.CLASS_EN == "WARLOCK" then
        msg = msg .. StatReport_GetSpellText()
    end
    if MyData.CLASS_EN == "ROGUE" then
        msg = msg .. StatReport_GetMeleeText()
    end
    if MyData.CLASS_EN == "HUNTER" then
        msg = msg .. StatReport_GetRangedText()
    end
    if MyData.CLASS_EN == "DRUID" then
        if MyData.TKEY == select(2, T.GetSpecializationInfo(1)) then
            msg = msg .. StatReport_GetSpellText()
        elseif MyData.TKEY == select(2, T.GetSpecializationInfo(3)) then
            msg = msg .. StatReport_GetTankText()
        elseif MyData.TKEY == select(2, T.GetSpecializationInfo(4)) then
            msg = msg .. StatReport_GetHealText()
        else
            msg = msg .. StatReport_GetMeleeText()
        end
    end
    if MyData.CLASS_EN == "SHAMAN" then
        if MyData.TKEY == select(2, T.GetSpecializationInfo(1)) then
            msg = msg .. StatReport_GetSpellText()
        elseif MyData.TKEY == select(2, T.GetSpecializationInfo(3)) then
            msg = msg .. StatReport_GetHealText()
        else
            msg = msg .. StatReport_GetMeleeText()
        end
    end
    if MyData.CLASS_EN == "PALADIN" then
        if MyData.TKEY == select(2, T.GetSpecializationInfo(1)) then
            msg = msg .. StatReport_GetHealText()
        elseif MyData.TKEY == select(2, T.GetSpecializationInfo(2)) then
            msg = msg .. StatReport_GetTankText(1)
        else
            msg = msg .. StatReport_GetMeleeText()
        end
    end
    if MyData.CLASS_EN == "PRIEST" then
        if MyData.TKEY == select(2, T.GetSpecializationInfo(1)) then
            msg = msg .. StatReport_GetSpellAndHealText()
        elseif MyData.TKEY == select(2, T.GetSpecializationInfo(2)) then
            msg = msg .. StatReport_GetHealText()
        else
            msg = msg .. StatReport_GetSpellText()
        end
    end
    if MyData.CLASS_EN == "WARRIOR" then
        if MyData.TKEY == select(2, T.GetSpecializationInfo(3)) then
            msg = msg .. StatReport_GetTankText()
        else
            msg = msg .. StatReport_GetMeleeText()
        end
    end
    if MyData.CLASS_EN == "DEATHKNIGHT" then
        if MyData.TKEY == select(2, T.GetSpecializationInfo(1)) then
            msg = msg .. StatReport_GetTankText()
        else
            msg = msg .. StatReport_GetMeleeText()
        end
    end
    if MyData.CLASS_EN == "MONK" then
        if MyData.TKEY == select(2, T.GetSpecializationInfo(1)) then
            msg = msg .. StatReport_GetTankText()
        elseif MyData.TKEY == select(2, T.GetSpecializationInfo(2)) then
            msg = msg .. StatReport_GetHealText()
        else
            msg = msg .. StatReport_GetMeleeText()
        end
    end
    if MyData.CLASS_EN == "DEMONHUNTER" then
        if MyData.TKEY == select(2, T.GetSpecializationInfo(2)) then
            msg = msg .. StatReport_GetTankText()
        else
            msg = msg .. StatReport_GetMeleeText()
        end
    end
    
    local haveit = false
    if MyData.Versatility > 0 then
        msg = msg .. L.StatReport_Strings_COMMA
        msg = msg .. STAT_VERSATILITY .. "：" .. MyData.Versatility
        haveit = true
    end
    if MyData.multistrike then
        if haveit then
            msg = msg .. L.StatReport_Strings_COMMA
            haveit = false
        else
            msg = msg .. L.StatReport_Strings_COMMA
        end
        msg = msg .. STAT_MULTISTRIKE .. "：" .. MyData.multistrike
        haveit = true
    end
    if MyData.lifesteal then
        if haveit then
            msg = msg .. L.StatReport_Strings_COMMA
            haveit = false
        else
            msg = msg .. L.StatReport_Strings_COMMA
        end
        msg = msg .. STAT_LIFESTEAL .. "：" .. MyData.lifesteal
    end
    
    msg = msg .. L.StatReport_Strings_END
    
    if ChatFrame1EditBox:IsShown() then
        ChatFrame1EditBox:Insert(msg)
    else
        local editBox = ChatEdit_ChooseBoxForSend()
        ChatEdit_ActivateChat(editBox)
        editBox:Insert(msg)
        editBox:HighlightText()
    end
end
