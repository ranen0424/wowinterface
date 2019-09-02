-- 来源：ShestakUI
-- 作者：Shestak
-- 链接：(http://www.wowinterface.com/downloads/info19033-ShestakUI.html)
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "combat", "announceSystem", "enable") then return end
local LAS = E:NewModule("LuiAnnounceSystem")

local myName = T.UnitName("player")

local ASL = {}
if T.GetLocale() == "zhTW" then
    ASL = {
        ["UseSpellNoTarget"] = "%s 使用了 %s",
        ["UseSpellTarget"] = "%s 使用了 %s -> %s",
        ["UseSpellTargetInChat"] = "|cffd63031通告系統：|r %s |cff00ff00使用了|r %s -> |cfffdcb6e%s|r",
        
        ["Casted"] = "%s 釋放了 %s！",
        ["Casting"] = "%s 正在釋放 %s！",
        
        ["Thanks"] = "%s，謝謝你復活我:)",
        
        ["taunt"] = "我成功嘲諷了 %s！",
        ["TauntInChat"] = "|cffd63031通告系統：|r |cff00ff00成功嘲諷|r -> |cfffdcb6e%s|r！",
        ["PetTaunt"] = "我的寵物成功嘲諷了 %s！",
        ["PetTauntInChat"] = "|cffd63031通告系統：|r |cff00ff00寵物成功嘲諷|r -> |cfffdcb6e%s|r！",
        ["OtherTankTaunt"] = "%s 成功嘲諷了 %s",
        ["OtherTankTauntInChat"] = "|cffd63031通告系統：|r %s |cff00ff00成功嘲諷|r -> |cfffdcb6e%s|r！",
        ["TauntMiss"] = "我嘲諷 %s 失敗！",
        ["TauntMissInChat"] = "|cffd63031通告系統：|r |cffff0000嘲諷失敗|r -> |cfffdcb6e%s|r！",
        ["PetTauntMiss"] = "我的寵物嘲諷了 %s 失敗！",
        ["PetTauntMissInChat"] = "|cffd63031通告系統：|r |cffff0000寵物嘲諷失敗|r -> |cfffdcb6e%s|r！",
        ["OtherTankTauntMiss"] = "%s 嘲諷 %s 失敗！",
        ["OtherTankTauntMissInChat"] = "|cffd63031通告系統：|r %s |cffff0000嘲諷失敗|r -> |cfffdcb6e%s|r！",
    }
elseif T.GetLocale() == "zhCN" then
    ASL = {
        ["UseSpellNoTarget"] = "%s 使用了 %s",
        ["UseSpellTarget"] = "%s 使用了 %s -> %s",
        ["UseSpellTargetInChat"] = "|cffd63031通告系统：|r %s |cff00ff00使用了|r %s -> |cfffdcb6e%s|r",
        
        ["Casted"] = "%s 释放了 %s！",
        ["Casting"] = "%s 正在释放 %s！",
        
        ["Thanks"] = "%s 谢谢你复活我-3-",
        
        ["taunt"] = "我成功嘲讽了 %s！",
        ["TauntInChat"] = "|cffd63031通告系統：|r |cff00ff00成功嘲讽|r -> |cfffdcb6e%s|r！",
        ["PetTaunt"] = "我的宠物成功嘲讽了 %s！",
        ["PetTauntInChat"] = "|cffd63031通告系统：|r |cff00ff00宠物成功嘲讽|r -> |cfffdcb6e%s|r！",
        ["OtherTankTaunt"] = "%s 成功嘲讽了 %s",
        ["OtherTankTauntInChat"] = "|cffd63031通告系统：|r %s |cff00ff00成功嘲讽|r -> |cfffdcb6e%s|r！",
        ["TauntMiss"] = "我嘲讽 %s 失败！",
        ["TauntMissInChat"] = "|cffd63031通告系统：|r |cffff0000嘲讽失败|r -> |cfffdcb6e%s|r！",
        ["PetTauntMiss"] = "我的宠物嘲讽了 %s 失败！",
        ["PetTauntMissInChat"] = "|cffd63031通告系统：|r |cffff0000宠物嘲讽失败|r -> |cfffdcb6e%s|r！",
        ["OtherTankTauntMiss"] = "%s 嘲讽 %s 失败！",
        ["OtherTankTauntMissInChat"] = "|cffd63031通告系统：|r %s |cffff0000嘲讽失败|r -> |cfffdcb6e%s|r！",
    }
