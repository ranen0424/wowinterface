local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local S = E:GetModule("Skins")
local LSM = E.LSM or E.Libs.LSM

local _G = _G
T.AbbreviateNumbers = AbbreviateNumbers
T.abs = abs
T.AcceptQuest = AcceptQuest
T.QuestLogPushQuest = QuestLogPushQuest
T.Ambiguate = Ambiguate
T.AnimateTexCoords = AnimateTexCoords
T.assert = assert
T.AuraUtil_FindAuraByName = AuraUtil.FindAuraByName
T.bit_band = bit.band
T.BNConnected = BNConnected
T.BNGetFriendGameAccountInfo = BNGetFriendGameAccountInfo
T.BNGetFriendIndex = BNGetFriendIndex
T.BNGetFriendInfo = BNGetFriendInfo
T.BNGetGameAccountInfo = BNGetGameAccountInfo
T.BNGetNumFriendGameAccounts = BNGetNumFriendGameAccounts
T.BNGetNumFriends = BNGetNumFriends
T.BreakUpLargeNumbers = BreakUpLargeNumbers
T.C_AreaPoiInfo_GetAreaPOISecondsLeft = C_AreaPoiInfo.GetAreaPOISecondsLeft
T.C_AzeriteEmpoweredItem_GetAllTierInfo = C_AzeriteEmpoweredItem.GetAllTierInfo
T.C_AzeriteEmpoweredItem_GetAllTierInfoByItemID = C_AzeriteEmpoweredItem.GetAllTierInfoByItemID
T.C_AzeriteEmpoweredItem_GetPowerInfo = C_AzeriteEmpoweredItem.GetPowerInfo
T.C_AzeriteEmpoweredItem_HasAnyUnselectedPowers = C_AzeriteEmpoweredItem.HasAnyUnselectedPowers
T.C_AzeriteEmpoweredItem_HasBeenViewed = C_AzeriteEmpoweredItem.HasBeenViewed
T.C_AzeriteEmpoweredItem_IsAzeriteEmpoweredItem = C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItem
T.C_AzeriteEmpoweredItem_IsAzeriteEmpoweredItemByID = C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID
T.C_AzeriteEmpoweredItem_IsPowerAvailableForSpec = C_AzeriteEmpoweredItem.IsPowerAvailableForSpec
T.C_AzeriteEmpoweredItem_IsPowerSelected = C_AzeriteEmpoweredItem.IsPowerSelected
T.C_AzeriteEmpoweredItem_SetHasBeenViewed = C_AzeriteEmpoweredItem.SetHasBeenViewed
T.C_AzeriteItem_FindActiveAzeriteItem = C_AzeriteItem.FindActiveAzeriteItem
T.C_AzeriteItem_GetPowerLevel = C_AzeriteItem.GetPowerLevel
T.C_Calendar_GetDate = C_Calendar.GetDate
T.C_Calendar_GetDayEvent = C_Calendar.GetDayEvent
T.C_Calendar_GetNumDayEvents = C_Calendar.GetNumDayEvents
T.C_Calendar_GetNumPendingInvites = C_Calendar.GetNumPendingInvites
T.C_Calendar_OpenCalendar = C_Calendar.OpenCalendar
T.C_Calendar_SetAbsMonth = C_Calendar.SetAbsMonth
T.C_Club_GetClubInfo = C_Club.GetClubInfo
T.C_DateAndTime_GetCurrentCalendarTime = C_DateAndTime.GetCurrentCalendarTime
T.C_FriendList_AddFriend = C_FriendList.AddFriend
T.C_FriendList_GetNumFriends = C_FriendList.GetNumFriends
T.C_Garrison_IsPlayerInGarrison = C_Garrison.IsPlayerInGarrison
T.C_Garrison_IsOnShipyardMap = C_Garrison.IsOnShipyardMap
T.C_Garrison_GetOwnedBuildingInfo = C_Garrison.GetOwnedBuildingInfo
T.C_Garrison_GetShipmentItemInfo = C_Garrison.GetShipmentItemInfo
T.C_IslandsQueue_GetIslandsWeeklyQuestID = C_IslandsQueue.GetIslandsWeeklyQuestID
T.C_Item_DoesItemExist = C_Item.DoesItemExist
T.C_LFGList_ClearSearchTextFields = C_LFGList.ClearSearchTextFields
T.C_LFGList_GetActivityInfo = C_LFGList.GetActivityInfo
T.C_LFGList_GetSearchResultEncounterInfo = C_LFGList.GetSearchResultEncounterInfo
T.C_LFGList_GetSearchResultInfo = C_LFGList.GetSearchResultInfo
T.C_LFGList_GetSearchResultMemberCounts = C_LFGList.GetSearchResultMemberCounts
T.C_LFGList_GetSearchResultMemberInfo = C_LFGList.GetSearchResultMemberInfo
T.C_LFGList_SetSearchToActivity = C_LFGList.SetSearchToActivity
T.C_Map_GetBestMapForUnit = C_Map.GetBestMapForUnit
T.C_Map_GetCurrentMapAreaID = C_Map.GetCurrentMapAreaID
T.C_Map_GetMapArtID = C_Map.GetMapArtID
T.C_Map_GetMapArtLayers = C_Map.GetMapArtLayers
T.C_Map_GetMapInfo = C_Map.GetMapInfo
T.C_MapExplorationInfo_GetExploredMapTextures = C_MapExplorationInfo.GetExploredMapTextures
T.C_PetBattles_IsInBattle = C_PetBattles.IsInBattle
T.C_PetJournal_GetNumCollectedInfo = C_PetJournal.GetNumCollectedInfo
T.C_Reputation_GetFactionParagonInfo = C_Reputation.GetFactionParagonInfo
T.C_Reputation_IsFactionParagon = C_Reputation.IsFactionParagon
T.C_TaskQuest_GetQuestsForPlayerByMapID = C_TaskQuest.GetQuestsForPlayerByMapID
T.C_Timer_After = C_Timer.After
T.C_Timer_NewTicker = C_Timer.NewTicker
T.C_ToyBox_IsToyUsable = C_ToyBox.IsToyUsable
T.C_Transmog_GetSlotInfo = C_Transmog.GetSlotInfo
T.C_Transmog_GetSlotVisualInfo = C_Transmog.GetSlotVisualInfo
T.C_TransmogCollection_GetAppearanceSourceInfo = C_TransmogCollection.GetAppearanceSourceInfo
T.C_TransmogCollection_GetIllusionSourceInfo = C_TransmogCollection.GetIllusionSourceInfo
T.CanCooperateWithGameAccount = CanCooperateWithGameAccount
T.CanEditOfficerNote = CanEditOfficerNote
T.CanEditPublicNote = CanEditPublicNote
T.CanInspect = CanInspect
T.ChatFrame_AddChannel = ChatFrame_AddChannel
T.ChatFrame_AddMessageEventFilter = ChatFrame_AddMessageEventFilter
T.ChatFrame_RemoveChannel = ChatFrame_RemoveChannel
T.CheckInteractDistance = CheckInteractDistance
T.ClearAchievementComparisonUnit = ClearAchievementComparisonUnit
T.ClearAllLFGDungeons = ClearAllLFGDungeons
T.CloseQuest = CloseQuest
T.CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
T.ConvertToRaid = ConvertToRaid
T.CooldownFrame_Set = CooldownFrame_Set
T.CreateFrame = CreateFrame
T.CreateMacro = CreateMacro
T.date = date
T.DepositReagentBank = DepositReagentBank
T.difftime = difftime
T.DisableAddOn = DisableAddOn
T.DisableAllAddOns = DisableAllAddOns
T.EasyMenu = EasyMenu
T.EditMacro = EditMacro
T.EnableAddOn = EnableAddOn
T.EnableAllAddOns = EnableAllAddOns
T.error = error
T.FauxScrollFrame_GetOffset = FauxScrollFrame_GetOffset
T.FlipCameraYaw = FlipCameraYaw
T.floor = floor
T.GameTooltip = GameTooltip
T.GetAchievementInfo = GetAchievementInfo
T.GetActiveSpecGroup = GetActiveSpecGroup
T.GetActiveTitle = GetActiveTitle
T.GetAddOnDependencies = GetAddOnDependencies
T.GetAddOnInfo = GetAddOnInfo
T.GetAddOnMetadata = GetAddOnMetadata
T.GetAddOnOptionalDependencies = GetAddOnOptionalDependencies
T.GetAuctionItemLink = GetAuctionItemLink
T.GetAutoQuestPopUp = GetAutoQuestPopUp
T.GetAverageItemLevel = GetAverageItemLevel
T.GetAvoidance = GetAvoidance
T.GetBattlefieldScore = GetBattlefieldScore
T.GetBindingKey = GetBindingKey
T.GetBindLocation = GetBindLocation
T.GetBlockChance = GetBlockChance
T.GetBuildInfo = GetBuildInfo
T.GetBuybackItemLink = GetBuybackItemLink
T.GetChannelList = GetChannelList
T.GetChannelName = GetChannelName
T.GetChatWindowInfo = GetChatWindowInfo
T.GetClassInfo = GetClassInfo
T.GetCombatRating = GetCombatRating
T.GetCombatRatingBonus = GetCombatRatingBonus
T.GetCombatRatingBonusForCombatRatingValue = GetCombatRatingBonusForCombatRatingValue
T.GetComparisonStatistic = GetComparisonStatistic
T.GetContainerItemID = GetContainerItemID
T.GetContainerItemInfo = GetContainerItemInfo
T.GetContainerItemLink = GetContainerItemLink
T.GetContainerItemQuestInfo = GetContainerItemQuestInfo
T.GetContainerNumSlots = GetContainerNumSlots
T.GetCritChance = GetCritChance
T.GetCritChanceProvidesParryEffect = GetCritChanceProvidesParryEffect
T.GetCurrencyInfo = GetCurrencyInfo
T.GetCurrencyListSize = GetCurrencyListSize
T.GetCurrentRegion = GetCurrentRegion
T.GetCursorPosition = GetCursorPosition
T.GetCVar = GetCVar
T.GetCVarBool = GetCVarBool
T.GetDetailedItemLevelInfo = GetDetailedItemLevelInfo
T.GetDodgeChance = GetDodgeChance
T.GetFactionInfo = GetFactionInfo
T.GetFriendInfo = GetFriendInfo
T.GetFriendshipReputation = GetFriendshipReputation
T.GetFriendshipReputationRanks = GetFriendshipReputationRanks
T.GetGameTime = GetGameTime
T.getglobal = getglobal
T.GetAvailableQuestInfo = GetAvailableQuestInfo
T.GetGossipActiveQuests = GetGossipActiveQuests
T.GetGossipAvailableQuests = GetGossipAvailableQuests
T.GetGuildInfo = GetGuildInfo
T.GetGuildLogoInfo = GetGuildLogoInfo
T.GetGuildRosterInfo = GetGuildRosterInfo
T.GetGuildRosterMOTD = GetGuildRosterMOTD
T.GetHaste = GetHaste
T.GetHitModifier = GetHitModifier
T.GetInboxHeaderInfo = GetInboxHeaderInfo
T.GetInspectArenaData = GetInspectArenaData
T.GetInspectGuildInfo = GetInspectGuildInfo
T.GetInspectHonorData = GetInspectHonorData
T.GetInspectRatedBGData = GetInspectRatedBGData
T.GetInspectSpecialization = GetInspectSpecialization
T.GetInstanceInfo = GetInstanceInfo
T.GetInventoryItemCooldown = GetInventoryItemCooldown
T.GetInventoryItemDurability = GetInventoryItemDurability
T.GetInventoryItemID = GetInventoryItemID
T.GetInventoryItemLink = GetInventoryItemLink
T.GetInventoryItemQuality = GetInventoryItemQuality
T.GetInventoryItemTexture = GetInventoryItemTexture
T.GetInventorySlotInfo = GetInventorySlotInfo
T.GetItemCooldown = GetItemCooldown
T.GetItemCount = GetItemCount
T.GetItemIcon = GetItemIcon
T.GetItemInfo = GetItemInfo
T.GetItemInfoFromHyperlink = GetItemInfoFromHyperlink
T.GetItemQualityColor = GetItemQualityColor
T.GetItemSpell = GetItemSpell
T.GetLFGDungeonEncounterInfo = GetLFGDungeonEncounterInfo
T.GetLFGDungeonInfo = GetLFGDungeonInfo
T.GetLFGDungeonNumEncounters = GetLFGDungeonNumEncounters
T.GetLFGDungeonRewards = GetLFGDungeonRewards
T.GetLFGRandomDungeonInfo = GetLFGRandomDungeonInfo
T.GetLFGRoleShortageRewards = GetLFGRoleShortageRewards
T.GetLifesteal = GetLifesteal
T.GetLocale = GetLocale
T.GetLootRollItemInfo = GetLootRollItemInfo
T.GetLootRollItemLink = GetLootRollItemLink
T.GetLootSlotInfo = GetLootSlotInfo
T.GetLootSlotLink = GetLootSlotLink
T.GetLootSlotType = GetLootSlotType
T.GetMacroInfo = GetMacroInfo
T.GetManaRegen = GetManaRegen
T.GetMasteryEffect = GetMasteryEffect
T.GetMaxPlayerHonorLevel = GetMaxPlayerHonorLevel
T.GetMaxPlayerLevel = GetMaxPlayerLevel
T.GetMaxTalentTier = GetMaxTalentTier
T.GetMeleeHaste = GetMeleeHaste
T.GetMerchantItemLink = GetMerchantItemLink
T.getmetatable = getmetatable
T.GetMinimapZoneText = GetMinimapZoneText
T.GetModResilienceDamageReduction = GetModResilienceDamageReduction
T.GetMouseFocus = GetMouseFocus
T.GetNumActiveQuests = GetNumActiveQuests
T.ConfirmAcceptQuest = ConfirmAcceptQuest
T.CompleteQuest = CompleteQuest
T.IsModifierKeyDown = IsModifierKeyDown
T.GetNumAddOns = GetNumAddOns
T.GetNumAutoQuestPopUps = GetNumAutoQuestPopUps
T.GetNumAvailableQuests = GetNumAvailableQuests
T.GetNumBattlefieldScores = GetNumBattlefieldScores
T.GetNumClasses = GetNumClasses
T.GetNumFactions = GetNumFactions
T.GetNumGossipActiveQuests = GetNumGossipActiveQuests
T.GetNumGossipAvailableQuests = GetNumGossipAvailableQuests
T.GetNumGossipOptions = GetNumGossipOptions
T.GetNumGroupMembers = GetNumGroupMembers
T.GetNumGuildMembers = GetNumGuildMembers
T.GetNumLootItems = GetNumLootItems
T.GetNumMacros = GetNumMacros
T.GetNumQuestChoices = GetNumQuestChoices
T.GetNumQuestItems = GetNumQuestItems
T.IsQuestCompletable = IsQuestCompletable
T.GetNumQuestLeaderBoards = GetNumQuestLeaderBoards
T.GetNumQuestLogEntries = GetNumQuestLogEntries
T.GetNumQuestWatches = GetNumQuestWatches
T.GetNumRFDungeons = GetNumRFDungeons
T.GetNumSavedInstances = GetNumSavedInstances
T.GetNumSavedWorldBosses = GetNumSavedWorldBosses
T.GetNumSpecializations = GetNumSpecializations
T.GetNumSpecializationsForClassID = GetNumSpecializationsForClassID
T.GetNumSubgroupMembers = GetNumSubgroupMembers
T.GetNumTrackingTypes = GetNumTrackingTypes
T.GetNumWorldPVPAreas = GetNumWorldPVPAreas
T.GetParryChance = GetParryChance
T.GetPersonalRatedInfo = GetPersonalRatedInfo
T.GetPlayerInfoByGUID = GetPlayerInfoByGUID
T.GetPlayerTradeMoney = GetPlayerTradeMoney
T.GetProfessionInfo = GetProfessionInfo
T.GetProfessions = GetProfessions
T.GetPVPLifetimeStats = GetPVPLifetimeStats
T.GetQuestDifficultyColor = GetQuestDifficultyColor
T.GetQuestItemInfo = GetQuestItemInfo
T.GetQuestLink = GetQuestLink
T.QuestInfoItem_OnClick = QuestInfoItem_OnClick
T.GetQuestLogIndexByID = GetQuestLogIndexByID
T.GetQuestLogLeaderBoard = GetQuestLogLeaderBoard
T.GetQuestLogSelection = GetQuestLogSelection
T.GetQuestLogSpecialItemCooldown = GetQuestLogSpecialItemCooldown
T.GetQuestLogSpecialItemInfo = GetQuestLogSpecialItemInfo
T.GetQuestLogTitle = GetQuestLogTitle
T.GetQuestUiMapID = GetQuestUiMapID
T.GetDistanceSqToQuest = GetDistanceSqToQuest
T.GetQuestObjectiveInfo = GetQuestObjectiveInfo
T.GetQuestTagInfo = GetQuestTagInfo
T.AddQuestWatch = AddQuestWatch
T.SortQuestWatches = SortQuestWatches
T.GetQuestWatchInfo = GetQuestWatchInfo
T.GetRaidRosterInfo = GetRaidRosterInfo
T.GetRangedCritChance = GetRangedCritChance
T.GetRangedHaste = GetRangedHaste
T.GetRealmName = GetRealmName
T.GetRealZoneText = GetRealZoneText
T.GetRFDungeonInfo = GetRFDungeonInfo
T.GetSavedInstanceInfo = GetSavedInstanceInfo
T.GetSavedWorldBossInfo = GetSavedWorldBossInfo
T.GetScreenHeight = GetScreenHeight
T.GetScreenWidth = GetScreenWidth
T.GetSpecialization = GetSpecialization
T.GetSpecializationInfo = GetSpecializationInfo
T.GetSpecializationInfoByID = GetSpecializationInfoByID
T.GetSpecializationInfoForClassID = GetSpecializationInfoForClassID
T.GetSpecializationRole = GetSpecializationRole
T.GetSpecializationRoleByID = GetSpecializationRoleByID
T.GetSpellBonusDamage = GetSpellBonusDamage
T.GetSpellBonusHealing = GetSpellBonusHealing
T.GetSpellBookItemInfo = GetSpellBookItemInfo
T.GetSpellCooldown = GetSpellCooldown
T.GetSpellCritChance = GetSpellCritChance
T.GetSpellHitModifier = GetSpellHitModifier
T.GetSpellInfo = GetSpellInfo
T.GetSpellLink = GetSpellLink
T.GetStatistic = GetStatistic
T.GetSubZoneText = GetSubZoneText
T.GetTalentInfo = GetTalentInfo
T.GetTalentInfoByID = GetTalentInfoByID
T.GetTalentLink = GetTalentLink
T.GetTargetTradeMoney = GetTargetTradeMoney
T.GetThreatStatusColor = GetThreatStatusColor
T.GetTime = GetTime
T.GetTrackingInfo = GetTrackingInfo
T.GetTradeSkillNumReagents = GetTradeSkillNumReagents
T.GetTradeSkillReagentInfo = GetTradeSkillReagentInfo
T.GetTradeTargetItemLink = GetTradeTargetItemLink
T.GetUnitName = GetUnitName
T.GetVersatilityBonus = GetVersatilityBonus
T.GetWatchedFactionInfo = GetWatchedFactionInfo
T.GetWhoInfo = GetWhoInfo
T.GetWorldPVPAreaInfo = GetWorldPVPAreaInfo
T.GetXPExhaustion = GetXPExhaustion
T.GetZonePVPInfo = GetZonePVPInfo
T.GetZoneText = GetZoneText
T.GuildInvite = GuildInvite
T.GuildRoster = GuildRoster
T.HasInspectHonorData = HasInspectHonorData
T.HasNewMail = HasNewMail
T.HideUIPanel = HideUIPanel
T.hooksecurefunc = hooksecurefunc
T.InCombatLockdown = InCombatLockdown
T.InviteUnit = InviteUnit
T.ipairs = ipairs
T.IsAddOnLoaded = IsAddOnLoaded
T.IsAltKeyDown = IsAltKeyDown
T.IsArtifactPowerItem = IsArtifactPowerItem
T.IsAvailableQuestTrivial = IsAvailableQuestTrivial
T.IsControlKeyDown = IsControlKeyDown
T.IsDressableItem = IsDressableItem
T.IsEquippableItem = IsEquippableItem
T.IsEveryoneAssistant = IsEveryoneAssistant
T.IsFactionInactive = IsFactionInactive
T.IsInGroup = IsInGroup
T.IsInGuild = IsInGuild
T.IsInInstance = IsInInstance
T.IsInRaid = IsInRaid
T.IsItemInRange = IsItemInRange
T.IsLFGDungeonJoinable = IsLFGDungeonJoinable
T.IsModifiedClick = IsModifiedClick
T.IsPartyLFG = IsPartyLFG
T.IsQuestFlaggedCompleted = IsQuestFlaggedCompleted
T.IsQuestWatched = IsQuestWatched
T.IsShiftKeyDown = IsShiftKeyDown
T.IsSpellKnown = IsSpellKnown
T.IsSpellOverlayed = IsSpellOverlayed
T.IsUsableItem = IsUsableItem
T.IsXPUserDisabled = IsXPUserDisabled
T.JoinLFG = JoinLFG
T.JoinTemporaryChannel = JoinTemporaryChannel
T.LE_TRANSMOG_TYPE_APPEARANCE = LE_TRANSMOG_TYPE_APPEARANCE
T.LE_TRANSMOG_TYPE_ILLUSION = LE_TRANSMOG_TYPE_ILLUSION
T.LFGListSearchEntryUtil_GetFriendList = LFGListSearchEntryUtil_GetFriendList
T.LFGListUtil_GetQuestDescription = LFGListUtil_GetQuestDescription
T.LoadAddOn = LoadAddOn
T.LootSlot = LootSlot
T.Mastery_OnEnter = Mastery_OnEnter
T.math_abs = math.abs
T.math_ceil = math.ceil
T.math_max = max
T.math_min = math.min
T.math_modf = math.modf
T.math_sqrt = math.sqrt
T.mod = mod
T.MovementSpeed_OnEnter = MovementSpeed_OnEnter
T.MovementSpeed_OnUpdate = MovementSpeed_OnUpdate
T.next = next
T.pairs = pairs
T.PanelTemplates_GetSelectedTab = PanelTemplates_GetSelectedTab
T.PaperDollFrame_SetLabelAndText = PaperDollFrame_SetLabelAndText
T.pcall = pcall
T.PickupMacro = PickupMacro
T.PlayerHasToy = PlayerHasToy
T.PlaySound = PlaySound
T.print = print
T.QuestGetAutoAccept = QuestGetAutoAccept
T.AcknowledgeAutoAcceptQuest = AcknowledgeAutoAcceptQuest
T.QuestIsFromAreaTrigger = QuestIsFromAreaTrigger
T.RaiseFrameLevel = RaiseFrameLevel
T.random = random
T.RegisterStateDriver = RegisterStateDriver
T.RemoveFriend = RemoveFriend
T.RepopMe = RepopMe
T.RequestRaidInfo = RequestRaidInfo
T.Screenshot = Screenshot
T.SearchLFGGetResults = SearchLFGGetResults
T.SecondsToTime = SecondsToTime
T.SelectActiveQuest = SelectActiveQuest
T.SelectAvailableQuest = SelectAvailableQuest
T.SelectGossipActiveQuest = SelectGossipActiveQuest
T.GetQuestReward = GetQuestReward
T.GetQuestItemLink = GetQuestItemLink
T.SelectGossipAvailableQuest = SelectGossipAvailableQuest
T.SelectGossipOption = SelectGossipOption
T.SendChatMessage = SendChatMessage
T.SendWho = SendWho
T.SetAchievementComparisonUnit = SetAchievementComparisonUnit
T.SetCVar = SetCVar
T.SetItemButtonNameFrameVertexColor = SetItemButtonNameFrameVertexColor
T.SetItemButtonNormalTextureVertexColor = SetItemButtonNormalTextureVertexColor
T.SetItemButtonSlotVertexColor = SetItemButtonSlotVertexColor
T.SetItemButtonTextureVertexColor = SetItemButtonTextureVertexColor
T.SetItemRef = SetItemRef
T.SetLFGDungeon = SetLFGDungeon
T.SetLFGRoles = SetLFGRoles
T.setmetatable = setmetatable
T.SetOverrideBindingClick = SetOverrideBindingClick
T.SetRaidTarget = SetRaidTarget
T.SetWatchedFactionIndex = SetWatchedFactionIndex
T.ShowFriends = ShowFriends
T.ShowQuestComplete = ShowQuestComplete
T.ShowUIPanel = ShowUIPanel
T.SlashCmdList = SlashCmdList
T.SocketInventoryItem = SocketInventoryItem
T.StaticPopup_Hide = StaticPopup_Hide
T.string_byte = string.byte
T.string_find = string.find
T.string_format = string.format
T.string_gmatch = string.gmatch
T.string_gsub = string.gsub
T.string_join = string.join
T.string_len = string.len
T.string_lower = string.lower
T.string_match = string.match
T.string_split = string.split
T.string_sub = string.sub
T.string_upper = string.upper
T.string_utf8sub = string.utf8sub
T.strtrim = strtrim
T.table_concat = table.concat
T.table_copy = table.copy
T.table_getn = table.getn
T.table_insert = table.insert
T.table_sort = table.sort
T.table_wipe = table.wipe
T.table_remove = table.remove
T.tContains = tContains
T.time = time
T.ToggleFrame = ToggleFrame
T.tonumber = tonumber
T.tostring = tostring
T.UIDropDownMenu_AddButton = UIDropDownMenu_AddButton
T.UIDropDownMenu_AddSeparator = UIDropDownMenu_AddSeparator
T.UIDropDownMenu_CreateInfo = UIDropDownMenu_CreateInfo
T.UIFrameFadeIn = UIFrameFadeIn
T.UIFrameFadeOut = UIFrameFadeOut
T.UIParent = UIParent
T.UIParentLoadAddOn = UIParentLoadAddOn
T.UnitArmor = UnitArmor
T.UnitAttackPower = UnitAttackPower
T.UnitAttackSpeed = UnitAttackSpeed
T.UnitAura = UnitAura
T.UnitBattlePetSpeciesID = UnitBattlePetSpeciesID
T.UnitBattlePetType = UnitBattlePetType
T.UnitBuff = UnitBuff
T.UnitCanAttack = UnitCanAttack
T.GetGossipOptions = GetGossipOptions
T.UnitClass = UnitClass
T.UnitDamage = UnitDamage
T.UnitDebuff = UnitDebuff
T.UnitDetailedThreatSituation = UnitDetailedThreatSituation
T.UnitExists = UnitExists
T.UnitFactionGroup = UnitFactionGroup
T.UnitFullName = UnitFullName
T.UnitGroupRolesAssigned = UnitGroupRolesAssigned
T.UnitGUID = UnitGUID
T.UnitHealth = UnitHealth
T.UnitHealthMax = UnitHealthMax
T.UnitHonor = UnitHonor
T.UnitHonorLevel = UnitHonorLevel
T.UnitHonorMax = UnitHonorMax
T.UnitInParty = UnitInParty
T.UnitInRaid = UnitInRaid
T.UnitInVehicle = UnitInVehicle
T.UnitIsAFK = UnitIsAFK
T.UnitIsBattlePet = UnitIsBattlePet
T.UnitIsConnected = UnitIsConnected
T.UnitIsDead = UnitIsDead
T.UnitIsDeadOrGhost = UnitIsDeadOrGhost
T.UnitIsDND = UnitIsDND
T.UnitIsGhost = UnitIsGhost
T.UnitIsGroupAssistant = UnitIsGroupAssistant
T.UnitIsGroupLeader = UnitIsGroupLeader
T.UnitIsInMyGuild = UnitIsInMyGuild
T.UnitIsPlayer = UnitIsPlayer
T.UnitIsUnit = UnitIsUnit
T.UnitIsVisible = UnitIsVisible
T.UnitLevel = UnitLevel
T.UnitName = UnitName
T.UnitPower = UnitPower
T.UnitPowerMax = UnitPowerMax
T.UnitPowerType = UnitPowerType
T.EquipmentManager_UnpackLocation = EquipmentManager_UnpackLocation
T.EquipmentManager_GetItemInfoByLocation = EquipmentManager_GetItemInfoByLocation
T.UnitPVPName = UnitPVPName
T.UnitRace = UnitRace
T.UnitRangedAttackPower = UnitRangedAttackPower
T.UnitRangedDamage = UnitRangedDamage
T.UnitReaction = UnitReaction
T.UnitRealmRelationship = UnitRealmRelationship
T.UnitSex = UnitSex
T.UnitSpellHaste = UnitSpellHaste
T.UnitStat = UnitStat
T.UnregisterStateDriver = UnregisterStateDriver
T.UseContainerItem = UseContainerItem
T.GetRaidTargetIndex = GetRaidTargetIndex
T.UnitAffectingCombat = UnitAffectingCombat
T.C_CreatureInfo_GetFactionInfo = C_CreatureInfo.GetFactionInfo
T.GetDifficultyInfo = GetDifficultyInfo
T.RemoveQuestWatch = RemoveQuestWatch
T.ObjectiveTracker_Update = ObjectiveTracker_Update
T.QuestFlagsPVP = QuestFlagsPVP
T.ObjectiveTracker_Expand = ObjectiveTracker_Expand
T.ObjectiveTracker_Collapse = ObjectiveTracker_Collapse
T.IsResting = IsResting
T.C_QuestLog_IsLegendaryQuest = C_QuestLog.IsLegendaryQuest
T.C_TaskQuest_GetQuestZoneID = C_TaskQuest.GetQuestZoneID
T.C_QuestLog_GetNextWaypoint = C_QuestLog.GetNextWaypoint


