--来源：LivvenUI
--作者：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LME = E:NewModule("LuiMedia", "AceHook-3.0")
local LSM = E.LSM or E.Libs.LSM
local _G = _G
local FadingFrame_Show = FadingFrame_Show

LME.Zones = L["LUI_MEDIA_ZONES"]
LME.PvPInfo = L["LUI_MEDIA_PVP"]
LME.Subzones = L["LUI_MEDIA_SUBZONES"]
LME.PVPArena = L["LUI_MEDIA_PVPARENA"]

local Colors = {
    [1] = {0.41, 0.8, 0.94},
    [2] = {1.0, 0.1, 0.1},
    [3] = {0.1, 1.0, 0.1},
    [4] = {1.0, 0.7, 0},
    [5] = {1.0, 0.9294, 0.7607},
}

local function ZoneTextPos()
    if (_G["PVPInfoTextString"]:GetText() == "") then
        _G["SubZoneTextString"]:SetPoint("TOP", "ZoneTextString", "BOTTOM", 0, 0)
    else
        _G["SubZoneTextString"]:SetPoint("TOP", "PVPInfoTextString", "BOTTOM", 0, 0)
    end
end

local function MakeFont(obj, font, size, style, r, g, b, sr, sg, sb, sox, soy)
	obj:SetFont(font, size, style)
	if sr and sg and sb then obj:SetShadowColor(sr, sg, sb) end
	if sox and soy then obj:SetShadowOffset(sox, soy) end
	if r and g and b then obj:SetTextColor(r, g, b)
	elseif r then obj:SetAlpha(r) end
end

-- local function SetQuestTrackerText(self, block)
--     local text = block.HeaderText
--     if text then
--         text:FontTemplate(LSM:Fetch("font", E.db.lui.media.miscTexts.questTrackerTitle["fontName"]), E.db.lui.media.miscTexts.questTrackerTitle["fontSize"], E.db.lui.media.miscTexts.questTrackerTitle["fontFlag"])
--         for objectiveKey, line in pairs(block.lines) do
--             line.Text:FontTemplate(LSM:Fetch("font", E.db.lui.media.miscTexts.questTrackerInfo["fontName"]), E.db.lui.media.miscTexts.questTrackerInfo["fontSize"], E.db.lui.media.miscTexts.questTrackerInfo["fontFlag"])
--         end
--     end
-- end

-- local function SetQuestTrackerTextColor(self, block)
--     local color
--     if E.db.lui.media.miscTexts.questTrackerTitle["fontClassColor"] then color = LUI.ClassRGB
--     else color = E.db.lui.media.miscTexts.questTrackerTitle["fontColor"]
--     end
--     local text = block.HeaderText
--     if text then
--         text:SetTextColor(color.r * 0.748, color.g * 0.748, color.b * 0.748)
--     end
-- end

-- local function SetQuestTrackerTextColorHighlight(self, block)
--     local color
--     if E.db.lui.media.miscTexts.questTrackerTitle["fontClassColor"] then color = LUI.ClassRGB
--     else color = E.db.lui.media.miscTexts.questTrackerTitle["fontColor"]
--     end
--     local text = block.HeaderText
--     if text then
--         text:SetTextColor(color.r, color.g, color.b)
--     end
-- end

-- local function SetWorldQuestTrackerText(self)
--     for _, block in pairs(self.usedBlocks) do
--         for objectiveKey, line in pairs(block.lines) do
--             if objectiveKey == 0 then
--                 line.Text:FontTemplate(LSM:Fetch("font", E.db.lui.media.miscTexts.questTrackerTitle["fontName"]), E.db.lui.media.miscTexts.questTrackerTitle["fontSize"], E.db.lui.media.miscTexts.questTrackerTitle["fontFlag"])
--             elseif objectiveKey then
--                 line.Text:FontTemplate(LSM:Fetch("font", E.db.lui.media.miscTexts.questTrackerInfo["fontName"]), E.db.lui.media.miscTexts.questTrackerInfo["fontSize"], E.db.lui.media.miscTexts.questTrackerTitle["fontFlag"])
--             end
--         end
--     end
-- end

