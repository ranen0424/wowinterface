local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local function configTable()
    E.Options.args.lui.args.modules.args.cvar = {
        order = 14,
        type = "group",
        childGroups = "tab",
        name = L["cvar"],
        get = function(info)
            return E.db.lui.modules.cvar[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.cvar[info[#info]] = value
        end,
        args = {
            name = {
				order = 0,
				type = "header",
				name = LUI:cOption(L["cvar"]),
            },
            autoCVars = {
                order = 1,
                type = "execute",
                name = L["autoCVars"],
                func = function()
                    E:GetModule("LUICVar"):LoadAutoCVar()
                end,
            },
            general = {
                order = 3,
                type = "group",
                name = L["general"],
                get = function(info)
                    return E.db.lui.modules.cvar.general[info[#info]]
                end,
                args = {
                    alwaysCompareItems = {
                        order = 1,
                        type = "toggle",
                        name = L["alwaysCompareItems"],
                        desc = L["alwaysCompareItems_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.general[info[#info]] = value
                            SetCVar("alwaysCompareItems", (value == true and 1 or 0))
                        end,
                    },
                    breakUpLargeNumbers = {
                        order = 2,
                        type = "toggle",
                        name = L["breakUpLargeNumbers"],
                        desc = L["breakUpLargeNumbers_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.general[info[#info]] = value
                            SetCVar("breakUpLargeNumbers", (value == true and 1 or 0))
                        end,
                    },
                    scriptErrors = {
                        order = 3,
                        type = "toggle",
                        name = L["scriptErrors"],
                        desc = L["scriptErrors_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.general[info[#info]] = value
                            SetCVar("scriptErrors", (value == true and 1 or 0))
                        end,
                    },
                    enableWoWMouse = {
                        order = 4,
                        type = "toggle",
                        name = L["enableWoWMouse"],
                        desc = L["enableWoWMouse_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.general[info[#info]] = value
                            SetCVar("enableWoWMouse", (value == true and 1 or 0))
                        end,
                    },
                    rawMouseEnable = {
                        order = 5,
                        type = "toggle",
                        name = L["rawMouseEnable"],
                        desc = L["rawMouseEnable_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.general[info[#info]] = value
                            SetCVar("rawMouseEnable", (value == true and 1 or 0))
                        end,
                    },
                    trackQuestSorting = {
                        order = 6,
                        type = "select",
                        name = L["trackQuestSorting"],
                        desc = L["trackQuestSorting_DESC"],
                        values = {
                            ["top"] = L["TOP"],
                            ["proximity"] = L["proximity"],
                        },
                        set = function(info, value)
                            E.db.lui.modules.cvar.general[info[#info]] = value
                            SetCVar("trackQuestSorting", value)
                        end,
                    },
                }
            },
            interface = {
                order = 4,
                type = "group",
                name = L["interface"],
                get = function(info)
                    return E.db.lui.modules.cvar.interface[info[#info]]
                end,
                args = {
                    cameraDistanceMaxZoomFactor = {
                        order = 1,
                        type = "range",
                        min = 1.0, max = 2.6, step = 0.1,
                        name = L["cameraDistanceMaxZoomFactor"],
                        desc = L["cameraDistanceMaxZoomFactor_DESC"],
                        set = function(info, value)
                            SetCVar("cameraDistanceMaxZoomFactor", value)
                            E.db.lui.modules.cvar.interface[info[#info]] = value
                        end,
                    },
                    weatherDensity = {
                        order = 2,
                        type = "range",
                        min = 0, max = 3, step = 1,
                        name = L["weatherDensity"],
                        desc = L["weatherDensity_DESC"],
                        set = function(info, value)
                            SetCVar("weatherDensity", value)
                            E.db.lui.modules.cvar.interface[info[#info]] = value
                        end,
                    },
                    ffxGlow = {
                        order = 3,
                        type = "toggle",
                        name = L["ffxGlow"],
                        desc = L["ffxGlow_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.interface[info[#info]] = value
                            SetCVar("ffxGlow", (value == true and 1 or 0))
                        end,
                    },
                    xpBarText = {
                        order = 4,
                        type = "toggle",
                        name = L["xpBarText"],
                        desc = L["xpBarText_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.interface[info[#info]] = value
                            SetCVar("xpBarText", (value == true and 1 or 0))
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                    },
                }
            },
            chat = {
                order = 5,
                type = "group",
                name = L["chat"],
                get = function(info)
                    return E.db.lui.modules.cvar.chat[info[#info]]
                end,
                args = {
                    profanityFilter = {
                        order = 1,
                        type = "toggle",
                        name = L["profanityFilter"],
                        desc = L["profanityFilter_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.chat[info[#info]] = value
                            SetCVar("profanityFilter", (value == true and 1 or 0))
                        end,
                    },
                    removeChatDelay = {
                        order = 2,
                        type = "toggle",
                        name = L["removeChatDelay"],
                        desc = L["removeChatDelay_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.chat[info[#info]] = value
                            SetCVar("removeChatDelay", (value == true and 1 or 0))
                        end,
                    },
                    chatMouseScroll = {
                        order = 3,
                        type = "toggle",
                        name = L["chatMouseScroll"],
                        desc = L["chatMouseScroll_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.chat[info[#info]] = value
                            SetCVar("chatMouseScroll", (value == true and 1 or 0))
                        end,
                    },
                }
            },
            combat = {
                order = 6,
                type = "group",
                name = L["combat"],
                get = function(info)
                    return E.db.lui.modules.cvar.combat[info[#info]]
                end,
                args = {
                    secureAbilityToggle = {
                        order = 1,
                        type = "toggle",
                        name = L["secureAbilityToggle"],
                        desc = L["secureAbilityToggle_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.combat[info[#info]] = value
                            SetCVar("secureAbilityToggle", (value == true and 1 or 0))
                        end,
                    },
                    stopAutoAttackOnTargetChange = {
                        order = 2,
                        type = "toggle",
                        name = L["stopAutoAttackOnTargetChange"],
                        desc = L["stopAutoAttackOnTargetChange_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.combat[info[#info]] = value
                            SetCVar("stopAutoAttackOnTargetChange", (value == true and 1 or 0))
                        end,
                    },
                    assistAttack = {
                        order = 3,
                        type = "toggle",
                        name = L["assistAttack"],
                        desc = L["assistAttack_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.combat[info[#info]] = value
                            SetCVar("assistAttack", (value == true and 1 or 0))
                        end,
                    },
                    SpellQueueWindow = {
                        order = 4,
                        type = "range",
                        min = 0, max = 400, step = 1,
                        name = L["SpellQueueWindow"],
                        desc = L["SpellQueueWindow_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.combat[info[#info]] = value
                            SetCVar("SpellQueueWindow", value)
                        end,
                    },
                }
            },
            combatText = {
                order = 7,
                type = "group",
                name = L["combatText"],
                get = function(info)
                    return E.db.lui.modules.cvar.combatText[info[#info]]
                end,
                args = {
                    worldTextScale = {
                        order = 1,
                        type = "range",
                        min = 0.5, max = 2.5, step = 0.1,
                        name = L["WorldTextScale"],
                        desc = L["WorldTextScale_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.combatText[info[#info]] = value
                            SetCVar("WorldTextScale", value)
                        end,
                    },
                    targetCombatText = {
                        order = 2,
                        type = "group",
                        guiInline = true,
                        name = L["targetCombatText"],
                        get = function(info)
                            return E.db.lui.modules.cvar.combatText.targetCombatText[info[#info]]
                        end,
                        args = {
                            floatingCombatTextCombatDamage = {
                                order = 1,
                                type = "toggle",
                                name = L["floatingCombatTextCombatDamage"],
                                desc = L["floatingCombatTextCombatDamage_DESC"],
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.targetCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextCombatDamage", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextCombatLogPeriodicSpells = {
                                order = 2,
                                type = "toggle",
                                name = L["floatingCombatTextCombatLogPeriodicSpells"],
                                desc = L["floatingCombatTextCombatLogPeriodicSpells_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.targetCombatText["floatingCombatTextCombatDamage"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.targetCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextCombatLogPeriodicSpells", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextPetMeleeDamage = {
                                order = 3,
                                type = "toggle",
                                name = L["floatingCombatTextPetMeleeDamage"],
                                desc = L["floatingCombatTextPetMeleeDamage_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.targetCombatText["floatingCombatTextCombatDamage"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.targetCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextPetMeleeDamage", (value == true and 1 or 0))
                                    SetCVar("floatingCombatTextPetSpellDamage", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextCombatDamageDirectionalScale = {
                                order = 4,
                                type = "range",
                                min = 1, max = 5, step = 1,
                                name = L["floatingCombatTextCombatDamageDirectionalScale"],
                                desc = L["floatingCombatTextCombatDamageDirectionalScale_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.targetCombatText["floatingCombatTextCombatDamage"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.targetCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextCombatDamageDirectionalScale", value)
                                end,
                            },
                            floatingCombatTextCombatHealing = {
                                order = 5,
                                type = "toggle",
                                name = L["floatingCombatTextCombatHealing"],
                                desc = L["floatingCombatTextCombatHealing_DESC"],
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.targetCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextCombatHealing", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextCombatHealingAbsorbTarget = {
                                order = 6,
                                type = "toggle",
                                name = L["floatingCombatTextCombatHealingAbsorbTarget"],
                                desc = L["floatingCombatTextCombatHealingAbsorbTarget_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.targetCombatText["floatingCombatTextCombatHealing"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.targetCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextCombatHealingAbsorbTarget", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextSpellMechanics = {
                                order = 7,
                                type = "toggle",
                                name = L["floatingCombatTextSpellMechanics"],
                                desc = L["floatingCombatTextSpellMechanics_DESC"],
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.targetCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextSpellMechanics", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextSpellMechanicsOther = {
                                order = 8,
                                type = "toggle",
                                name = L["floatingCombatTextSpellMechanicsOther"],
                                desc = L["floatingCombatTextSpellMechanicsOther_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.targetCombatText["floatingCombatTextSpellMechanics"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.targetCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextSpellMechanicsOther", (value == true and 1 or 0))
                                end,
                            },
                        }
                    },
                    playerCombatText = {
                        order = 3,
                        type = "group",
                        guiInline = true,
                        name = L["playerCombatText"],
                        get = function(info)
                            return E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                        end,
                        args = {
                            enableFloatingCombatText = {
                                order = 1,
                                type = "toggle",
                                name = L["enableFloatingCombatText"],
                                desc = L["enableFloatingCombatText_DESC"],
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("enableFloatingCombatText", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextFloatMode = {
                                order = 2,
                                type = "select",
                                name = L["floatingCombatTextFloatMode"],
                                desc = L["floatingCombatTextFloatMode_DESC"],
                                values = {
                                    [1] = L["FloatModeUp"],
                                    [2] = L["FloatModeDown"],
                                    [3] = L["FloatModeARC"],
                                },
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextFloatMode", value)
                                end,
                            },
                            floatingCombatTextDodgeParryMiss = {
                                order = 3,
                                type = "toggle",
                                name = L["floatingCombatTextDodgeParryMiss"],
                                desc = L["floatingCombatTextDodgeParryMiss_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextDodgeParryMiss", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextCombatHealingAbsorbSelf = {
                                order = 4,
                                type = "toggle",
                                name = L["floatingCombatTextCombatHealingAbsorbSelf"],
                                desc = L["floatingCombatTextCombatHealingAbsorbSelf_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextCombatHealingAbsorbSelf", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextDamageReduction = {
                                order = 5,
                                type = "toggle",
                                name = L["floatingCombatTextDamageReduction"],
                                desc = L["floatingCombatTextDamageReduction_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextDamageReduction", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextLowManaHealth = {
                                order = 6,
                                type = "toggle",
                                name = L["floatingCombatTextLowManaHealth"],
                                desc = L["floatingCombatTextLowManaHealth_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextLowManaHealth", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextRepChanges = {
                                order = 7,
                                type = "toggle",
                                name = L["floatingCombatTextRepChanges"],
                                desc = L["floatingCombatTextRepChanges_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextRepChanges", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextEnergyGains = {
                                order = 8,
                                type = "toggle",
                                name = L["floatingCombatTextEnergyGains"],
                                desc = L["floatingCombatTextEnergyGains_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextEnergyGains", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextComboPoints = {
                                order = 9,
                                type = "toggle",
                                name = L["floatingCombatTextComboPoints"],
                                desc = L["floatingCombatTextComboPoints_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextComboPoints", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextReactives = {
                                order = 10,
                                type = "toggle",
                                name = L["floatingCombatTextReactives"],
                                desc = L["floatingCombatTextReactives_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextReactives", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextPeriodicEnergyGains = {
                                order = 11,
                                type = "toggle",
                                name = L["floatingCombatTextPeriodicEnergyGains"],
                                desc = L["floatingCombatTextPeriodicEnergyGains_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextPeriodicEnergyGains", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextFriendlyHealers = {
                                order = 12,
                                type = "toggle",
                                name = L["floatingCombatTextFriendlyHealers"],
                                desc = L["floatingCombatTextFriendlyHealers_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextFriendlyHealers", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextHonorGains = {
                                order = 13,
                                type = "toggle",
                                name = L["floatingCombatTextHonorGains"],
                                desc = L["floatingCombatTextHonorGains_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextHonorGains", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextCombatState = {
                                order = 14,
                                type = "toggle",
                                name = L["floatingCombatTextCombatState"],
                                desc = L["floatingCombatTextCombatState_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextCombatState", (value == true and 1 or 0))
                                end,
                            },
                            floatingCombatTextAuras = {
                                order = 15,
                                type = "toggle",
                                name = L["floatingCombatTextAuras"],
                                desc = L["floatingCombatTextAuras_DESC"],
                                disabled = function(info)
                                    return not E.db.lui.modules.cvar.combatText.playerCombatText["enableFloatingCombatText"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.cvar.combatText.playerCombatText[info[#info]] = value
                                    SetCVar("floatingCombatTextAuras", (value == true and 1 or 0))
                                end,
                            },
                        },
                    },
                }
            },
            unitframes = {
                order = 8,
                type = "group",
                name = L["unitframes"],
                get = function(info)
                    return E.db.lui.modules.cvar.unitframes[info[#info]]
                end,
                args = {
                    noBuffDebuffFilterOnTarget = {
                        order = 1,
                        type = "toggle",
                        name = L["noBuffDebuffFilterOnTarget"],
                        desc = L["noBuffDebuffFilterOnTarget_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.unitframes[info[#info]] = value
                            SetCVar("noBuffDebuffFilterOnTarget", (value == true and 1 or 0))
                        end,
                    },
                    threatShowNumeric = {
                        order = 2,
                        type = "toggle",
                        name = L["threatShowNumeric"],
                        desc = L["threatShowNumeric_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.unitframes[info[#info]] = value
                            SetCVar("threatShowNumeric", (value == true and 1 or 0))
                        end,
                    },
                },
            },
            nameplates = {
                order = 9,
                type = "group",
                name = L["nameplates"],
                get = function(info)
                    return E.db.lui.modules.cvar.nameplates[info[#info]]
                end,
                args = {
                    nameplatePersonalShowAlways = {
                        order = 1,
                        type = "toggle",
                        name = L["nameplatePersonalShowAlways"],
                        desc = L["nameplatePersonalShowAlways_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.nameplates[info[#info]] = value
                            SetCVar("nameplatePersonalShowAlways", (value == true and 1 or 0))
                        end,
                    },
                    nameplatePersonalShowWithTarget = {
                        order = 2,
                        type = "toggle",
                        name = L["nameplatePersonalShowWithTarget"],
                        desc = L["nameplatePersonalShowWithTarget_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.nameplates[info[#info]] = value
                            SetCVar("nameplatePersonalShowWithTarget", (value == true and 1 or 0))
                        end,
                    },
                    nameplatePersonalShowInCombat = {
                        order = 3,
                        type = "toggle",
                        name = L["nameplatePersonalShowInCombat"],
                        desc = L["nameplatePersonalShowInCombat_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.nameplates[info[#info]] = value
                            SetCVar("nameplatePersonalShowInCombat", (value == true and 1 or 0))
                        end,
                    },
                    nameplateMaxDistance = {
                        order = 4,
                        type = "range",
                        min = 10, max = 100, step = 1,
                        name = L["nameplateMaxDistance"],
                        desc = L["nameplateMaxDistance_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.nameplates[info[#info]] = value
                            SetCVar("nameplateMaxDistance", value)
                        end,
                    },
                    nameplateGlobalScale = {
                        order = 5,
                        type = "range",
                        min = 0.5, max = 2, step = 0.1,
                        name = L["nameplateGlobalScale"],
                        desc = L["nameplateGlobalScale_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.nameplates[info[#info]] = value
                            SetCVar("nameplateGlobalScale", value)
                        end,
                    },
                    nameplateMinScale = {
                        order = 6,
                        type = "range",
                        min = 0.3, max = 2, step = 0.1,
                        name = L["nameplateMinScale"],
                        desc = L["nameplateMinScale_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.nameplates[info[#info]] = value
                            SetCVar("nameplateMinScale", value)
                        end,
                    },
                    ShowClassColorInFriendlyNameplate = {
                        order = 7,
                        type = "toggle",
                        name = L["ShowClassColorInFriendlyNameplate"],
                        desc = L["ShowClassColorInFriendlyNameplate_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.nameplates[info[#info]] = value
                            SetCVar("ShowClassColorInFriendlyNameplate", (value == true and 1 or 0))
                        end,
                    },
                    nameplateOtherTopInset = {
                        order = 8,
                        type = "range",
                        min = 0, max = 0.1, step = 0.01,
                        name = L["nameplateOtherTopInset"],
                        desc = L["nameplateOtherTopInset_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.nameplates[info[#info]] = value
                            if value == 0 then
                                value = -1
                            end
                            SetCVar("nameplateOtherTopInset", value)
                            SetCVar("nameplateLargeTopInset", value)
                        end,
                    },
                    nameplateOtherAtBase = {
                        order = 9,
                        type = "select",
                        name = L["nameplateOtherAtBase"],
                        desc = L["nameplateOtherAtBase_DESC"],
                        values = {
                            [0] = L["UP"],
                            [2] = L["DOWN"],
                        },
                        set = function(info, value)
                            E.db.lui.modules.cvar.nameplates[info[#info]] = value
                            SetCVar("nameplateOtherAtBase", value)
                        end,
                    },
                    nameplateOverlapV = {
                        order = 10,
                        type = "range",
                        min = 0.2, max = 1.6, step = 0.1,
                        name = L["nameplateOverlapV"],
                        desc = L["nameplateOverlapV_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.nameplates[info[#info]] = value
                            SetCVar("nameplateOverlapV", value)
                            SetCVar("nameplateOverlapV", value)
                        end,
                    },
                    nameplateMotionSpeed = {
                        order = 11,
                        type = "range",
                        min = 0, max = 1.000, step = 0.025,
                        name = L["nameplateMotionSpeed"],
                        desc = L["nameplateMotionSpeed_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.nameplates[info[#info]] = value
                            SetCVar("nameplateMotionSpeed", value)
                            SetCVar("nameplateMotionSpeed", value)
                        end,
                    },
                    nameplateOccludedAlphaMult = {
                        order = 12,
                        type = "range",
                        min = 0, max = 1.000, step = 0.1,
                        name = L["nameplateOccludedAlphaMult"],
                        desc = L["nameplateOccludedAlphaMult_DESC"],
                        set = function(info, value)
                            E.db.lui.modules.cvar.nameplates[info[#info]] = value
                            SetCVar("nameplateOccludedAlphaMult", value)
                            SetCVar("nameplateOccludedAlphaMult", value)
                        end,
                    },
                }
            }
        }
    }
end
T.table_insert(LUI.Configs, configTable)