T.MapInfoTable = {}

T.InfoColor = "|cff9482c9"
T.GreyColor = "|cffB5B5B5"

LUI_NORMAL_QUEST_DISPLAY = "|cffffffff%s|r"
LUI_TRIVIAL_QUEST_DISPLAY = TRIVIAL_QUEST_DISPLAY:gsub("000000", "ffffff")

LUI.rolePaths = {
    ["ElvUI"] = {
        TANK = [[Interface\AddOns\ElvUI\media\textures\tank]],
        HEALER = [[Interface\AddOns\ElvUI\media\textures\healer]],
        DAMAGER = [[Interface\AddOns\ElvUI\media\textures\dps]]
    },
    ["SupervillainUI"] = {
        TANK = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\roleIcons\svui-tank]],
        HEALER = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\roleIcons\svui-healer]],
        DAMAGER = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\roleIcons\svui-dps]]
    },
    ["Blizzard"] = {
        TANK = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\roleIcons\blizz-tank]],
        HEALER = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\roleIcons\blizz-healer]],
        DAMAGER = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\roleIcons\blizz-dps]]
    },
    ["MiirGui"] = {
        TANK = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\roleIcons\mg-tank]],
        HEALER = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\roleIcons\mg-healer]],
        DAMAGER = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\roleIcons\mg-dps]]
    },
    ["Lyn"] = {
        TANK = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\roleIcons\lyn-tank]],
        HEALER = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\roleIcons\lyn-healer]],
        DAMAGER = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\roleIcons\lyn-dps]]
    },
}
LUI.dummy = function() return end
LUI.Hider = CreateFrame("Frame", nil, UIParent)
LUI.Hider:Hide()