else
    ASL = {
        ["LAS"] = "Announce System",
        ["UseSpellNoTarget"] = "%s casted %s",
        ["UseSpellTarget"] = "%s casted %s -> %s",
        ["UseSpellTargetInChat"] = "|cffd63031Announce System:|r %s |cff00ff00casted|r %s -> |cfffdcb6e%s|r",
        
        ["Casted"] = "%s casted %s！",
        ["Casting"] = "%s casting %s！",
        
        ["Thanks"] = "%s, thank you for reviving me:)",
        
        ["taunt"] = "I taunted %s successfully!",
        ["TauntInChat"] = "|cffd63031Announce System:|r |cff00ff00taunted|r -> |cfffdcb6e%s|rsuccessfully!",
        ["PetTaunt"] = "My pet taunted %s successfully!",
        ["PetTauntInChat"] = "|cffd63031Announce System:|r |cff00ff00My pet taunted|r -> |cfffdcb6e%s|rsuccessfully!",
        ["OtherTankTaunt"] = "%s taunted %s successfully",
        ["OtherTankTauntInChat"] = "|cffd63031Announce System:|r %s |cff00ff00taunted|r -> |cfffdcb6e%s|rsuccessfully!",
        ["TauntMiss"] = "I failed on taunting %s!",
        ["TauntMissInChat"] = "|cffd63031Announce System:|r |cffff0000failed on taunting|r -> |cfffdcb6e%s|r!",
        ["PetTauntMiss"] = "My pet failed on taunting %s!",
        ["PetTauntMissInChat"] = "|cffd63031Announce System:|r |cffff0000My pet failed on taunting|r -> |cfffdcb6e%s|r!",
        ["OtherTankTauntMiss"] = "%s failed on taunting %s!",
        ["OtherTankTauntMissInChat"] = "|cffd63031Announce System:|r %s |cffff0000failed on taunting|r -> |cfffdcb6e%s|r!",
    }
end

local function AddClassColor(playerID)
    local _, englishClass, _, _, _, playerName = T.GetPlayerInfoByGUID(playerID)
    if englishClass then
        local color = RAID_CLASS_COLORS[englishClass]
        local colorString = T.string_format("ff%02x%02x%02x", color.r * 255, color.g * 255, color.b * 255)
        return "|c" .. colorString .. playerName .. "|r"
    else
        return playerName
    end
end

local function CheckChat(warning)
    if T.IsInGroup(LE_PARTY_CATEGORY_INSTANCE) then
        return "INSTANCE_CHAT"
    elseif T.IsInRaid(LE_PARTY_CATEGORY_HOME) then
        if warning and (T.UnitIsGroupLeader("player") or T.UnitIsGroupAssistant("player") or T.IsEveryoneAssistant()) then
            return "RAID_WARNING"
        else
            return "RAID"
        end
    elseif T.IsInGroup(LE_PARTY_CATEGORY_HOME) then
        return "PARTY"
    end
    return "SAY"
end

local function CheckChatTaunt()
    if T.IsInGroup(LE_PARTY_CATEGORY_INSTANCE) then
        return "INSTANCE_CHAT"
    elseif T.IsInRaid(LE_PARTY_CATEGORY_HOME) then
        return "RAID"
    elseif T.IsInGroup(LE_PARTY_CATEGORY_HOME) then
        return "PARTY"
    end
    return "YELL"
end

local ThanksSpells = {
    [20484] = true, -- 復生
    [61999] = true, -- 盟友復生
    [20707] = true, -- 靈魂石
    [50769] = true, -- 復活
    [2006] = true, -- 復活術
    [7328] = true, -- 救贖
    [2008] = true, -- 先祖之魂
    [115178] = true, -- 回命訣
}

-- 战复技能
local CombatResSpells = {
    [61999] = true, -- 盟友復生
    [20484] = true, -- 復生
    [20707] = true, -- 靈魂石
}

-- 仇恨转移技能
local TransferThreatSpells = {
    [34477] = true, -- 誤導
    [57934] = true, -- 偷天換日
}

-- 大餐通報列表
local FeastSpells = {
    [126492] = true, -- 燒烤盛宴
    [126494] = true, -- 豪华燒烤盛宴
    [126495] = true, -- 快炒盛宴
    [126496] = true, -- 豪华快炒盛宴
    [126501] = true, -- 烘烤盛宴
    [126502] = true, -- 豪华烘烤盛宴
    [126497] = true, -- 燉煮盛宴
    [126498] = true, -- 豪华燉煮盛宴
    [126499] = true, -- 蒸煮盛宴
    [126500] = true, -- 豪華蒸煮盛宴
    [104958] = true, -- 熊貓人盛宴
    [126503] = true, -- 美酒盛宴
    [126504] = true, -- 豪華美酒盛宴
    [145166] = true, -- 拉麵推車
    [145169] = true, -- 豪華拉麵推車
    [145196] = true, -- 熊貓人國寶級拉麵推車
    [188036] = true, -- 灵魂药锅
    [201351] = true, -- 丰盛大餐
    [201352] = true, -- 苏拉玛奢华大餐
    [259409] = true, -- 海帆盛宴
    [259410] = true, -- 船长盛宴佳肴
    [276972] = true, -- 秘法药锅
    [286050] = true,  -- 血潤盛宴
}

