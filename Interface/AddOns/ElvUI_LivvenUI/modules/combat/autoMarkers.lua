local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "combat", "raidMarkers", "autoMarkers", "enable") then return end
local LAM = E:NewModule("LuiAutoMarkers", "AceEvent-3.0")

local count = 8
local order = {1, 2, 3, 4, 5, 6, 7, 8}
local marks = {}
local assigned = {}
local mobList = {
    ["148893"] = true, --被折磨的幽魂 (收割)
    --阿塔达萨
    ["127879"] = true, --祖尔的持盾卫士
    ["122969"] = true, --赞枢利巫医
    ["125977"] = true, --复生图腾
    ["128434"] = true, --飨宴的啸天龙
    ["122972"] = true, --达萨莱占卜师
    ["122971"] = true, --达萨莱战神
    ["132126"] = true, --鎏金女祭司
    ["122984"] = true, --达萨莱巨像
    --自由镇
    ["128551"] = true, --铁潮猎犬
    ["129788"] = true, --铁潮锯骨者
    ["127111"] = true, --铁潮桨手
    ["129529"] = true, --黑齿格斗家
    ["129547"] = true, --黑齿拳手
    ["129600"] = true, --水鼠帮盐鳞战士
    ["129527"] = true, --水鼠帮海盗
    ["130012"] = true, --铁潮破坏者
    ["126919"] = true, --铁潮唤雷者
    --诸王之眠
    ["134174"] = true, --影裔巫医
    ["134158"] = true, --影裔勇士
    ["134251"] = true, --总管姆巴拉
    ["134331"] = true, --拉胡艾大王
    ["135204"] = true, --鬼灵妖术祭司
    ["135239"] = true, --幽魂巫医
    ["135235"] = true, --幽魂兽王
    --风暴神殿
    ["134139"] = true, --神殿骑士
    ["134137"] = true, --神殿侍从
    ["136186"] = true, --海贤灵魂师
    ["139800"] = true, --唤风者学徒
    ["136214"] = true, --风语者海蒂丝
    ["134417"] = true, --深海祭师
    ["134418"] = true, --溺水的深渊使者
    ["134514"] = true, --深渊祭师
    ["136297"] = true, --被遗忘的居民
    --围攻伯拉勒斯
    ["141284"] = true, --库尔提拉斯护潮者
    ["141285"] = true, --库尔提拉斯神射手
    ["137521"] = true, --铁潮火枪手
    ["129370"] = true, --铁潮塑浪者
    ["128969"] = true, --艾什凡指挥官
    ["129366"] = true, --水鼠帮海盗
    ["129367"] = true, --水鼠帮唤风者
    ["137517"] = true, --艾什凡破坏者
    --塞塔里斯神庙
    ["134990"] = true, --充能的沙尘恶魔
    ["134629"] = true, --厚鳞三叶虫骑手
    ["139422"] = true, --厚麟三叶虫训者
    ["134364"] = true, --无信护卵员
    ["134599"] = true, --灌注能量的唤雷者
    ["136076"] = true, --暴怒云气
    ["134691"] = true, --静电充能苦修者
    ["135007"] = true, --宝珠卫士
    ["136250"] = true, --灾厄妖术师
    ["139949"] = true, --瘟疫博士
    --暴富矿区！！
    ["136470"] = true, --零食商贩
    ["130435"] = true, --混乱的暴徒
    ["134232"] = true, --雇来的刺客
    ["130661"] = true, --风险投资公司塑地者
    ["130635"] = true, --巨石之怒
    ["133345"] = true, --不靠谱的助理
    ["133432"] = true, --风险投资公司炼金师
    ["136934"] = true, --武器测试员
    ["133593"] = true, --专家技师
    ["133482"] = true, --蛛形地雷
    --地渊孢林
    ["131436"] = true, --鲜血主母选民
    ["131492"] = true, --虔诚鲜血祭司
    ["130909"] = true, --恶臭蛆虫
    ["133835"] = true, --狂野的群居血虱
    ["133870"] = true, --染病鞭笞者
    ["134284"] = true, --堕落的亡语者
    ["133836"] = true, --复活的护卫
    ["138187"] = true, --怪诞恐魔
    ["133912"] = true, --血誓污染者
    --托尔达戈
    ["130025"] = true, --铁潮暴徒
    ["130026"] = true, --水鼠帮海语者
    ["135699"] = true, --艾什凡狱卒
    ["127486"] = true, --艾什凡军官
    ["130027"] = true, --艾什凡水兵
    ["127488"] = true, --艾什凡火法师
    ["136665"] = true, --艾什凡观察员
    ["130028"] = true, --艾什凡炉火医师
    --维克雷斯庄园
    ["134024"] = true, --贪吃的蛆虫
    ["131677"] = true, --毒心织符者
    ["131586"] = true, --宴会招待员
    ["131666"] = true, --女巫会塑棘者
    ["131858"] = true, --荆棘卫士
    ["131685"] = true, --符文信徒
    ["131587"] = true, --着魔的队长
    ["131670"] = true, --毒心藤蔓扭曲者
    ["131812"] = true, --毒心诱魂者
    ["135474"] = true, --棘刺助祭
    ["135365"] = true, --主母阿尔玛
    ["131819"] = true, --女巫会占卜者
    ["131818"] = true, --显眼的女巫
}
local size, difficulty