LUI.currentInstanceType = "none"
LUI.difficulty_info = {
    [1] = {
        size = "party",
        difficulty = "normal",
    },
    [2] = {
        size = "party",
        difficulty = "heroic",
    },
    [3] = {
        size = "ten",
        difficulty = "normal",
    },
    [4] = {
        size = "twentyfive",
        difficulty = "normal",
    },
    [5] = {
        size = "ten",
        difficulty = "heroic",
    },
    [6] = {
        size = "twentyfive",
        difficulty = "heroic",
    },
    [7] = {
        size = "twentyfive",
        difficulty = "lfr",
    },
    [8] = {
        size = "party",
        difficulty = "challenge",
    },
    [9] = {
        size = "fortyman",
        difficulty = "normal",
    },
    [11] = {
        size = "scenario",
        difficulty = "heroic",
    },
    [12] = {
        size = "scenario",
        difficulty = "normal",
    },
    nil, -- 13 is unused
    [14] = {
        size = "flexible",
        difficulty = "normal",
    },
    [15] = {
        size = "flexible",
        difficulty = "heroic",
    },
    [16] = {
        size = "twenty",
        difficulty = "mythic",
    },
    [17] = {
        size = "flexible",
        difficulty = "lfr",
    },
    [23] = {
        size = "party",
        difficulty = "mythic",
    },
    [24] = {
        size = "party",
        difficulty = "timewalking",
    },
    [33] = {
        size = "flexible",
        difficulty = "timewalking",
    },
}

