local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("private", "viiclickset", "enable") then return end
local VCS = E:NewModule("VIIClickSet", "AceEvent-3.0")
local UF = E:GetModule("UnitFrames")

local _G = _G

VCS.ClickSets_Sets = {
    WARRIOR = {
        ["355"] = true,
        ["5246"] = true,
        ["6544"] = true,
        ["6552"] = true,
        ["6673"] = true,
        ["18499"] = true,
        ["34428"] = true,
        ["57755"] = true,
        ["97462"] = true,
        ["武器"] = {
            ["100"] = true,
            ["1464"] = true,
            ["1680"] = true,
            ["1715"] = true,
            ["7384"] = true,
            ["12294"] = true,
            ["118038"] = true,
            ["167105"] = true,
            ["227847"] = true,
            ["260708"] = true,
            ["281000"] = true,
        },
        ["狂怒"] = {
            ["100"] = true,
            ["12323"] = true,
            ["23881"] = true,
            ["85288"] = true,
            ["118000"] = true,
            ["184364"] = true,
            ["184367"] = true,
            ["190411"] = true,
            ["280735"] = true,
        },
        ["防护"] = {
            ["871"] = true,
            ["1160"] = true,
            ["2565"] = true,
            ["6343"] = true,
            ["6572"] = true,
            ["12975"] = true,
            ["20243"] = true,
            ["23920"] = true,
            ["23922"] = true,
            ["46968"] = true,
            ["107574"] = true,
            ["190456"] = true,
            ["198304"] = true,
        },
    },
    PALADIN = {
        ["633"] = true,
        ["642"] = true,
        ["853"] = true,
        ["1022"] = true,
        ["1044"] = true,
        ["7328"] = true,
        ["19750"] = true,
        ["31884"] = true,
        ["62124"] = true,
        ["121183"] = true,
        ["190784"] = true,
        ["惩戒"] = {
            ["20271"] = true,
            ["35395"] = true,
            ["53385"] = true,
            ["85256"] = true,
            ["96231"] = true,
            ["183218"] = true,
            ["184575"] = true,
            ["184662"] = true,
            ["203538"] = true,
            ["203539"] = true,
            ["213644"] = true,
        },
        ["防护"] = {
            ["6940"] = true,
            ["26573"] = true,
            ["31850"] = true,
            ["31935"] = true,
            ["53595"] = true,
            ["53600"] = true,
            ["86659"] = true,
            ["96231"] = true,
            ["184092"] = true,
            ["213644"] = true,
            ["275779"] = true,
        },
        ["神圣"] = {
            ["498"] = true,
            ["4987"] = true,
            ["6940"] = true,
            ["20473"] = true,
            ["26573"] = true,
            ["31821"] = true,
            ["35395"] = true,
            ["53563"] = true,
            ["82326"] = true,
            ["85222"] = true,
            ["183998"] = true,
            ["212056"] = true,
            ["275773"] = true,
        },
    },
    DEATHKNIGHT = {
        ["3714"] = true,
        ["45524"] = true,
        ["47528"] = true,
        ["48265"] = true,
        ["48707"] = true,
        ["49576"] = true,
        ["49998"] = true,
        ["50977"] = true,
        ["53428"] = true,
        ["56222"] = true,
        ["61999"] = true,
        ["111673"] = true,
        ["127344"] = true,
        ["冰霜"] = {
            ["47568"] = true,
            ["48792"] = true,
            ["49020"] = true,
            ["49143"] = true,
            ["49184"] = true,
            ["51271"] = true,
            ["196770"] = true,
        },
        ["鲜血"] = {
            ["43265"] = true,
            ["49028"] = true,
            ["50842"] = true,
            ["55233"] = true,
            ["108199"] = true,
            ["195182"] = true,
            ["195292"] = true,
            ["206930"] = true,
            ["221562"] = true,
        },
        ["邪恶"] = {
            ["42650"] = true,
            ["43265"] = true,
            ["47541"] = true,
            ["48792"] = true,
            ["55090"] = true,
            ["63560"] = true,
            ["77575"] = true,
            ["85948"] = true,
            ["275699"] = true,
        },
    },
    HUNTER = {
        ["781"] = true,
        ["1543"] = true,
        ["5384"] = true,
        ["6197"] = true,
        ["34477"] = true,
        ["109304"] = true,
        ["125050"] = true,
        ["127933"] = true,
        ["186257"] = true,
        ["186265"] = true,
        ["187650"] = true,
        ["187698"] = true,
        ["209997"] = true,
        ["射击"] = {
            ["5116"] = true,
            ["19434"] = true,
            ["56641"] = true,
            ["147362"] = true,
            ["185358"] = true,
            ["186387"] = true,
            ["257044"] = true,
            ["257620"] = true,
            ["281195"] = true,
            ["288613"] = true,
        },
        ["生存"] = {
            ["19577"] = true,
            ["186270"] = true,
            ["186289"] = true,
            ["187707"] = true,
            ["187708"] = true,
            ["190925"] = true,
            ["195645"] = true,
            ["259489"] = true,
            ["259491"] = true,
            ["259495"] = true,
            ["266779"] = true,
            ["272651"] = true,
        },
        ["野兽控制"] = {
            ["2643"] = true,
            ["5116"] = true,
            ["19574"] = true,
            ["19577"] = true,
            ["34026"] = true,
            ["147362"] = true,
            ["193455"] = true,
            ["193530"] = true,
            ["217200"] = true,
            ["272651"] = true,
        },
    },
    SHAMAN = {
        ["370"] = true,
        ["546"] = true,
        ["556"] = true,
        ["2008"] = true,
        ["2484"] = true,
        ["2645"] = true,
        ["2825"] = true,
        ["6196"] = true,
        ["8143"] = true,
        ["51514"] = true,
        ["57994"] = true,
        ["108271"] = true,
        ["192058"] = true,
        ["198103"] = true,
        ["恢复"] = {
            ["403"] = true,
            ["421"] = true,
            ["1064"] = true,
            ["5394"] = true,
            ["8004"] = true,
            ["51505"] = true,
            ["61295"] = true,
            ["73920"] = true,
            ["77130"] = true,
            ["77472"] = true,
            ["79206"] = true,
            ["98008"] = true,
            ["108280"] = true,
            ["188838"] = true,
            ["212048"] = true,
        },
        ["元素"] = {
            ["8004"] = true,
            ["8042"] = true,
            ["51490"] = true,
            ["51505"] = true,
            ["51886"] = true,
            ["61882"] = true,
            ["188196"] = true,
            ["188389"] = true,
            ["188443"] = true,
            ["196840"] = true,
            ["198067"] = true,
        },
        ["增强"] = {
            ["17364"] = true,
            ["51533"] = true,
            ["51886"] = true,
            ["58875"] = true,
            ["60103"] = true,
            ["187837"] = true,
            ["187874"] = true,
            ["188070"] = true,
            ["193786"] = true,
            ["193796"] = true,
            ["196834"] = true,
        },
    },
    DRUID = {
        ["339"] = true,
        ["768"] = true,
        ["783"] = true,
        ["1850"] = true,
        ["2637"] = true,
        ["2908"] = true,
        ["5215"] = true,
        ["5221"] = true,
        ["5487"] = true,
        ["6795"] = true,
        ["8921"] = true,
        ["8936"] = true,
        ["18960"] = true,
        ["20484"] = true,
        ["33917"] = true,
        ["50769"] = true,
        ["恢复"] = {
            ["740"] = true,
            ["774"] = true,
            ["5176"] = true,
            ["18562"] = true,
            ["22812"] = true,
            ["29166"] = true,
            ["33763"] = true,
            ["48438"] = true,
            ["88423"] = true,
            ["93402"] = true,
            ["102342"] = true,
            ["102793"] = true,
            ["145205"] = true,
            ["212040"] = true,
        },
        ["平衡"] = {
            ["2782"] = true,
            ["22812"] = true,
            ["24858"] = true,
            ["29166"] = true,
            ["78674"] = true,
            ["78675"] = true,
            ["93402"] = true,
            ["190984"] = true,
            ["191034"] = true,
            ["194153"] = true,
            ["194223"] = true,
        },
        ["守护"] = {
            ["99"] = true,
            ["2782"] = true,
            ["6807"] = true,
            ["22812"] = true,
            ["22842"] = true,
            ["61336"] = true,
            ["77758"] = true,
            ["77761"] = true,
            ["106839"] = true,
            ["192081"] = true,
            ["213771"] = true,
        },
        ["野性"] = {
            ["1079"] = true,
            ["1822"] = true,
            ["2782"] = true,
            ["5217"] = true,
            ["22568"] = true,
            ["22570"] = true,
            ["61336"] = true,
            ["106832"] = true,
            ["106839"] = true,
            ["106898"] = true,
            ["106951"] = true,
            ["213764"] = true,
        },
    },
    ROGUE = {
        ["921"] = true,
        ["1725"] = true,
        ["1766"] = true,
        ["1784"] = true,
        ["1804"] = true,
        ["1833"] = true,
        ["1856"] = true,
        ["1966"] = true,
        ["2094"] = true,
        ["2983"] = true,
        ["6770"] = true,
        ["31224"] = true,
        ["56814"] = true,
        ["57934"] = true,
        ["114018"] = true,
        ["185311"] = true,
        ["狂徒"] = {
            ["1776"] = true,
            ["2098"] = true,
            ["8676"] = true,
            ["13750"] = true,
            ["13877"] = true,
            ["185763"] = true,
            ["193315"] = true,
            ["193316"] = true,
            ["195457"] = true,
            ["199754"] = true,
            ["199804"] = true,
        },
        ["敏锐"] = {
            ["53"] = true,
            ["408"] = true,
            ["5277"] = true,
            ["36554"] = true,
            ["114014"] = true,
            ["121471"] = true,
            ["185313"] = true,
            ["185438"] = true,
            ["195452"] = true,
            ["196819"] = true,
            ["197835"] = true,
            ["212283"] = true,
        },
        ["奇袭"] = {
            ["408"] = true,
            ["703"] = true,
            ["1329"] = true,
            ["1943"] = true,
            ["5277"] = true,
            ["32645"] = true,
            ["36554"] = true,
            ["51723"] = true,
            ["79140"] = true,
            ["185565"] = true,
        },
    },
    DEMONHUNTER = {
        ["131347"] = true,
        ["183752"] = true,
        ["188501"] = true,
        ["217832"] = true,
        ["278326"] = true,
        ["复仇"] = {
            ["178740"] = true,
            ["185245"] = true,
            ["187827"] = true,
            ["189110"] = true,
            ["202140"] = true,
            ["203720"] = true,
            ["203782"] = true,
            ["204021"] = true,
            ["204157"] = true,
            ["204513"] = true,
            ["207682"] = true,
            ["228477"] = true,
        },
        ["浩劫"] = {
            ["162243"] = true,
            ["162794"] = true,
            ["179057"] = true,
            ["185123"] = true,
            ["188499"] = true,
            ["191427"] = true,
            ["195072"] = true,
            ["196718"] = true,
            ["198013"] = true,
            ["198589"] = true,
            ["198793"] = true,
            ["281854"] = true,
        },
    },
    MONK = {
        ["100780"] = true,
        ["101643"] = true,
        ["109132"] = true,
        ["115078"] = true,
        ["115178"] = true,
        ["115546"] = true,
        ["116670"] = true,
        ["117952"] = true,
        ["119381"] = true,
        ["119996"] = true,
        ["125583"] = true,
        ["126892"] = true,
        ["酒仙"] = {
            ["115072"] = true,
            ["115176"] = true,
            ["115181"] = true,
            ["115203"] = true,
            ["115308"] = true,
            ["116705"] = true,
            ["119582"] = true,
            ["121253"] = true,
            ["205523"] = true,
            ["218164"] = true,
        },
        ["踏风"] = {
            ["100784"] = true,
            ["101545"] = true,
            ["101546"] = true,
            ["107428"] = true,
            ["113656"] = true,
            ["115080"] = true,
            ["116095"] = true,
            ["116705"] = true,
            ["122470"] = true,
            ["137639"] = true,
            ["218164"] = true,
        },
        ["织雾"] = {
            ["100784"] = true,
            ["101546"] = true,
            ["107428"] = true,
            ["115151"] = true,
            ["115175"] = true,
            ["115310"] = true,
            ["115450"] = true,
            ["116680"] = true,
            ["116849"] = true,
            ["124682"] = true,
            ["191837"] = true,
            ["212051"] = true,
            ["243435"] = true,
        },
    },
    PRIEST = {
        ["528"] = true,
        ["586"] = true,
        ["1706"] = true,
        ["2006"] = true,
        ["2096"] = true,
        ["8122"] = true,
        ["9484"] = true,
        ["21562"] = true,
        ["32375"] = true,
        ["73325"] = true,
        ["戒律"] = {
            ["17"] = true,
            ["527"] = true,
            ["585"] = true,
            ["589"] = true,
            ["19236"] = true,
            ["33206"] = true,
            ["47536"] = true,
            ["47540"] = true,
            ["62618"] = true,
            ["132157"] = true,
            ["132603"] = true,
            ["186263"] = true,
            ["194509"] = true,
            ["205364"] = true,
            ["212036"] = true,
        },
        ["暗影"] = {
            ["17"] = true,
            ["589"] = true,
            ["605"] = true,
            ["8092"] = true,
            ["15286"] = true,
            ["15407"] = true,
            ["15487"] = true,
            ["34433"] = true,
            ["34914"] = true,
            ["47585"] = true,
            ["186263"] = true,
            ["213634"] = true,
            ["228260"] = true,
            ["232698"] = true,
        },
        ["神圣"] = {
            ["139"] = true,
            ["527"] = true,
            ["585"] = true,
            ["596"] = true,
            ["605"] = true,
            ["2050"] = true,
            ["2060"] = true,
            ["2061"] = true,
            ["14914"] = true,
            ["19236"] = true,
            ["33076"] = true,
            ["34861"] = true,
            ["47788"] = true,
            ["64843"] = true,
            ["64901"] = true,
            ["88625"] = true,
            ["132157"] = true,
            ["212036"] = true,
        },
    },
    MAGE = {
        ["118"] = true,
        ["122"] = true,
        ["130"] = true,
        ["475"] = true,
        ["1459"] = true,
        ["1953"] = true,
        ["2139"] = true,
        ["30449"] = true,
        ["45438"] = true,
        ["80353"] = true,
        ["190336"] = true,
        ["奥术"] = {
            ["1449"] = true,
            ["5143"] = true,
            ["12042"] = true,
            ["12051"] = true,
            ["30451"] = true,
            ["31589"] = true,
            ["44425"] = true,
            ["110959"] = true,
            ["195676"] = true,
            ["205025"] = true,
            ["235450"] = true,
        },
        ["冰霜"] = {
            ["66"] = true,
            ["116"] = true,
            ["120"] = true,
            ["11426"] = true,
            ["12472"] = true,
            ["30455"] = true,
            ["31687"] = true,
            ["44614"] = true,
            ["198149"] = true,
            ["235219"] = true,
        },
        ["火焰"] = {
            ["66"] = true,
            ["133"] = true,
            ["2120"] = true,
            ["2948"] = true,
            ["11366"] = true,
            ["31661"] = true,
            ["108853"] = true,
            ["190319"] = true,
            ["235313"] = true,
        },
    },
    WARLOCK = {
        ["126"] = true,
        ["698"] = true,
        ["710"] = true,
        ["755"] = true,
        ["1098"] = true,
        ["5697"] = true,
        ["5782"] = true,
        ["6201"] = true,
        ["20707"] = true,
        ["29893"] = true,
        ["30283"] = true,
        ["104773"] = true,
        ["111771"] = true,
        ["234153"] = true,
        ["恶魔学识"] = {
            ["686"] = true,
            ["104316"] = true,
            ["105174"] = true,
            ["119898"] = true,
            ["196277"] = true,
            ["264178"] = true,
            ["265187"] = true,
        },
        ["毁灭"] = {
            ["348"] = true,
            ["1122"] = true,
            ["5740"] = true,
            ["17962"] = true,
            ["29722"] = true,
            ["116858"] = true,
            ["119898"] = true,
        },
        ["痛苦"] = {
            ["172"] = true,
            ["980"] = true,
            ["27243"] = true,
            ["30108"] = true,
            ["205180"] = true,
            ["232670"] = true,
        },
    },
}

