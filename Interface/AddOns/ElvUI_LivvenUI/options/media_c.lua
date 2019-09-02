local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local function configTable()
    E.Options.args.lui.args.media = {
        order = 10,
        type = "group",
        childGroups = "tab",
        name = L["media"],
        get = function(info)
            return E.db.lui.media[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.media[info[#info]] = value
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["media"]),
            },
            general = {
                order = 1,
                type = "group",
                name = L["general"],
                get = function(info)
                    return E.db.lui.media.general[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.media.general[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    shareMedia = {
                        order = 1,
                        type = "toggle",
                        name = L["shareMedia"],
                    },
                }
            },
            miscTexts = {
                order = 2,
                type = "group",
                name = L["miscTexts"],
                get = function(info)
                    return E.db.lui.media.miscTexts[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.media.miscTexts[info[#info]] = value
                end,
                args = {
                    -- questTrackerTitle = {
                    --     order = 1,
                    --     type = "group",
                    --     name = L["questTrackerTitle"],
                    --     guiInline = true,
                    --     hidden = function()
                    --         return not E.private.general.replaceBlizzFonts
                    --     end,
                    --     get = function(info)
                    --         return E.db.lui.media.miscTexts.questTrackerTitle[info[#info]]
                    --     end,
                    --     set = function(info, value)
                    --         E.db.lui.media.miscTexts.questTrackerTitle[info[#info]] = value
                    --         ObjectiveTracker_Update()
                    --     end,
                    --     args = {
                    --         enable = {
                    --             order = 1,
                    --             type = "toggle",
                    --             name = L["Enable"],
                    --             set = function(info, value)
                    --                 E.db.lui.media.miscTexts.questTrackerTitle[info[#info]] = value
                    --                 E:StaticPopup_Show("PRIVATE_RL")
                    --             end,
                    --         },
                    --         fontClassColor = {
                    --             order = 2,
                    --             type = "toggle",
                    --             name = L["fontClassColor"],
                    --             hidden = function()
                    --                 return not E.db.lui.media.miscTexts.questTrackerTitle["enable"]
                    --             end,
                    --             set = function(info, value)
                    --                 E.db.lui.media.miscTexts.questTrackerTitle[info[#info]] = value
                    --                 E:UpdateMedia()
                    --             end,
                    --         },
                    --         fontColor = {
                    --             order = 3,
                    --             type = "color",
                    --             hasAlpha = false,
                    --             name = L["fontColor"],
                    --             disabled = function()
                    --                 return E.db.lui.media.miscTexts.questTrackerTitle["fontClassColor"]
                    --             end,
                    --             hidden = function()
                    --                 return not E.db.lui.media.miscTexts.questTrackerTitle["enable"]
                    --             end,
                    --             get = function(info)
                    --                 local t = E.db.lui.media.miscTexts.questTrackerTitle[info[#info]]
                    --                 local d = P.lui.media.miscTexts.questTrackerTitle[info[#info]]
                    --                 return t.r, t.g, t.b, t.a, d.r, d.g, d.b, d.a
                    --             end,
                    --             set = function(info, r, g, b, a)
                    --                 E.db.lui.media.miscTexts.questTrackerTitle[info[#info]] = {}
                    --                 local t = E.db.lui.media.miscTexts.questTrackerTitle[info[#info]]
                    --                 t.r, t.g, t.b, t.a = r, g, b, a
                    --                 E:UpdateMedia()
                    --             end,
                    --         },
                    --         spacer1 = {
                    --             order = 4,
                    --             type = "description",
                    --             name = "",
                    --             hidden = function()
                    --                 return not E.db.lui.media.miscTexts.questTrackerTitle["enable"]
                    --             end,
                    --         },
                    --         fontName = {
                    --             order = 5,
                    --             type = "select",
                    --             dialogControl = "LSM30_Font",
                    --             name = L["fontName"],
                    --             values = LUI.fontName,
                    --             hidden = function()
                    --                 return not E.db.lui.media.miscTexts.questTrackerTitle["enable"]
                    --             end,
                    --         },
                    --         fontSize = {
                    --             order = 6,
                    --             name = L["fontSize"],
                    --             type = "range",
                    --             min = 1, max = 30, step = 1,
                    --             hidden = function()
                    --                 return not E.db.lui.media.miscTexts.questTrackerTitle["enable"]
                    --             end,
                    --         },
                    --         fontFlag = {
                    --             order = 7,
                    --             type = "select",
                    --             name = L["fontFlag"],
                    --             values = LUI.fontFlagValues,
                    --             hidden = function()
                    --                 return not E.db.lui.media.miscTexts.questTrackerTitle["enable"]
                    --             end,
                    --         },
                    --     },
                    -- },
                    questTrackerInfo = {
                        order = 2,
                        type = "group",
                        name = L["questTrackerInfo"],
                        guiInline = true,
                        hidden = function()
                            return not E.private.general.replaceBlizzFonts
                        end,
                        get = function(info)
                            return E.db.lui.media.miscTexts.questTrackerInfo[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.media.miscTexts.questTrackerInfo[info[#info]] = value
                            E:UpdateMedia()
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                                set = function(info, value)
                                    E.db.lui.media.miscTexts.questTrackerInfo[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            fontName = {
                                order = 2,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                name = L["fontName"],
                                values = LUI.fontName,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.questTrackerInfo["enable"]
                                end,
                            },
                            fontSize = {
                                order = 3,
                                name = L["fontSize"],
                                type = "range",
                                min = 1, max = 30, step = 1,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.questTrackerInfo["enable"]
                                end,
                            },
                            fontFlag = {
                                order = 4,
                                type = "select",
                                name = L["fontFlag"],
                                values = LUI.fontFlagValues,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.questTrackerInfo["enable"]
                                end,
                            },
                        },
                    },
                    questGossip = {
                        order = 3,
                        type = "group",
                        name = L["questGossip"],
                        guiInline = true,
                        hidden = function()
                            return not E.private.general.replaceBlizzFonts
                        end,
                        get = function(info)
                            return E.db.lui.media.miscTexts.questGossip[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.media.miscTexts.questGossip[info[#info]] = value
                            E:UpdateMedia()
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                                set = function(info, value)
                                    E.db.lui.media.miscTexts.questGossip[info[#info]] = value
                                    E:UpdateMedia()
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            fontName = {
                                order = 2,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                name = L["fontName"],
                                values = LUI.fontName,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.questGossip["enable"]
                                end,
                            },
                            fontSize = {
                                order = 3,
                                name = L["fontSize"],
                                type = "range",
                                min = 6, max = 20, step = 1,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.questGossip["enable"]
                                end,
                            },
                            fontFlag = {
                                order = 4,
                                name = L["fontFlag"],
                                desc = L["Set the fontName outline."],
                                type = "select",
                                values = LUI.fontFlagValues,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.questGossip["enable"]
                                end,
                            },
                        },
                    },
                    questFontSuperHuge = {
                        order = 4,
                        type = "group",
                        name = L["questFontSuperHuge"],
                        guiInline = true,
                        hidden = function()
                            return not E.private.general.replaceBlizzFonts
                        end,
                        get = function(info)
                            return E.db.lui.media.miscTexts.questFontSuperHuge[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.media.miscTexts.questFontSuperHuge[info[#info]] = value
                            E:UpdateMedia()
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                                set = function(info, value)
                                    E.db.lui.media.miscTexts.questFontSuperHuge[info[#info]] = value
                                    E:UpdateMedia()
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            fontName = {
                                order = 2,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                name = L["fontName"],
                                values = LUI.fontName,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.questFontSuperHuge["enable"]
                                end,
                            },
                            fontSize = {
                                order = 3,
                                name = L["fontSize"],
                                type = "range",
                                min = 6, max = 50, step = 1,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.questFontSuperHuge["enable"]
                                end,
                            },
                            fontFlag = {
                                order = 4,
                                type = "select",
                                name = L["fontFlag"],
                                values = LUI.fontFlagValues,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.questFontSuperHuge["enable"]
                                end,
                            },
                        },
                    },
                    mailText = {
                        order = 5,
                        type = "group",
                        name = L["mailText"],
                        guiInline = true,
                        hidden = function()
                            return not E.private.general.replaceBlizzFonts
                        end,
                        get = function(info)
                            return E.db.lui.media.miscTexts.mailText[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.media.miscTexts.mailText[info[#info]] = value
                            E:UpdateMedia()
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                                set = function(info, value)
                                    E.db.lui.media.miscTexts.mailText[info[#info]] = value
                                    E:UpdateMedia()
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            fontName = {
                                order = 2,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                name = L["fontName"],
                                values = LUI.fontName,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.mailText["enable"]
                                end,
                            },
                            fontSize = {
                                order = 3,
                                name = L["fontSize"],
                                type = "range",
                                min = 1, max = 30, step = 1,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.mailText["enable"]
                                end,
                            },
                            fontFlag = {
                                order = 4,
                                name = L["fontFlag"],
                                type = "select",
                                values = LUI.fontFlagValues,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.mailText["enable"]
                                end,
                            },
                        },
                    },
                    editboxText = {
                        order = 6,
                        type = "group",
                        name = L["editboxText"],
                        guiInline = true,
                        hidden = function()
                            return not E.private.general.replaceBlizzFonts
                        end,
                        get = function(info)
                            return E.db.lui.media.miscTexts.editboxText[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.media.miscTexts.editboxText[info[#info]] = value
                            E:UpdateMedia()
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                                set = function(info, value)
                                    E.db.lui.media.miscTexts.editboxText[info[#info]] = value
                                    E:UpdateMedia()
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            fontName = {
                                order = 2,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                name = L["fontName"],
                                values = LUI.fontName,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.editboxText["enable"]
                                end,
                            },
                            fontSize = {
                                order = 3,
                                name = L["fontSize"],
                                type = "range",
                                min = 6, max = 20, step = 1,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.editboxText["enable"]
                                end,
                            },
                            fontFlag = {
                                order = 4,
                                name = L["fontFlag"],
                                type = "select",
                                values = LUI.fontFlagValues,
                                hidden = function()
                                    return not E.db.lui.media.miscTexts.editboxText["enable"]
                                end,
                            }
                        }
                    }
                }
            },
            zoneTexts = {
                order = 3,
                type = "group",
                name = L["zoneTexts"],
                hidden = function()
                    return not E.private.general.replaceBlizzFonts
                end,
                get = function(info)
                    return E.db.lui.media.zoneTexts[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.media.zoneTexts[info[#info]] = value
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                        set = function(info, value)
                            E.db.lui.media.zoneTexts[info[#info]] = value
                        end,
                    },
                    testBtn = {
                        order = 2,
                        type = "execute",
                        name = L["testBtn"],
                        hidden = function()
                            return not E.db.lui.media.zoneTexts["enable"]
                        end,
                        func = function()
                            E:GetModule("LuiMedia"):TextShow()
                        end,
                    },
                    zoneText = {
                        order = 3,
                        type = "group",
                        name = L["zoneText"],
                        guiInline = true,
                        hidden = function()
                            return not E.db.lui.media.zoneTexts["enable"]
                        end,
                        get = function(info)
                            return E.db.lui.media.zoneTexts.zoneText[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.media.zoneTexts.zoneText[info[#info]] = value
                            E:UpdateMedia()
                        end,
                        args = {
                            fontName = {
                                order = 1,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                name = L["fontName"],
                                values = LUI.fontName,
                            },
                            fontSize = {
                                order = 2,
                                name = L["fontSize"],
                                type = "range",
                                min = 6, max = 48, step = 1,
                            },
                            fontFlag = {
                                order = 3,
                                type = "select",
                                name = L["fontFlag"],
                                values = LUI.fontFlagValues,
                            },
                            width = {
                                order = 4,
                                type = "range",
                                name = L["width"],
                                min = 512, max = E.eyefinity or E.screenwidth, step = 1,
                                set = function(info, value)
                                    E.db.lui.media.zoneTexts.zoneText.width = value
                                    E:GetModule("LuiMedia"):TextWidth()
                                end,
                            },
                        },
                    },
                    subzoneText = {
                        order = 4,
                        type = "group",
                        name = L["subzoneText"],
                        guiInline = true,
                        hidden = function()
                            return not E.db.lui.media.zoneTexts["enable"]
                        end,
                        get = function(info) return
                            E.db.lui.media.zoneTexts.subzoneText[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.media.zoneTexts.subzoneText[info[#info]] = value
                            E:UpdateMedia()
                        end,
                        args = {
                            fontName = {
                                order = 1,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                name = L["fontName"],
                                values = LUI.fontName,
                            },
                            fontSize = {
                                order = 2,
                                name = L["fontSize"],
                                type = "range",
                                min = 6, max = 48, step = 1,
                            },
                            fontFlag = {
                                order = 3,
                                type = "select",
                                name = L["fontFlag"],
                                values = LUI.fontFlagValues,
                            },
                            width = {
                                order = 4,
                                type = "range",
                                name = L["width"],
                                min = 512, max = E.eyefinity or E.screenwidth, step = 1,
                                set = function(info, value)
                                    E.db.lui.media.zoneTexts.subzoneText.width = value
                                    E:GetModule("LuiMedia"):TextWidth()
                                end,
                            },
                        },
                    },
                    pvpstatusText = {
                        order = 5,
                        type = "group",
                        name = L["pvpstatusText"],
                        guiInline = true,
                        hidden = function()
                            return not E.db.lui.media.zoneTexts["enable"]
                        end,
                        get = function(info)
                            return E.db.lui.media.zoneTexts.pvpstatusText[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.media.zoneTexts.pvpstatusText[info[#info]] = value
                            E:UpdateMedia()
                        end,
                        args = {
                            fontName = {
                                order = 1,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                name = L["fontName"],
                                values = LUI.fontName,
                            },
                            fontSize = {
                                order = 2,
                                name = L["fontSize"],
                                type = "range",
                                min = 6, max = 48, step = 1,
                            },
                            fontFlag = {
                                order = 3,
                                type = "select",
                                name = L["fontFlag"],
                                values = LUI.fontFlagValues,
                            },
                            width = {
                                order = 4,
                                type = "range",
                                name = L["width"],
                                min = 512, max = E.eyefinity or E.screenwidth, step = 1,
                                set = function(info, value)
                                    E.db.lui.media.zoneTexts.pvpstatusText["width"] = value
                                    E:GetModule("LuiMedia"):TextWidth()
                                end,
                            },
                        },
                    },
                },
            },
        }
    }
end
T.table_insert(LUI.Configs, configTable)
