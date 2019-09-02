local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local function configTable()
    E.Options.args.lui.args.modules.args.maps = {
        order = 8,
        type = "group",
        childGroups = "tab",
        name = L["maps"],
        get = function(info)
            return E.db.lui.modules.maps[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.maps[info[#info]] = value
            E:StaticPopup_Show("PRIVATE_RL")
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["maps"]),
            },
            general = {
                order = 1,
                type = "group",
                name = L["general"],
                get = function(info)
                    return E.db.lui.modules.maps.general[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.maps.general[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    whoClickMinimap = {
                        order = 1,
                        type = "toggle",
                        name = L["whoClickMinimap"],
                    },
                }
            },
            minimapIcons = {
                order = 2,
                type = "group",
                name = L["minimapIcons"],
                get = function(info)
                    return E.db.lui.modules.maps.minimapIcons[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.maps.minimapIcons[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    chooseMinimap = {
                        order = 2,
                        type = "select",
                        name = L["chooseMinimap"],
                        values = {
                            ["square"] = L["square"],
                            ["buttons"] = L["buttons"],
                        },
                        hidden = function(info)
                            return not E.db.lui.modules.maps.minimapIcons["enable"]
                        end,
                        set = function(info, value)
                            if value == "square" then
                                E.db.lui.modules.maps.minimapIcons.square["enable"] = true
                                E.db.lui.modules.maps.minimapIcons.buttons["enable"] = false
                            elseif  value == "buttons" then
                                E.db.lui.modules.maps.minimapIcons.buttons["enable"] = true
                                E.db.lui.modules.maps.minimapIcons.square["enable"] = false
                            end
                            E.db.lui.modules.maps.minimapIcons[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                    },
                    reset = {
                        order = 3,
                        type = "execute",
                        name = L["Restore Defaults"],
                        disabled = function()
                            return not E.db.lui.modules.maps.minimapIcons.enable
                        end,
                        hidden = function()
                            return not E.db.lui.modules.maps.minimapIcons.enable
                        end,
                        func = function()
                            LUI:Reset("minimap")
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                    },
                    square = {
                        order = 3,
                        type = "group",
                        guiInline = true,
                        name = L["square"],
                        hidden = function(info)
                            return not E.db.lui.modules.maps.minimapIcons["enable"] or E.db.lui.modules.maps.minimapIcons["chooseMinimap"] == "buttons"
                        end,
                        get = function(info)
                            return E.db.lui.modules.maps.minimapIcons.square[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.maps.minimapIcons.square[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            squareMinimapDC = {
                                order = 1,
                                type = "select",
                                name = L["squareMinimapDC"],
                                values = {
                                    ["UP"] = L["UP"],
                                    ["DOWN"] = L["DOWN"],
                                    ["LEFT"] = L["LEFT"],
                                    ["RIGHT"] = L["RIGHT"],
                                }
                            }
                        }
                    },
                    buttons = {
                        order = 3,
                        type = "group",
                        guiInline = true,
                        name = L["buttons"],
                        hidden = function(info)
                            return not E.db.lui.modules.maps.minimapIcons["enable"] or E.db.lui.modules.maps.minimapIcons["chooseMinimap"] == "square"
                        end,
                        get = function(info)
                            return E.db.lui.modules.maps.minimapIcons.buttons[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.maps.minimapIcons.buttons[info[#info]] = value
                            E:GetModule("LuiButtonsMinimap"):Update()
                        end,
                        args = {
                            barMouseOver = {
                                order = 1,
                                type = "toggle",
                                name = L["barMouseOver"],
                            },
                            backdrop = {
                                order = 2,
                                type = "toggle",
                                name = L["backdrop"],
                                set = function(info, value)
                                    E.db.lui.modules.maps.minimapIcons.buttons[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            hideInCombat = {
                                order = 3,
                                type = "toggle",
                                name = L["hideInCombat"],
                            },
                            iconSize = {
                                order = 5,
                                type = "range",
                                name = L["iconSize"],
                                min = 12, max = 48, step = 0.1,
                            },
                            buttonSpacing = {
                                order = 6,
                                type = "range",
                                name = L["buttonSpacing"],
                                min = -1, max = 10, step = 1,
                            },
                            buttonsPerRow = {
                                order = 7,
                                type = "range",
                                name = L["buttonsPerRow"],
                                min = 1, max = 12, step = 1,
                            },
                            visibility = {
                                order = 8,
                                type = "input",
                                name = L["visibility"],
                                set = function(info, value)
                                    E.db.lui.modules.maps.minimapIcons.buttons.visibility = value
                                    E:GetModule("LuiButtonsMinimap"):UpdateVisibility()
                                end,
                            },
                            blizzard = {
                                order = 9,
                                type = "group",
                                name = L["blizzard"],
                                guiInline = true,
                                get = function(info)
                                    return E.db.lui.modules.maps.minimapIcons.buttons[info[#info]]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.maps.minimapIcons.buttons[info[#info]] = value
                                    E:GetModule("LuiButtonsMinimap"):Update()
                                    E:GetModule("LuiButtonsMinimap"):HandleBlizzardButtons()
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                                args = {
                                    moveTracker = {
                                        order = 1,
                                        type = "toggle",
                                        name = L["moveTracker"],
                                    },
                                    moveQueue = {
                                        order = 2,
                                        type = "toggle",
                                        name = L["moveQueue"],
                                    },
                                    moveMail = {
                                        order = 3,
                                        type = "toggle",
                                        name = L["moveMail"],
                                    },
                                    hideGarrison = {
                                        order = 4,
                                        type = "toggle",
                                        name = L["hideGarrison"],
                                        disabled = function()
                                            return E.db.lui.modules.maps.minimapIcons.buttons["moveGarrison"]
                                        end,
                                    },
                                    moveGarrison = {
                                        order = 5,
                                        type = "toggle",
                                        name = L["moveGarrison"],
                                        disabled = function()
                                            return E.db.lui.modules.maps.minimapIcons.buttons["hideGarrison"]
                                        end,
                                    }
                                }
                            }
                        }
                    }
                }
            },
            minimapInstance = {
                order = 3,
                type = "group",
                name = L["minimapInstance"],
                hidden = function()
                    return T.IsAddOnLoaded("ElvUI_SLE")
                end,
                get = function(info)
                    return E.db.lui.modules.maps.minimapInstance[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.maps.minimapInstance[info[#info]] = value
                    E:GetModule("LuiMinimapInstance"):UpdateFrame()
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                        desc = L["Show instance difficulty info as text."],
                        disabled = function()
                            return not E.private.general.minimap.enable
                        end,
                        set = function(info, value)
                            E.db.lui.modules.maps.minimapInstance[ info[#info] ] = value
                            E:GetModule("LuiMinimapInstance"):GenerateText(nil, nil, true)
                        end,
                    },
                    xoffset = {
                        order = 3,
                        type = "range",
                        name = L["X-Offset"],
                        min = -300,
                        max = 300,
                        step = 1,
                        disabled = function()
                            return not E.private.general.minimap.enable or not E.db.lui.modules.maps.minimapInstance.enable
                        end,
                    },
                    yoffset = {
                        order = 4,
                        type = "range",
                        name = L["Y-Offset"],
                        min = -300,
                        max = 300,
                        step = 1,
                        disabled = function()
                            return not E.private.general.minimap.enable or not E.db.lui.modules.maps.minimapInstance.enable
                        end,
                    },
                    onlyNumber = {
                        order = 5,
                        type = "toggle",
                        name = L["onlyNumber"],
                        disabled = function()
                            return not E.private.general.minimap.enable or not E.db.lui.modules.maps.minimapInstance.enable
                        end,
                        set = function(info, value)
                            E.db.lui.modules.maps.minimapInstance[ info[#info] ] = value
                            E:GetModule("LuiMinimapInstance"):GenerateText(nil, nil, true)
                        end,
                    },
                    fontGroup = {
                        order = 6,
                        type = "group",
                        name = L["Fonts"],
                        guiInline = true,
                        get = function(info)
                            return E.db.lui.modules.maps.minimapInstance[ info[#info] ]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.maps.minimapInstance[ info[#info] ] = value
                            E:GetModule("LuiMinimapInstance"):UpdateFrame()
                        end,
                        args = {
                            fontName = {
                                order = 1,
                                type = "select",
                                name = L["fontName"],
                                dialogControl = "LSM30_Font",
                                values = LUI.fontName,
                            },
                            fontSize = {
                                order = 2,
                                type = "range",
                                name = L["fontSize"],
                                min = 6,
                                max = 22,
                                step = 1,
                            },
                            fontFlag = {
                                order = 3,
                                type = "select",
                                name = L["fontFlag"],
                                values = LUI.fontFlagValues,
                            },
                        },
                    },
                    colors = {
                        order = 8,
                        type = "group",
                        name = L["Colors"],
                        guiInline = true,
                        disabled = function()
                            return not E.private.general.minimap.enable or not E.db.lui.modules.maps.minimapInstance.enable
                        end,
                        get = function(info)
                            local t = E.db.lui.modules.maps.minimapInstance.colors[ info[#info] ]
                            local d = P.lui.modules.maps.minimapInstance.colors[info[#info]]
                            return t.r, t.g, t.b, t.a, d.r, d.g, d.b, d.a
                        end,
                        set = function(info, r, g, b, a)
                            E.db.lui.modules.maps.minimapInstance.colors[ info[#info] ] = {}
                            local t = E.db.lui.modules.maps.minimapInstance.colors[ info[#info] ]
                            t.r, t.g, t.b, t.a = r, g, b, a
                            E:GetModule("LuiMinimapInstance"):GenerateText(nil, nil, true)
                        end,
                        args = {
                            lfr = {
                                type = "color",
                                order = 1,
                                name = PLAYER_DIFFICULTY3,
                                hasAlpha = false,
                            },
                            normal = {
                                type = "color",
                                order = 2,
                                name = PLAYER_DIFFICULTY1,
                                hasAlpha = false,
                            },
                            heroic = {
                                type = "color",
                                order = 3,
                                name = PLAYER_DIFFICULTY2,
                                hasAlpha = false,
                            },
                            challenge = {
                                type = "color",
                                order = 4,
                                name = PLAYER_DIFFICULTY5,
                                hasAlpha = false,
                            },
                            mythic = {
                                type = "color",
                                order = 5,
                                name = PLAYER_DIFFICULTY6,
                                hasAlpha = false,
                            },
                            time = {
                                type = "color",
                                order = 6,
                                name = PLAYER_DIFFICULTY_TIMEWALKER,
                                hasAlpha = false,
                            },
                        },
                    },
                },
            },
            enhancedWorldMap = {
                order = 4,
                type = "group",
                name = L["enhancedWorldMap"],
                get = function(info)
                    return E.db.lui.modules.maps.enhancedWorldMap[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.maps.enhancedWorldMap[info[#info]] = value
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
                    },
                    scale = {
                        order = 3,
                        type = "range",
                        name = L["scale"],
                        min = 0.5, max = 2, step = 0.1,
                        hidden = function()
                            return not E.db.lui.modules.maps.enhancedWorldMap["enable"]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.maps.enhancedWorldMap[info[#info]] = value
                            E:GetModule("LuiEnhancedWorldMap"):SetMapScale()
                        end
                    },
                    useReveal = {
                        order = 4,
                        type = "toggle",
                        name = L["useReveal"],
                        hidden = function()
                            return not E.db.lui.modules.maps.enhancedWorldMap["enable"]
                        end,
                    },
                }
            }
        }
    }
end
T.table_insert(LUI.Configs, configTable)