VCS.ClickCastFrames = {}

local secureHeader = CreateFrame("Frame", nil, UIParent, "SecureHandlerBaseTemplate")

local wheelBindingIndex = {
    ["MOUSEWHEELUP"] = 6,
    ["MOUSEWHEELDOWN"] = 7,
}
local onEnterString = "self:ClearBindings()"
local onLeaveString = onEnterString
for keyString, keyIndex in pairs(wheelBindingIndex) do
    onEnterString = format("%sself:SetBindingClick(0, \"%s\", self:GetName(), \"Button%d\")", onEnterString, keyString, keyIndex)
end

local function ClickSet_Enable(frame)
    frame.ClickSet = E.private.lui.viiclickset["general"]
end

function VCS:ClickSet_CreateAndRefresh()
    for k, v in T.pairs(VCS.ClickCastFrames) do
        if not k.ClickSet then return end
        local spec = "spec1"
        if T.GetSpecialization() == 2 then spec = "spec2"
        elseif T.GetSpecialization() == 3 then spec = "spec3"
        elseif T.GetSpecialization() == 4 then spec = "spec4"
        end

        local key_tmp
        for key, value in T.pairs(k.ClickSet[spec]) do
            key_tmp = T.string_gsub(key, "z", "-")
            if value == "NONE" then
                k:SetAttribute(key_tmp, nil)
            else
                if not k.SetWheel and (T.string_match(key_tmp, "type6") or T.string_match(key_tmp, "type7")) then
                    secureHeader:UnwrapScript(k, "OnEnter")
                    secureHeader:WrapScript(k, "OnEnter", onEnterString)
                    secureHeader:UnwrapScript(k, "OnLeave")
                    secureHeader:WrapScript(k, "OnLeave", onLeaveString)
                    k.SetWheel = true
                end
                if value == "target" or value == "focus" or value == "togglemenu" then
                    k:SetAttribute(key_tmp, value)
                elseif value == "follow" then
                    k:SetAttribute(key_tmp, "macro")
                    k:SetAttribute(T.string_gsub(key_tmp, "type", "macrotext"), "/follow mouseover")
                elseif type(value) == "string" then
                    if T.string_sub(value, 1, 2) ~= "#*" then
                        k:SetAttribute(key_tmp, "spell")
                        k:SetAttribute(T.string_gsub(key_tmp, "type", "spell"), value)
                    else
                        k:SetAttribute(key_tmp, "macro")
                        k:SetAttribute(T.string_gsub(key_tmp, "type", "macrotext"), T.string_sub(value, 3))
                    end
                end
            end
        end
        key_tmp = nil
    end