function LUI:UpdateCurrentInstanceType(instanceType)
    if (not IsInInstance()) then
        LUI.currentInstanceType = "none"
    else
        LUI.currentInstanceType = instanceType or select(2, GetInstanceInfo())
    end
end

T.StringToUpper = function(str)
    return (T.string_gsub(str, "^%l", T.string_upper))
end

-- Class Color stuff
function LUI:unpackColor(color)
    return color.r, color.g, color.b, color.a
end

local ClassRGB = CUSTOM_CLASS_COLORS and CUSTOM_CLASS_COLORS[E.myclass] or RAID_CLASS_COLORS[E.myclass]
LUI.ClassRGB = {r = ClassRGB.r, g = ClassRGB.g, b = ClassRGB.b, a = ClassRGB.a}

LUI.ClassColors = {}
local colors = CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS
for class in pairs(colors) do
    LUI.ClassColors[class] = {}
    LUI.ClassColors[class].r = colors[class].r
    LUI.ClassColors[class].g = colors[class].g
    LUI.ClassColors[class].b = colors[class].b
    LUI.ClassColors[class].colorStr = colors[class].colorStr
end

function LUI:ClassColor(class)
    local color = LUI.ClassColors[class]
    if not color then return 1, 1, 1 end
    return color.r, color.g, color.b
