--原作：EnhancedFriendList
--原作者：Awbee
--修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LEF = E:NewModule("LuiEnhancedFriendsList", "AceHook-3.0")

local MediaPath = "Interface\\AddOns\\ElvUI_LivvenUI\\media\\textures\\"

LEF.GameIcons = {
    Default = {
        Alliance = BNet_GetClientTexture(BNET_CLIENT_WOW),
        Horde = BNet_GetClientTexture(BNET_CLIENT_WOW),
        Neutral = BNet_GetClientTexture(BNET_CLIENT_WOW),
        D3 = BNet_GetClientTexture(BNET_CLIENT_D3),
        WTCG = BNet_GetClientTexture(BNET_CLIENT_WTCG),
        S1 = BNet_GetClientTexture(BNET_CLIENT_SC),
        S2 = BNet_GetClientTexture(BNET_CLIENT_SC2),
        App = BNet_GetClientTexture(BNET_CLIENT_APP),
        BSAp = BNet_GetClientTexture(BNET_CLIENT_APP),
        Hero = BNet_GetClientTexture(BNET_CLIENT_HEROES),
        Pro = BNet_GetClientTexture(BNET_CLIENT_OVERWATCH),
        DST2 = BNet_GetClientTexture(BNET_CLIENT_DESTINY2),
        VIPR = BNet_GetClientTexture(BNET_CLIENT_COD),
    },
    BlizzardChat = {
        Alliance = "Interface\\ChatFrame\\UI-ChatIcon-WoW",
        Horde = "Interface\\ChatFrame\\UI-ChatIcon-WoW",
        Neutral = "Interface\\ChatFrame\\UI-ChatIcon-WoW",
        D3 = "Interface\\ChatFrame\\UI-ChatIcon-D3",
        WTCG = "Interface\\ChatFrame\\UI-ChatIcon-WTCG",
        S1 = "Interface\\ChatFrame\\UI-ChatIcon-SC",
        S2 = "Interface\\ChatFrame\\UI-ChatIcon-SC2",
        App = "Interface\\ChatFrame\\UI-ChatIcon-Battlenet",
        BSAp = "Interface\\ChatFrame\\UI-ChatIcon-Battlenet",
        Hero = "Interface\\ChatFrame\\UI-ChatIcon-HotS",
        Pro = "Interface\\ChatFrame\\UI-ChatIcon-Overwatch",
        DST2 = "Interface\\ChatFrame\\UI-ChatIcon-Destiny2",
        VIPR = "Interface\\ChatFrame\\UI-ChatIcon-CallOfDutyBlackOps4"
    },
    Flat = {
        Alliance = MediaPath .. "GameIcons\\Flat\\Alliance",
        Horde = MediaPath .. "GameIcons\\Flat\\Horde",
        Neutral = MediaPath .. "GameIcons\\Flat\\Neutral",
        D3 = MediaPath .. "GameIcons\\Flat\\D3",
        WTCG = MediaPath .. "GameIcons\\Flat\\Hearthstone",
        S1 = "Interface\\ChatFrame\\UI-ChatIcon-SC",
        S2 = MediaPath .. "GameIcons\\Flat\\SC2",
        App = MediaPath .. "GameIcons\\Flat\\BattleNet",
        BSAp = MediaPath .. "GameIcons\\Flat\\BattleNet",
        Hero = MediaPath .. "GameIcons\\Flat\\Heroes",
        Pro = MediaPath .. "GameIcons\\Flat\\Overwatch",
        DST2 = "Interface\\ChatFrame\\UI-ChatIcon-Destiny2",
        VIPR = MediaPath .. "GameIcons\\Flat\\COD4",
    },
    Gloss = {
        Alliance = MediaPath .. "GameIcons\\Gloss\\Alliance",
        Horde = MediaPath .. "GameIcons\\Gloss\\Horde",
        Neutral = MediaPath .. "GameIcons\\Gloss\\Neutral",
        D3 = MediaPath .. "GameIcons\\Gloss\\D3",
        WTCG = MediaPath .. "GameIcons\\Gloss\\Hearthstone",
        S1 = "Interface\\ChatFrame\\UI-ChatIcon-SC",
        S2 = MediaPath .. "GameIcons\\Gloss\\SC2",
        App = MediaPath .. "GameIcons\\Gloss\\BattleNet",
        BSAp = MediaPath .. "GameIcons\\Gloss\\BattleNet",
        Hero = MediaPath .. "GameIcons\\Gloss\\Heroes",
        Pro = MediaPath .. "GameIcons\\Gloss\\Overwatch",
        DST2 = "Interface\\ChatFrame\\UI-ChatIcon-Destiny2",
        VIPR = MediaPath .. "GameIcons\\Gloss\\COD4",
    },
    Launcher = {
        Alliance = MediaPath .. "GameIcons\\Launcher\\Alliance",
        Horde = MediaPath .. "GameIcons\\Launcher\\Horde",
        Neutral = MediaPath .. "GameIcons\\Launcher\\Neutral",
        D3 = MediaPath .. "GameIcons\\Launcher\\D3",
        WTCG = MediaPath .. "GameIcons\\Launcher\\Hearthstone",
        S1 = MediaPath .. "GameIcons\\Launcher\\SC",
        S2 = MediaPath .. "GameIcons\\Launcher\\SC2",
        App = MediaPath .. "GameIcons\\Launcher\\BattleNet1",
        BSAp = MediaPath .. "GameIcons\\Launcher\\BattleNet",
        Hero = MediaPath .. "GameIcons\\Launcher\\Heroes",
        Pro = MediaPath .. "GameIcons\\Launcher\\Overwatch",
        DST2 = MediaPath .. "GameIcons\\Launcher\\Destiny2",
        VIPR = MediaPath .. "GameIcons\\Launcher\\COD4",
    },
}