end

function VCS:Enable_BlizzardSelfFrames()
    if E.private.lui.viiclickset.clickSetFrames.blizzardFrames["blizzardPlayerFrame"] then
        local frame = _G["PlayerFrame"]
        if frame then
            VCS.ClickCastFrames[frame] = true
            ClickSet_Enable(frame)
        end
    end
    if E.private.lui.viiclickset.clickSetFrames.blizzardFrames["blizzardTargetFrame"] then
        local frame = _G["TargetFrame"]
        if frame then
            VCS.ClickCastFrames[frame] = true
            ClickSet_Enable(frame)
        end
    end
    if E.private.lui.viiclickset.clickSetFrames.blizzardFrames["blizzardPetFrame"] then
        local frame = _G["PetFrame"]
        if frame then
            VCS.ClickCastFrames[frame] = true
            ClickSet_Enable(frame)
        end
    end
    if E.private.lui.viiclickset.clickSetFrames.blizzardFrames["blizzardFocusFrame"] then
        local frame = _G["FocusFrame"]
        if frame then
            VCS.ClickCastFrames[frame] = true
            ClickSet_Enable(frame)
        end
    end
end

function VCS:Enable_BlizzardPartyFrames()
    if not E.private.lui.viiclickset.clickSetFrames.blizzardFrames["blizzardPartyFrames"] then return end
    local frames = {
        PartyMemberFrame1,
        PartyMemberFrame2,
        PartyMemberFrame3,
        PartyMemberFrame4,
    }
    for idx, frame in T.pairs(frames) do
        if frame then
            VCS.ClickCastFrames[frame] = true
            ClickSet_Enable(frame)
        end
    end