-- 機器人通報列表
local Bots = {
    [22700] = true, -- 修理機器人74A型
    [44389] = true, -- 修理機器人110G型
    [54711] = true, -- 廢料機器人
    [67826] = true, -- 吉福斯
    [126459] = true, -- 布靈登4000型
    [161414] = true, -- 布靈登5000型
    [200061] = true, -- 召唤里弗斯
    [200204] = true, -- 自動鐵錘模式(里弗斯)
    [200205] = true, -- 自動鐵錘模式(里弗斯)
    [200210] = true, -- 故障检测模式(里弗斯)
    [200211] = true, -- 故障检测模式(里弗斯)
    [200212] = true, -- 烟花表演模式(里弗斯)
    [200214] = true, -- 烟花表演模式(里弗斯)
    [200215] = true, -- 零食发放模式(里弗斯)
    [200216] = true, -- 零食发放模式(里弗斯)
    [200217] = true, -- 华丽模式(布靈登6000型)(里弗斯)
    [200218] = true, -- 华丽模式(布靈登6000型)(里弗斯)
    [200219] = true, -- 驾驶战斗模式(里弗斯)
    [200220] = true, -- 驾驶战斗模式(里弗斯)
    [200221] = true, -- 虫洞发生器模式(里弗斯)
    [200222] = true, -- 虫洞发生器模式(里弗斯)
    [200223] = true, -- 热砧模式(里弗斯)
    [200225] = true, -- 热砧模式(里弗斯)
    [199109] = true, -- 自動鐵錘
    [226241] = true, -- 宁神圣典
    [256230] = true, -- 静心圣典
}

-- 玩具
local Toys = {
    [61031] = true, -- 玩具火車組
    [49844] = true, -- 恐酒遙控器
}

-- 傳送門通報列表
local PortalSpells = {
        -- 聯盟
        [10059] = true, -- 暴風城
        [11416] = true, -- 鐵爐堡
        [11419] = true, -- 達納蘇斯
        [32266] = true, -- 艾克索達
        [49360] = true, -- 塞拉摩
        [33691] = true, -- 撒塔斯
        [88345] = true, -- 托巴拉德
        [132620] = true, -- 恆春谷
        [176246] = true, -- 暴風之盾
        -- 部落
        [11417] = true, -- 奥格瑞玛
        [11418] = true, -- 幽暗城
        [11420] = true, -- 雷霆崖
        [32267] = true, -- 银月城
        [49361] = true, -- 斯通纳德
        [35717] = true, -- 沙塔斯
        [88346] = true, -- 托尔巴拉德
        [132626] = true, -- 锦绣谷
        [176244] = true, -- 战争之矛
        [224871] = true, -- 达拉然-破碎群岛
        
        [53142] = true, -- 诺森德
        [120146] = true,	-- 遠古達拉然
}

-- 嘲諷技能列表
local TauntSpells = {
    [355] = true, -- Warrior
    [2649] = true, -- Hunter (Pet)
    [20736] = true, -- Hunter (Distracting Shot)
    [123588] = true, -- Hunter (Distracting Shot - glyphed)
    [6795] = true, -- Druid
    [17735] = true, -- Warlock (Voidwalker)
    [97827] = true, -- Warlock (Provocation (Metamorphosis))
    [49560] = true, -- Death Knight (Death Grip (aura))
    [56222] = true, -- Death Knight
    [73684] = true, -- Shaman (Unleash Earth)
    [62124] = true, -- Paladin
    [116189] = true, -- Monk (Provoke (aura))
    [118585] = true, -- Monk (Leer of the Ox)
    [118635] = true, -- Monk (Black Ox Provoke)
}

