local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local texPath = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\roleIcons\]]
local texPathE = [[Interface\AddOns\ElvUI\media\textures\]]

local function configTable()
	E.Options.args.lui.args.modules.args.unitframes = {
        order = 13,
		type = "group",
		childGroups = "tab",
        name = L["unitframes"],
        get = function(info)
            return E.db.lui.modules.unitframes[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.unitframes[info[#info]] = value
            E:StaticPopup_Show("PRIVATE_RL")
        end,
        args = {
			name = {
				order = 0,
				type = "header",
				name = LUI:cOption(L["unitframes"]),
            },
            general = {
                order = 1,
                type = "group",
                name = L["general"],
                get = function(info)
                    return E.db.lui.modules.unitframes.general[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.unitframes.general[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    hideMana = {
                        order = 1,
                        type = "group",
                        guiInline = true,
                        name = L["hideMana"],
                        get = function(info)
                            return E.db.lui.modules.unitframes.general.hideMana[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.unitframes.general.hideMana[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                            },
                            hideManaFrames = {
                                order = 2,
                                type = "group",
                                guiInline = true,
                                name = L["hideManaFrames"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.general.hideMana["enable"]
                                end,
                                get = function(info)
                                    return E.db.lui.modules.unitframes.general.hideMana.hideManaFrames[info[#info]]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.unitframes.general.hideMana.hideManaFrames[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                                args ={
                                    elvuiFrames = {
                                        order = 3,
                                        type = "toggle",
                                        name = L["elvuiFrames"],
                                        hidden = function(info)
                                            return not E.db.lui.modules.unitframes.general.hideMana["enable"]
                                        end,
                                    },
                                    blizzardFrames = {
                                        order = 4,
                                        type = "toggle",
                                        name = L["blizzardFrames"],
                                        hidden = function(info)
                                            return not E.db.lui.modules.unitframes.general.hideMana["enable"]
                                        end,
                                    },
                                },
                            },
                            hideManaRoles = {
                                order = 3,
                                type = "group",
                                guiInline = true,
                                name = L["hideManaRoles"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.general.hideMana["enable"]
                                end,
                                get = function(info)
                                    return E.db.lui.modules.unitframes.general.hideMana.hideManaRoles[info[#info]]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.unitframes.general.hideMana.hideManaRoles[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                                args ={
                                    DAMAGER = {
                                        order = 1,
                                        type = "toggle",
                                        name = L["DAMAGER"],
                                        hidden = function(info)
                                            return not E.db.lui.modules.unitframes.general.hideMana["enable"]
                                        end,
                                    },
                                    HEALER = {
                                        order = 2,
                                        type = "toggle",
                                        name = L["HEALER"],
                                        hidden = function(info)
                                            return not E.db.lui.modules.unitframes.general.hideMana["enable"]
                                        end,
                                    },
                                    TANK = {
                                        order = 3,
                                        type = "toggle",
                                        name = L["TANK"],
                                        hidden = function(info)
                                            return not E.db.lui.modules.unitframes.general.hideMana["enable"]
                                        end,
                                    },
                                },
                            },
                        },
                    },
                },
            },
            playerframe = {
                order = 3,
                type = "group",
                name = L["playerframe"],
                get = function(info)
                    return E.db.lui.modules.unitframes.playerframe[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.unitframes.playerframe[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    gcdBar = {
                        order = 1,
                        type = "toggle",
                        name = L["gcdBar"],
                    },
                    swingBar = {
                        order = 1,
                        type = "group",
                        guiInline = true,
                        name = L["swingBar"],
                        get = function(info)
                            return E.db.lui.modules.unitframes.playerframe.swingBar[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.unitframes.playerframe.swingBar[info[#info]] = value
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
                                    return not E.db.lui.modules.unitframes.playerframe.swingBar["enable"]
                                end,
                            },
                            swingBarColor = {
                                type = "color",
                                order = 3,
                                name = L["swingBarColor"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.playerframe.swingBar["enable"]
                                end,
                                get = function(info)
                                    local t = E.db.lui.modules.unitframes.playerframe.swingBar[info[#info]]
                                    local d = P.lui.modules.unitframes.playerframe.swingBar[info[#info]]
                                    return t.r, t.g, t.b, t.a, d.r, d.g, d.b, d.a
                                end,
                                set = function(info, r, g, b, a)
                                    E.db.lui.modules.unitframes.playerframe.swingBar[info[#info]] = {}
                                    local t = E.db.lui.modules.unitframes.playerframe.swingBar[info[#info]]
                                    t.r, t.g, t.b, t.a = r, g, b, a
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            swingBarWidth = {
                                order = 4,
                                type = "range",
                                min = 20, max = 600, step = 1,
                                name = L["swingBarWidth"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.playerframe.swingBar["enable"]
                                end,
                            },
                            swingBarHeight = {
                                order = 5,
                                type = "range",
                                min = 1, max = 200, step = 1,
                                name = L["swingBarHeight"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.playerframe.swingBar["enable"]
                                end,
                            },
                            spacer2 = {
                                order = 6,
                                type = "description",
                                name = "",
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.playerframe.swingBar["enable"]
                                end,
                            },
                            remainingText = {
                                order = 7,
                                type = "toggle",
                                name = L["remainingText"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.playerframe.swingBar["enable"]
                                end,
                            },
                            durationText = {
                                order = 8,
                                type = "toggle",
                                name = L["durationText"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.playerframe.swingBar["enable"]
                                end,
                            },
                            spacer3 = {
                                order = 9,
                                type = "description",
                                name = "",
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.playerframe.swingBar["enable"]
                                end,
                            },
                            swingBarFontName = {
                                order = 10,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                values = LUI.fontName,
                                name = L["swingBarFontName"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.playerframe.swingBar["enable"]
                                end,
                            },
                            swingBarFontSize = {
                                order = 11,
                                type = "range",
                                min = 4, max = 212, step = 1,
                                name = L["swingBarFontSize"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.playerframe.swingBar["enable"]
                                end,
                            },
                            swingBarFontFlag = {
                                order = 12,
                                type = "select",
                                values = LUI.fontFlagValues,
                                name = L["swingBarFontFlag"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.playerframe.swingBar["enable"]
                                end,
                            },
                        }
                    }
                }
            },
            targetframe = {
                order = 4,
                type = "group",
                name = L["targetframe"],
                get = function(info)
                    return E.db.lui.modules.unitframes.targetframe[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.unitframes.targetframe[info[#info]] = value
                end,
                args = {
                    rangeText = {
                        order = 1,
                        type = "group",
                        guiInline = true,
                        name = L["rangeText"],
                        get = function(info)
                            return E.db.lui.modules.unitframes.targetframe.rangeText[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.unitframes.targetframe.rangeText[info[#info]] = value
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
                                    return not E.db.lui.modules.unitframes.targetframe.rangeText["enable"]
                                end,
                            },
                            rangeFontName = {
                                order = 3,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                values = LUI.fontName,
                                name = L["rangeFontName"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.targetframe.rangeText["enable"]
                                end,
                            },
                            rangeFontSize = {
                                order = 4,
                                type = "range",
                                min = 4, max = 212, step = 1,
                                name = L["rangeFontSize"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.targetframe.rangeText["enable"]
                                end,
                            },
                            rangeFontFlag = {
                                order = 5,
                                type = "select",
                                values = LUI.fontFlagValues,
                                name = L["rangeFontFlag"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.targetframe.rangeText["enable"]
                                end,
                            },
                            spacer2 = {
                                order = 6,
                                type = "description",
                                name = "",
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.targetframe.rangeText["enable"]
                                end,
                            },
                            rangePoi = {
                                order = 7,
                                type = "select",
                                values = LUI.positionValues,
                                name = L["rangePoi"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.targetframe.rangeText["enable"]
                                end,
                            },
                            rangePoiX = {
                                order = 8,
                                type = "range",
                                min = -500, max = 500, step = 1,
                                name = L["rangePoiX"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.targetframe.rangeText["enable"]
                                end,
                            },
                            rangePoiY = {
                                order = 9,
                                type = "range",
                                min = -500, max = 500, step = 1,
                                name = L["rangePoiY"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.targetframe.rangeText["enable"]
                                end,
                            }
                        }
                    }
                }
            },
            focusframe = {
                order = 5,
                type = "group",
                name = L["focusframe"],
                get = function(info)
                    return E.db.lui.modules.unitframes.focusframe[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.unitframes.focusframe[info[#info]] = value
                end,
                args = {
                    rangeText = {
                        order = 1,
                        type = "group",
                        guiInline = true,
                        get = function(info)
                            return E.db.lui.modules.unitframes.focusframe.rangeText[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.unitframes.focusframe.rangeText[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        name = L["rangeText"],
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
                                    return not E.db.lui.modules.unitframes.focusframe.rangeText["enable"]
                                end,
                            },
                            rangeFontName = {
                                order = 3,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                values = LUI.fontName,
                                name = L["rangeFontName"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.focusframe.rangeText["enable"]
                                end,
                            },
                            rangeFontSize = {
                                order = 4,
                                type = "range",
                                min = 4, max = 212, step = 1,
                                name = L["rangeFontSize"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.focusframe.rangeText["enable"]
                                end,
                            },
                            rangeFontFlag = {
                                order = 5,
                                type = "select",
                                values = LUI.fontFlagValues,
                                name = L["rangeFontFlag"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.focusframe.rangeText["enable"]
                                end,
                            },
                            spacer2 = {
                                order = 6,
                                type = "description",
                                name = "",
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.focusframe.rangeText["enable"]
                                end,
                            },
                            rangePoi = {
                                order = 7,
                                type = "select",
                                values = LUI.positionValues,
                                name = L["rangePoi"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.focusframe.rangeText["enable"]
                                end,
                            },
                            rangePoiX = {
                                order = 8,
                                type = "range",
                                min = -500, max = 500, step = 1,
                                name = L["rangePoiX"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.focusframe.rangeText["enable"]
                                end,
                            },
                            rangePoiY = {
                                order = 9,
                                type = "range",
                                min = -500, max = 500, step = 1,
                                name = L["rangePoiY"],
                                hidden = function(info)
                                    return not E.db.lui.modules.unitframes.focusframe.rangeText["enable"]
                                end,
                            }
                        }
                    }
                }
            },
            icons = {
				order = 6,
                type = "group",
                name = L["icons"],
                get = function(info)
                    return E.db.lui.modules.unitframes.icons[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.unitframes.icons[info[#info]] = value
                end,
				args = {
                    roleIconsdesc = {
                        order = 0,
                        type = "description",
                        name = L["ElvUI_SLE_ISLOADED"],
                        hidden = function(info)
                            return not IsAddOnLoaded("ElvUI_SLE")
                        end,
                    },
					roleIcons = {
						order = 1,
						type = "select",
						name = L["roleIcons"],
                        hidden = function()
                            return IsAddOnLoaded("ElvUI_SLE")
                        end,
                        get = function(info)
                            return E.db.lui.modules.unitframes.icons[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.unitframes.icons[info[#info]] = value
                            E:GetModule('UnitFrames'):UpdateAllHeaders()
                        end,
						values = {
							["ElvUI"] = "ElvUI ".."|T"..texPathE.."tank:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPathE.."healer:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPathE.."dps:15:15:0:0:64:64:2:56:2:56|t ",
							["SupervillainUI"] = "Supervillain UI ".."|T"..texPath.."svui-tank:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPath.."svui-healer:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPath.."svui-dps:15:15:0:0:64:64:2:56:2:56|t ",
							["Blizzard"] = "Blizzard ".."|T"..texPath.."blizz-tank:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPath.."blizz-healer:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPath.."blizz-dps:15:15:0:0:64:64:2:56:2:56|t ",
							["MiirGui"] = "MiirGui ".."|T"..texPath.."mg-tank:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPath.."mg-healer:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPath.."mg-dps:15:15:0:0:64:64:2:56:2:56|t ",
							["Lyn"] = "Lyn ".."|T"..texPath.."lyn-tank:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPath.."lyn-healer:15:15:0:0:64:64:2:56:2:56|t ".."|T"..texPath.."lyn-dps:15:15:0:0:64:64:2:56:2:56|t ",
						},
                    },
                },
            },
        }
    }
end

T.table_insert(LUI.Configs, configTable)