end

local function Enable_BlizzardCompactPartyFrames()
    local frames = {
        CompactPartyFrameMember1,
        CompactPartyFrameMember2,
        CompactPartyFrameMember3,
        CompactPartyFrameMember4,
        CompactPartyFrameMember5,
    }
    for idx, frame in T.pairs(frames) do
        if frame then
            VCS.ClickCastFrames[frame] = true
            ClickSet_Enable(frame)
        end
    end
end

local function Enable_BlizzardCompactRaidFrames()
    for i = 1, 100 do
        local frame = _G["CompactRaidFrame" .. i]
        if frame then
            VCS.ClickCastFrames[frame] = true
            ClickSet_Enable(frame)
        end
    end
end

local function Enable_BlizzardCompactRaidGroupFrames()
    local frames = {
        CompactRaidGroup1Member1,
        CompactRaidGroup1Member2,
        CompactRaidGroup1Member3,
        CompactRaidGroup1Member4,
        CompactRaidGroup1Member5,
        CompactRaidGroup2Member1,
        CompactRaidGroup2Member2,
        CompactRaidGroup2Member3,
        CompactRaidGroup2Member4,
        CompactRaidGroup2Member5,
        CompactRaidGroup3Member1,
        CompactRaidGroup3Member2,
        CompactRaidGroup3Member3,
        CompactRaidGroup3Member4,
        CompactRaidGroup3Member5,
        CompactRaidGroup4Member1,
        CompactRaidGroup4Member2,
        CompactRaidGroup4Member3,
        CompactRaidGroup4Member4,
        CompactRaidGroup4Member5,
        CompactRaidGroup5Member1,
        CompactRaidGroup5Member2,
        CompactRaidGroup5Member3,
        CompactRaidGroup5Member4,
        CompactRaidGroup5Member5,
        CompactRaidGroup6Member1,
        CompactRaidGroup6Member2,
        CompactRaidGroup6Member3,
        CompactRaidGroup6Member4,
        CompactRaidGroup6Member5,
        CompactRaidGroup7Member1,
        CompactRaidGroup7Member2,
        CompactRaidGroup7Member3,
        CompactRaidGroup7Member4,
        CompactRaidGroup7Member5,
        CompactRaidGroup8Member1,
        CompactRaidGroup8Member2,
        CompactRaidGroup8Member3,
        CompactRaidGroup8Member4,
        CompactRaidGroup8Member5,
    }
    for idx, frame in T.pairs(frames) do
        if frame then
            if frame.flag then return end
            VCS.ClickCastFrames[frame] = true
            ClickSet_Enable(frame)
            VCS:ClickSet_CreateAndRefresh()
            frame.flag = true
        else
            frame.flag = false
        end
    end