-- local function SetWorldQuestTrackerTextColor(self)
--     local color
--     if E.db.lui.media.miscTexts.questTrackerTitle["fontClassColor"] then color = LUI.ClassRGB
--     else color = E.db.lui.media.miscTexts.questTrackerTitle["fontColor"]
--     end
--     for _, block in pairs(self.usedBlocks) do
--         for objectiveKey, line in pairs(block.lines) do
--             if objectiveKey == 0 then
--                 line.Text:SetTextColor(color.r * 0.748, color.g * 0.748, color.b * 0.748)
--             end
--         end
--     end
-- end

-- local function SetWorldQuestTrackerTextColorHighlight(self)
--     local color
--     if E.db.lui.media.miscTexts.questTrackerTitle["fontClassColor"] then color = LUI.ClassRGB
--     else color = E.db.lui.media.miscTexts.questTrackerTitle["fontColor"]
--     end
--     for _, block in pairs(self.usedBlocks) do
--         for objectiveKey, line in pairs(block.lines) do
--             if objectiveKey == 0 then
--                 line.Text:SetTextColor(color.r, color.g, color.b)
--             end
--         end
--     end
-- end

function LME:SetBlizzFonts()
    if E.private.general.replaceBlizzFonts then
        if E.db.lui.media.zoneTexts["enable"] then
            _G["ZoneTextString"]:SetFont(LSM:Fetch("font", E.db.lui.media.zoneTexts.zoneText["fontName"]), E.db.lui.media.zoneTexts.zoneText["fontSize"], E.db.lui.media.zoneTexts.zoneText["fontFlag"])
            _G["PVPInfoTextString"]:SetFont(LSM:Fetch("font", E.db.lui.media.zoneTexts.pvpstatusText["fontName"]), E.db.lui.media.zoneTexts.pvpstatusText["fontSize"], E.db.lui.media.zoneTexts.pvpstatusText["fontFlag"])
            _G["PVPArenaTextString"]:SetFont(LSM:Fetch("font", E.db.lui.media.zoneTexts.pvpstatusText["fontName"]), E.db.lui.media.zoneTexts.pvpstatusText["fontSize"], E.db.lui.media.zoneTexts.pvpstatusText["fontFlag"])
            _G["SubZoneTextString"]:SetFont(LSM:Fetch("font", E.db.lui.media.zoneTexts.subzoneText["fontName"]), E.db.lui.media.zoneTexts.subzoneText["fontSize"], E.db.lui.media.zoneTexts.subzoneText["fontFlag"])
        end
        
        if E.db.lui.media.miscTexts.mailText["enable"] then
            _G["SendMailBodyEditBox"]:SetFont(LSM:Fetch("font", E.db.lui.media.miscTexts.mailText["fontName"]), E.db.lui.media.miscTexts.mailText["fontSize"], E.db.lui.media.miscTexts.mailText["fontFlag"])
            _G["OpenMailBodyText"]:SetFont(LSM:Fetch("font", E.db.lui.media.miscTexts.mailText["fontName"]), E.db.lui.media.miscTexts.mailText["fontSize"], E.db.lui.media.miscTexts.mailText["fontFlag"])
        end
        
        if E.db.lui.media.miscTexts.questGossip["enable"] then
            _G["QuestFont"]:SetFont(LSM:Fetch("font", E.db.lui.media.miscTexts.questGossip["fontName"]), E.db.lui.media.miscTexts.questGossip["fontSize"], E.db.lui.media.miscTexts.questGossip["fontFlag"])
        end
        
        if E.db.lui.media.miscTexts.questFontSuperHuge["enable"] then
            _G["QuestFont_Super_Huge"]:SetFont(LSM:Fetch("font", E.db.lui.media.miscTexts.questFontSuperHuge["fontName"]), E.db.lui.media.miscTexts.questFontSuperHuge["fontSize"], E.db.lui.media.miscTexts.questFontSuperHuge["fontFlag"])
            _G["QuestFont_Enormous"]:SetFont(LSM:Fetch("font", E.db.lui.media.miscTexts.questFontSuperHuge["fontName"]), E.db.lui.media.miscTexts.questFontSuperHuge["fontSize"], E.db.lui.media.miscTexts.questFontSuperHuge["fontFlag"])
        end
        
        if E.db.lui.media.miscTexts.editboxText["enable"] then
            _G["NumberFont_Shadow_Med"]:SetFont(LSM:Fetch("font", E.db.lui.media.miscTexts.editboxText["fontName"]), E.db.lui.media.miscTexts.editboxText["fontSize"], E.db.lui.media.miscTexts.editboxText["fontFlag"])
        end
        
        -- if E.db.lui.media.miscTexts.questTrackerTitle["enable"] then
        --     local color
        --     if E.db.lui.media.miscTexts.questTrackerTitle["fontClassColor"] then color = LUI.ClassRGB
        --     else color = E.db.lui.media.miscTexts.questTrackerTitle["fontColor"]
        --     end
        --     _G.OBJECTIVE_TRACKER_COLOR["Header"] = {r = color.r * 0.748, g = color.g * 0.748, b = color.b * 0.748}
        --     _G.OBJECTIVE_TRACKER_COLOR["HeaderHighlight"] = {r = color.r, g = color.g, b = color.b}
        -- end

        if E.db.lui.media.miscTexts.questTrackerInfo["enable"] then
			MakeFont(_G["ObjectiveFont"], LSM:Fetch("font", E.db.lui.media.miscTexts.questTrackerInfo["fontName"]), E.db.lui.media.miscTexts.questTrackerInfo["fontSize"], E.db.lui.media.miscTexts.questTrackerInfo["fontFlag"])
		end
    end