end

function LUI:UnitColor(unit)
    local r, g, b = 1, 1, 1
    if UnitIsPlayer(unit) then
        local _, class = UnitClass(unit)
        if class then
            r, g, b = LUI:ClassColor(class)
        end
    elseif UnitIsTapDenied(unit) then
        r, g, b = .6, .6, .6
    else
        local reaction = UnitReaction(unit, "player")
        if reaction then
            local color = FACTION_BAR_COLORS[reaction]
            r, g, b = color.r, color.g, color.b
        end
    end
    return r, g, b
end

local BC = {}
for k, v in pairs(LOCALIZED_CLASS_NAMES_MALE) do
    BC[v] = k
end

for k, v in pairs(LOCALIZED_CLASS_NAMES_FEMALE) do
    BC[v] = k
end

LUI.colors = {
    class = {},
}

LUI.colors.class = {
    ["DEATHKNIGHT"] = {0.77, 0.12, 0.23},
    ["DEMONHUNTER"] = {0.64, 0.19, 0.79},
    ["DRUID"] = {1, 0.49, 0.04},
    ["HUNTER"] = {0.58, 0.86, 0.49},
    ["MAGE"] = {0.2, 0.76, 1},
    ["MONK"] = {0, 1, 0.59},
    ["PALADIN"] = {0.96, 0.55, 0.73},
    ["PRIEST"] = {0.99, 0.99, 0.99},
    ["ROGUE"] = {1, 0.96, 0.41},
    ["SHAMAN"] = {0, 0.44, 0.87},
    ["WARLOCK"] = {0.6, 0.47, 0.85},
    ["WARRIOR"] = {0.9, 0.65, 0.45},
}