end

function VCS:Enable_BlizzardCompactFrames()
    if not E.private.lui.viiclickset.clickSetFrames.blizzardFrames["blizzardCompactFrames"] then return end
    Enable_BlizzardCompactPartyFrames()
    Enable_BlizzardCompactRaidFrames()
    Enable_BlizzardCompactRaidGroupFrames()
    self:RegisterEvent("GROUP_ROSTER_UPDATE", Enable_BlizzardCompactRaidGroupFrames)
end

function VCS:Enable_BlizzardBossFrames()
    if not E.private.lui.viiclickset.clickSetFrames.blizzardFrames["blizzardBossFrames"] then return end
    local frames = {
        Boss1TargetFrame,
        Boss2TargetFrame,
        Boss3TargetFrame,
        Boss4TargetFrame,
        Boss5TargetFrame,
    }
    for idx, frame in T.pairs(frames) do
        VCS.ClickCastFrames[frame] = true
        ClickSet_Enable(frame)
    end
end

local function FramesEnable(header)
    if header == _G["ElvUF_Player"] or header == _G["ElvUF_Target"] or header == _G["ElvUF_Pet"] or header == _G["ElvUF_Focus"] then
        VCS.ClickCastFrames[header] = true
        ClickSet_Enable(header)
    elseif header == _G["ElvUF_Boss"] or header == _G["ElvUF_Arena"] then
        for i = 1, header:GetNumChildren() do
            local frame = select(i, header:GetChildren())
            if frame then
                VCS.ClickCastFrames[frame] = true
                ClickSet_Enable(frame)
            end
        end
    elseif header == _G["ElvUF_Party"] or header == _G["ElvUF_Raid"] or header == _G["ElvUF_Raid40"] then
        for i = 1, header:GetNumChildren() do
            local group = select(i, header:GetChildren())
            for j = 1, group:GetNumChildren() do
                local frame = select(j, group:GetChildren())
                if frame then
                    VCS.ClickCastFrames[frame] = true
                    ClickSet_Enable(frame)
                end
            end
        end
    end
