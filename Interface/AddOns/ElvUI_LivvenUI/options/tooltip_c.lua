local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local function configTable()
    E.Options.args.lui.args.modules.args.tooltip = {
        order = 12,
        type = "group",
        childGroups = "tab",
        name = L["tooltip"],
        get = function(info)
            return E.db.lui.modules.tooltip[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.tooltip[info[#info]] = value
            E:StaticPopup_Show("PRIVATE_RL")
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["tooltip"]),
            },
            atlasLootReverse = {
                order = 1,
                type = "toggle",
                name = L["atlasLootReverse"],
            },
            tooltipIcon = {
                order = 2,
                type = "toggle",
                name = L["tooltipIcon"],
            },
            daisyCosp = {
                order = 3,
                type = "toggle",
                name = L["daisyCosp"],
            },
            -- noShiftKeyDown = {
            --     order = 4,
            --     type = "toggle",
            --     name = L["noShiftKeyDown"],
            -- },
            flashingCursor = {
                order = 5,
                type = "group",
                name = L["flashingCursor"],
                guiInline = true,
                get = function(info)
                    return E.db.lui.modules.tooltip.flashingCursor[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.tooltip.flashingCursor[info[#info]] = value
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
                            return not E.db.lui.modules.tooltip.flashingCursor["enable"]
                        end,
                    },
                    cursorMode = {
                        order = 3,
                        type = "select",
                        name = L["cursorMode"],
                        values = {
                            ["always"] = L["Always"],
                            ["combat"] = L["combat"],
                            ["modifier"] = L["modifierShift"],
                        },
                        hidden = function(info)
                            return not E.db.lui.modules.tooltip.flashingCursor["enable"]
                        end,
                    },
                    cursorSize = {
                        order = 4,
                        name = L["cursorSize"],
                        type = "range",
                        min = 256, max = 1024, step = 256,
                        hidden = function(info)
                            return not E.db.lui.modules.tooltip.flashingCursor["enable"]
                        end,
                    },
                    cursorColor = {
                        order = 6,
                        type = "color",
                        hasAlpha = true,
                        name = L["cursorColor"],
                        hidden = function()
                            return not E.db.lui.modules.tooltip.flashingCursor["enable"]
                        end,
                        get = function(info)
                            local t = E.db.lui.modules.tooltip.flashingCursor[info[#info]]
                            local d = P.lui.modules.tooltip.flashingCursor[info[#info]]
                            return t.r, t.g, t.b, t.a, d.r, d.g, d.b, d.a
                        end,
                        set = function(info, r, g, b, a)
                            E.db.lui.modules.tooltip.flashingCursor[info[#info]] = {}
                            local t = E.db.lui.modules.tooltip.flashingCursor[info[#info]]
                            t.r, t.g, t.b, t.a = r, g, b, a
                        end,
                    },
                }
            },
            nameHover = {
                order = 6,
                type = "group",
                name = L["nameHover"],
                guiInline = true,
                get = function(info)
                    return E.db.lui.modules.tooltip.nameHover[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.tooltip.nameHover[info[#info]] = value
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
                            return not E.db.lui.modules.tooltip.nameHover["enable"]
                        end,
                    },
                    fontName = {
                        order = 3,
                        type = "select",
                        dialogControl = "LSM30_Font",
                        name = L["fontName"],
                        values = LUI.fontName,
                        hidden = function(info)
                            return not E.db.lui.modules.tooltip.nameHover["enable"]
                        end,
                    },
                    fontSize = {
                        order = 4,
                        name = L["fontSize"],
                        type = "range",
                        min = 6, max = 48, step = 1,
                        hidden = function(info)
                            return not E.db.lui.modules.tooltip.nameHover["enable"]
                        end,
                    },
                    fontFlag = {
                        order = 5,
                        type = "select",
                        name = L["fontFlag"],
                        values = LUI.fontFlagValues,
                        hidden = function(info)
                            return not E.db.lui.modules.tooltip.nameHover["enable"]
                        end,
                    },
                    spacer2 = {
                        order = 6,
                        type = "description",
                        name = "",
                        hidden = function(info)
                            return not E.db.lui.modules.tooltip.nameHover["enable"]
                        end,
                    },
                    guildName = {
                        order = 7,
                        type = "toggle",
                        name = L["guildName"],
                        hidden = function(info)
                            return not E.db.lui.modules.tooltip.nameHover["enable"]
                        end,
                    },
                    guildRank = {
                        order = 8,
                        type = "toggle",
                        name = L["guildRank"],
                        hidden = function(info)
                            return not E.db.lui.modules.tooltip.nameHover["enable"]
                        end,
                    },
                    spacer3 = {
                        order = 9,
                        type = "description",
                        name = "",
                        hidden = function(info)
                            return not E.db.lui.modules.tooltip.nameHover["enable"]
                        end,
                    },
                    race = {
                        order = 10,
                        type = "toggle",
                        name = L["race"],
                        hidden = function(info)
                            return not E.db.lui.modules.tooltip.nameHover["enable"]
                        end,
                    },
                    realm = {
                        order = 11,
                        type = "toggle",
                        name = L["realm"],
                        hidden = function(info)
                            return not E.db.lui.modules.tooltip.nameHover["enable"]
                        end,
                    },
                    titles = {
                        order = 12,
                        type = "toggle",
                        name = L["titles"],
                        hidden = function(info)
                            return not E.db.lui.modules.tooltip.nameHover["enable"]
                        end,
                    }
                }
            },
            raidProg = {
                order = 7,
                type = "group",
                name = L["raidProg"],
                guiInline = true,
                get = function(info)
                    return E.db.lui.modules.tooltip.raidProg[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.tooltip.raidProg[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    onlyHighest = {
                        order = 2,
                        type = "toggle",
                        name = L["onlyHighest"],
                        disabled = function()
                            return not E.db.lui.modules.tooltip.raidProg.enable
                        end,
                    },
                    spacer = {
                        order = 3,
                        type = "description",
                        name = "",
                    },
                    Uldir = {
                        order = 4,
                        type = "toggle",
                        name = L["Uldir"],
                        disabled = function()
                            return not E.db.lui.modules.tooltip.raidProg.enable
                        end,
                    },
                    BattleOfDazaralor = {
                        order = 5,
                        type = "toggle",
                        name = L["BattleOfDazaralor"],
                        disabled = function()
                            return not E.db.lui.modules.tooltip.raidProg.enable
                        end,
                    },
                    CrucibleOfStorms = {
                        order = 6,
                        type = "toggle",
                        name = L["CrucibleOfStorms"],
                        disabled = function()
                            return not E.db.lui.modules.tooltip.raidProg.enable
                        end,
                    },
                    EternalPalace = {
                        order = 7,
                        type = "toggle",
                        name = L["EternalPalace"],
                        disabled = function()
                            return not E.db.lui.modules.tooltip.raidProg.enable
                        end,
                    }
                },
            },
        }
    }
end
T.table_insert(LUI.Configs, configTable)