for class, color in pairs(LUI.colors.class) do
    LUI.colors.class[class] = {r = color[1], g = color[2], b = color[3]}
end

function LUI:GetClassColorString(class)
    local color = LUI.colors.class[BC[class] or class]
    return E:RGBToHex(color.r, color.g, color.b)
end

local Lui_Blizzard_Frames = {
    "Left",
    "Middle",
    "Right",
    "Mid",
    "LeftDisabled",
    "MiddleDisabled",
    "RightDisabled",
    "TopLeft",
    "TopRight",
    "BottomLeft",
    "BottomRight",
    "TopMiddle",
    "MiddleLeft",
    "MiddleRight",
    "BottomMiddle",
    "MiddleMiddle",
    "TabSpacer",
    "TabSpacer1",
    "TabSpacer2",
    "_RightSeparator",
    "_LeftSeparator",
    "Cover",
    "Border",
    "Background",
    "TopTex",
    "TopLeftTex",
    "TopRightTex",
    "LeftTex",
    "BottomTex",
    "BottomLeftTex",
    "BottomRightTex",
    "RightTex",
    "MiddleTex",
    "inset",
    "InsetFrame",
    "LeftInset",
    "RightInset",
    "NineSlice",
    "BorderFrame",
    "bottomInset",
    "BottomInset",
    "bgLeft",
    "bgRight",
    "FilligreeOverlay",
}

function LUI:Kill(Object)
    if Object.UnregisterAllEvents then
        Object:UnregisterAllEvents()
        Object:SetParent(LUI.Hider)
    else
        Object.Show = Object.Hide
    end
    Object:Hide()
end

function LUI:StripTextures(Object, Alpha, Template, Backdrop)
    if Object:IsObjectType("Texture") then
        if Alpha then
            Object:SetAlpha(0)
        else
            Object:SetTexture(nil)
        end
    else
        local FrameName = Object.GetName and Object:GetName()
        for _, Blizzard in T.pairs(Lui_Blizzard_Frames) do
            local BlizzFrame = Object[Blizzard] or FrameName and _G[FrameName .. Blizzard]
            if BlizzFrame then
                LUI:Kill(BlizzFrame)
            end
        end
        if Object.GetNumRegions then
            for i = 1, Object:GetNumRegions() do
                local Region = select(i, Object:GetRegions())
                if Region and Region:IsObjectType("Texture") then
                    if Alpha then
                        Region:SetAlpha(0)
                    else
                        Region:SetTexture(nil)
                    end
                end
            end
        end
    end
    if Template then
        Object:SetTemplate("Transparent")
    end
    if Backdrop then
        Object:HookScript("OnEnter", S.SetModifiedBackdrop)
        Object:HookScript("OnLeave", S.SetOriginalBackdrop)
    end
end

function LUI:GetIconFromID(type, id)
    local path
    if type == "item" then
        path = select(10, T.GetItemInfo(id))
    elseif type == "spell" then
        path = select(3, T.GetSpellInfo(id))
    elseif type == "achiev" then
        path = select(10, T.GetAchievementInfo(id))
    end
    return path or nil
end

function LUI:BagSearch(itemId)
    for container = 0, NUM_BAG_SLOTS do
        for slot = 1, T.GetContainerNumSlots(container) do
            if itemId == T.GetContainerItemID(container, slot) then
                return container, slot
            end
        end
    end
end

