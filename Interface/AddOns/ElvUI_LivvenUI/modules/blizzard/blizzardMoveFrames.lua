--来源：S&L
--作者：
--修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "blizzard", "blizzardMoveFrames", "enable") then return end
local LBMF = E:NewModule("LuiBlizzardMoveFrames", "AceEvent-3.0")

local _G = _G
local EnableMouse = EnableMouse
local SetMovable = SetMovable
local SetClampedToScreen = SetClampedToScreen
local RegisterForDrag = RegisterForDrag
local StartMoving = StartMoving
local StopMovingOrSizing = StopMovingOrSizing

LBMF.Frames = {
    "AddonList",
    "AudioOptionsFrame",
    "BankFrame",
    "CharacterFrame",
    "ChatConfigFrame",
    "DressUpFrame",
    "FriendsFrame",
    "FriendsFriendsFrame",
    "GameMenuFrame",
    "GossipFrame",
    "GuildInviteFrame",
    "GuildRegistrarFrame",
    "HelpFrame",
    -- "InterfaceOptionsFrame",
    "ItemTextFrame",
    "LFDRoleCheckPopup",
    "LFGDungeonReadyDialog",
    "LFGDungeonReadyStatus",
    "LootFrame",
    "MailFrame",
    "MerchantFrame",
    -- "OpenMailFrame",
    "PVEFrame",
    "PetStableFrame",
    "PetitionFrame",
    "PVPReadyDialog",
    "QuestFrame",
    "QuestLogPopupDetailFrame",
    "RaidBrowserFrame",
    "RaidInfoFrame",
    "RaidParentFrame",
    "ReadyCheckFrame",
    "ReportCheatingDialog",
    "RolePollPopup",
    "ScrollOfResurrectionSelectionFrame",
    "SpellBookFrame",
    "SplashFrame",
    "StackSplitFrame",
    -- "StaticPopup1",
    "StaticPopup2",
    "StaticPopup3",
    "StaticPopup4",
    "TabardFrame",
    "TaxiFrame",
    "TimeManagerFrame",
    "TradeFrame",
    "TutorialFrame",
    "VideoOptionsFrame",
    "WorldMapFrame",
}

LBMF.TempOnly = {
    ["BonusRollFrame"] = true,
    ["BonusRollLootWonFrame"] = true,
    ["BonusRollMoneyWonFrame"] = true,
}

LBMF.AddonsList = {
    ["Blizzard_AchievementUI"] = {"AchievementFrame"},
    ["Blizzard_AlliedRacesUI"] = {"AlliedRacesFrame"},
    ["Blizzard_ArchaeologyUI"] = {"ArchaeologyFrame"},
    ["Blizzard_AuctionUI"] = {"AuctionFrame"},
    ["Blizzard_AzeriteUI"] = {"AzeriteEmpoweredItemUI"},
    ["Blizzard_BarberShopUI"] = {"BarberShopFrame"},
    ["Blizzard_BindingUI"] = {"KeyBindingFrame"},
    ["Blizzard_BlackMarketUI"] = {"BlackMarketFrame"},
    ["Blizzard_Calendar"] = {"CalendarCreateEventFrame", "CalendarFrame"},
    ["Blizzard_ChallengesUI"] = {"ChallengesKeystoneFrame"},
    ["Blizzard_Collections"] = {"CollectionsJournal", "WardrobeFrame"},
    ["Blizzard_Communities"] = {"CommunitiesFrame"},
    ["Blizzard_EncounterJournal"] = {"EncounterJournal"},
    ["Blizzard_GarrisonUI"] = {
        "GarrisonLandingPage", "GarrisonMissionFrame", "GarrisonCapacitiveDisplayFrame",
        "GarrisonBuildingFrame", "GarrisonRecruiterFrame", "GarrisonRecruitSelectFrame",
        "GarrisonShipyardFrame", "OrderHallMissionFrame", "BFAMissionFrame",
    },
    ["Blizzard_GMChatUI"] = {"GMChatStatusFrame"},
    ["Blizzard_GMSurveyUI"] = {"GMSurveyFrame"},
    ["Blizzard_GuildBankUI"] = {"GuildBankFrame"},
    ["Blizzard_GuildControlUI"] = {"GuildControlUI"},
    ["Blizzard_GuildUI"] = {"GuildFrame", "GuildLogFrame"},
    ["Blizzard_InspectUI"] = {"InspectFrame"},
    ["Blizzard_ItemAlterationUI"] = {"TransmogrifyFrame"},
    ["Blizzard_ItemSocketingUI"] = {"ItemSocketingFrame"},
    ["Blizzard_ItemUpgradeUI"] = {"ItemUpgradeFrame"},
    ["Blizzard_LookingForGuildUI"] = {"LookingForGuildFrame"},
    ["Blizzard_MacroUI"] = {"MacroFrame"},
    ["Blizzard_OrderHallUI"] = {"OrderHallTalentFrame"},
    ["Blizzard_QuestChoice"] = {"QuestChoiceFrame"},
    ["Blizzard_ScrappingMachineUI"] = {"ScrappingMachineFrame"},
    ["Blizzard_TalentUI"] = {"PlayerTalentFrame"},
    ["Blizzard_TradeSkillUI"] = {"TradeSkillFrame"},
    ["Blizzard_TrainerUI"] = {"ClassTrainerFrame"},
    ["Blizzard_VoidStorageUI"] = {"VoidStorageFrame"},
}

