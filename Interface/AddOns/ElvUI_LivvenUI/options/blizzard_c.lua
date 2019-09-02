local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local function configTable()
    E.Options.args.lui.args.modules.args.blizzard = {
        order = 5,
        type = "group",
        childGroups = "tab",
        name = L["blizzard"],
        get = function(info)
            return E.db.lui.modules.blizzard[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.blizzard[info[#info]] = value
            E:StaticPopup_Show("PRIVATE_RL")
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["blizzard"]),
            },
            general = {
                order = 1,
                type = "group",
                name = L["general"],
                get = function(info)
                    return E.db.lui.modules.blizzard.general[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.blizzard.general[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    BlizzardFrames = {
                        order = 1,
                        type = "toggle",
                        name = L["BlizzardFrames"],
                    },
                    castbarTime = {
                        order = 2,
                        type = "toggle",
                        name = L["castbarTime"],
                    },
                    minimapWheel = {
                        order = 3,
                        type = "toggle",
                        name = L["minimapWheel"],
                    },
                }
            },
            blizzardMoveFrames = {
                order = 2,
                type = "group",
                name = L["blizzardMoveFrames"],
                get = function(info)
                    return E.db.lui.modules.blizzard.blizzardMoveFrames[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.blizzard.blizzardMoveFrames[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args ={
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    remember = {
                        order = 2,
                        type = "toggle",
                        name = L["remember"],
                        hidden = function()
                            return not E.db.lui.modules.blizzard.blizzardMoveFrames["enable"]
                        end,
                    },
                    errorframe = {
                        order = 3,
                        type = "group",
                        guiInline = true,
                        name = L["errorframe"],
                        hidden = function()
                            return not E.db.lui.modules.blizzard.blizzardMoveFrames["enable"]
                        end,
                        get = function(info)
                            return E.db.lui.modules.blizzard.blizzardMoveFrames.errorframe[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.blizzard.blizzardMoveFrames.errorframe[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            width = {
                                order = 1,
                                name = L["width"],
                                type = "range",
                                min = 100, max = 1000, step = 1,
                            },
                            height = {
                                order = 2,
                                name = L["height"],
                                type = "range",
                                min = 30, max = 300, step = 15,
                            },
                        }
                    }
                }
            },
            enhancedFriendsList = {
                order = 3,
                type = "group",
                name = L["enhancedFriendsList"],
                get = function(info)
                    return E.db.lui.modules.blizzard.enhancedFriendsList[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.blizzard.enhancedFriendsList[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    general = {
                        order = 2,
                        type = "group",
                        name = L["general"],
                        guiInline = true,
                        hidden = function()
                            return not E.db.lui.modules.blizzard.enhancedFriendsList["enable"]
                        end,
                        get = function(info)
                            return E.db.lui.modules.blizzard.enhancedFriendsList.general[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.blizzard.enhancedFriendsList.general[info[#info]] = value
                            FriendsFrame_Update()
                        end,
                        args = {
                            NameFont = {
                                order = 1,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                name = L["NameFont"],
                                values = LUI.fontName,
                            },
                            NameFontSize = {
                                order = 2,
                                type = "range",
                                name = L["NameFontSize"],
                                min = 6, max = 22, step = 1,
                            },
                            NameFontFlag = {
                                order = 3,
                                type = "select",
                                name = L["NameFontFlag"],
                                values = LUI.fontFlagValues,
                            },
                            NameLevel = {
                                order = 4,
                                type = "toggle",
                                name = L["NameLevel"],
                            },
                            spacer2 = {
                                order = 5,
                                type = "description",
                                name = "",
                            },
                            InfoFont = {
                                order = 6,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                name = L["InfoFont"],
                                values = LUI.fontName,
                            },
                            InfoFontSize = {
                                order = 7,
                                type = "range",
                                name = L["InfoFontSize"],
                                min = 6, max = 22, step = 1,
                            },
                            InfoFontFlag = {
                                order = 8,
                                type = "select",
                                name = L["InfoFontFlag"],
                                values = LUI.fontFlagValues,
                            },
                            InfoColor = {
                                order = 9,
                                type = "toggle",
                                name = L["InfoColor"],
                            },
                            spacer3 = {
                                order = 10,
                                type = "description",
                                name = "",
                            },
                            GameIconPack = {
                                order = 11,
                                type = "select",
                                name = L["GameIconPack"],
                                values = {
                                    ["Default"] = L["Default"],
                                    ["BlizzardChat"] = L["Blizzard Chat"],
                                    ["Flat"] = L["Flat Style"],
                                    ["Gloss"] = L["Glossy"],
                                    ["Launcher"] = L["Launcher"],
                                },
                            },
                            StatusIconPack = {
                                order = 12,
                                type = "select",
                                name = L["StatusIconPack"],
                                values = {
                                    ["Default"] = L["Default"],
                                    ["Square"] = L["Square"],
                                    ["D3"] = L["Diablo 3"],
                                },
                            },
                        },
                    },
                    GameIcons = {
                        order = 3,
                        type = "group",
                        name = L["GameIcons"],
                        guiInline = true,
                        hidden = function()
                            return not E.db.lui.modules.blizzard.enhancedFriendsList["enable"]
                        end,
                        get = function(info)
                            return E.db.lui.modules.blizzard.enhancedFriendsList.GameIcons[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.blizzard.enhancedFriendsList.GameIcons[info[#info]] = value
                        end,
                        args = {
                            Alliance = {
                                order = 1,
                                type = "execute",
                                name = FACTION_ALLIANCE,
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][info[#info]], 32, 32
                                end,
                            },
                            Horde = {
                                order = 2,
                                type = "execute",
                                name = FACTION_HORDE,
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][info[#info]], 32, 32
                                end,
                            },
                            Neutral = {
                                order = 3,
                                type = "execute",
                                name = FACTION_STANDING_LABEL4,
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][info[#info]], 32, 32
                                end,
                            },
                            D3 = {
                                order = 4,
                                type = "execute",
                                name = L["Diablo 3"],
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][info[#info]], 32, 32
                                end,
                            },
                            WTCG = {
                                order = 5,
                                type = "execute",
                                name = L["Hearthstone"],
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][info[#info]], 32, 32
                                end,
                            },
                            S1 = {
                                order = 6,
                                type = "execute",
                                name = L["Starcraft"],
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][info[#info]], 32, 32
                                end,
                            },
                            S2 = {
                                order = 7,
                                type = "execute",
                                name = L["Starcraft 2"],
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][info[#info]], 32, 32
                                end,
                            },
                            App = {
                                order = 8,
                                type = "execute",
                                name = L["App"],
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][info[#info]], 32, 32
                                end,
                            },
                            BSAp = {
                                order = 9,
                                type = "execute",
                                name = L["BSAp"],
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][info[#info]], 32, 32
                                end,
                            },
                            Hero = {
                                order = 10,
                                type = "execute",
                                name = L["Hero of the Storm"],
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][info[#info]], 32, 32
                                end,
                            },
                            Pro = {
                                order = 11,
                                type = "execute",
                                name = L["Overwatch"],
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][info[#info]], 32, 32
                                end,
                            },
                            DST2 = {
                                order = 12,
                                type = "execute",
                                name = L["Destiny 2"],
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][info[#info]], 32, 32
                                end,
                            },
                            VIPR = {
                                order = 13,
                                type = "execute",
                                name = L["Call of Duty 4"],
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").GameIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["GameIconPack"]][info[#info]], 32, 32
                                end,
                            },
                        },
                    },
                    StatusIcons = {
                        order = 4,
                        type = "group",
                        name = L["StatusIcons"],
                        guiInline = true,
                        hidden = function()
                            return not E.db.lui.modules.blizzard.enhancedFriendsList["enable"]
                        end,
                        get = function(info)
                            return E.db.lui.modules.blizzard.enhancedFriendsList.general.StatusIcons[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.blizzard.enhancedFriendsList.general.StatusIcons[info[#info]] = value
                        end,
                        args = {
                            Online = {
                                order = 1,
                                type = "execute",
                                name = FRIENDS_LIST_ONLINE,
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").StatusIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["StatusIconPack"]][info[#info]], 16, 16
                                end,
                            },
                            Offline = {
                                order = 2,
                                type = "execute",
                                name = FRIENDS_LIST_OFFLINE,
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").StatusIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["StatusIconPack"]][info[#info]], 16, 16
                                end,
                            },
                            DND = {
                                order = 3,
                                type = "execute",
                                name = DEFAULT_DND_MESSAGE,
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").StatusIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["StatusIconPack"]][info[#info]], 16, 16
                                end,
                            },
                            AFK = {
                                order = 4,
                                type = "execute",
                                name = DEFAULT_AFK_MESSAGE,
                                func = function()
                                    return
                                end,
                                image = function(info)
                                    return E:GetModule("LuiEnhancedFriendsList").StatusIcons[E.db.lui.modules.blizzard.enhancedFriendsList.general["StatusIconPack"]][info[#info]], 16, 16
                                end,
                            }
                        }
                    }
                }
            }
        }
    }
end
T.table_insert(LUI.Configs, configTable)
