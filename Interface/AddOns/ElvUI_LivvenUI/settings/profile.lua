local LUI, T, E, L, V, P, G = unpack(select(2, ...))

P.lui = {
    general = {
        splashScreen = true,
        loginMsg = true,
        gamemenu = true
    },
    modules = {
        cvar = {
            general = {
                alwaysCompareItems = false,
                breakUpLargeNumbers = true,
                scriptErrors = false,
                enableWoWMouse = false,
                rawMouseEnable = false,
                trackQuestSorting = "top"
            },
            interface = {
                cameraDistanceMaxZoomFactor = 1.9,
                ffxGlow = true,
                xpBarText = true,
                weatherDensity = 3
            },
            chat = {
                profanityFilter = true,
                removeChatDelay = false,
                chatMouseScroll = true,
                chatBubbles = true
            },
            combat = {
                secureAbilityToggle = true,
                stopAutoAttackOnTargetChange = false,
                assistAttack = false,
                SpellQueueWindow = 400
            },
            combatText = {
                worldTextScale = 1.0,
                targetCombatText = {
                    floatingCombatTextCombatDamage = true,
                    floatingCombatTextCombatLogPeriodicSpells = true,
                    floatingCombatTextPetMeleeDamage = true,
                    floatingCombatTextPetSpellDamage = true,
                    floatingCombatTextCombatDamageDirectionalScale = 1,
                    floatingCombatTextCombatHealing = true,
                    floatingCombatTextCombatHealingAbsorbTarget = true,
                    floatingCombatTextSpellMechanics = false,
                    floatingCombatTextSpellMechanicsOther = false
                },
                playerCombatText = {
                    enableFloatingCombatText = false,
                    floatingCombatTextFloatMode = 1,
                    floatingCombatTextDodgeParryMiss = false,
                    floatingCombatTextCombatHealingAbsorbSelf = true,
                    floatingCombatTextDamageReduction = false,
                    floatingCombatTextLowManaHealth = true,
                    floatingCombatTextRepChanges = false,
                    floatingCombatTextEnergyGains = false,
                    floatingCombatTextComboPoints = false,
                    floatingCombatTextReactives = true,
                    floatingCombatTextPeriodicEnergyGains = false,
                    floatingCombatTextFriendlyHealers = false,
                    floatingCombatTextHonorGains = false,
                    floatingCombatTextCombatState = false,
                    floatingCombatTextAuras = false
                }
            },
            unitframes = {
                noBuffDebuffFilterOnTarget = false,
                threatShowNumeric = false
            },
            nameplates = {
                nameplateMaxDistance = 60,
                nameplateOtherAtBase = 0,
                ShowClassColorInFriendlyNameplate = true,
                nameplatePersonalShowAlways = false,
                nameplatePersonalShowWithTarget = false,
                nameplatePersonalShowInCombat = true,
                nameplateOtherTopInset = 0.08,
                nameplateLargeTopInset = 0.1,
                nameplateOverlapV = 1.1,
                nameplateMotionSpeed = 0.025,
                nameplateGlobalScale = 1,
                nameplateMinScale = 0.8,
                nameplateOccludedAlphaMult = 0.4
            }
        },
        misc = {
            general = {
                alreadyKnown = {
                    enable = true,
                    color = {r = 0, g = 1, b = 0, a = 1}
                },
                meetingStonePlus = {
                    enable = true,
                    panelNoBackdrop = true,
                    ElvUISkins = true
                },
                raidUtilityPlus = {
                    enable = true,
                    buttonNoBackdrop = true,
                    panelNoBackdrop = false,
                    onoffButtonNoBorder = false,
                    ruMouseover = false,
                    panelNoBorder = false
                },
                refixStyle = false,
                rightButtonMenu = true,
                disableTalking = true,
                classColors = true,
                autoDelete = true,
                autoRelease = true,
                autoRepChange = true,
                repPeaksTimes = true,
                autoScreenShoot = {
                    enable = true
                },
                talentProfiles = {
                    enable = true,
                    ElvUISkins = true
                },
                setPoi = {
                    enable = false,
                    poiCombat = true,
                    poiColor = {r = 0.5, g = 1, b = 1, a = 1},
                    poiText = "╋",
                    poiTextSize = 22
                }
            },
            group = {
                lfgMemberInfo = true,
                inviteGroup = {
                    enable = true,
                    ainvkeyword = "321",
                    inviteRank = {}
                }
            },
            loot = {
                lootSpecManager = {
                    enable = true
                },
                fastLoot = {
                    enable = true,
                    lootSpeed = "光速"
                }
            },
            azerite = {
                skipAzeriteAnimations = true,
                azeriteTooltip = {
                    enable = true,
                    removeBlizzard = true,
                    onlyIcon = false,
                    onlySpec = false,
                    bagIcon = true,
                    bagIconPosition = "TOP",
                    characterIcon = true,
                    characterIconPosition = "BOTTOM"
                }
            },
            addonpanel = {
                enable = true,
                numAddOns = 19,
                frameWidth = 550,
                fontName = E.db.general.font,
                fontSize = 12,
                fontFlag = "OUTLINE",
                buttonHeight = 15,
                buttonWidth = 15,
                buttonCustomColor = {249 / 255, 96 / 255, 217 / 255},
                buttonclassColor = true,
                buttonTexture = "Melli",
                fontColor = 2,
                fontCustomColor = {r = 1, g = 1, b = 1, a = 1}
            },
            autoWorkOrders = {
                enable = true,
                WarlordsofDraenor = {
                    enable = true,
                    autoWarmill = false,
                    autoTradingPost = false,
                    autoShipyard = false
                },
                LEGION = {
                    enable = true,
                    autoEquip = false
                },
                BattleforAzeroth = {
                    enable = true
                }
            }
        },
        quest = {
            questAutomation = {
                enable = true,
                syncBtn = false,
                nomi = true,
                faireport = true,
                gossip = true,
                gossipraid = 1,
                withered = true,
                share = false,
                modifierKey = "CTRL",
                reverse = false,
                frameBtn = true,
                ElvUISkins = true,
                blacklistDB = {
                    items = {
                        -- Inscription weapons
                        [31690] = 79343,	-- Inscribed Tiger Staff
                        [31691] = 79340,	-- Inscribed Crane Staff
                        [31692] = 79341,	-- Inscribed Serpent Staff
                        -- Darkmoon Faire artifacts
                        [29443] = 71635,	-- Imbued Crystal
                        [29444] = 71636,	-- Monstrous Egg
                        [29445] = 71637,	-- Mysterious Grimoire
                        [29446] = 71638,	-- Ornate Weapon
                        [29451] = 71715,	-- A Treatise on Strategy
                        [29456] = 71951,	-- Banner of the Fallen
                        [29457] = 71952,	-- Captured Insignia
                        [29458] = 71953,	-- Fallen Adventurer's Journal
                        [29464] = 71716,	-- Soothsayer's Runes
                        -- Tiller Gifts
                        ["progress_79264"] = 79264,	-- Ruby Shard
                        ["progress_79265"] = 79265,	-- Blue Feather
                        ["progress_79266"] = 79266,	-- Jade Cat
                        ["progress_79267"] = 79267,	-- Lovely Apple
                        ["progress_79268"] = 79268,	-- Marsh Lily
                        -- Garrison scouting missives
                        [38180] = 122424,	-- Scouting Missive: Broken Precipice
                        [38193] = 122423,	-- Scouting Missive: Broken Precipice
                        [38182] = 122418,	-- Scouting Missive: Darktide Roost
                        [38196] = 122417,	-- Scouting Missive: Darktide Roost
                        [38179] = 122400,	-- Scouting Missive: Everbloom Wilds
                        [38192] = 122404,	-- Scouting Missive: Everbloom Wilds
                        [38194] = 122420,	-- Scouting Missive: Gorian Proving Grounds
                        [38202] = 122419,	-- Scouting Missive: Gorian Proving Grounds
                        [38178] = 122402,	-- Scouting Missive: Iron Siegeworks
                        [38191] = 122406,	-- Scouting Missive: Iron Siegeworks
                        [38184] = 122413,	-- Scouting Missive: Lost Veil Anzu
                        [38198] = 122414,	-- Scouting Missive: Lost Veil Anzu
                        [38177] = 122403,	-- Scouting Missive: Magnarok
                        [38190] = 122399,	-- Scouting Missive: Magnarok
                        [38181] = 122421,	-- Scouting Missive: Mok'gol Watchpost
                        [38195] = 122422,	-- Scouting Missive: Mok'gol Watchpost
                        [38185] = 122411,	-- Scouting Missive: Pillars of Fate
                        [38199] = 122409,	-- Scouting Missive: Pillars of Fate
                        [38187] = 122412,	-- Scouting Missive: Shattrath Harbor
                        [38201] = 122410,	-- Scouting Missive: Shattrath Harbor
                        [38186] = 122408,	-- Scouting Missive: Skettis
                        [38200] = 122407,	-- Scouting Missive: Skettis
                        [38183] = 122416,	-- Scouting Missive: Socrethar's Rise
                        [38197] = 122415,	-- Scouting Missive: Socrethar's Rise
                        [38176] = 122405,	-- Scouting Missive: Stonefury Cliffs
                        [38189] = 122401,	-- Scouting Missive: Stonefury Cliffs
                        -- Misc
                        [31664] = 88604,	-- Nat's Fishing Journal
                    }
                },
            },
            questAnnouncment = {
                enable = true,
                syncBtn = false,
                questSolo = true,
                questParty = true,
                questRaid = true,
                questInstance = true,
                questNoDetail = false,
                frameBtn = true,
                ElvUISkins = true,
                ignoreSupplies = true
            },
            questSmartTracker = {
                enable = true,
                handlingComplete = "keep_local",
                removeLegendary = true,
                removeWaypoints = false,
                autoRemove = true,
                autoSort = true,
                showDailies = false,
            },
            questTrackerVisibility = {
                enable = true,
                isResting = "FULL",
                battlegrounds = "FULL",
                arena = "FULL",
                dungeon = "FULL",
                raid = "FULL",
                scenario = "FULL",
                garrison = "FULL",
                orderhall = "FULL",
                combat = "NONE"
            }
            -- questListEnhanced = {
            --     enable = true,
            --     questLevel = {
            --         titleLevel = true,
            --         detailLevel = true,
            --         ignoreHighLevel = true,
            --     },
            -- }
        },
        unitframes = {
            general = {
                hideMana = {
                    enable = true,
                    hideManaFrames = {
                        elvuiFrames = true,
                        blizzardFrames = true
                    },
                    hideManaRoles = {
                        DAMAGER = true,
                        HEALER = false,
                        TANK = true
                    }
                }
            },
            playerframe = {
                gcdBar = true,
                swingBar = {
                    enable = true,
                    swingBarColor = {r = 1, b = 1, g = 1, a = 1},
                    swingBarWidth = 270,
                    swingBarHeight = 18,
                    remainingText = true,
                    durationText = true,
                    swingBarFontName = E.db.general.font,
                    swingBarFontSize = 12,
                    swingBarFontFlag = "OUTLINE"
                }
            },
            targetframe = {
                rangeText = {
                    enable = true,
                    rangeFontName = E.db.general.font,
                    rangeFontSize = 12,
                    rangeFontFlag = "OUTLINE",
                    rangePoi = "BOTTOMLEFT",
                    rangePoiX = 0,
                    rangePoiY = 0
                }
            },
            focusframe = {
                rangeText = {
                    enable = true,
                    rangeFontName = E.db.general.font,
                    rangeFontSize = 12,
                    rangeFontFlag = "OUTLINE",
                    rangePoi = "BOTTOMLEFT",
                    rangePoiX = 0,
                    rangePoiY = 0
                }
            },
            icons = {
                roleIcons = "Lyn"
            }
        },
        chat = {
            chatRepChange = true,
            chatIME = true,
            chatBar = {
                enable = true,
                fontName = E.db.general.font,
                fontSize = 14,
                fontFlag = "OUTLINE",
                barMouseOver = false,
                syncBtn = false
            },
            chatItemlevelLink = {
                enable = true,
                itemsolt = true
            },
            chatTradeLog = {
                enable = true,
                tradeSendChat = false
            },
            chatMSGLoot = {
                enable = true,
                chatMSGLootGS = false
            },
            chatShortChannel = {
                enable = true,
                hideChannelNum = false,
                channelLen = "2"
            }
        },
        combat = {
            announceSystem = {
                enable = true,
                raidSpells = {
                    enable = true
                },
                resAndThreatSpells = {
                    enable = true,
                    resAndThreat = true,
                    resThanks = true
                },
                taunt = {
                    enable = true,
                    playerSmart = false,
                    includeMiss = true,
                    otherTankSmart = false,
                    includeOtherTank = true,
                    petSmart = false,
                    includePet = true
                }
            },
            combatNotification = {
                enable = true,
                combatNotiEntering = "进入战斗",
                combatNotiLeaving = "离开战斗",
                combatNotiFont = E.db.general.font,
                combatNotiSize = 25,
                combatNotiFlag = "OUTLINE",
                rangePoiX = 0,
                rangePoiY = 140
            },
            combatShortcut = {
                setFocusKey = {
                    setFocusButton1 = "shift",
                    setFocusButton2 = "1"
                }
            },
            raidMarkers = {
                enable = true,
                visibility = "INPARTY",
                customVisibility = "[noexists, nogroup] hide show",
                backdrop = true,
                buttonSize = 20,
                spacing = 2,
                orientation = "HORIZONTAL",
                modifier = "shift-",
                reverse = false,
                raidicons = "Anime",
                mouseover = false,
                notooltip = false,
                raidMarkingKey = {
                    raidMarkingButton1 = "alt",
                    raidMarkingButton2 = "LeftButton"
                },
                autoMarkers = {
                    enable = true,
                    autoMarkParty = {
                        enable = false,
                        tankMark = 2,
                        healerMark = 5
                    },
                    autoMarkUnit = {
                        enable = false
                    }
                }
            }
        },
        actionbars = {
            general = {
                finishingMoveHighlight = true,
                randomHearthstone = {
                    enable = true
                }
            },
            microBar = {
                enable = true,
                scale = 1,
                barBackdrop = false,
                barMouseOver = false,
                hideInOrderHall = false,
                tooltip = true,
                buttonClassColor = false,
                buttonColor = {r = .6, g = .6, b = .6, a = 1},
                text = {
                    position = "BOTTOM",
                    friends = true,
                    guild = true,
                    lfr = true,
                    fontClassColor = true,
                    fontColor = {r = 1, g = .3, b = .8, a = 1}
                }
            },
            autoButtons = {
                enable = true,
                fontName = E.db.general.font,
                bindFontSize = 18,
                countFontSize = 18,
                soltAutoButtons = {
                    enable = true,
                    slotBBColorByItem = true,
                    slotBBColor = {r = 1, g = 1, b = 1, a = 1},
                    slotSpace = 1,
                    slotDirection = "RIGHT",
                    slotNum = 5,
                    slotPerRow = 5,
                    slotSize = 40
                },
                questAutoButtons = {
                    enable = true,
                    questBBColorByItem = true,
                    questBBColor = {r = 1, g = 1, b = 1, a = 1},
                    questSpace = 1,
                    questDirection = "RIGHT",
                    questNum = 5,
                    questPerRow = 5,
                    questSize = 40
                },
                whiteList = {
                    [90006] = true, -- 影踪派任务道具
                    [86534] = true,
                    [86536] = true,
                    [76097] = true, -- 神效治疗药水
                    [76098] = true, -- 神效法力药水
                    [5512] = true, -- 治疗石
                    [36799] = true, -- 法力宝石
                    [81901] = true, -- 闪耀法力宝石
                    [76089] = true, -- 兔妖之啮
                    [76090] = true, -- 群山药水
                    [76093] = true, -- 青龙药水
                    [76094] = true, -- 炼金师药水
                    [76095] = true, -- 魔古之力药水
                    [86125] = true, -- 咔啡压榨机
                    [86569] = true, -- 狂乱水晶
                    [118922] = true, -- 奥拉留斯的低语水晶
                    [127843] = true,
                    [49040] = true, -- 基维斯
                    [132514] = true, -- 自动铁锤
                    --公会及荣誉军旗
                    [63359] = true,
                    [64398] = true,
                    [64399] = true,
                    [18606] = true,
                    [64400] = true,
                    [64401] = true,
                    [64402] = true,
                    [18607] = true,
                    --wod 药水
                    [116266] = true,
                    [116276] = true,
                    [116268] = true,
                    [116271] = true,
                    [118711] = true,
                    [118704] = true,
                    [109217] = true,
                    [109218] = true,
                    [109219] = true,
                    [109220] = true,
                    [109221] = true,
                    [109222] = true,
                    [109223] = true,
                    [118269] = true, -- 要塞绿苹果
                    [122453] = true, -- 炼金专用药水
                    [122451] = true,
                    [122454] = true,
                    [122452] = true,
                    [122455] = true,
                    [122456] = true,
                    [116411] = true, -- 保护卷轴
                    --Legion
                    [118330] = true, -- Pile of Weapons
                    [122100] = true, -- Soul Gem
                    [127030] = true, -- Granny"s Flare Grenades
                    [127295] = true, -- Blazing Torch
                    [128651] = true, -- Critter Hand Cannon
                    [128772] = true, -- Branch of the Runewood
                    [129161] = true, -- Stormforged Horn
                    [129725] = true, -- Smoldering Torch
                    [131931] = true, -- Khadgar"s Wand
                    [133756] = true, -- Fresh Mound of Flesh
                    [133882] = true, -- Trap Rune
                    [133897] = true, -- Telemancy Beacon
                    [133925] = true, -- Fel Lash
                    [133999] = true, -- Inert Crystal
                    [136605] = true, -- Solendra"s Compassion
                    [137299] = true, -- Nightborne Spellblad
                    [138146] = true, -- Rediant Ley Crystal
                    [140916] = true, -- Satchel of Locklimb Powder
                    [109076] = true, -- 地精滑翔器工具包
                    [147707] = true, -- 改装的邪能焦镜
                    [142117] = true, -- 延时之力
                    [153023] = true, -- 光铸调和符文
                    --BFA
                    [163224] = true, -- 力量战斗药水
                    [163223] = true, -- 敏捷战斗药水
                    [163222] = true -- 智力战斗药水
                },
                blackList = {},
                blackitemID = "",
                whiteItemID = ""
            }
        },
        maps = {
            general = {
                whoClickMinimap = true
            },
            minimapIcons = {
                enable = true,
                chooseMinimap = "buttons",
                buttons = {
                    enable = true,
                    barMouseOver = false,
                    backdrop = false,
                    hideInCombat = false,
                    iconSize = 22.3,
                    buttonsPerRow = 8,
                    buttonSpacing = 0,
                    visibility = "[petbattle] hide show",
                    moveTracker = false,
                    moveQueue = false,
                    moveMail = false,
                    hideGarrison = false,
                    moveGarrison = false
                },
                square = {
                    enable = true,
                    squareMinimapDC = "DOWN"
                }
            },
            minimapInstance = {
                enable = true,
                xoffset = -10,
                yoffset = 0,
                onlyNumber = false,
                colors = {
                    lfr = {r = 0.32, g = 0.91, b = 0.25},
                    normal = {r = 0.09, g = 0.51, b = 0.82},
                    heroic = {r = 0.82, g = 0.42, b = 0.16},
                    challenge = {r = 0.9, g = 0.89, b = 0.27},
                    mythic = {r = 0.9, g = 0.14, b = 0.15},
                    time = {r = 0.41, g = 0.80, b = 0.94}
                },
                fontName = E.db.general.font,
                fontSize = 12,
                fontFlag = "OUTLINE"
            },
            enhancedWorldMap = {
                enable = true,
                scale = 1,
                useReveal = false
            }
        },
        blizzard = {
            general = {
                BlizzardFrames = false,
                castbarTime = true,
                minimapWheel = true
            },
            blizzardMoveFrames = {
                enable = true,
                remember = true,
                points = {},
                errorframe = {
                    height = 60,
                    width = 512
                }
            },
            enhancedFriendsList = {
                enable = true,
                general = {
                    NameLevel = true,
                    InfoColor = true,
                    NameFont = E.db.general.font,
                    NameFontSize = 12,
                    NameFontFlag = "NONE",
                    InfoFont = E.db.general.font,
                    InfoFontSize = 12,
                    InfoFontFlag = "NONE",
                    GameIconPack = "Launcher",
                    StatusIconPack = "Default"
                }
            }
        },
        tooltip = {
            atlasLootReverse = true,
            tooltipIcon = true,
            daisyCosp = true,
            noShiftKeyDown = true,
            flashingCursor = {
                enable = true,
                cursorMode = "always",
                cursorSize = 1024,
                cursorAlpha = 0.5,
                cursorColor = {r = 1, g = 1, b = 1, a = .5}
            },
            raidProg = {
                enable = true,
                onlyHighest = false,
                Uldir = false,
                BattleOfDazaralor = false,
                CrucibleOfStorms = true,
                EternalPalace = true
            },
            nameHover = {
                enable = true,
                guildName = false,
                guildRank = false,
                race = false,
                realm = false,
                titles = false,
                fontName = E.db.general.font,
                fontSize = 10,
                fontFlag = "OUTLINE"
            }
        },
        nameplates = {
            castbarTarget = true
        },
        bags = {
            moveElvUIBags = true,
            enhancedElvUIBank = {
                moveElvUIBank = true,
                showBankTab = false,
                autoDepositReagents = false
            }
        },
        raid = {
            raidManager = true,
            teamStats = true
        },
        armory = {
            enable = true,
            general = {
                azeritebtn = true,
                naked = true,
                azeriteGlow = true,
                neckSlotTop = false,
                backdrop = {
                    enable = true,
                    selectedBG = "FACTION",
                    customAddress = "",
                    overlay = false,
                    alpha = .3
                },
                durability = {
                    enable = true,
                    onlydamaged = true,
                    fontName = E.db.general.font,
                    fontSize = 12,
                    fontFlag = "OUTLINE"
                },
                transmog = {
                    enable = true
                },
                gradient = {
                    enable = true,
                    colorStyle = "RARITY",
                    color = {r = 1, g = 1, b = 0},
                    alpha = 1
                }
            },
            stats = {
                IlvlFull = true,
                IlvlColor = false,
                AverageColor = {r = 0, g = 1, b = .59},
                OnlyPrimary = true,
                ElvUISkins = true,
                statFonts = {
                    fontName = E.db.general.font,
                    fontSize = 12,
                    fontFlag = "OUTLINE"
                },
                catFonts = {
                    fontName = E.db.general.font,
                    fontSize = 12,
                    fontFlag = "OUTLINE"
                },
                List = {
                    HEALTH = false,
                    POWER = false,
                    ALTERNATEMANA = false,
                    ATTACK_DAMAGE = false,
                    ATTACK_AP = false,
                    ATTACK_ATTACKSPEED = false,
                    SPELLPOWER = false,
                    ENERGY_REGEN = false,
                    RUNE_REGEN = false,
                    FOCUS_REGEN = false,
                    MOVESPEED = false,
                    GCD = false
                }
            },
            inspect = {
                enable = true,
                ShowCharacterItemSheet = true,
                ShowOwnFrameWhenInspecting = true,
                ShowInspectAngularBorder = true,
                ShowPluginGreenState = true,
                AltEquipment = true,
                PaperDollEquipment = false,
                EnablePartyItemLevel = {
                    enable = true,
                    SendPartyItemLevelToSelf = true,
                    SendPartyItemLevelToParty = false
                }
            }
        }
    },
    media = {
        general = {
            shareMedia = true
        },
        zoneTexts = {
            enable = true,
            zoneText = {
                fontName = E.db.general.font,
                fontSize = 32,
                fontFlag = "OUTLINE",
                width = 512
            },
            subzoneText = {
                fontName = E.db.general.font,
                fontSize = 25,
                fontFlag = "OUTLINE",
                width = 512
            },
            pvpstatusText = {
                fontName = E.db.general.font,
                fontSize = 22,
                fontFlag = "OUTLINE",
                width = 512
            }
        },
        miscTexts = {
            mailText = {
                enable = true,
                fontName = E.db.general.font,
                fontSize = 12,
                fontFlag = "NONE"
            },
            editboxText = {
                enable = true,
                fontName = E.db.general.font,
                fontSize = 12,
                fontFlag = "NONE"
            },
            questGossip = {
                enable = true,
                fontName = E.db.general.font,
                fontSize = 12,
                fontFlag = "NONE"
            },
            questFontSuperHuge = {
                enable = true,
                fontName = E.db.general.font,
                fontSize = 12,
                fontFlag = "NONE"
            },
            -- questTrackerTitle = {
            --     enable = true,
            --     fontClassColor = false,
            --     fontColor = {r = 1, g = 0.82, b = 0, a = 1},
            --     fontName = E.db.general.font,
            --     fontSize = 12,
            --     fontFlag = "NONE",
            -- },
            questTrackerInfo = {
                enable = true,
                fontName = E.db.general.font,
                fontSize = 12,
                fontFlag = "NONE"
            }
        }
    },
    skins = {
        enable = true,
        style = "style1",
        visualEffects = true,
        shadowOverlay = {
            enable = true,
            shadowAlpha = 50
        }
    }
}