LBMF.ExlusiveFrames = {
    ["QuestFrame"] = {"GossipFrame", },
    ["GossipFrame"] = {"QuestFrame", },
    ["GameMenuFrame"] = {"VideoOptionsFrame", "InterfaceOptionsFrame", "HelpFrame", },
    ["VideoOptionsFrame"] = {"GameMenuFrame", },
    ["InterfaceOptionsFrame"] = {"GameMenuFrame", },
    ["HelpFrame"] = {"GameMenuFrame", },
}

LBMF.NoSpecialFrames = {
    ["StaticPopup1"] = true,
    ["StaticPopup2"] = true,
    ["StaticPopup3"] = true,
    ["StaticPopup4"] = true,
}

LBMF.FramesAreaAlter = {
    ["GarrisonMissionFrame"] = "left",
    ["OrderHallMissionFrame"] = "left",
    ["BFAMissionFrame"] = "left",
}

LBMF.SpecialDefaults = {
    ["GarrisonMissionFrame"] = {"CENTER", _G.UIParent, "CENTER", 0, 0},
    ["OrderHallMissionFrame"] = {"CENTER", _G.UIParent, "CENTER", 0, 0},
    ["BFAMissionFrame"] = {"CENTER", _G.UIParent, "CENTER", 0, 0},
}

local function OnDragStart(self)
    self.IsMoving = true
    self:StartMoving()
end

local function OnDragStop(self)
    self:StopMovingOrSizing()
    local Name = self:GetName()
    if E.db.lui.modules.blizzard.blizzardMoveFrames["remember"] and not LBMF.TempOnly[Name] then
        local a, b, c, d, e = self:GetPoint()
        if self:GetParent() then
            b = self:GetParent():GetName() or UIParent
            if not _G[b] then b = UIParent end
        else
            b = UIParent
        end
        if Name == "QuestFrame" or Name == "GossipFrame" then
            E.db.lui.modules.blizzard.blizzardMoveFrames.points["GossipFrame"] = {a, b, c, d, e}
            E.db.lui.modules.blizzard.blizzardMoveFrames.points["QuestFrame"] = {a, b, c, d, e}
        else
            E.db.lui.modules.blizzard.blizzardMoveFrames.points[Name] = {a, b, c, d, e}
        end
        self:SetUserPlaced(true)
    else
        self:SetUserPlaced(false)
    end
    self.IsMoving = false
end