function LUI:GetIconFromID(type, id)
    local path
    if type == "item" then
        path = select(10, T.GetItemInfo(id))
    elseif type == "spell" then
        path = select(3, T.GetSpellInfo(id))
    elseif type == "achiev" then
        path = select(10, T.GetAchievementInfo(id))
    end
    return path or nil
end

function LUI:GetSpell(id)
    local name = T.GetSpellInfo(id)
    return name
end

function LUI:PairsByKeys(t, f)
    local a = {}
    for n in pairs(t) do tinsert(a, n) end
    sort(a, f)
    local i = 0
    local iter = function()
        i = i + 1
        if a[i] == nil then return nil
        else return a[i], t[a[i]]
        end
    end
    return iter
end

function LUI:IsAddOnPartiallyEnabled(addon, character)
    if (type(character) == "boolean" and character == true) then
        character = nil
    end
    return GetAddOnEnableState(character, addon) == 1
end

function LUI:IsAddOnEnabled(addon, character)
    if (type(character) == "boolean" and character == true) then
        character = nil
    end
    return GetAddOnEnableState(character, addon) == 2
end

function LUI:IsPRType()
    local _, instanceType = IsInInstance()
    if (instanceType == "party" or instanceType == "raid" or instanceType == "arena" or instanceType == "pvp") then
        return true
    else
        return false
    end
end

function LUI:CheckDB(DBinfo, args1, args2, args3, args4, args5, args6)
    local tempTable = {}
    
    if DBinfo == "db" then
        tempTable = E.db["lui"]
    elseif DBinfo == "global" then
        tempTable = E.global["lui"]
    elseif DBinfo == "private" then
        tempTable = E.private["lui"]
    end
    
    if tempTable then
        for k, v in T.pairs(tempTable) do
            if k == args1 and type(v) == "table" then
                for k, v in T.pairs(v) do
                    if k == args2 and type(v) == "table" then
                        for k, v in T.pairs(v) do
                            if k == args3 and type(v) == "table" then
                                for k, v in T.pairs(v) do
                                    if k == args4 and type(v) == "table" then
                                        for k, v in T.pairs(v) do
                                            if k == args5 and type(v) == "table" then
                                                for k, v in T.pairs(v) do
                                                    if k == args6 and type(v) == "table" then
                                                        elseif k == args6 and v == false then return true
                                                    end
                                                end
                                            elseif k == args5 and v == false then return true
                                            end
                                        end
                                    elseif k == args4 and v == false then return true
                                    end
                                end
                            elseif k == args3 and v == false then return true
                            end
                        end
                    elseif k == args2 and v == false then return true
                    end
                end
            elseif k == args1 and v == false then return true
            end
        end
        return false
    else
        return false
    end
end

function LUI:RegisterMedia()
    E["media"].luiFlat = LSM:Fetch("statusbar", "Livv_Flat")
    E["media"].luiNormTex = LSM:Fetch("statusbar", "Livv_NormTex")
    E["media"].roleIcons = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\UI-LFG-ICON-ROLES]]
    E:UpdateMedia()
end

function LUI:Print(msg, type)
    if type == "error" then
        (_G[E.db.general.messageRedirect] or DEFAULT_CHAT_FRAME):AddMessage(strjoin("", "|cffff0000LivvenUI Error:|r ", msg))
    elseif type == "warning" then
        (_G[E.db.general.messageRedirect] or DEFAULT_CHAT_FRAME):AddMessage(strjoin("", "|cffd3cf00LivvenUI Warning:|r ", msg))
    elseif type == "info" then
        (_G[E.db.general.messageRedirect] or DEFAULT_CHAT_FRAME):AddMessage(strjoin("", "|cff14adcdLivvenUI Info:|r ", msg))
    else
        (_G[E.db.general.messageRedirect] or DEFAULT_CHAT_FRAME):AddMessage(strjoin("", E["media"].hexvaluecolor, "LivvenUI:|r ", msg))
    end
end

function LUI:Reset(group)
    if not group then print("Error") end
    if group == "marks" then
        E:CopyTable(E.db.lui.modules.combat.raidMarkers, P.lui.modules.combat.raidMarkers)
        E:ResetMovers(L["LuiRaidMarkerBar"])
    elseif group == "minimap" then
        E:CopyTable(E.db.lui.modules.maps.minimapIcons, P.lui.modules.maps.minimapIcons)
    end
    E:UpdateAll()
end

function LUI:GetMapInfo(id, arg)
    if not arg then return end
    local MapInfo
    if T.MapInfoTable[id] then
        MapInfo = T.MapInfoTable[id]
    else
        MapInfo = C_Map.GetMapInfo(id)
        T.MapInfoTable[id] = MapInfo
    end
    if not MapInfo then return UNKNOWN end
    if arg == "all" then return MapInfo["name"], MapInfo["mapID"], MapInfo["parentMapID"], MapInfo["mapType"] end
    return MapInfo[arg]
end

function LUI:cOption(name)
    local color = "|cff9482c9%s|r"
    return (color):format(name)
end

function LUI:PrintURL(url)
    return format("|cff9482c9[|Hurl:%s|h%s|h]|r", url, url)
end

function LUI:PrintLink(link)
    return format("|cff9482c9|Hurl:%s|h%s|h|r", link, link)
end

function LUI:MismatchText()
    local text = format(L["LUI_ELV_OUTDATED_MSG"], LUI.ElvUIV, LUI.ElvUIX)
    return text
end

function LUI:CreateText(f, layer, fontsize, flag, justifyh)
    local text = f:CreateFontString(nil, layer)
    text:SetFont(E["media"].normFont, fontsize, flag)
    text:SetJustifyH(justifyh or "CENTER")
    return text
end

function LUI:CreatePulse(frame, speed, alpha, mult)
    assert(frame, "doesn't exist!")
    frame.speed = .02
    frame.mult = mult or 1
    frame.alpha = alpha or 1
    frame.tslu = 0
    frame:SetScript("OnUpdate", function(self, elapsed)
        elapsed = elapsed * (speed or 5 / 4)
        self.tslu = self.tslu + elapsed
        if self.tslu > self.speed then
            self.tslu = 0
            self:SetAlpha(self.alpha * (alpha or 3 / 5))
        end
        self.alpha = self.alpha - elapsed * self.mult
        if self.alpha < 0 and self.mult > 0 then
            self.mult = self.mult * -1
            self.alpha = 0
        elseif self.alpha > 1 and self.mult < 0 then
            self.mult = self.mult * -1
        end
    end)
end

