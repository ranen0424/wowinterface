local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "chat", "chatIME") then return end
local LCIME = E:NewModule("LuiChatIME", "AceEvent-3.0")
local S = E:GetModule("Skins")

local newAddMsg = {}
local Language = GetLocale()
local chn = {
    "%[%d+%. General.-%]",
    "%[%d+%. Trade.-%]",
    "%[%d+%. LocalDefense.-%]",
    "%[%d+%. LookingForGroup%]",
    "%[%d+%. WorldDefense%]",
    "%[%d+%. GuildRecruitment.-%]",
    "%[%d+%. BigFootChannel%]",
    "%[%d+%. ElvUIGVC%]",
    "%[%d+%. CustomChannel.-%]"
}

local rplc = {
    "[GEN]",
    "[TR]",
    "[WD]",
    "[LD]",
    "[LFG]",
    "[GR]",
    "[BFC]",
    "[ElvUI]",
    "[CL]"
}

if (Language == "zhCN") then
    rplc[1] = "[%1综]"
    rplc[2] = "[%1交]"
    rplc[3] = "[%1防]"
    rplc[4] = "[%1组]"
    rplc[5] = "[%1守]"
    rplc[6] = "[%1招]"
    rplc[7] = "[%1世]"
    rplc[8] = "[%1ElvUI]"
    rplc[9] = "[%1自定义]"
elseif (Language == "zhTW") then
    rplc[1] = "[%1綜合]"
    rplc[2] = "[%1貿易]"
    rplc[3] = "[%1防務]"
    rplc[4] = "[%1組隊]"
    rplc[5] = "[%1守備]"
    rplc[6] = "[%1招募]"
    rplc[7] = "[%1世界]"
    rplc[8] = "[%1ElvUI]"
    rplc[9] = "[%1自定义]"
end

if Language == "zhCN" then
    chn[1] = "%[%d+%. 综合.-%]"
    chn[2] = "%[%d+%. 交易.-%]"
    chn[3] = "%[%d+%. 本地防务.-%]"
    chn[4] = "%[%d+%. 寻求组队%]"
    chn[5] = "%[%d+%. 世界防务%]"
    chn[6] = "%[%d+%. 公会招募.-%]"
    chn[7] = "%[%d+%. 大脚世界频道%]"
    chn[8] = "%[%d+%. ElvUIGVC%]"
    chn[9] = "%[%d+%. 自定义频道.-%]"
elseif Language == "zhTW" then
    chn[1] = "%[%d+%. 綜合.-%]"
    chn[2] = "%[%d+%. 貿易.-%]"
    chn[3] = "%[%d+%. 本地防務.-%]"
    chn[4] = "%[%d+%. 尋求組隊%]"
    chn[5] = "%[%d+%. 世界防務%]"
    chn[6] = "%[%d+%. 公會招募.-%]"
    chn[7] = "%[%d+%. 大脚世界频道.-%]"
    chn[8] = "%[%d+%. ElvUIGVC.-%]"
    chn[9] = "%[%d+%. 自定义频道.-%]"
end

local function NewAddMessage(frame, text, ...)
    for i = 1, 9 do
        text = _G.string.gsub(text, chn[i], rplc[i])
    end
    text = _G.string.gsub(text, "%[(%d0?)%. .-%]", "%1.")
    
    if (type(text) ~= "string") then
        text = T.tostring(text)
    end
    return newAddMsg[frame](frame, text, ...)
end

function LCIME:Initialize()
    if _G["IMECandidatesFrame"] then
        S:HandlePortraitFrame(_G["IMECandidatesFrame"])
    end
end

local function InitializeCallback()
    if not E.db.lui.modules.chat["chatIME"] then return end
    LCIME:Initialize()
end

E:RegisterModule(LCIME:GetName(), InitializeCallback)
