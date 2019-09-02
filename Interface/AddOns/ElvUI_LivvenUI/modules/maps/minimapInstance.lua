local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "maps", "minimapInstance", "enable") then return end
if T.IsAddOnLoaded("ElvUI_SLE") then return end
local LMI = E:NewModule("LuiMinimapInstance", "AceHook-3.0", "AceEvent-3.0")

local _G = _G

LMI.BlizzDif = _G["MiniMapInstanceDifficulty"]
LMI.BlizzGDif = _G["GuildInstanceDifficulty"]
LMI.BlizzCM = _G["MiniMapChallengeMode"]

local Difficulties = {
    [1] = "normal", --5ppl normal
    [2] = "heroic", --5ppl heroic
    [3] = "normal", --10ppl raid
    [4] = "normal", --25ppl raid
    [5] = "heroic", --10ppl heroic raid
    [6] = "heroic", --25ppl heroic raid
    [7] = "lfr", --25ppl LFR
    [8] = "challenge", --5ppl challenge
    [9] = "normal", --40ppl raid
    [11] = "heroic", --Heroic scenario
    [12] = "normal", --Normal scenario
    [14] = "normal", --10-30ppl normal
    [15] = "heroic", --13-30ppl heroic
    [16] = "mythic", --20ppl mythic
    [17] = "lfr", --10-30 LFR
    [23] = "mythic", --5ppl mythic
    [24] = "time", --Timewalking
}

function LMI:CreateText()
    LMI.frame = T.CreateFrame("Frame", "MiniMapDifFrame", _G["Minimap"])
    LMI.frame:Size(50, 20)
    LMI.frame.text = LMI.frame:CreateFontString(nil, "OVERLAY")
    LMI.frame.text:SetPoint("CENTER", LMI.frame, "CENTER")
    LMI.frame.icon = LMI.frame:CreateFontString(nil, "OVERLAY")
    LMI.frame.icon:SetPoint("LEFT", LMI.frame.text, "RIGHT", 4, 0)
    
    self:SetFonts()
end

function LMI:SetFonts()
    LMI.frame.text:SetFont(E.LSM:Fetch("font", E.db.lui.modules.maps.minimapInstance.fontName), E.db.lui.modules.maps.minimapInstance.fontSize, E.db.lui.modules.maps.minimapInstance.fontFlag)
    LMI.frame.icon:SetFont(E.LSM:Fetch("font", E.db.lui.modules.maps.minimapInstance.fontName), E.db.lui.modules.maps.minimapInstance.fontSize, E.db.lui.modules.maps.minimapInstance.fontFlag)
end

function LMI:InstanceCheck()
    local isInstance, InstanseType = T.IsInInstance()
    local show = false
    if isInstance and InstanseType ~= "pvp" and InstanseType ~= "arena" then show = true end
    return show
end

function LMI:GuildEmblem()
    local char = {}
    if not T.IsAddOnLoaded("Blizzard_GuildUI") then T.LoadAddOn("Blizzard_GuildUI") end
    if _G["GuildFrameTabardEmblem"] then
        char.guildTexCoord = {_G["GuildFrameTabardEmblem"]:GetTexCoord()}
    else
        char.guildTexCoord = false
    end
    if T.IsInGuild() and char.guildTexCoord then
        return "|TInterface\\GuildFrame\\GuildEmblemsLG_01:24:24:-4:1:32:32:" .. (char.guildTexCoord[1] * 32) .. ":" .. (char.guildTexCoord[7] * 32) .. ":" .. (char.guildTexCoord[2] * 32) .. ":" .. (char.guildTexCoord[8] * 32) .. "|t"
    else
        return ""
    end
end

function LMI:UpdateFrame()
    LMI.frame:Point("TOPLEFT", _G["Minimap"], "TOPLEFT", E.db.lui.modules.maps.minimapInstance.xoffset, E.db.lui.modules.maps.minimapInstance.yoffset)
    LMI:SetFonts()
    if E.db.lui.modules.maps.minimapInstance.enable then
        LMI.frame.text:Show()
        LMI.frame.icon:Show()
    else
        LMI.frame.text:Hide()
        LMI.frame.icon:Hide()
    end
end

function LMI:GetColor(dif)
    if dif and Difficulties[dif] then
        local color = E.db.lui.modules.maps.minimapInstance.colors[Difficulties[dif]]
        return color.r * 255, color.g * 255, color.b * 255
    else
        return 255, 255, 255
    end
end

function LMI:GenerateText(event, guild, force)
    local text, groupType, isHeroic, isChallengeMode, difficulty, difficultyName, instanceGroupSize
    LMI.frame.icon:SetText("")
    if not LMI:InstanceCheck() then
        LMI.frame.text:SetText("")
    else
        groupType, difficulty, difficultyName, _, _, _, _, instanceGroupSize = select(2, T.GetInstanceInfo())
        isHeroic, isChallengeMode = select(3, T.GetDifficultyInfo(difficulty))
        local r, g, b = LMI:GetColor(difficulty)
        if (difficulty >= 3 and difficulty <= 7) or difficulty == 9 or E.db.lui.modules.maps.minimapInstance.onlyNumber then
            text = T.string_format("|cff%02x%02x%02x%s|r", r, g, b, instanceGroupSize)
        else
            difficultyName = T.string_utf8sub(difficultyName, 1, 1)
            text = T.string_format(instanceGroupSize .. " |cff%02x%02x%02x%s|r", r, g, b, difficultyName)
        end
        LMI.frame.text:SetText(text)
        if (guild) and not isChallengeMode then
            local logo = LMI:GuildEmblem()
            LMI.frame.icon:SetText(logo)
        end
        LMI.BlizzDif:Hide()
        LMI.BlizzCM:Hide()
        LMI.BlizzGDif:Hide()
        if not E.db.lui.modules.maps.minimapInstance.enable then
            if not LMI.BlizzDif:IsShown() and (groupType == "raid" or isHeroic) and not guild then
                LMI.BlizzDif:Show()
                LMI.BlizzCM:Hide()
                LMI.BlizzGDif:Hide()
            elseif not LMI.BlizzCM:IsShown() and isChallengeMode and not guild then
                LMI.BlizzDif:Hide()
                LMI.BlizzCM:Show()
                LMI.BlizzGDif:Hide()
            elseif guild then
                LMI.BlizzDif:Hide()
                LMI.BlizzCM:Hide()
                LMI.BlizzGDif:Show()
            end
        end
    end
    LMI:UpdateFrame()
end

function LMI:Initialize()
    self:CreateText()
    LMI.BlizzDif:HookScript("OnShow", function(self) if E.db.lui.modules.maps.minimapInstance.enable then self:Hide() end end)
    LMI.BlizzGDif:HookScript("OnShow", function(self) if E.db.lui.modules.maps.minimapInstance.enable then self:Hide() end end)
    LMI.BlizzCM:HookScript("OnShow", function(self) if E.db.lui.modules.maps.minimapInstance.enable then self:Hide() end end)
    self:RegisterEvent("LOADING_SCREEN_DISABLED", "GenerateText")
    self:RegisterEvent("GROUP_ROSTER_UPDATE", "GenerateText")
    self:UpdateFrame()
    T.hooksecurefunc("MiniMapInstanceDifficulty_Update", LMI.GenerateText)
end

local function InitializeCallback()
    if not E.private.general.minimap.enable or not E.db.lui.modules.maps.minimapInstance.enable or T.IsAddOnLoaded("ElvUI_SLE") then return end
    LMI:Initialize()
end

E:RegisterModule(LMI:GetName(), InitializeCallback)