function LUI:GetRoleTexCoord(role)
    if role == "TANK" then
        return .32 / 9.03, 2.04 / 9.03, 2.65 / 9.03, 4.3 / 9.03
    elseif role == "DPS" or role == "DAMAGER" then
        return 2.68 / 9.03, 4.4 / 9.03, 2.65 / 9.03, 4.34 / 9.03
    elseif role == "HEALER" then
        return 2.68 / 9.03, 4.4 / 9.03, .28 / 9.03, 1.98 / 9.03
    elseif role == "LEADER" then
        return .32 / 9.03, 2.04 / 9.03, .28 / 9.03, 1.98 / 9.03
    elseif role == "READY" then
        return 5.1 / 9.03, 6.76 / 9.03, .28 / 9.03, 1.98 / 9.03
    elseif role == "PENDING" then
        return 5.1 / 9.03, 6.76 / 9.03, 2.65 / 9.03, 4.34 / 9.03
    elseif role == "REFUSE" then
        return 2.68 / 9.03, 4.4 / 9.03, 5.02 / 9.03, 6.7 / 9.03
    end
end

function LUI:ReskinRole(self, role)
    if self.background then self.background:SetTexture("") end
    local cover = self.cover or self.Cover
    if cover then cover:SetTexture("") end
    local texture = self.GetNormalTexture and self:GetNormalTexture() or self.texture or self.Texture or (self.SetTexture and self)
    if texture then
        texture:SetTexture(E["media"].roleIcons)
        texture:SetTexCoord(LUI:GetRoleTexCoord(role))
    end
    
    local checkButton = self.checkButton or self.CheckButton
    if checkButton then
        checkButton:SetFrameLevel(self:GetFrameLevel() + 2)
        checkButton:SetPoint("BOTTOMLEFT", -2, -2)
    end
    
    local shortageBorder = self.shortageBorder
    if shortageBorder then
        shortageBorder:SetTexture("")
        local icon = self.incentiveIcon
        icon:SetPoint("BOTTOMRIGHT")
        icon:SetSize(14, 14)
        icon.texture:SetSize(14, 14)
        icon.border:SetTexture("")
    end
end

-- Tooltip scanning stuff
local iLvlDB = {}
local itemLevelString = _G["ITEM_LEVEL"]:gsub("%%d", "")
local tip = CreateFrame("GameTooltip", "Lui_iLvlTooltip", nil, "GameTooltipTemplate")

function LUI:GetItemLevel(link, arg1, arg2)
	if iLvlDB[link] then return iLvlDB[link] end
	tip:SetOwner(UIParent, "ANCHOR_NONE")
	if arg1 and type(arg1) == "string" then
		tip:SetInventoryItem(arg1, arg2)
	elseif arg1 and type(arg1) == "number" then
		tip:SetBagItem(arg1, arg2)
	else
		tip:SetHyperlink(link)
	end
	for i = 2, 5 do
		local text = _G[tip:GetName().."TextLeft"..i]:GetText() or ""
		local found = text:find(itemLevelString)
		if found then
			local level = text:match("(%d+)%)?$")
			iLvlDB[link] = tonumber(level)
			break
		end
	end
	return iLvlDB[link]
end

local function Styling(f, useStripes, useGradient, useShadow, shadowOverlayWidth, shadowOverlayHeight, shadowOverlayAlpha)
    assert(f, "doesn't exist!")
    local frameName = f.GetName and f:GetName()
    if f.styling or E.db.lui.skins.enable ~= true or E.db.lui.skins.style == "NONE" then return end
    local style = CreateFrame("Frame", frameName or nil, f)
    
    if not (useStripes) then
        local stripes = f:CreateTexture(f:GetName() and f:GetName() .. "Overlay" or nil, "BORDER", f)
        stripes:ClearAllPoints()
        stripes:SetPoint("TOPLEFT", 1, -1)
        stripes:SetPoint("BOTTOMRIGHT", -1, 1)
        if E.db.lui.skins.style == "style1" then
            stripes:SetTexture([[Interface\AddOns\ElvUI_LivvenUI\media\textures\stripes1.blp]], true, true)
        elseif E.db.lui.skins.style == "style2" then
            stripes:SetTexture([[Interface\AddOns\ElvUI_LivvenUI\media\textures\stripes2.blp]], true, true)
        end
        stripes:SetSnapToPixelGrid(false)
        stripes:SetTexelSnappingBias(0)
        stripes:SetHorizTile(true)
        stripes:SetVertTile(true)
        stripes:SetBlendMode("ADD")
        
        f.stripes = stripes
    end
    
    if not (useGradient) then
        local gradient = f:CreateTexture(f:GetName() and f:GetName() .. "Overlay" or nil, "BORDER", f)
        gradient:ClearAllPoints()
        gradient:SetPoint("TOPLEFT", 1, -1)
        gradient:SetPoint("BOTTOMRIGHT", -1, 1)
        gradient:SetTexture([[Interface\AddOns\ElvUI_LivvenUI\media\textures\gradient.tga]])
        gradient:SetSnapToPixelGrid(false)
        gradient:SetTexelSnappingBias(0)
        gradient:SetVertexColor(.3, .3, .3, .15)
        
        f.gradient = gradient
    end
    
    if not (useShadow) then
        local mshadow = f:CreateTexture(f:GetName() and f:GetName() .. "Overlay" or nil, "BORDER", f)
        mshadow:SetInside(f, 0, 0)
        mshadow:Width(shadowOverlayWidth or 33)
        mshadow:Height(shadowOverlayHeight or 33)
        mshadow:SetTexture([[Interface\AddOns\ElvUI_LivvenUI\media\textures\mshadow.tga]])
        mshadow:SetSnapToPixelGrid(false)
        mshadow:SetTexelSnappingBias(0)
        mshadow:SetVertexColor(1, 1, 1, shadowOverlayAlpha or 0.6)
        
        f.mshadow = mshadow
    end
    
    style:SetFrameLevel(f:GetFrameLevel() + 1)
    f.styling = style
    
    LUI["styling"][style] = true
end

local function addapi(object)
    local mt = T.getmetatable(object).__index
    if not object.Styling then mt.Styling = Styling end
    if not object.StripFrame then mt.StripFrame = StripFrame end
    if not object.CreateOverlay then mt.CreateOverlay = CreateOverlay end
    if not object.CreateBorder then mt.CreateBorder = CreateBorder end
    if not object.CreatePanel then mt.CreatePanel = CreatePanel end
end

local handled = {["Frame"] = true}
local object = CreateFrame("Frame")
addapi(object)
addapi(object:CreateTexture())
addapi(object:CreateFontString())

object = EnumerateFrames()
while object do
    if not object:IsForbidden() and not handled[object:GetObjectType()] then
        addapi(object)
        handled[object:GetObjectType()] = true
    end
    object = EnumerateFrames(object)
end