function LAS:RaidUsefulSpells()
    local frame = T.CreateFrame("Frame")
    frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
    frame:SetScript("OnEvent", function(self, event)
        local _, subEvent, _, _, srcName, _, _, _, destName, _, _, spellID = T.CombatLogGetCurrentEventInfo()
        if not T.IsInGroup() or T.InCombatLockdown() or not subEvent or not spellID or not srcName then return end
        if not T.UnitInRaid(srcName) and not T.UnitInParty(srcName) then return end
        
        local srcName = srcName:gsub("%-[^|]+", "")
        if subEvent == "SPELL_CAST_SUCCESS" then
            if spellID == 698 then
                T.SendChatMessage(T.string_format(ASL["Casting"], srcName, T.GetSpellLink(spellID)), CheckChat(true))
            elseif spellID == 190336 then
                T.SendChatMessage(T.string_format(ASL["Casted"], srcName, T.GetSpellLink(spellID)), CheckChat(true))
            elseif FeastSpells[spellID] then
                T.SendChatMessage(T.string_format(ASL["Casted"], srcName, T.GetSpellLink(spellID)), CheckChat(true))
            end
        elseif subEvent == "SPELL_SUMMON" then
            if Bots[spellID] then
                T.SendChatMessage(T.string_format(ASL["Casted"], srcName, T.GetSpellLink(spellID)), CheckChat(true))
            elseif spellID == 261602 then
				T.SendChatMessage(T.string_format(ASL["Casted"], srcName, T.GetSpellLink(spellID)), CheckChat(true))
            end
        elseif subEvent == "SPELL_CREATE" then
            if spellID == 54710 then
                T.SendChatMessage(T.string_format(ASL["Casted"], srcName, T.GetSpellLink(spellID)), CheckChat(true))
            elseif spellID == 29893 then
                T.SendChatMessage(T.string_format(ASL["Casted"], srcName, T.GetSpellLink(spellID)), CheckChat(true))
            elseif Toys[spellID] then
                T.SendChatMessage(T.string_format(ASL["Casted"], srcName, T.GetSpellLink(spellID)), CheckChat())
            elseif PortalSpells[spellID] then
                T.SendChatMessage(T.string_format(ASL["Casted"], srcName, T.GetSpellLink(spellID)), CheckChat(true))
            end
        end
    end)
end

function LAS:resAndThreat()
    local frame = T.CreateFrame("Frame")
    frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
    frame:SetScript("OnEvent", function(self, event)
        local _, event, _, sourceGUID, sourceName, _, _, destGUID, destName, _, _, spellID = T.CombatLogGetCurrentEventInfo()
        local _, _, difficultyID = T.GetInstanceInfo()
        
        if event ~= "SPELL_CAST_SUCCESS" then return end
        
        if destName then destName = destName:gsub("%-[^|]+", "") end
        if sourceName then sourceName = sourceName:gsub("%-[^|]+", "") else return end
        
        if difficultyID ~= 0 then
            if CombatResSpells[spellID] then
                if destName == nil then
                    T.SendChatMessage(T.string_format(ASL["UseSpellNoTarget"], sourceName, T.GetSpellLink(spellID)), CheckChat())
                else
                    T.SendChatMessage(T.string_format(ASL["UseSpellTarget"], sourceName, T.GetSpellLink(spellID), destName), CheckChat())
                end
            end
        end
        
        if TransferThreatSpells[spellID] then
            if destName == myName or sourceName == myName then
                T.SendChatMessage(T.string_format(": " .. ASL["UseSpellTarget"], sourceName, T.GetSpellLink(spellID), destName), "EMOTE")
            else
                if T.string_split("-", destGUID) == "Player" then
                    ChatFrame1:AddMessage(T.string_format(ASL["UseSpellTargetInChat"], AddClassColor(sourceGUID), T.GetSpellLink(spellID), AddClassColor(destGUID)))
                else
                    ChatFrame1:AddMessage(T.string_format(ASL["UseSpellTargetInChat"], AddClassColor(sourceGUID), T.GetSpellLink(spellID), destName))
                end
            end
        end
    
    end)
end

function LAS:resThanks()
    local frame = T.CreateFrame("Frame")
    frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
    frame:SetScript("OnEvent", function(self, event)
        local _, subEvent, _, _, buffer, _, _, _, player, _, _, spell = T.CombatLogGetCurrentEventInfo()
        for key, value in T.pairs(ThanksSpells) do
            if spell == key and value == true and player == myName and buffer ~= myName and subEvent == "SPELL_CAST_SUCCESS" then
                local thanksTargetName = buffer:gsub("%-[^|]+", "")
                T.SendChatMessage(T.string_format(ASL["Thanks"], thanksTargetName), "WHISPER", nil, buffer)
            end
        end
    end)
end

