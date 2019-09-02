local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local DEFAULT, MINIMIZE, HIDE = DEFAULT, MINIMIZE, HIDE
local GARRISON_LOCATION_TOOLTIP = GARRISON_LOCATION_TOOLTIP
local BATTLEGROUNDS = BATTLEGROUNDS
local ARENA = ARENA
local DUNGEONS = DUNGEONS
local SCENARIOS = SCENARIOS
local RAIDS = RAIDS

local settings = {
    ["FULL"] = DEFAULT,
    ["COLLAPSED"] = MINIMIZE,
    ["HIDE"] = HIDE,
}

local function configTable()
    E.Options.args.lui.args.modules.args.quest = {
        order = 10,
        type = "group",
        childGroups = "tab",
        name = L["quest"],
        get = function(info)
            return E.db.lui.modules.quest[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.quest[info[#info]] = value
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["quest"]),
            },
            questAutomation = {
                order = 1,
                type = "group",
                name = L["questAutomation"],
                get = function(info)
                    return E.db.lui.modules.quest.questAutomation[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.quest.questAutomation[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    modifierKey = {
                        order = 2,
                        type = "select",
                        name = L["modifierKey"],
                        values = {
                            ALT = "ALT",
                            CTRL = "CTRL",
                            SHIFT = "SHIFT",
                        },
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAutomation["enable"]
                        end,
                    },
                    reverse = {
                        order = 3,
                        type = "toggle",
                        name = L["reverse"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAutomation["enable"]
                        end,
                        get = function(info)
                            return E.db.lui.modules.quest.questAutomation[info[#info]]
                        end,
                        set = function(info, value)
                            if value then
                                E.Options.args.lui.args.modules.args.quest.args.questAutomation.args.modifierKey.name = L["modifierKey_reverse"]
                            else
                                E.Options.args.lui.args.modules.args.quest.args.questAutomation.args.modifierKey.name = L["modifierKey"]
                            end
                            E.db.lui.modules.quest.questAutomation[info[#info]] = value
                        end,
                    },
                    spacer1 = {
                        order = 4,
                        type = "description",
                        name = "",
                    },
                    gossip = {
                        order = 5,
                        type = "toggle",
                        name = L["gossip"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAutomation["enable"]
                        end,
                    },
                    gossipraid = {
                        order = 6,
                        type = "select",
                        name = L["gossipraid"],
                        values = {
                            [0] = L["Never"],
                            [1] = L["Soloing"],
                            [2] = L["Always"]
                        },
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAutomation["enable"] or not E.db.lui.modules.quest.questAutomation["gossip"]
                        end,
                    },
                    spacer2 = {
                        order = 7,
                        type = "description",
                        name = "",
                    },
                    nomi = {
                        order = 8,
                        type = "toggle",
                        name = L["nomi"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAutomation["enable"]
                        end,
                    },
                    faireport = {
                        order = 9,
                        type = "toggle",
                        name = L["faireport"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAutomation["enable"]
                        end,
                    },
                    withered = {
                        order = 10,
                        type = "toggle",
                        name = L["withered"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAutomation["enable"]
                        end,
                    },
                    share = {
                        order = 11,
                        type = "toggle",
                        name = L["share"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAutomation["enable"]
                        end,
                    },
                    spacer3 = {
                        order = 12,
                        type = "description",
                        name = "",
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAutomation["enable"]
                        end,
                    },
                    frameBtn = {
                        order = 13,
                        type = "toggle",
                        name = L["frameBtn"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAutomation["enable"]
                        end,
                    },
                    ElvUISkins = {
                        order = 14,
                        type = "toggle",
                        name = L["ElvUISkins"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAutomation["enable"] or not E.db.lui.modules.quest.questAutomation["frameBtn"]
                        end,
                    },
                    blacklistDB = {
                        order = 15,
                        type = "multiselect",
                        name = L["blacklistDB"],
                        get = function(info, k)
                            return E.db.lui.modules.quest.questAutomation.blacklistDB[k]
                        end,
                        set = function(info, k, v)
                            E.db.lui.modules.quest.questAutomation.blacklistDB[k] = v
                        end,
                        values = {}
                    },
                }
            },
            questAnnouncment = {
                order = 2,
                type = "group",
                name = L["questAnnouncment"],
                get = function(info)
                    return E.db.lui.modules.quest.questAnnouncment[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.quest.questAnnouncment[info[#info]] = value
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
                    questSolo = {
                        order = 3,
                        type = "toggle",
                        name = L["questSolo"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAnnouncment["enable"]
                        end,
                    },
                    questParty = {
                        order = 4,
                        type = "toggle",
                        name = L["questParty"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAnnouncment["enable"]
                        end,
                    },
                    questRaid = {
                        order = 5,
                        type = "toggle",
                        name = L["questRaid"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAnnouncment["enable"]
                        end,
                    },
                    questInstance = {
                        order = 6,
                        type = "toggle",
                        name = L["questInstance"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAnnouncment["enable"]
                        end,
                    },
                    questNoDetail = {
                        order = 7,
                        type = "toggle",
                        name = L["questNoDetail"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAnnouncment["enable"]
                        end,
                    },
                    ignoreSupplies = {
                        order = 8,
                        type = "toggle",
                        name = L["ignoreSupplies"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAnnouncment["enable"]
                        end,
                    },
                    spacer1 = {
                        order = 9,
                        type = "description",
                        name = "",
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAnnouncment["enable"]
                        end,
                    },
                    frameBtn = {
                        order = 10,
                        type = "toggle",
                        name = L["frameBtn"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAnnouncment["enable"]
                        end,
                    },
                    ElvUISkins = {
                        order = 11,
                        type = "toggle",
                        name = L["ElvUISkins"],
                        hidden = function(info)
                            return not E.db.lui.modules.quest.questAnnouncment["enable"] or not E.db.lui.modules.quest.questAnnouncment["frameBtn"]
                        end,
                    },
                },
            },
            questSmartTracker = {
                order = 3,
                type = "group",
                name = L["questSmartTracker"],
                get = function(info)
                    return E.db.lui.modules.quest.questSmartTracker[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.quest.questSmartTracker[info[#info]] = value
                    E:GetModule("LuiQuestSmartTracker"):Update()
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                        set = function(info, value)
                            E.db.lui.modules.quest.questSmartTracker[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                    },
                    UntrackQuests = {
                        order = 2,
                        type = "group",
                        name = L["UntrackQuests"],
                        guiInline = true,
                        hidden = function()
                            return not E.db.lui.modules.quest.questSmartTracker["enable"]
                        end,
                        args = {
                            autoRemove = {
                                order = 1,
                                type = "toggle",
                                name = L["autoRemove"],
                                get = function(info)
                                    return E.db.lui.modules.quest.questSmartTracker[info[#info]]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.quest.questSmartTracker[info[#info]] = value
                                    E:GetModule("LuiQuestSmartTracker"):Update()
                                end,
                            },
                            removeWaypoints = {
                                order = 2,
                                type = "toggle",
                                name = L["removeWaypoints"],
                                get = function(info)
                                    return E.db.lui.modules.quest.questSmartTracker[info[#info]]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.quest.questSmartTracker[info[#info]] = value
                                    E:GetModule("LuiQuestSmartTracker"):Update()
                                end,
                            },
                            removeLegendary = {
                                order = 3,
                                type = "toggle",
                                name = L["removeLegendary"],
                                get = function(info)
                                    return not E.db.lui.modules.quest.questSmartTracker[info[#info]]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.quest.questSmartTracker[info[#info]] = not value
                                    E:GetModule("LuiQuestSmartTracker"):Update()
                                end,
                            },
                            showDailies = {
                                order = 3,
                                type = "toggle",
                                name = L["showDailies"],
                                get = function(info)
                                    return E.db.lui.modules.quest.questSmartTracker[info[#info]]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.quest.questSmartTracker[info[#info]] = value
                                    E:GetModule("LuiQuestSmartTracker"):Update()
                                end,
                            },
                            handlingComplete = {
                                order = 10,
                                type = "select",
                                style = "radio",
                                name =  L["handlingComplete"],
                                values = {
                                    keep = L["keepAll"],
                                    keep_local = L["keepOnlyLocal"],
                                    remove = L["removeAll"],
                                },
                                get = function(info)
                                    return E.db.lui.modules.quest.questSmartTracker[info[#info]]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.quest.questSmartTracker[info[#info]] = value
                                    E:GetModule("LuiQuestSmartTracker"):Update()
                                end,
                            },
                        },
                    },
                    sortQuests = {
                        order = 3,
                        type = "group",
                        name = L["sortQuests"],
                        guiInline = true,
                        hidden = function()
                            return not E.db.lui.modules.quest.questSmartTracker["enable"]
                        end,
                        args = {
                            autoSort = {
                                order = 1,
                                type = "toggle",
                                name = L["autoSort"],
                                get = function(info)
                                    return E.db.lui.modules.quest.questSmartTracker["autoSort"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.quest.questSmartTracker["autoSort"] = value
                                    E:GetModule("LuiQuestSmartTracker"):Update()
                                end,
                            },
                        },
                    },
                    Debug = {
                        order = 5,
                        type = "group",
                        name = L["Debug"],
                        guiInline = true,
                        hidden = function()
                            return not E.db.lui.modules.quest.questSmartTracker["enable"]
                        end,
                        args = {
                            untrackAllQuests = {
                                type = "execute",
                                buttonElvUI = true,
                                order = 1,
                                name = L["untrackAllQuests"],
                                func = function()
                                    E:GetModule("LuiQuestSmartTracker"):untrackAllQuests()
                                end,
                            },
                            updateTrackedQuests = {
                                type = "execute",
                                buttonElvUI = true,
                                order = 2,
                                name = L["updateTrackedQuests"],
                                func = function()
                                    E:GetModule("LuiQuestSmartTracker"):RunUpdate()
                                end,
                            },
                            printQuests = {
                                type = "execute",
                                buttonElvUI = true,
                                order = 3,
                                name = L["printQuests"],
                                func = function()
                                    E:GetModule("LuiQuestSmartTracker"):debugPrintQuestsHelper(false)
                                end,
                            },
                            printTrackedQuests = {
                                type = "execute",
                                buttonElvUI = true,
                                order = 4,
                                name = L["printTrackedQuests"],
                                func = function()
                                    E:GetModule("LuiQuestSmartTracker"):debugPrintQuestsHelper(true)
                                end,
                            },
                        },
                    },
                },
            },
            questTrackerVisibility = {
                type = "group",
                order = 6,
                name = L["questTrackerVisibility"],
                get = function(info)
                    return E.db.lui.modules.quest.questTrackerVisibility[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.quest.questTrackerVisibility[info[#info]] = value
                    E:GetModule("LuiQuestTrackerVisibility"):ChangeState()
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    space1 = {
                        order = 2,
                        type = "description",
                        name = "",
                    },
                    isResting = {
                        order = 3,
                        type = "select",
                        name = L["isResting"],
                        values = settings,
                        hidden = function()
                            return not E.db.lui.modules.quest.questTrackerVisibility["enable"]
                        end,
                    },
                    garrison = {
                        order = 4,
                        type = "select",
                        name = GARRISON_LOCATION_TOOLTIP,
                        values = settings,
                        hidden = function()
                            return not E.db.lui.modules.quest.questTrackerVisibility["enable"]
                        end,
                    },
                    orderhall = {
                        order = 5,
                        type = "select",
                        name = L["orderhall"],
                        values = settings,
                        hidden = function()
                            return not E.db.lui.modules.quest.questTrackerVisibility["enable"]
                        end,
                    },
                    battlegrounds = {
                        order = 6,
                        type = "select",
                        name = BATTLEGROUNDS,
                        values = settings,
                        hidden = function()
                            return not E.db.lui.modules.quest.questTrackerVisibility["enable"]
                        end,
                    },
                    arena = {
                        order = 7,
                        type = "select",
                        name = ARENA,
                        values = settings,
                        hidden = function()
                            return not E.db.lui.modules.quest.questTrackerVisibility["enable"]
                        end,
                    },
                    dungeon = {
                        order = 8,
                        type = "select",
                        name = DUNGEONS,
                        values = settings,
                        hidden = function()
                            return not E.db.lui.modules.quest.questTrackerVisibility["enable"]
                        end,
                    },
                    scenario = {
                        order = 9,
                        type = "select",
                        name = SCENARIOS,
                        values = settings,
                        hidden = function()
                            return not E.db.lui.modules.quest.questTrackerVisibility["enable"]
                        end,
                    },
                    raid = {
                        order = 10,
                        type = "select",
                        name = RAIDS,
                        values = settings,
                        hidden = function()
                            return not E.db.lui.modules.quest.questTrackerVisibility["enable"]
                        end,
                    },
                    combat = {
                        order = 11,
                        type = "select",
                        name = COMBAT,
                        values = {
                            ["FULL"] = DEFAULT,
                            ["COLLAPSED"] = MINIMIZE,
                            ["HIDE"] = HIDE,
                            ["NONE"] = NONE,
                        },
                        hidden = function()
                            return not E.db.lui.modules.quest.questTrackerVisibility["enable"]
                        end,
                    },
                },
            },
        -- questListEnhanced = {
        --     order = 3,
        --     type = "group",
        --     name = L["questListEnhanced"],
        --     guiInline = true,
        --     get = function(info)
        --         return E.db.lui.modules.quest.questListEnhanced[info[#info]]
        --     end,
        --     set = function(info, value)
        --         E.db.lui.modules.quest.questListEnhanced[info[#info]] = value
        --         E:StaticPopup_Show("PRIVATE_RL")
        --     end,
        --     args = {
        --         enable = {
        --             order = 1,
        --             type = "toggle",
        --             name = L["Enable"],
        --         },
        --         questLevel = {
        --             order = 4,
        --             type = "group",
        --             name = L["questLevel"],
        --             guiInline = true,
        --             hidden = function(info)
        --                 return not E.db.lui.modules.quest.questListEnhanced["enable"]
        --             end,
        --             get = function(info)
        --                 return E.db.lui.modules.quest.questListEnhanced.questLevel[info[#info]]
        --             end,
        --             set = function(info, value)
        --                 E.db.lui.modules.quest.questListEnhanced.questLevel[info[#info]] = value
        --                 E:StaticPopup_Show("PRIVATE_RL")
        --             end,
        --             args = {
        --                 titleLevel = {
        --                     order = 1,
        --                     type = "toggle",
        --                     name = L["titleLevel"],
        --                 },
        --                 detailLevel = {
        --                     order = 2,
        --                     type = "toggle",
        --                     name = L["detailLevel"],
        --                 },
        --                 ignoreHighLevel = {
        --                     order = 3,
        --                     type = "toggle",
        --                     name = L["ignoreHighLevel"],
        --                 },
        --             }
        --         }
        --     }
        -- }
        }
    }
    for k, v in pairs(E.db.lui.modules.quest.questAutomation.blacklistDB.items) do
        if GetItemInfo(v) then
            E.Options.args.lui.args.modules.args.quest.args.questAutomation.args.blacklistDB.values[v] = GetItemInfo(v)
        end
    end
end
T.table_insert(LUI.Configs, configTable)
