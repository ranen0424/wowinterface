--来源：LivvenUI
--作者：L
--修改：
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LCV = E:NewModule("LUICVar")

function LCV:LoadAutoCVar()
	SetCVar("alwaysCompareItems", 1)
	E.db.lui.modules.cvar.general.alwaysCompareItems = true
	SetCVar("cameraDistanceMaxZoomFactor", 2.6)
	E.db.lui.modules.cvar.interface.cameraDistanceMaxZoomFactor = 2.6
	SetCVar("weatherDensity", 1)
	E.db.lui.modules.cvar.interface.weatherDensity = 1
	SetCVar("threatShowNumeric", 1)
	E.db.lui.modules.cvar.unitframes.threatShowNumeric = true
	SetCVar("nameplateMinScale", 1)
	E.db.lui.modules.cvar.nameplates.nameplateMinScale = 1
	SetCVar("nameplateOtherTopInset", .1)
	SetCVar("nameplateLargeTopInset", .1)
	E.db.lui.modules.cvar.nameplates.nameplateOtherTopInset = .1
	SetCVar("xpBarText", 1)
	E.db.lui.modules.cvar.interface.xpBarText = true

    --控制 
    SetCVar("autoDismountFlying", 1) --自动取消飞行
	SetCVar("autoLootDefault", 1) --自动拾取

	--战斗 
	SetCVar("showTargetOfTarget", 1) --目标的目标 
	-- SetCVar("doNotFlashLowHealthWarning", 1) --生命值过低时不闪烁屏幕 
	SetCVar("lossOfControl", 1) --失控警报 

	--显示 
	SetCVar("statusText", 1) --状态文字 
	SetCVar("statusTextDisplay", "BOTH")

	--教程 
	SetCVar("showTutorials", 0)

	--社交
	SetCVar("profanityFilter", 0) --语言过滤器 
	E.db.lui.modules.cvar.chat.profanityFilter = false
	SetCVar("spamFilter", 0) --垃圾信息过滤 
	SetCVar("guildMemberNotify", 0) --公会成员提示 
	SetCVar("showToastBroadcast", 1) --通告更新
	-- SetCVar("showToastWindow", 0) --显示浮窗 
	-- SetCVar("showTimestamps", "[%H:%M:%S] ") --聊天时间戳

	--动作条 
	SHOW_MULTI_ACTIONBAR_1 = "1" --左下方动作条 
	SHOW_MULTI_ACTIONBAR_2 = "1" --右下方动作条
	SHOW_MULTI_ACTIONBAR_3 = "1" --右动作条1
	SHOW_MULTI_ACTIONBAR_4 = "1" --右动作条2
	InterfaceOptions_UpdateMultiActionBars() --刷新动作条
	-- SetCVar("countdownForCooldowns", 1) --显示冷却时间

	--名字 
	-- SetCVar("UnitNameFriendlyPlayerName", 0) --友方玩家 
	-- SetCVar("UnitNameFriendlyMinionName", 0) --  仆从
	SetCVar("UnitNameOwn", 1) --我的名字
	SetCVar("nameplateShowSelf", 0) --显示个人资源 
	SetCVar("ShowNamePlateLoseAggroFlash", 0) --失去怪物威胁时闪烁 
	SetCVar("nameplateShowAll", 1) --显示所有姓名板

	--敌对单位 
	SetCVar("nameplateShowEnemyMinions", 1) --仆从 

	--大姓名板 
	SetCVar("NamePlateHorizontalScale", 1.4) 
	SetCVar("NamePlateVerticalScale", 2.7) 
	NamePlateDriverFrame:UpdateNamePlateOptions()
	InterfaceOptionsNamesPanelUnitNameplatesMakeLarger:SetValue(1)

	--镜头 
	SetCVar("cameraSmoothStyle", 0) --镜头跟随模式

	--团队界面配置 
	SetCVar("useCompactPartyFrames", 1) --使用团队风格的小队框体界面

	if not RaidProfileExists(L["LivvRaid"]) then
		CompactUnitFrameProfiles_CreateProfile(L["LivvRaid"])
	end
	SetCVar("activeCUFProfile", L["LivvRaid"])
	SetRaidProfileOption(GetActiveRaidProfile(), "keepGroupsTogether", true) --保持小队相连 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayHealPrediction", true) --显示预计治疗 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayPowerBar", true) --显示能量条 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayAggroHighlight", true) --高亮显示仇恨目标 
	SetRaidProfileOption(GetActiveRaidProfile(), "useClassColors", true) --显示职业颜色 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayPets", false) --显示宠物 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayMainTankAndAssist", false) --显示主坦克和主助理 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayBorder", false) --显示边框 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayOnlyDispellableDebuffs", false) --只显示可供驱散的负面效果
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate2Players", false) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate3Players", false) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate5Players", false)
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate10Players", true) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate15Players", true) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate25Players", true) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate40Players", true)
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivateSpec1", true) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivateSpec2", true) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivateSpec3", true)
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivateSpec4", true)
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivatePvP", true) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivatePvE", true)
	SetRaidProfileOption(GetActiveRaidProfile(), "frameHeight", 36)
	SetRaidProfileOption(GetActiveRaidProfile(), "frameWidth", 72)
	SetRaidProfileSavedPosition(GetActiveRaidProfile(), true)


	if not RaidProfileExists(L["LivvParty"]) then
		CompactUnitFrameProfiles_CreateProfile(L["LivvParty"])
	end
	SetCVar("activeCUFProfile", L["LivvParty"])
	SetRaidProfileOption(GetActiveRaidProfile(), "keepGroupsTogether", true) --保持小队相连 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayHealPrediction", true) --显示预计治疗 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayPowerBar", true) --显示能量条 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayAggroHighlight", true) --高亮显示仇恨目标 
	SetRaidProfileOption(GetActiveRaidProfile(), "useClassColors", true) --显示职业颜色 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayPets", false) --显示宠物 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayMainTankAndAssist", false) --显示主坦克和主助理 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayBorder", false) --显示边框 
	SetRaidProfileOption(GetActiveRaidProfile(), "displayOnlyDispellableDebuffs", false) --只显示可供驱散的负面效果 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate2Players", true) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate3Players", true) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate5Players", true)
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate10Players", false) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate15Players", false) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate25Players", false) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivate40Players", false)
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivateSpec1", true) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivateSpec2", true) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivateSpec3", true)
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivateSpec4", true)
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivatePvP", true) 
	SetRaidProfileOption(GetActiveRaidProfile(), "autoActivatePvE", true)
	SetRaidProfileOption(GetActiveRaidProfile(), "frameHeight", 64)
	SetRaidProfileOption(GetActiveRaidProfile(), "frameWidth", 128)
	SetRaidProfileSavedPosition(GetActiveRaidProfile(), false, "TOP", 466, "BOTTOM", 0, "LEFT", 314)

	CompactUnitFrameProfiles_SaveChanges(CompactUnitFrameProfiles) 
	CompactUnitFrameProfiles_ApplyCurrentSettings()

	local PlayerFrame = _G["PlayerFrame"]
	if (PlayerFrame and not PlayerFrame_IsAnimatedOut(PlayerFrame)) then
		PlayerFrame:ClearAllPoints()
		PlayerFrame:SetPoint("LEFT", 343, 160)
		PlayerFrame:SetUserPlaced(true)
		PlayerFrame:StopMovingOrSizing()
	end

	local TargetFrame = _G["TargetFrame"]
	if (TargetFrame) then
		TargetFrame:ClearAllPoints()
		TargetFrame:SetPoint("CENTER", -400, 23)
		TargetFrame:SetUserPlaced(true)
		TargetFrame:StopMovingOrSizing()
	end

	local FocusFrame = _G["FocusFrame"]
	if (FocusFrame) then
		FocusFrame:ClearAllPoints()
		FocusFrame:SetPoint("CENTER", -232, 160)
		FocusFrame:SetUserPlaced(true)
		FocusFrame:StopMovingOrSizing()
	end
