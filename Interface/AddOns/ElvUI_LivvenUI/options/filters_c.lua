local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local function configTable()
    local DeleteChoisedInfoToggle = false
    local DeleteAllInfoToggle = false
    local DeleteChoisedPlayerToggle = false
    local DeleteAllPlayerToggle = false
    
    E.Options.args.lui.args.modules.args.filters = {
        order = 15,
        type = "group",
        childGroups = "tab",
        name = L["filters"],
        get = function(info)
            return E.global.lui.modules.filters[info[#info]]
        end,
        set = function(info, value)
            E.global.lui.modules.filters[info[#info]] = value
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["filters"]),
            },
            infoFilter = {
                order = 1,
                type = "group",
                name = L["infoFilter"],
                get = function(info)
                    return E.global.lui.modules.filters.infoFilter[info[#info]]
                end,
                set = function(info, value)
                    E.global.lui.modules.filters.infoFilter[info[#info]] = value
                    E:StaticPopup_Show("CONFIG_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    debugFilter = {
                        order = 2,
                        type = "toggle",
                        name = L["debugFilter"],
                        hidden = function(info)
                            return not E.global.lui.modules.filters.infoFilter["enable"]
                        end,
                        set = function(info, value)
                            E.global.lui.modules.filters.infoFilter[info[#info]] = value
                        end,
                    },
                    noPMSticky = {
                        order = 3,
                        type = "toggle",
                        name = L["noPMSticky"],
                        hidden = function(info)
                            return not E.global.lui.modules.filters.infoFilter["enable"]
                        end,
                        set = function(info, value)
                            E.global.lui.modules.filters.infoFilter[info[#info]] = value
                            if value then
                                ChatTypeInfo.WHISPER.sticky = 0
                                ChatTypeInfo.BN_WHISPER.sticky = 0
                            else
                                ChatTypeInfo.WHISPER.sticky = 1
                                ChatTypeInfo.BN_WHISPER.sticky = 1
                            end
                            E:StaticPopup_Show("CONFIG_RL")
                        end,
                    },
                    spacer1 = {
                        order = 4,
                        type = "description",
                        name = "",
                        hidden = function(info)
                            return not E.global.lui.modules.filters.infoFilter["enable"]
                        end,
                    },
                    repeatFilter = {
                        order = 5,
                        type = "range",
                        min = 0, max = 120, step = 1,
                        name = L["repeatFilter"],
                        hidden = function(info)
                            return not E.global.lui.modules.filters.infoFilter["enable"]
                        end,
                    },
                    keywordMatchNum = {
                        order = 6,
                        type = "range",
                        name = L["keywordMatchNum"],
                        min = 1, max = 10, step = 1,
                        hidden = function(info)
                            return not E.global.lui.modules.filters.infoFilter["enable"]
                        end,
                    },
                    emoticonMatchNum = {
                        order = 7,
                        type = "range",
                        min = 0, max = 8, step = 1,
                        name = L["emoticonMatchNum"],
                        hidden = function(info)
                            return not E.global.lui.modules.filters.infoFilter["enable"]
                        end,
                    },
                    keywordFilter = {
                        order = 8,
                        type = "group",
                        guiInline = true,
                        name = L["keywordFilter"],
                        hidden = function(info)
                            return not E.global.lui.modules.filters.infoFilter["enable"]
                        end,
                        get = function(info)
                            return E.global.lui.modules.filters.infoFilter.keywordFilter[info[#info]]
                        end,
                        set = function(info, value)
                            E.global.lui.modules.filters.infoFilter.keywordFilter[info[#info]] = value
                        end,
                        args = {
                            addKeyword = {
                                order = 1,
                                type = "input",
                                name = L["addKeyword"],
                                get = function(info)
                                    return ""
                                end,
                                set = function(info, value)
                                    E.global.lui.modules.filters.infoFilter.keywordFilter[value] = value
                                    E.Options.args.lui.args.modules.args.filters.args.infoFilter.args.keywordFilter.args.keywordBlacklist.values[value] = value
                                end,
                            },
                            delKeyword = {
                                order = 2,
                                type = "input",
                                name = L["delKeyword"],
                                get = function(info)
                                    return ""
                                end,
                                set = function(info, value)
                                    if E.global.lui.modules.filters.infoFilter.keywordFilter[value] ~= nil then
                                        E.global.lui.modules.filters.infoFilter.keywordFilter[value] = nil
                                        E.Options.args.lui.args.modules.args.filters.args.infoFilter.args.keywordFilter.args.keywordBlacklist.values[value] = nil
                                    end
                                end,
                            },
                            Spacer1 = {
                                order = 3,
                                type = "description",
                                name = "",
                            },
                            delChoisedKeywords = {
                                order = 4,
                                type = "execute",
                                name = L["delChoisedKeywords"],
                                func = function()
                                    if not DeleteChoisedInfoToggle then
                                        DeleteChoisedInfoToggle = true
                                        E.Options.args.lui.args.modules.args.filters.args.infoFilter.args.keywordFilter.args.delChoisedKeywords.name = L["delChoisedKeywordsYES"]
                                        C_Timer.After(5, function()
                                            DeleteChoisedInfoToggle = false
                                            E.Options.args.lui.args.modules.args.filters.args.infoFilter.args.keywordFilter.args.delChoisedKeywords.name = L["delChoisedKeywords"]
                                        end)
                                    else
                                        for k, v in T.pairs(E.global.lui.modules.filters.infoFilter.keywordFilter) do
                                            if v then
                                                E.global.lui.modules.filters.infoFilter.keywordFilter[k] = nil
                                            end
                                        end
                                        DeleteChoisedInfoToggle = false
                                        E.Options.args.lui.args.modules.args.filters.args.infoFilter.args.keywordFilter.args.delChoisedKeywords.name = L["delChoisedKeywords"]
                                        T.table_wipe(E.Options.args.lui.args.modules.args.filters.args.infoFilter.args.keywordFilter.args.keywordBlacklist.values)
                                        for k, v in T.pairs(E.global.lui.modules.filters.infoFilter.keywordFilter) do
                                            E.Options.args.lui.args.modules.args.filters.args.infoFilter.args.keywordFilter.args.keywordBlacklist.values[k] = k
                                        end
                                    end
                                end,
                            },
                            delAllKeywords = {
                                order = 5,
                                type = "execute",
                                name = L["delAllKeywords"],
                                func = function()
                                    if not DeleteAllInfoToggle then
                                        DeleteAllInfoToggle = true
                                        E.Options.args.lui.args.modules.args.filters.args.infoFilter.args.keywordFilter.args.delAllKeywords.name = L["delAllKeywordsYES"]
                                        C_Timer.After(5, function()
                                            DeleteAllInfoToggle = false
                                            E.Options.args.lui.args.modules.args.filters.args.infoFilter.args.keywordFilter.args.delAllKeywords.name = L["delAllKeywords"]
                                        end)
                                    else
                                        T.table_wipe(E.global.lui.modules.filters.infoFilter.keywordFilter)
                                        T.table_wipe(E.Options.args.lui.args.modules.args.filters.args.infoFilter.args.keywordFilter.args.keywordBlacklist.values)
                                        DeleteAllInfoToggle = false
                                        E.Options.args.lui.args.modules.args.filters.args.infoFilter.args.keywordFilter.args.delAllKeywords.name = L["delAllKeywords"]
                                    end
                                end,
                            },
                            keywordBlacklist = {
                                order = 6,
                                type = "multiselect",
                                name = L["keywordBlacklist"],
                                get = function(info, k)
                                    return E.global.lui.modules.filters.infoFilter.keywordFilter[k]
                                end,
                                set = function(info, k, v)
                                    E.global.lui.modules.filters.infoFilter.keywordFilter[k] = v
                                end,
                                values = {
                                }
                            }
                        }
                    }
                }
            },
            pmFilter = {
                order = 2,
                type = "group",
                name = L["pmFilter"],
                get = function(info)
                    return E.global.lui.modules.filters.pmFilter[info[#info]]
                end,
                set = function(info, value)
                    E.global.lui.modules.filters.pmFilter[info[#info]] = value
                    E:StaticPopup_Show("CONFIG_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    demoLevel = {
                        order = 2,
                        type = "toggle",
                        name = L["demoLevel"],
                        hidden = function(info)
                            return not E.global.lui.modules.filters.pmFilter["enable"]
                        end,
                    },
                    spacer1 = {
                        order = 3,
                        type = "description",
                        name = "",
                        hidden = function(info)
                            return not E.global.lui.modules.filters.pmFilter["enable"]
                        end,
                    },
                    levelFilter = {
                        order = 4,
                        type = "range",
                        min = 1, max = MAX_PLAYER_LEVEL - 1, step = 1,
                        name = L["levelFilter"],
                        hidden = function(info)
                            return not E.global.lui.modules.filters.pmFilter["enable"]
                        end,
                    },
                    DKLevelFilter = {
                        order = 5,
                        type = "range",
                        min = 57, max = MAX_PLAYER_LEVEL - 1, step = 1,
                        name = L["DKLevelFilter"],
                        hidden = function(info)
                            return not E.global.lui.modules.filters.pmFilter["enable"]
                        end,
                    },
                    DHLevelFilter = {
                        order = 6,
                        type = "range",
                        min = 99, max = MAX_PLAYER_LEVEL - 1, step = 1,
                        name = L["DHLevelFilter"],
                        hidden = function(info)
                            return not E.global.lui.modules.filters.pmFilter["enable"]
                        end,
                    }
                }
            },
            playerFilter = {
                order = 3,
                type = "group",
                name = L["playerFilter"],
                get = function(info)
                    return E.global.lui.modules.filters.playerFilter[info[#info]]
                end,
                set = function(info, value)
                    E.global.lui.modules.filters.playerFilter[info[#info]] = value
                    E:StaticPopup_Show("CONFIG_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    nameFilter = {
                        order = 2,
                        type = "group",
                        guiInline = true,
                        name = L["nameFilter"],
                        hidden = function(info)
                            return not E.global.lui.modules.filters.playerFilter["enable"]
                        end,
                        get = function(info)
                            return E.global.lui.modules.filters.playerFilter[info[#info]]
                        end,
                        set = function(info, value)
                            E.global.lui.modules.filters.playerFilter[info[#info]] = value
                        end,
                        args = {
                            addPlayer = {
                                order = 2,
                                type = "input",
                                name = L["addPlayer"],
                                get = function(info)
                                    return ""
                                end,
                                set = function(info, value)
                                    E.global.lui.modules.filters.playerFilter.nameFilter[value] = value
                                    E.Options.args.lui.args.modules.args.filters.args.playerFilter.args.nameFilter.args.playerBlacklist.values[value] = value
                                end,
                            },
                            delPlayer = {
                                order = 3,
                                type = "input",
                                name = L["delPlayer"],
                                get = function(info)
                                    return ""
                                end,
                                set = function(info, value)
                                    if E.global.lui.modules.filters.playerFilter.nameFilter[value] ~= nil then
                                        E.global.lui.modules.filters.playerFilter.nameFilter[value] = nil
                                    end
                                end,
                            },
                            spacer1 = {
                                order = 4,
                                type = "description",
                                name = "",
                            },
                            delChoisedPlayers = {
                                order = 4,
                                type = "execute",
                                name = L["delChoisedPlayers"],
                                func = function()
                                    if not DeleteChoisedPlayerToggle then
                                        DeleteChoisedPlayerToggle = true
                                        E.Options.args.lui.args.modules.args.filters.args.playerFilter.args.nameFilter.args.delChoisedPlayers.name = L["delChoisedPlayersYES"]
                                        C_Timer.After(5, function()
                                            DeleteChoisedPlayerToggle = false
                                            E.Options.args.lui.args.modules.args.filters.args.playerFilter.args.nameFilter.args.delChoisedPlayers.name = L["delChoisedPlayers"]
                                        end)
                                    else
                                        for k, v in T.pairs(E.global.lui.modules.filters.playerFilter.nameFilter) do
                                            if v then
                                                E.global.lui.modules.filters.playerFilter.nameFilter[k] = nil
                                            end
                                        end
                                        DeleteChoisedPlayerToggle = false
                                        E.Options.args.lui.args.modules.args.filters.args.playerFilter.args.nameFilter.args.delChoisedPlayers.name = L["delChoisedPlayers"]
                                        T.table_wipe(E.Options.args.lui.args.modules.args.filters.args.playerFilter.args.nameFilter.args.playerBlacklist.values)
                                        for k, v in T.pairs(E.global.lui.modules.filters.playerFilter.nameFilter) do
                                            E.Options.args.lui.args.modules.args.filters.args.playerFilter.args.nameFilter.args.playerBlacklist.values[k] = k
                                        end
                                    end
                                end,
                            },
                            delAllPlayers = {
                                order = 5,
                                type = "execute",
                                name = L["delAllPlayers"],
                                func = function()
                                    if not DeleteAllPlayerToggle then
                                        DeleteAllPlayerToggle = true
                                        E.Options.args.lui.args.modules.args.filters.args.playerFilter.args.nameFilter.args.delAllPlayers.name = L["delAllPlayersYES"]
                                        C_Timer.After(5, function()
                                            DeleteAllPlayerToggle = false
                                            E.Options.args.lui.args.modules.args.filters.args.playerFilter.args.nameFilter.args.delAllPlayers.name = L["delAllPlayers"]
                                        end)
                                    else
                                        T.table_wipe(E.global.lui.modules.filters.playerFilter.nameFilter)
                                        T.table_wipe(E.Options.args.lui.args.modules.args.filters.args.playerFilter.args.nameFilter.args.playerBlacklist.values)
                                        DeleteAllPlayerToggle = false
                                        E.Options.args.lui.args.modules.args.filters.args.playerFilter.args.nameFilter.args.delAllPlayers.name = L["delAllPlayers"]
                                        E:StaticPopup_Show("CONFIG_RL")
                                    end
                                end,
                            },
                            playerBlacklist = {
                                order = 7,
                                type = "multiselect",
                                name = L["playerBlacklist"],
                                get = function(info, k)
                                    return E.global.lui.modules.filters.playerFilter.nameFilter[k]
                                end,
                                set = function(info, k, v)
                                    E.global.lui.modules.filters.playerFilter.nameFilter[k] = v
                                end,
                                values = {
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    for k, v in T.pairs(E.global.lui.modules.filters.infoFilter.keywordFilter) do
        E.Options.args.lui.args.modules.args.filters.args.infoFilter.args.keywordFilter.args.keywordBlacklist.values[k] = k
    end
    
    for k, v in T.pairs(E.global.lui.modules.filters.playerFilter.nameFilter) do
        E.Options.args.lui.args.modules.args.filters.args.playerFilter.args.nameFilter.args.playerBlacklist.values[k] = k
    end
end
T.table_insert(LUI.Configs, configTable)