end

function LME:TextWidth()
    local db = E.db.lui.media.zoneTexts
    _G["ZoneTextString"]:SetWidth(db.zoneText.width)
    _G["PVPInfoTextString"]:SetWidth(db.pvpstatusText.width)
    _G["PVPArenaTextString"]:SetWidth(db.pvpstatusText.width)
    _G["SubZoneTextString"]:SetWidth(db.subzoneText.width)
end

function LME:TextShow()
    local z, i, a, s, c = T.random(1, #LME.Zones), T.random(1, #LME.PvPInfo), T.random(1, #LME.PVPArena), T.random(1, #LME.Subzones), T.random(1, #Colors)
    local red, green, blue = unpack(Colors[c])
    
    _G["ZoneTextString"]:SetText(LME.Zones[z])
    _G["PVPInfoTextString"]:SetText(LME.PvPInfo[i])
    _G["PVPArenaTextString"]:SetText(LME.PVPArena[a])
    _G["SubZoneTextString"]:SetText(LME.Subzones[s])
    
    ZoneTextPos()
    
    _G["ZoneTextString"]:SetTextColor(red, green, blue)
    _G["PVPInfoTextString"]:SetTextColor(red, green, blue)
    _G["PVPArenaTextString"]:SetTextColor(red, green, blue)
    _G["SubZoneTextString"]:SetTextColor(red, green, blue)
    
    FadingFrame_Show(_G["ZoneTextFrame"])
    FadingFrame_Show(_G["SubZoneTextFrame"])
end


function LME:Initialize()
    if E.db.lui.media.zoneTexts["enable"] then
        LME:TextWidth()
        T.hooksecurefunc("SetZoneText", ZoneTextPos)
    end
    
    -- if E.db.lui.media.miscTexts.questTrackerTitle["enable"] then
    --     T.hooksecurefunc(QUEST_TRACKER_MODULE, "SetBlockHeader", SetQuestTrackerText)
    --     T.hooksecurefunc(QUEST_TRACKER_MODULE, "OnBlockHeaderEnter", SetQuestTrackerTextColorHighlight)
    --     T.hooksecurefunc(QUEST_TRACKER_MODULE, "OnBlockHeaderLeave", SetQuestTrackerTextColor)
    --     T.hooksecurefunc(ACHIEVEMENT_TRACKER_MODULE, "SetBlockHeader", SetQuestTrackerText)
    --     T.hooksecurefunc(WORLD_QUEST_TRACKER_MODULE, "SetBlockHeader", SetWorldQuestTrackerText)
    --     T.hooksecurefunc(WORLD_QUEST_TRACKER_MODULE, "OnBlockHeaderEnter", SetWorldQuestTrackerTextColorHighlight)
    --     T.hooksecurefunc(WORLD_QUEST_TRACKER_MODULE, "OnBlockHeaderLeave", SetWorldQuestTrackerTextColor)
    -- end

    T.hooksecurefunc(E, "UpdateBlizzardFonts", LME.SetBlizzFonts)
    LME.SetBlizzFonts()
end

local function InitializeCallback()
    LME:Initialize()
end

E:RegisterModule(LME:GetName(), InitializeCallback)