end

function LCV:LoadCVar()
    --获取玩家目前CVar设置
	--general
	if GetCVar("alwaysCompareItems") == "0" then
		E.db.lui.modules.cvar.general.alwaysCompareItems = false
	else
		E.db.lui.modules.cvar.general.alwaysCompareItems = true
	end
	
	if GetCVar("breakUpLargeNumbers") == "0" then
		E.db.lui.modules.cvar.general.breakUpLargeNumbers = false
	else
		E.db.lui.modules.cvar.general.breakUpLargeNumbers = true
	end
	
	if GetCVar("scriptErrors") == "0" then
		E.db.lui.modules.cvar.general.scriptErrors = false
	else
		E.db.lui.modules.cvar.general.scriptErrors = true
	end
	
	if GetCVar("enableWoWMouse") == "0" then
		E.db.lui.modules.cvar.general.enableWoWMouse = false
	else
		E.db.lui.modules.cvar.general.enableWoWMouse = true
	end
	
	if GetCVar("rawMouseEnable") == "0" then
		E.db.lui.modules.cvar.general.rawMouseEnable = false
	else
		E.db.lui.modules.cvar.general.rawMouseEnable = true
	end

	E.db.lui.modules.cvar.general.trackQuestSorting = GetCVar("trackQuestSorting")
	
	--interface
	E.db.lui.modules.cvar.interface.cameraDistanceMaxZoomFactor = T.tonumber(GetCVar("cameraDistanceMaxZoomFactor"))
	
	E.db.lui.modules.cvar.interface.weatherDensity = T.tonumber(GetCVar("weatherDensity"))
	
	if GetCVar("ffxGlow") == "0" then
		E.db.lui.modules.cvar.interface.ffxGlow = false
	else
		E.db.lui.modules.cvar.interface.ffxGlow = true
	end
	
	if GetCVar("xpBarText") == "0" then
		E.db.lui.modules.cvar.interface.xpBarText = false
	else
		E.db.lui.modules.cvar.interface.xpBarText = true
	end

	--chat
	if GetCVar("profanityFilter") == "0" then
		E.db.lui.modules.cvar.chat.profanityFilter = false
	else
		E.db.lui.modules.cvar.chat.profanityFilter = true
	end
	
	if GetCVar("removeChatDelay") == "0" then
		E.db.lui.modules.cvar.chat.removeChatDelay = false
	else
		E.db.lui.modules.cvar.chat.removeChatDelay = true
	end
	
	if GetCVar("chatMouseScroll") == "0" then
		E.db.lui.modules.cvar.chat.chatMouseScroll = false
	else
		E.db.lui.modules.cvar.chat.chatMouseScroll = true
	end

	if GetCVar("chatBubbles") == "0" then
		E.db.lui.modules.cvar.chat.chatMouseScroll = false
	else
		E.db.lui.modules.cvar.chat.chatMouseScroll = true
	end
	
	--combat
	if GetCVar("secureAbilityToggle") == "0" then
		E.db.lui.modules.cvar.combat.secureAbilityToggle = false
	else
		E.db.lui.modules.cvar.combat.secureAbilityToggle = true
	end
	
	if GetCVar("stopAutoAttackOnTargetChange") == "0" then
		E.db.lui.modules.cvar.combat.stopAutoAttackOnTargetChange = false
	else
		E.db.lui.modules.cvar.combat.stopAutoAttackOnTargetChange = true
	end
	
	if GetCVar("assistAttack") == "0" then
		E.db.lui.modules.cvar.combat.assistAttack = false
	else
		E.db.lui.modules.cvar.combat.assistAttack = true
	end
	
	E.db.lui.modules.cvar.combat.SpellQueueWindow = T.tonumber(GetCVar("SpellQueueWindow"))
	
	--combatText
	E.db.lui.modules.cvar.combatText.WorldTextScale = T.tonumber(GetCVar("WorldTextScale"))
		--targetCombatText
		if GetCVar("floatingCombatTextCombatDamage") == "0" then
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextCombatDamage = false
		else
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextCombatDamage = true
		end
		
		if GetCVar("floatingCombatTextCombatLogPeriodicSpells") == "0" then
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextCombatLogPeriodicSpells = false
		else
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextCombatLogPeriodicSpells = true
		end
		
		if GetCVar("floatingCombatTextPetMeleeDamage") == "0" then
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextPetMeleeDamage = false
		else
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextPetMeleeDamage = true
		end
		if GetCVar("floatingCombatTextPetSpellDamage") == "0" then
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextPetSpellDamage = false
		else
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextPetSpellDamage = true
		end
		
		E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextCombatDamageDirectionalScale = T.tonumber(GetCVar("floatingCombatTextCombatDamageDirectionalScale"))
		
		if GetCVar("floatingCombatTextCombatHealing") == "0" then
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextCombatHealing = false
		else
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextCombatHealing = true
		end
		
		if GetCVar("floatingCombatTextCombatHealingAbsorbTarget") == "0" then
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextCombatHealingAbsorbTarget = false
		else
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextCombatHealingAbsorbTarget = true
		end
		
		if GetCVar("floatingCombatTextSpellMechanics") == "0" then
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextSpellMechanics = false
		else
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextSpellMechanics = true
		end
		
		if GetCVar("floatingCombatTextSpellMechanicsOther") == "0" then
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextSpellMechanicsOther = false
		else
			E.db.lui.modules.cvar.combatText.targetCombatText.floatingCombatTextSpellMechanicsOther = true
		end
		
		--playerCombatText
		if GetCVar("enableFloatingCombatText") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.enableFloatingCombatText = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.enableFloatingCombatText = true
		end
		
		E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextFloatMode = T.tonumber(GetCVar("floatingCombatTextFloatMode"))
		
		if GetCVar("floatingCombatTextDodgeParryMiss") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextDodgeParryMiss = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextDodgeParryMiss = true
		end
		
		if GetCVar("floatingCombatTextCombatHealingAbsorbSelf") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextCombatHealingAbsorbSelf = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextCombatHealingAbsorbSelf = true
		end
		
		if GetCVar("floatingCombatTextDamageReduction") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextDamageReduction = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextDamageReduction = true
		end
		
		if GetCVar("floatingCombatTextLowManaHealth") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextLowManaHealth = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextLowManaHealth = true
		end
		
		if GetCVar("floatingCombatTextRepChanges") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextRepChanges = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextRepChanges = true
		end
		
		if GetCVar("floatingCombatTextEnergyGains") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextEnergyGains = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextEnergyGains = true
		end
		
		if GetCVar("floatingCombatTextComboPoints") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextComboPoints = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextComboPoints = true
		end
		
		if GetCVar("floatingCombatTextReactives") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextReactives = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextReactives = true
		end
		
		if GetCVar("floatingCombatTextPeriodicEnergyGains") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextPeriodicEnergyGains = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextPeriodicEnergyGains = true
		end
		
		if GetCVar("floatingCombatTextFriendlyHealers") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextFriendlyHealers = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextFriendlyHealers = true
		end
		
		if GetCVar("floatingCombatTextHonorGains") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextHonorGains = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextHonorGains = true
		end
		
		if GetCVar("floatingCombatTextCombatState") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextCombatState = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextCombatState = true
		end
		
		if GetCVar("floatingCombatTextAuras") == "0" then
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextAuras = false
		else
			E.db.lui.modules.cvar.combatText.playerCombatText.floatingCombatTextAuras = true
		end
		
	--unitframes
	if GetCVar("noBuffDebuffFilterOnTarget") == "0" then
		E.db.lui.modules.cvar.unitframes.noBuffDebuffFilterOnTarget = false
	else
		E.db.lui.modules.cvar.unitframes.noBuffDebuffFilterOnTarget = true
	end
	
	if GetCVar("threatShowNumeric") == "0" then
		E.db.lui.modules.cvar.unitframes.threatShowNumeric = false
	else
		E.db.lui.modules.cvar.unitframes.threatShowNumeric = true
	end
	
	--nameplates
	E.db.lui.modules.cvar.nameplates.nameplateMaxDistance = T.tonumber(GetCVar("nameplateMaxDistance"))
	
	E.db.lui.modules.cvar.nameplates.nameplateOtherAtBase = T.tonumber(GetCVar("nameplateOtherAtBase"))
	
	if GetCVar("ShowClassColorInFriendlyNameplate") == "0" then
		E.db.lui.modules.cvar.nameplates.ShowClassColorInFriendlyNameplate = false
	else
		E.db.lui.modules.cvar.nameplates.ShowClassColorInFriendlyNameplate = true
	end
	
	if GetCVar("nameplatePersonalShowAlways") == "0" then
		E.db.lui.modules.cvar.nameplates.nameplatePersonalShowAlways = false
	else
		E.db.lui.modules.cvar.nameplates.nameplatePersonalShowAlways = true
	end
	
	if GetCVar("nameplatePersonalShowWithTarget") == "0" then
		E.db.lui.modules.cvar.nameplates.nameplatePersonalShowWithTarget = false
	else
		E.db.lui.modules.cvar.nameplates.nameplatePersonalShowWithTarget = true
	end
	
	if GetCVar("nameplatePersonalShowInCombat") == "0" then
		E.db.lui.modules.cvar.nameplates.nameplatePersonalShowInCombat = false
	else
		E.db.lui.modules.cvar.nameplates.nameplatePersonalShowInCombat = true
	end
	
	E.db.lui.modules.cvar.nameplates.nameplateOtherTopInset = T.tonumber(GetCVar("nameplateOtherTopInset"))
	E.db.lui.modules.cvar.nameplates.nameplateLargeTopInset = T.tonumber(GetCVar("nameplateLargeTopInset"))
	
	E.db.lui.modules.cvar.nameplates.nameplateOverlapV = T.tonumber(GetCVar("nameplateOverlapV"))
	
	E.db.lui.modules.cvar.nameplates.nameplateMotionSpeed = T.tonumber(GetCVar("nameplateMotionSpeed"))
	
	E.db.lui.modules.cvar.nameplates.nameplateGlobalScale = T.tonumber(GetCVar("nameplateGlobalScale"))
	
	E.db.lui.modules.cvar.nameplates.nameplateMinScale = T.tonumber(GetCVar("nameplateMinScale"))

	E.db.lui.modules.cvar.nameplates.nameplateOccludedAlphaMult = T.tonumber(GetCVar("nameplateOccludedAlphaMult"))
end

function LCV:Initialize()
    self:LoadCVar()
end

local function InitializeCallback()
	LCV:Initialize()
end

E:RegisterModule(LCV:GetName(), InitializeCallback)