function LAS:taunt()
    local frame = T.CreateFrame("Frame")
    frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
    frame:SetScript("OnEvent", function(self, event)
        local _, event, _, sourceGUID, sourceName, _, _, _, destName, _, _, spellID, _, _, missType = T.CombatLogGetCurrentEventInfo()
        -- 嘲讽
        if event == "SPELL_AURA_APPLIED" and TauntSpells[spellID] then
            -- 如果施放嘲讽技能成功
            if sourceGUID == T.UnitGUID("player") then
                -- 玩家嘲讽
                if E.db.lui.modules.combat.announceSystem.taunt["playerSmart"] then
                    -- 玩家嘲讽智能喊话
                    T.SendChatMessage(T.string_format(ASL["taunt"], destName), CheckChatTaunt())
                else
                    -- 玩家嘲讽信息显示于综合
                    ChatFrame1:AddMessage(T.string_format(ASL["TauntInChat"], destName))
                end
            elseif sourceGUID == T.UnitGUID("pet") and E.db.lui.modules.combat.announceSystem.taunt["includePet"] then
                -- 宠物嘲讽
                if E.db.lui.modules.combat.announceSystem.taunt["petSmart"] then
                    -- 宠物嘲讽智能喊话
                    T.SendChatMessage(T.string_format(ASL["PetTaunt"], destName), CheckChatTaunt())
                else
                    -- 宠物嘲讽信息显示于综合
                    ChatFrame1:AddMessage(T.string_format(ASL["PetTauntInChat"], destName))
                end
            elseif E.db.lui.modules.combat.announceSystem.taunt["includeOtherTank"] and T.UnitGroupRolesAssigned(sourceName) == "TANK" then
                -- 他人嘲讽
                -- 去除服务器信息
                local oriSourceName = sourceName
                sourceName = sourceName:gsub("%-[^|]+", "")
                if E.db.lui.modules.combat.announceSystem.taunt["otherTankSmart"] then
                    -- 他人嘲讽智能喊话
                    T.SendChatMessage(T.string_format(ASL["OtherTankTaunt"], sourceName, destName), CheckChatTaunt())
                else
                    -- 他人嘲讽信息显示于聊天框架
                    ChatFrame1:AddMessage(T.string_format(ASL["OtherTankTauntInChat"], AddClassColor(sourceGUID), destName))
                end
            end
        end
        
        if not E.db.lui.modules.combat.announceSystem.taunt["includeMiss"] then return end
        if event == "SPELL_MISSED" and TauntSpells[spellID] then
            if sourceGUID == T.UnitGUID("player") then
                if E.db.lui.modules.combat.announceSystem.taunt["playerSmart"] then
                    T.SendChatMessage(T.string_format(ASL["TauntMiss"], destName), CheckChatTaunt())
                else
                    ChatFrame1:AddMessage(T.string_format(ASL["TauntMissInChat"], destName))
                end
            elseif sourceGUID == T.UnitGUID("pet") and E.db.lui.modules.combat.announceSystem.taunt["includePet"] then
                if E.db.lui.modules.combat.announceSystem.taunt["petSmart"] then
                    T.SendChatMessage(T.string_format(ASL["PetTauntMiss"], destName), CheckChatTaunt())
                else
                    ChatFrame1:AddMessage(T.string_format(ASL["PetTauntMissInChat"], destName))
                end
            elseif E.db.lui.modules.combat.announceSystem.taunt["includeOtherTank"] and T.UnitGroupRolesAssigned(sourceName) == "TANK" then
                local oriSourceName = sourceName
                sourceName = sourceName:gsub("%-[^|]+", "")
                if E.db.lui.modules.combat.announceSystem.taunt["otherTankSmart"] then
                    T.SendChatMessage(T.string_format(ASL["OtherTankTauntMiss"], sourceName, destName), CheckChatTaunt())
                else
                    ChatFrame1:AddMessage(T.string_format(ASL["OtherTankTauntMissInChat"], AddClassColor(sourceGUID), destName))
                end
            end
        end
    end)
end

function LAS:Initialize()
    if E.db.lui.modules.combat.announceSystem.taunt["enable"] then
        LAS:taunt()
    end
    if E.db.lui.modules.combat.announceSystem.resAndThreatSpells["resAndThreat"] then
        LAS:resAndThreat()
    end
    if E.db.lui.modules.combat.announceSystem.resAndThreatSpells["resThanks"] then
        LAS:resThanks()
    end
    if E.db.lui.modules.combat.announceSystem.raidSpells["enable"] then
        LAS:RaidUsefulSpells()
    end
end

local function InitializeCallback()
    if not E.db.lui.modules.combat.announceSystem["enable"] then return end
	LAS:Initialize()
end

E:RegisterModule(LAS:GetName(), InitializeCallback)