LEF.StatusIcons = {
    Default = {
        Online = FRIENDS_TEXTURE_ONLINE,
        Offline = FRIENDS_TEXTURE_OFFLINE,
        DND = FRIENDS_TEXTURE_DND,
        AFK = FRIENDS_TEXTURE_AFK,
    },
    Square = {
        Online = MediaPath .. "StatusIcons\\Square\\Online",
        Offline = MediaPath .. "StatusIcons\\Square\\Offline",
        DND = MediaPath .. "StatusIcons\\Square\\DND",
        AFK = MediaPath .. "StatusIcons\\Square\\AFK",
    },
    D3 = {
        Online = MediaPath .. "StatusIcons\\D3\\Online",
        Offline = MediaPath .. "StatusIcons\\D3\\Offline",
        DND = MediaPath .. "StatusIcons\\D3\\DND",
        AFK = MediaPath .. "StatusIcons\\D3\\AFK",
    },
}

if LUI:CheckDB("db", "modules", "blizzard", "enhancedFriendsList", "enable") then return end
local LSM = E.LSM or E.Libs.LSM

local ClientColor = {
    S1 = "C495DD",
    S2 = "C495DD",
    D3 = "C41F3B",
    Pro = "00C0FA",
    WTCG = "4EFF00",
    Hero = "00CCFF",
    App = "82C5FF",
    BSAp = "82C5FF",
    DST2 = "00C0FA",
    VIPR = "FFFFFF",
}

local function getDiffColorString(level)
    local color = T.GetQuestDifficultyColor(level)
    return E:RGBToHex(color.r, color.g, color.b)
end