local function IterateGroupMembers(reversed, forceParty)
    local unit = (not forceParty and T.IsInRaid()) and "raid" or "party"
    local numGroupMembers = unit == "party" and T.GetNumSubgroupMembers() or T.GetNumGroupMembers()
    local i = reversed and numGroupMembers or (unit == "party" and 0 or 1)
    return function()
        local ret
        if i == 0 and unit == "party" then
            ret = "player"
        elseif i <= numGroupMembers and i > 0 then
            ret = unit .. i
        end
        i = i + (reversed and -1 or 1)
        return ret
    end
end

function LAM:AutoMarkParty()
    if not E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty["enable"] or (E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.tankMark == 0 and E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.healerMark == 0) then return end
    order = {1, 2, 3, 4, 5, 6, 7, 8}
    count = 8
    if E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.tankMark ~= 0 then
        for i, v in ipairs(order) do
            if v == E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.tankMark then T.table_remove(order, i) end
        end
        count = count - 1
    end
    if E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.healerMark ~= 0 then
        for i, v in ipairs(order) do
            if v == E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.healerMark then T.table_remove(order, i) end
        end
        count = count - 1
    end

    local ROLEMARKS = {
        ["TANK"] = E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.tankMark,
        ["HEALER"] = E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.healerMark
    }
    for i = 1, 4 do
        local role = T.UnitGroupRolesAssigned("party" .. i)
        if ROLEMARKS[role] then
            T.SetRaidTarget("party" .. i, ROLEMARKS[role])
        end
    end
    local currentSpecID, currentSpecName = T.GetSpecializationInfo(T.GetSpecialization())
    local roleToken = T.GetSpecializationRoleByID(currentSpecID)
    if ROLEMARKS[roleToken] then
        T.SetRaidTarget("player", ROLEMARKS[roleToken])
    end
end

function LAM:CheckAutoMark()
    local inInstance, Type = T.IsInInstance()
    local _, instanceType, difficultyIndex, _, _, _, _, ZoneMapID = T.GetInstanceInfo()
    if inInstance then
        LUI:UpdateCurrentInstanceType(instanceType)
        size = Type
        local difficultyInfo = LUI.difficulty_info[difficultyIndex]
        if difficultyInfo then
            size, difficulty = difficultyInfo.size, difficultyInfo.difficulty
        end
    else
        LUI:UpdateCurrentInstanceType()
        size = "none"
        difficulty = "none"
    end
    if size == "party" then
        LAM:AutoMarkParty()
        self:RegisterEvent("PLAYER_REGEN_ENABLED", function()
            marks = {}
            assigned = {}
        end)
        self:RegisterEvent("PLAYER_REGEN_DISABLED", function()
            for i = 1, 40 do
                local premarked = "nameplate" .. i
                if T.UnitExists(premarked) and T.GetRaidTargetIndex(premarked) and not UnitPlayerControlled(premarked) then
                    if not mobList[T.UnitGUID(premarked)] then
                        assigned[T.GetRaidTargetIndex(premarked)] = true
                        marks[T.UnitGUID(premarked)] = T.GetRaidTargetIndex(premarked)
                    end
                end
            end
            
            for unit in IterateGroupMembers() do
                if T.GetRaidTargetIndex(unit) then
                    assigned[T.GetRaidTargetIndex(unit)] = true
                    marks[unit] = T.GetRaidTargetIndex(unit)
                end
            end
        end)
        self:RegisterEvent("UPDATE_MOUSEOVER_UNIT", function()
            local guid = T.UnitGUID("mouseover")
            unit = select(6, T.string_split("-", guid))
            if T.UnitExists("mouseover") and not T.GetRaidTargetIndex("mouseover") and not marks["mouseover"] and mobList[unit] then
                for i = 1, count do
                    if not assigned[order[i]] then
                        marks[guid] = order[i]
                        assigned[order[i]] = true
                        T.SetRaidTarget("mouseover", order[i])
                        return true
                    end
                end
            end
        end)
        self:RegisterEvent("UNIT_COMBAT", function()
            if T.UnitExists(unit) and T.UnitAffectingCombat(unit) and T.UnitCanAttack("player", unit) and not T.GetRaidTargetIndex(unit) and not marks[T.UnitGUID(unit)] and mobList[select(6, T.string_split("-", T.UnitGUID(unit)))] then
                for i = 1, count do
                    if not assigned[order[i]] then
                        marks[T.UnitGUID(unit)] = order[i]
                        assigned[order[i]] = true
                        T.SetRaidTarget(unit, order[i])
                        return true
                    end
                end
            end
        end)
    else
        marks = {}
        assigned = {}
        T.SetRaidTarget("player", 0)
        for i = 1, 4 do
            T.SetRaidTarget("party" .. i, 0)
        end
        self:UnregisterEvent("PLAYER_REGEN_ENABLED")
        self:UnregisterEvent("PLAYER_REGEN_DISABLED")
        self:UnregisterEvent("UPDATE_MOUSEOVER_UNIT")
        self:UnregisterEvent("UNIT_COMBAT")
    end
end

function LAM:Initialize()
    if not E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkUnit["enable"] then return end
    self:RegisterEvent("PLAYER_ENTERING_WORLD", "CheckAutoMark")
end

local function InitializeCallback()
    if not E.db.lui.modules.combat.raidMarkers.autoMarkers["enable"] then return end
    LAM:Initialize()
end

E:RegisterModule(LAM:GetName(), InitializeCallback)
