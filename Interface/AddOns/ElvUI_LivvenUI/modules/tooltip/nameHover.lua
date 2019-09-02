local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "tooltip", "nameHover", "enable") then return end
local LNH = E:NewModule("LuiNameHover")
local LSM = E.LSM or E.Libs.LSM

local UIParent = UIParent
local UNKNOWN = UNKNOWN

local function Getcolor()
    local reaction = T.UnitReaction("mouseover", "player") or 5
    if T.UnitIsPlayer("mouseover") then
        local _, class = T.UnitClass("mouseover")
        local color = (CUSTOM_CLASS_COLORS and CUSTOM_CLASS_COLORS[class]) or (RAID_CLASS_COLORS and RAID_CLASS_COLORS[class])
        return color.r, color.g, color.b
    elseif T.UnitCanAttack("player", "mouseover") then
        if T.UnitIsDead("mouseover") then
            return 136 / 255, 136 / 255, 136 / 255
        else
            if reaction < 4 then
                return 1, 68 / 255, 68 / 255
            elseif reaction == 4 then
                return 1, 1, 68 / 255
            end
        end
    else
        if reaction < 4 then
            return 48 / 255, 113 / 255, 191 / 255
        else
            return 1, 1, 1
        end
    end
end

function LNH:Initialize()
    local tooltip = T.CreateFrame("frame", nil)
    tooltip:SetFrameStrata("TOOLTIP")
    tooltip.text = tooltip:CreateFontString(nil, "OVERLAY")
    tooltip.text:FontTemplate(LSM:Fetch("font", E.db.lui.modules.tooltip.nameHover["fontName"]) or "Expressway", E.db.lui.modules.tooltip.nameHover["fontSize"] or 12, E.db.lui.modules.tooltip.nameHover["fontFlag"] or "OUTLINE")
    tooltip:SetScript("OnUpdate", function(tt)
        if T.GetMouseFocus() and T.GetMouseFocus():IsForbidden() then tt:Hide() return end
        if T.GetMouseFocus() and T.GetMouseFocus():GetName() ~= "WorldFrame" then tt:Hide() return end
        if not T.UnitExists("mouseover") then tt:Hide() return end
        local x, y = T.GetCursorPosition()
        local scale = UIParent:GetEffectiveScale()
        tt.text:SetPoint("CENTER", UIParent, "BOTTOMLEFT", x, y + 15)
    end)
    
    tooltip:SetScript("OnEvent", function(tt)
        if T.GetMouseFocus():GetName() ~= "WorldFrame" then return end
        
        local localeClass, class = T.UnitClass("mouseover")
        local name, realm = T.UnitName("mouseover")
        local guildName, guildRankName, _, guildRealm = T.GetGuildInfo("mouseover")
        local pvpName = T.UnitPVPName("mouseover")
        local level = T.UnitLevel("mouseover")
        local race, englishRace = T.UnitRace("mouseover")
        local _, factionGroup = T.UnitFactionGroup("mouseover")
        if (factionGroup and englishRace == "Pandaren") then
            race = factionGroup .. " " .. race
        end
        local genders = {"", L["Male"], L["Female"]}
        local gender = genders[T.UnitSex("mouseover")]
        local AFK = T.UnitIsAFK("mouseover")
        local DND = T.UnitIsDND("mouseover")
        local prefix = ""
        local infix = ""
        
        if pvpName and E.db.lui.modules.tooltip.nameHover["titles"] then
            name = pvpName
        end
        
        if race and E.db.lui.modules.tooltip.nameHover["race"] then
            infix = level .. " " .. gender .. " " .. race .. " " .. localeClass
        else
            infix = ""
        end
        
        if guildName and E.db.lui.modules.tooltip.nameHover["guildRank"] and E.db.lui.modules.tooltip.nameHover["guildName"] then
            suffix = "|cfff960d9[" .. guildName .. "]|r\n|cffffffff<" .. guildRankName .. ">|r"
        elseif guildName and E.db.lui.modules.tooltip.nameHover["guildName"] then
            suffix = "|cfff960d9[" .. guildName .. "]|r"
        else
            suffix = ""
        end
        
        if realm and realm ~= "" and E.db.lui.modules.tooltip.nameHover["realm"] then
            name = name .. "|cfff960d9 - " .. realm .. "|r"
        end
        
        if AFK then prefix = "|cffff0000<AFK>|r " end
        if DND then prefix = "|cffffce00<DND>|r " end
        
        tt.text:SetTextColor(Getcolor())
        if E.db.lui.modules.tooltip.nameHover["guildName"] and E.db.lui.modules.tooltip.nameHover["race"] then
            tt.text:SetText(prefix .. name .. "\n" .. infix .. "\n" .. suffix)
        elseif E.db.lui.modules.tooltip.nameHover["guildName"] then
            tt.text:SetText(prefix .. name .. "\n" .. suffix)
        elseif E.db.lui.modules.tooltip.nameHover["race"] then
            tt.text:SetText(prefix .. name .. "\n" .. infix)
        else
            tt.text:SetText(prefix .. name)
        end
        
        tt:Show()
    end)
    
    tooltip:RegisterEvent("UPDATE_MOUSEOVER_UNIT")
end

local function InitializeCallback()
    if T.IsAddOnLoaded("bdNameHover") then return end
    if not E.db.lui.modules.tooltip.nameHover["enable"] then return end
    LNH:Initialize()
end

E:RegisterModule(LNH:GetName(), InitializeCallback)