function LEF:UpdateFriends(button)
    local nameText, nameColor, infoText, broadcastText, _, Cooperate
    if button.buttonType == FRIENDS_BUTTON_TYPE_WOW then
        local name, level, class, area, connected, status = T.GetFriendInfo(button.id)
        broadcastText = nil
        if connected then
            button.status:SetTexture(LEF.StatusIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["StatusIconPack"]][(status == CHAT_FLAG_DND and "DND" or status == CHAT_FLAG_AFK and "AFK" or "Online")])
            nameText = T.string_format('%s%s - (%s - %s %s)',
			LUI:GetClassColorString(class), name, class, LEVEL, level)
            nameColor = FRIENDS_WOW_NAME_COLOR
            Cooperate = true
        else
            button.status:SetTexture(LEF.StatusIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["StatusIconPack"]].Offline)
            nameText = name
            nameColor = FRIENDS_GRAY_COLOR
        end
        infoText = area
    elseif button.buttonType == FRIENDS_BUTTON_TYPE_BNET and T.BNConnected() then
        local presenceID, presenceName, battleTag, isBattleTagPresence, toonName, toonID, client, isOnline, lastOnline, isAFK, isDND, messageText, noteText, isRIDFriend, messageTime, canSoR = T.BNGetFriendInfo(button.id)
        local realmName, realmID, faction, race, class, zoneName, level, gameText
        broadcastText = messageText
        local characterName = toonName
        if presenceName then
            nameText = presenceName
            if isOnline then
                characterName = BNet_GetValidatedCharacterName(characterName, battleTag, client)
            end
        else
            nameText = UNKNOWN
        end
        
        if characterName then
            _, _, _, realmName, realmID, faction, race, class, _, zoneName, level, gameText = T.BNGetGameAccountInfo(toonID)
            if client == BNET_CLIENT_WOW then
                if (level == nil or T.tonumber(level) == nil) then level = 0 end
                local classcolor = LUI:GetClassColorString(class)
                if E.db.lui.modules.blizzard.enhancedFriendsList.general["NameLevel"] then
                    local diff = level ~= 0 and T.string_format("|cFF%02x%02x%02x", T.GetQuestDifficultyColor(level).r * 255, T.GetQuestDifficultyColor(level).g * 255, T.GetQuestDifficultyColor(level).b * 255) or "|cFFFFFFFF"
                    nameText = T.string_format("%s |cFFFFFFFF(|r%s%s|r - %s%s|r|cFFFFFFFF)|r", nameText, classcolor, characterName, diff, level)
                else
                    nameText = T.string_format("%s |cFFFFFFFF(|r%s%s|r|r|cFFFFFFFF)|r", nameText, classcolor, characterName)
                end
                Cooperate = T.CanCooperateWithGameAccount(toonID)
            else
                if not ClientColor[client] then
                    client = "App"
                end
                nameText = T.string_format("|cFF%s%s|r", ClientColor[client] or "FFFFFF", nameText)
            end
        end
        
        if isOnline then
            button.status:SetTexture(LEF.StatusIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["StatusIconPack"]][(status == CHAT_FLAG_DND and "DND" or status == CHAT_FLAG_AFK and "AFK" or "Online")])
            if client == BNET_CLIENT_WOW then
                if not zoneName or zoneName == "" then
                    infoText = UNKNOWN
                else
                    if realmName == E.myRealm then
                        infoText = zoneName
                    else
                        infoText = T.string_format("%s - %s", zoneName, realmName)
                    end
                end
                button.gameIcon:SetTexture(LEF.GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][faction])
            else
                infoText = gameText
                button.gameIcon:SetTexture(LEF.GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][client])
            end
            nameColor = FRIENDS_BNET_NAME_COLOR
            button.gameIcon:SetTexCoord(0, 1, 0, 1)
        else
            button.status:SetTexture(LEF.StatusIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["StatusIconPack"]].Offline)
            nameColor = FRIENDS_GRAY_COLOR
            infoText = lastOnline == 0 and FRIENDS_LIST_OFFLINE or T.string_format(BNET_LAST_ONLINE_TIME, FriendsFrame_GetLastOnline(lastOnline))
        end
    end
    
    if button.summonButton:IsShown() then
        button.gameIcon:SetPoint("TOPRIGHT", -50, -2)
    else
        button.gameIcon:SetPoint("TOPRIGHT", -21, -2)
    end
    
    if not button.isUpdateHooked then
        button:HookScript("OnUpdate", function(self, elapsed)
            if button.gameIcon:GetTexture() == MediaPath .. "GameIcons\\Bnet" then
                T.AnimateTexCoords(self.gameIcon, 512, 256, 64, 64, 25, elapsed, 0.02)
            end
        end)
        button.isUpdateHooked = true
    end
    
    if nameText then
        button.name:SetText(nameText)
        button.name:SetTextColor(nameColor.r, nameColor.g, nameColor.b)
        button.info:SetText(infoText)
        if E.db.lui.modules.blizzard.enhancedFriendsList.general["InfoColor"] then
            button.info:SetTextColor(unpack(Cooperate and {1, .96, .45} or {.49, .52, .54}))
        end
        button.name:SetFont(LSM:Fetch("font", E.db.lui.modules.blizzard.enhancedFriendsList.general["NameFont"]), E.db.lui.modules.blizzard.enhancedFriendsList.general["NameFontSize"], E.db.lui.modules.blizzard.enhancedFriendsList.general["NameFontFlag"])
        button.info:SetFont(LSM:Fetch("font", E.db.lui.modules.blizzard.enhancedFriendsList.general["InfoFont"]), E.db.lui.modules.blizzard.enhancedFriendsList.general["InfoFontSize"], E.db.lui.modules.blizzard.enhancedFriendsList.general["InfoFontFlag"])
    end
end

function LEF:Initialize()
    self:SecureHook("FriendsFrame_UpdateFriendButton", "UpdateFriends")
end

local function InitializeCallback()
    if not E.db.lui.modules.blizzard.enhancedFriendsList["enable"] then return end
    LEF:Initialize()
end

E:RegisterModule(LEF:GetName(), InitializeCallback)