end

function VCS:Initialize()
    self:Enable_BlizzardSelfFrames()
    self:Enable_BlizzardCompactFrames()
    self:Enable_BlizzardPartyFrames()
    self:Enable_BlizzardBossFrames()
    if E.private.lui.viiclickset.clickSetFrames.elvuiFrames["elvuiPlayerFrame"] and E.db.unitframe.units.player["enable"] and _G["ElvUF_Player"] then FramesEnable(_G["ElvUF_Player"]) end
    if E.private.lui.viiclickset.clickSetFrames.elvuiFrames["elvuiTargetFrame"] and E.db.unitframe.units.target["enable"] and _G["ElvUF_Target"] then FramesEnable(_G["ElvUF_Target"]) end
    if E.private.lui.viiclickset.clickSetFrames.elvuiFrames["elvuiPetFrame"] and E.db.unitframe.units.pet["enable"] and _G["ElvUF_Pet"] then FramesEnable(_G["ElvUF_Pet"]) end
    if E.private.lui.viiclickset.clickSetFrames.elvuiFrames["elvuiFocusFrame"] and E.db.unitframe.units.focus["enable"] and _G["ElvUF_Focus"] then FramesEnable(_G["ElvUF_Focus"]) end
    if E.private.lui.viiclickset.clickSetFrames.elvuiFrames["elvuiPartyFrames"] and E.db.unitframe.units.party["enable"] and _G["ElvUF_Party"] then FramesEnable(_G["ElvUF_Party"]) end
    if E.private.lui.viiclickset.clickSetFrames.elvuiFrames["elvuiRaidFrames"] and E.db.unitframe.units.raid["enable"] and _G["ElvUF_Raid"] then FramesEnable(_G["ElvUF_Raid"]) end
    if E.private.lui.viiclickset.clickSetFrames.elvuiFrames["elvuiRaid40Frames"] and E.db.unitframe.units.raid40["enable"] and _G["ElvUF_Raid40"] then FramesEnable(_G["ElvUF_Raid40"]) end
    if E.private.lui.viiclickset.clickSetFrames.elvuiFrames["elvuiBossFrames"] and E.db.unitframe.units.boss["enable"] then
        for i = 1, 5 do
            if _G["ElvUF_Boss"..i] then
                FramesEnable(_G["ElvUF_Boss"..i])
            end
        end
    end
    if E.private.lui.viiclickset.clickSetFrames.elvuiFrames["elvuiArenaFrames"] and E.db.unitframe.units.arena["enable"] then
        for i = 1, 5 do
            if _G["ElvUF_Arena"..i] then
                FramesEnable(_G["ElvUF_Arena"..i])
            end
        end
    end
    self:ClickSet_CreateAndRefresh()
    --self:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED", VCS.ClickSet_CreateAndRefresh)
end

local function InitializeCallback()
    if not E.private.lui.viiclickset["enable"] then return end
    VCS:Initialize()
end

E:RegisterModule(VCS:GetName(), InitializeCallback)
