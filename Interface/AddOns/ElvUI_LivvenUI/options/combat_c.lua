local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local texPathAn = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\raidmarkers\anime\]]
local texPathAu = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\raidmarkers\aurora\]]
local texPathM = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\raidmarkers\myth\]]
local texPathC = [[Interface\TargetingFrame\]]
local texPathX = [[Interface\BUTTONS\]]

local function configTable()
    E.Options.args.lui.args.modules.args.combat = {
        order = 7,
        type = "group",
        childGroups = "tab",
        name = L["combat"],
        get = function(info)
            return E.db.lui.modules.combat[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.combat[info[#info]] = value
            E:StaticPopup_Show("PRIVATE_RL")
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["combat"]),
            },
            combatNotification = {
                order = 1,
                type = "group",
                name = L["combatNotification"],
                get = function(info)
                    return E.db.lui.modules.combat.combatNotification[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.combat.combatNotification[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    spacer1 = {
                        order = 2,
                        type = "description",
                        name = "",
                        hidden = function(info)
                            return not E.db.lui.modules.combat.combatNotification["enable"]
                        end,
                    },
                    combatNotiEntering = {
                        order = 3,
                        type = "input",
                        name = L["combatNotiEntering"],
                        hidden = function(info)
                            return not E.db.lui.modules.combat.combatNotification["enable"]
                        end,
                    },
                    combatNotiLeaving = {
                        order = 4,
                        type = "input",
                        name = L["combatNotiLeaving"],
                        hidden = function(info)
                            return not E.db.lui.modules.combat.combatNotification["enable"]
                        end,
                    },
                    spacer2 = {
                        order = 5,
                        type = "description",
                        name = "",
                        hidden = function(info)
                            return not E.db.lui.modules.combat.combatNotification["enable"]
                        end,
                    },
                    combatNotiFont = {
                        order = 6,
                        type = "select",
                        dialogControl = "LSM30_Font",
                        values = LUI.fontName,
                        name = L["combatNotiFont"],
                        hidden = function(info)
                            return not E.db.lui.modules.combat.combatNotification["enable"]
                        end,
                    },
                    combatNotiSize = {
                        order = 7,
                        type = "range",
                        min = 1, max = 100, step = 1,
                        name = L["combatNotiSize"],
                        hidden = function(info)
                            return not E.db.lui.modules.combat.combatNotification["enable"]
                        end,
                    },
                    combatNotiFlag = {
                        order = 8,
                        type = "select",
                        values = LUI.fontFlagValues,
                        name = L["combatNotiFlag"],
                        hidden = function(info)
                            return not E.db.lui.modules.combat.combatNotification["enable"]
                        end,
                    },
                    spacer3 = {
                        order = 9,
                        type = "description",
                        name = "",
                        hidden = function(info)
                            return not E.db.lui.modules.combat.combatNotification["enable"]
                        end,
                    },
                    rangePoiX = {
                        order = 10,
                        type = "range",
                        min = -1000, max = 1000, step = 1,
                        name = L["rangePoiX"],
                        hidden = function(info)
                            return not E.db.lui.modules.combat.combatNotification["enable"]
                        end,
                    },
                    rangePoiY = {
                        order = 11,
                        type = "range",
                        min = -500, max = 500, step = 1,
                        name = L["rangePoiY"],
                        hidden = function(info)
                            return not E.db.lui.modules.combat.combatNotification["enable"]
                        end,
                    }
                }
            },
            combatShortcut = {
                order = 2,
                type = "group",
                name = L["combatShortcut"],
                get = function(info)
                    return E.db.lui.modules.combat.combatShortcut[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.combat.combatShortcut[info[#info]] = value
					E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    setFocusKey = {
                        order = 10,
                        type = "group",
                        guiInline = true,
                        name = L["setFocusKey"],
						get = function(info)
							return E.db.lui.modules.combat.combatShortcut.setFocusKey[info[#info]]
						end,
						set = function(info, value)
							E.db.lui.modules.combat.combatShortcut.setFocusKey[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            setFocusButton1 = {
                                order = 1,
                                type = "select",
                                name = L["setFocusButton"] .. "1",
                                values = {
                                    ["shift"] = "Shift",
                                    ["ctrl"] = "Ctrl",
                                    ["alt"] = "Alt",
                                    ["none"] = NONE,
                                }
                            },
                            setFocusButton2 = {
                                order = 2,
                                type = "select",
                                name = L["setFocusButton"] .. "2",
                                values = {
                                    ["1"] = L["MOUSEBUTTON1"],
                                    ["2"] = L["MOUSEBUTTON2"],
                                    ["3"] = L["MOUSEBUTTON3"],
                                    ["4"] = L["MOUSEBUTTON4"],
                                },
								disabled = function(info)
									return E.db.lui.modules.combat.combatShortcut.setFocusKey["setFocusButton1"] == "none"
								end,
                            }
                        }
                    }
                }
            },
            raidMarkers = {
                order = 3,
                type = "group",
                name = L["raidMarkers"],
                get = function(info)
                    return E.db.lui.modules.combat.raidMarkers[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.combat.raidMarkers[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    marksheader = {
                        order = 1,
                        type = "group",
                        name = L["marksheader"],
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.enable = value
                                    E:GetModule("LuiRaidMarkers"):Visibility()
                                end,
                            },
                            reset = {
                                order = 2,
                                type = "execute",
                                name = L["Restore Defaults"],
                                disabled = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                func = function()
                                    LUI:Reset("marks")
                                    E:GetModule("LuiRaidMarkers"):ForUpdateAll()
                                end,
                            },
                            space1 = {
                                order = 3,
                                type = "description",
                                name = "",
                            },
                            backdrop = {
                                order = 4,
                                type = "toggle",
                                name = L["backdrop"],
                                disabled = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.backdrop = value
                                    E:GetModule("LuiRaidMarkers"):Backdrop()
                                end,
                            },
                            buttonSize = {
                                order = 5,
                                type = "range",
                                name = L["buttonSize"],
                                min = 16, max = 40, step = 1,
                                disabled = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.buttonSize = value
                                    E:GetModule("LuiRaidMarkers"):UpdateBar()
                                end,
                            },
                            spacing = {
                                order = 6,
                                type = "range",
                                name = L["spacing"],
                                min = -4, max = 10, step = 1,
                                disabled = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.spacing = value
                                    E:GetModule("LuiRaidMarkers"):UpdateBar()
                                end,
                            },
                            orientation = {
                                order = 7,
                                type = "select",
                                name = L["orientation"],
                                disabled = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.orientation = value
                                    E:GetModule("LuiRaidMarkers"):UpdateBar()
                                end,
                                values = {
                                    ["HORIZONTAL"] = L["Horizontal"],
                                    ["VERTICAL"] = L["Vertical"],
                                },
                            },
                            reverse = {
                                order = 8,
                                type = "toggle",
                                name = L["reverse"],
                                disabled = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.reverse = value
                                    E:GetModule("LuiRaidMarkers"):UpdateBar()
                                end,
                            },
                            modifier = {
                                order = 9,
                                type = "select",
                                name = L["ModifierKey"],
                                desc = L["Set the modifier key for placing world markers."],
                                disabled = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.modifier = value
                                    E:GetModule("LuiRaidMarkers"):UpdateWorldMarkersAndTooltips()
                                end,
                                values = {
                                    ["shift-"] = SHIFT_KEY,
                                    ["ctrl-"] = CTRL_KEY,
                                    ["alt-"] = ALT_KEY,
                                },
                            },
                            mouseover = {
                                order = 10,
                                type = "toggle",
                                name = L["barMouseOver"],
                                disabled = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.mouseover = value
                                    E:GetModule("LuiRaidMarkers"):UpdateMouseover()
                                end,
                            },
                            notooltip = {
                                order = 11,
                                type = "toggle",
                                name = L["notooltip"],
                                disabled = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.notooltip = value
                                end,
                            },
                            raidicons = {
                                order = 12,
                                type = "select",
                                name = L["raidicons"],
                                get = function(info)
                                    return E.db.lui.modules.combat.raidMarkers.raidicons
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.raidicons = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                                values = {
                                    ["Classic"] = L["Classic"]..": ".."|T"..texPathC.."UI-RaidTargetingIcon_8:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPathC.."UI-RaidTargetingIcon_7:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPathC.."UI-RaidTargetingIcon_6:15:15:0:0:64:64:2:56:2:56|t ",
                                    ["Anime"] = L["Anime"]..": ".."|T"..texPathAn.."UI-RaidTargetingIcon_8:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPathAn.."UI-RaidTargetingIcon_7:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPathAn.."UI-RaidTargetingIcon_6:15:15:0:0:64:64:2:56:2:56|t ",
                                    ["Aurora"] = L["Aurora"]..": ".."|T"..texPathAu.."UI-RaidTargetingIcon_8:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPathAu.."UI-RaidTargetingIcon_7:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPathAu.."UI-RaidTargetingIcon_6:15:15:0:0:64:64:2:56:2:56|t ",
                                    ["Myth"] = L["Myth"]..": ".."|T"..texPathM.."UI-RaidTargetingIcon_8:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPathM.."UI-RaidTargetingIcon_7:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPathM.."UI-RaidTargetingIcon_6:15:15:0:0:64:64:2:56:2:56|t ",
                                },
                            },
                            visibility = {
                                order = 13,
                                type = "select",
                                name = L["visibility"],
                                disabled = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.visibility = value
                                    E:GetModule("LuiRaidMarkers"):Visibility()
                                end,
                                values = {
                                    ["DEFAULT"] = DEFAULT,
                                    ["INPARTY"] = AGGRO_WARNING_IN_PARTY,
                                    ["ALWAYS"] = L["Always Display"],
                                    ["CUSTOM"] = CUSTOM,
                                },
                            },
                            customVisibility = {
                                order = 14,
                                type = "input",
                                width = "full",
                                name = L["customVisibility"],
                                disabled = function()
                                    return E.db.lui.modules.combat.raidMarkers.visibility ~= "CUSTOM" or not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                hidden = function()
                                    return E.db.lui.modules.combat.raidMarkers.visibility ~= "CUSTOM" or not E.db.lui.modules.combat.raidMarkers.enable
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.customVisibility = value
                                    E:GetModule("LuiRaidMarkers"):Visibility()
                                end,
                            },
                        },
                    },
                    raidMarkingKey = {
                        order = 2,
                        type = "group",
                        name = L["raidMarkingKey"],
                        get = function(info)
                            return E.db.lui.modules.combat.raidMarkers.raidMarkingKey[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.combat.raidMarkers.raidMarkingKey[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            raidMarkingButton1 = {
                                order = 1,
                                type = "select",
                                name = L["raidMarkingButton"] .. "1",
                                values = {
                                    ["ctrl"] = "Ctrl",
                                    ["alt"] = "Alt",
                                    ["shift"] = "Shift",
                                    ["none"] = NONE,
                                }
                            },
                            raidMarkingButton2 = {
                                order = 2,
                                type = "select",
                                name = L["raidMarkingButton"] .. "2",
                                disabled = function(info)
                                    return E.db.lui.modules.combat.raidMarkers.raidMarkingKey["raidMarkingButton1"] == "none"
                                end,
                                values = {
                                    ["LeftButton"] = L["MOUSEBUTTON1"],
                                    ["RightButton"] = L["MOUSEBUTTON2"],
                                }
                            }
                        }
                    },
                    autoMarkers = {
                        order = 3,
                        type = "group",
                        name = L["autoMarkers"],
                        get = function(info)
                            return E.db.lui.modules.combat.raidMarkers.autoMarkers[ info[#info] ]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.combat.raidMarkers.autoMarkers[ info[#info] ] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                            },
                            autoMarkParty = {
                                order = 2,
                                type = "group",
                                guiInline = true,
                                name = L["autoMarkParty"],
                                disabled = function()
                                    return not E.db.lui.modules.combat.raidMarkers.autoMarkers.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.combat.raidMarkers.autoMarkers.enable
                                end,
                                get = function(info)
                                    return E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty[ info[#info] ]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty[ info[#info] ] = value
                                    E:GetModule("LuiAutoMarkers"):AutoMarkParty()
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                                args = {
                                    enable = {
                                        order = 1,
                                        type = "toggle",
                                        name = L["Enable"],
                                    },
                                    tankMark = {
                                        order = 3,
                                        type = "select",
                                        name = L["tankMark"],
                                        disabled = function()
                                            return not E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.enable
                                        end,
                                        hidden = function()
                                            return not E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.enable
                                        end,
                                        values = function()
                                            local texPath = E.db.lui.modules.combat.raidMarkers.raidicons
                                            local texPathTemp
                                            if texPath == "Classic" then texPathTemp = texPathC
                                            elseif texPath == "Anime" then texPathTemp = texPathAn
                                            elseif texPath == "Aurora" then texPathTemp = texPathAu
                                            elseif texPath == "Myth" then texPathTemp = texPathM
                                            end
                                            local markIcons = {
                                                [0] = "|T"..texPathX.."UI-GroupLoot-Pass-Up:15:15:0:0:64:64:2:56:2:56|t",
                                                [1] = "|T"..texPathTemp.."UI-RaidTargetingIcon_1:15:15:0:0:64:64:2:56:2:56|t",
                                                [2] = "|T"..texPathTemp.."UI-RaidTargetingIcon_2:15:15:0:0:64:64:2:56:2:56|t",
                                                [3] = "|T"..texPathTemp.."UI-RaidTargetingIcon_3:15:15:0:0:64:64:2:56:2:56|t",
                                                [4] = "|T"..texPathTemp.."UI-RaidTargetingIcon_4:15:15:0:0:64:64:2:56:2:56|t",
                                                [5] = "|T"..texPathTemp.."UI-RaidTargetingIcon_5:15:15:0:0:64:64:2:56:2:56|t",
                                                [6] = "|T"..texPathTemp.."UI-RaidTargetingIcon_6:15:15:0:0:64:64:2:56:2:56|t",
                                                [7] = "|T"..texPathTemp.."UI-RaidTargetingIcon_7:15:15:0:0:64:64:2:56:2:56|t",
                                                [8] = "|T"..texPathTemp.."UI-RaidTargetingIcon_8:15:15:0:0:64:64:2:56:2:56|t",
                                            }
                                            return markIcons
                                        end,
                                        set = function(info, value)
                                            if value ~= 0 and value == E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.healerMark then
                                                LUI:Print(L["automarkError"], "error")
                                                return
                                            end
                                            E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty[ info[#info] ] = value
                                            E:GetModule("LuiAutoMarkers"):AutoMarkParty()
                                        end,
                                    },
                                    healerMark = {
                                        order = 4,
                                        type = "select",
                                        name = L["healerMark"],
                                        disabled = function()
                                            return not E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.enable
                                        end,
                                        hidden = function()
                                            return not E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.enable
                                        end,
                                        values = function()
                                            local texPath = E.db.lui.modules.combat.raidMarkers.raidicons
                                            local texPathTemp
                                            if texPath == "Classic" then texPathTemp = texPathC
                                            elseif texPath == "Anime" then texPathTemp = texPathAn
                                            elseif texPath == "Aurora" then texPathTemp = texPathAu
                                            elseif texPath == "Myth" then texPathTemp = texPathM
                                            end
                                            local markIcons = {
                                                [0] = "|T"..texPathX.."UI-GroupLoot-Pass-Up:15:15:0:0:64:64:2:56:2:56|t",
                                                [1] = "|T"..texPathTemp.."UI-RaidTargetingIcon_1:15:15:0:0:64:64:2:56:2:56|t",
                                                [2] = "|T"..texPathTemp.."UI-RaidTargetingIcon_2:15:15:0:0:64:64:2:56:2:56|t",
                                                [3] = "|T"..texPathTemp.."UI-RaidTargetingIcon_3:15:15:0:0:64:64:2:56:2:56|t",
                                                [4] = "|T"..texPathTemp.."UI-RaidTargetingIcon_4:15:15:0:0:64:64:2:56:2:56|t",
                                                [5] = "|T"..texPathTemp.."UI-RaidTargetingIcon_5:15:15:0:0:64:64:2:56:2:56|t",
                                                [6] = "|T"..texPathTemp.."UI-RaidTargetingIcon_6:15:15:0:0:64:64:2:56:2:56|t",
                                                [7] = "|T"..texPathTemp.."UI-RaidTargetingIcon_7:15:15:0:0:64:64:2:56:2:56|t",
                                                [8] = "|T"..texPathTemp.."UI-RaidTargetingIcon_8:15:15:0:0:64:64:2:56:2:56|t",
                                            }
                                            return markIcons
                                        end,
                                        set = function(info, value)
                                            if value ~= 0 and value == E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty.tankMark then
                                                LUI:Print(L["automarkError"], "error")
                                                return
                                            end
                                            E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkParty[ info[#info] ] = value
                                            E:GetModule("LuiAutoMarkers"):AutoMarkParty()
                                        end,
                                    },
                                }
                            },
                            autoMarkUnit = {
                                order = 3,
                                type = "group",
                                guiInline = true,
                                name = L["autoMarkUnit"],
                                disabled = function()
                                    return not E.db.lui.modules.combat.raidMarkers.autoMarkers.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.combat.raidMarkers.autoMarkers.enable
                                end,
                                get = function(info)
                                    return E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkUnit[ info[#info] ]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.combat.raidMarkers.autoMarkers.autoMarkUnit[ info[#info] ] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                                args ={
                                    enable = {
                                        order = 1,
                                        type = "toggle",
                                        name = L["Enable"],
                                    },
                                },
                            },
                        },
                    },
                },
            },
            announceSystem = {
                order = 3,
                type = "group",
                name = L["announceSystem"],
				get = function(info)
					return E.db.lui.modules.combat.announceSystem[info[#info]]
				end,
				set = function(info, value)
					E.db.lui.modules.combat.announceSystem[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    raidSpells = {
                        order = 2,
                        type = "group",
                        guiInline = true,
                        name = L["raidSpells"],
                        hidden = function(info)
                            return not E.db.lui.modules.combat.announceSystem["enable"]
                        end,
						get = function(info)
							return E.db.lui.modules.combat.announceSystem.raidSpells[info[#info]]
						end,
						set = function(info, value)
							E.db.lui.modules.combat.announceSystem.raidSpells[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                            },
                        },
                    },
                    resAndThreatSpells = {
                        order = 3,
                        type = "group",
                        guiInline = true,
                        name = L["resAndThreatSpells"],
						hidden = function(info)
                            return not E.db.lui.modules.combat.announceSystem["enable"]
                        end,
						get = function(info)
							return E.db.lui.modules.combat.announceSystem.resAndThreatSpells[info[#info]]
						end,
						set = function(info, value)
							E.db.lui.modules.combat.announceSystem.resAndThreatSpells[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            enable = {
                                order = 0,
                                type = "toggle",
                                name = L["Enable"],
                            },
                            resAndThreat = {
                                order = 1,
                                type = "toggle",
                                name = L["resAndThreat"],
                                hidden = function(info)
                                    return not E.db.lui.modules.combat.announceSystem.resAndThreatSpells["enable"]
                                end,
                            },
                            resThanks = {
                                order = 2,
                                type = "toggle",
                                name = L["resThanks"],
                                hidden = function(info)
                                    return not E.db.lui.modules.combat.announceSystem.resAndThreatSpells["enable"]
                                end,
                            },
                        },
                    },
                    taunt = {
                        order = 5,
                        type = "group",
                        guiInline = true,
                        name = L["taunt"],
						hidden = function(info)
                            return not E.db.lui.modules.combat.announceSystem["enable"]
                        end,
						get = function(info)
							return E.db.lui.modules.combat.announceSystem.taunt[info[#info]]
						end,
						set = function(info, value)
							E.db.lui.modules.combat.announceSystem.taunt[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            enable = {
                                order = 0,
                                type = "toggle",
                                name = L["Enable"],
                            },
                            spacer1 = {
                                order = 1,
                                type = "description",
                                name = "",
                            },
                            playerSmart = {
                                order = 2,
                                type = "toggle",
                                name = L["playerSmart"],
                                hidden = function(info)
                                    return not E.db.lui.modules.combat.announceSystem.taunt["enable"]
                                end,
                            },
                            includeMiss = {
                                order = 3,
                                type = "toggle",
                                name = L["includeMiss"],
                                hidden = function(info)
                                    return not E.db.lui.modules.combat.announceSystem.taunt["enable"]
                                end,
                            },
                            otherTankSmart = {
                                order = 4,
                                type = "toggle",
                                name = L["otherTankSmart"],
                                hidden = function(info)
                                    return not E.db.lui.modules.combat.announceSystem.taunt["enable"]
                                end,
                            },
                            includeOtherTank = {
                                order = 5,
                                type = "toggle",
                                name = L["includeOtherTank"],
                                hidden = function(info)
                                    return not E.db.lui.modules.combat.announceSystem.taunt["enable"]
                                end,
                            },
                            petSmart = {
                                order = 6,
                                type = "toggle",
                                name = L["petSmart"],
                                hidden = function(info)
                                    return not E.db.lui.modules.combat.announceSystem.taunt["enable"]
                                end,
                            },
                            includePet = {
                                order = 7,
                                type = "toggle",
                                name = L["includePet"],
                                hidden = function(info)
                                    return not E.db.lui.modules.combat.announceSystem.taunt["enable"]
                                end,
                            }
                        }
                    }
                }
            },
        }
    }
end
T.table_insert(LUI.Configs, configTable)