local function LoadPosition(self)
    if self.IsMoving == true then return end
    local Name = self:GetName()
    if not self:GetPoint() then
        if LBMF.SpecialDefaults[Name] then
            local a, b, c, d, e = unpack(LBMF.SpecialDefaults[Name])
            self:SetPoint(a, b, c, d, e, true)
        else
            self:SetPoint("TOPLEFT", "UIParent", "TOPLEFT", 16, -116, true)
        end
        OnDragStop(self)
    end
    
    if E.db.lui.modules.blizzard.blizzardMoveFrames["remember"] and E.db.lui.modules.blizzard.blizzardMoveFrames.points[Name] then
        if T.InCombatLockdown() then return end
        self:ClearAllPoints()
        local a, b, c, d, e = unpack(E.db.lui.modules.blizzard.blizzardMoveFrames.points[Name])
        self:SetPoint(a, b, c, d, e, true)
    end
    
    if LBMF.ExlusiveFrames[Name] then
        for _, name in T.pairs(LBMF.ExlusiveFrames[Name]) do _G[name]:Hide() end
    end
end

function LBMF:RewritePoint(anchor, parent, point, x, y, SLEcalled)
    if not SLEcalled then LoadPosition(self) end
end

function LBMF:MakeMovable(Name)
    local frame = _G[Name]
    if not frame then
        LUI:Print("Frame to move doesn't exist: " .. (Name or "Unknown"), "error")
        return
    end
    
    if Name == "AchievementFrame" then AchievementFrameHeader:EnableMouse(false) end
    if Name == "CollectionsJournal" then
    else
        frame:EnableMouse(true)
    end
    
    frame:SetMovable(true)
    frame:SetClampedToScreen(true)
    frame:RegisterForDrag("LeftButton")
    frame:HookScript("OnShow", LoadPosition)
    frame:HookScript("OnDragStart", OnDragStart)
    frame:HookScript("OnDragStop", OnDragStop)
    frame:HookScript("OnHide", OnDragStop)
    T.hooksecurefunc(frame, "SetPoint", LBMF.RewritePoint)
    
    frame.ignoreFramePositionManager = true
    if LBMF.FramesAreaAlter[Name] then
        if UIPanelWindows[Name] and UIPanelWindows[Name].area then UIPanelWindows[Name].area = LBMF.FramesAreaAlter[Name] end
    end
end

function LBMF:Addons(event, addon)
    addon = LBMF.AddonsList[addon]
    if not addon then return end
    if type(addon) == "table" then
        for i = 1, #addon do
            LBMF:MakeMovable(addon[i])
        end
    else
        LBMF:MakeMovable(addon)
    end
    LBMF.addonCount = LBMF.addonCount + 1
    
    if LBMF.addonCount == #LBMF.AddonsList then LBMF:UnregisterEvent(event) end
end

function LBMF:ErrorFrameSize()
    _G["UIErrorsFrame"]:SetSize(E.db.lui.modules.blizzard.blizzardMoveFrames.errorframe["width"], E.db.lui.modules.blizzard.blizzardMoveFrames.errorframe["height"])
end

local ToDelete = {
    ["CalendarViewEventFrame"] = true,
    ["CalendarViewHolidayFrame"] = true,
}

function LBMF:Initialize()
    LBMF.addonCount = 0
    
    for Name, _ in T.pairs(ToDelete) do
        if E.db.lui.modules.blizzard.blizzardMoveFrames.points[Name] then
            E.db.lui.modules.blizzard.blizzardMoveFrames.points[Name] = nil
        end
    end
    
    PVPReadyDialog:Hide()
    
    if E.db.lui.modules.blizzard.blizzardMoveFrames["enable"] then
        for Name, _ in T.pairs(LBMF.TempOnly) do
            if E.db.lui.modules.blizzard.blizzardMoveFrames.points[Name] then
                E.db.lui.modules.blizzard.blizzardMoveFrames.points[Name] = nil
            end
        end
        for i = 1, #LBMF.Frames do
            LBMF:MakeMovable(LBMF.Frames[i])
        end
        
        self:RegisterEvent("ADDON_LOADED", "Addons")
        
        for AddOn, Table in T.pairs(LBMF.AddonsList) do
            if T.IsAddOnLoaded(AddOn) then
                for _, frame in T.pairs(Table) do
                    LBMF:MakeMovable(frame)
                end
            end
        end
    end
    
    LBMF:ErrorFrameSize()
end

local function InitializeCallback()
    if not E.db.lui.modules.blizzard.blizzardMoveFrames["enable"] then return end
    LBMF:Initialize()
end

E:RegisterModule(LBMF:GetName(), InitializeCallback)
