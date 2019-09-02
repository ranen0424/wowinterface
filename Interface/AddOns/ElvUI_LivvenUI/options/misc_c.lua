local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local GARRISON_LOCATION_TOOLTIP = GARRISON_LOCATION_TOOLTIP
local EXPANSION_NAME5 = EXPANSION_NAME5
local EXPANSION_NAME6 = EXPANSION_NAME6
local EXPANSION_NAME7 = EXPANSION_NAME7
local HallName = _G["ORDER_HALL_" .. E.myclass]

local function configTable()
    E.Options.args.lui.args.modules.args.misc = {
        order = 1,
        type = "group",
        childGroups = "tab",
        name = L["misc"],
        get = function(info)
            return E.db.lui.modules.misc[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.misc[info[#info]] = value
            E:StaticPopup_Show("PRIVATE_RL")
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["misc"]),
            },
            general = {
                order = 1,
                type = "group",
                name = L["general"],
                get = function(info) return
                    E.db.lui.modules.misc.general[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.misc.general[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    refixStyle = {
                        order = 1,
                        type = "toggle",
                        name = L["refixStyle"],
                    },
                    autoDelete = {
                        order = 2,
                        type = "toggle",
                        name = L["autoDelete"],
                    },
                    autoRelease = {
                        order = 3,
                        type = "toggle",
                        name = L["autoRelease"],
                    },
                    autoRepChange = {
                        order = 4,
                        type = "toggle",
                        name = L["autoRepChange"],
                    },
                    repPeaksTimes = {
                        order = 5,
                        type = "toggle",
                        name = L["repPeaksTimes"],
                    },
                    disableTalking = {
                        order = 6,
                        type = "toggle",
                        name = L["disableTalking"],
                    },
                    rightButtonMenu = {
                        order = 7,
                        type = "toggle",
                        name = L["rightButtonMenu"],
                    },
                    meetingStonePlus = {
                        order = 8,
                        type = "group",
                        guiInline = true,
                        name = L["meetingStonePlus"],
                        get = function(info)
                            return E.db.lui.modules.misc.general.meetingStonePlus[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.misc.general.meetingStonePlus[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                            },
                            panelNoBackdrop = {
                                order = 2,
                                type = "toggle",
                                name = L["panelNoBackdrop"],
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.general.meetingStonePlus["enable"]
                                end,
                            },
                            ElvUISkins = {
                                order = 3,
                                type = "toggle",
                                name = L["ElvUISkins"],
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.general.meetingStonePlus["enable"]
                                end,
                            }
                        }
                    },
                    raidUtilityPlus = {
                        order = 9,
                        type = "group",
                        guiInline = true,
                        name = L["raidUtilityPlus"],
                        get = function(info)
                            return E.db.lui.modules.misc.general.raidUtilityPlus[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.misc.general.raidUtilityPlus[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                                disabled = function(info)
                                    return T.IsAddOnLoaded("ElvUI_SLE")
                                end,
                            },
                            desc = {
                                order = 2,
                                type = "description",
                                name = L["ElvUI_SLE_ISLOADED"],
                                hidden = function(info)
                                    return not T.IsAddOnLoaded("ElvUI_SLE")
                                end,
                            },
                            ruMouseover = {
                                order = 3,
                                type = "toggle",
                                name = L["ruMouseover"],
                                disabled = function(info)
                                    return T.IsAddOnLoaded("ElvUI_SLE") or not E.db.lui.modules.misc.general.raidUtilityPlus["enable"]
                                end,
                                hidden = function(info)
                                    return T.IsAddOnLoaded("ElvUI_SLE") or not E.db.lui.modules.misc.general.raidUtilityPlus["enable"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.misc.general.raidUtilityPlus[info[#info]] = value
                                    E:GetModule("LuiMisc"):RaidUtility_SetMouseoverAlpha()
                                end,
                            },
                            spacer = {
                                order = 4,
                                type = "description",
                                name = "",
                                disabled = function(info)
                                    return T.IsAddOnLoaded("ElvUI_SLE") or not E.db.lui.modules.misc.general.raidUtilityPlus["enable"]
                                end,
                                hidden = function(info)
                                    return T.IsAddOnLoaded("ElvUI_SLE") or not E.db.lui.modules.misc.general.raidUtilityPlus["enable"]
                                end,
                            },
                            buttonNoBackdrop = {
                                order = 5,
                                type = "toggle",
                                name = L["buttonNoBackdrop"],
                                disabled = function(info)
                                    return T.IsAddOnLoaded("ElvUI_SLE") or not E.db.lui.modules.misc.general.raidUtilityPlus["enable"]
                                end,
                                hidden = function(info)
                                    return T.IsAddOnLoaded("ElvUI_SLE") or not E.db.lui.modules.misc.general.raidUtilityPlus["enable"]
                                end,
                            },
                            panelNoBackdrop = {
                                order = 6,
                                type = "toggle",
                                name = L["panelNoBackdrop"],
                                disabled = function(info)
                                    return T.IsAddOnLoaded("ElvUI_SLE") or not E.db.lui.modules.misc.general.raidUtilityPlus["enable"]
                                end,
                                hidden = function(info)
                                    return T.IsAddOnLoaded("ElvUI_SLE") or not E.db.lui.modules.misc.general.raidUtilityPlus["enable"]
                                end,
                            },
                            onoffButtonNoBorder = {
                                order = 7,
                                type = "toggle",
                                name = L["onoffButtonNoBorder"],
                                disabled = function(info)
                                    return T.IsAddOnLoaded("ElvUI_SLE") or not E.db.lui.modules.misc.general.raidUtilityPlus["enable"]
                                end,
                                hidden = function(info)
                                    return T.IsAddOnLoaded("ElvUI_SLE") or not E.db.lui.modules.misc.general.raidUtilityPlus["enable"]
                                end,
                            },
                            panelNoBorder = {
                                order = 8,
                                type = "toggle",
                                name = L["panelNoBorder"],
                                disabled = function(info)
                                    return T.IsAddOnLoaded("ElvUI_SLE") or not E.db.lui.modules.misc.general.raidUtilityPlus["enable"]
                                end,
                                hidden = function(info)
                                    return T.IsAddOnLoaded("ElvUI_SLE") or not E.db.lui.modules.misc.general.raidUtilityPlus["enable"]
                                end,
                            }
                        },
                    },
                    alreadyKnown = {
                        order = 10,
                        type = "group",
                        guiInline = true,
                        name = L["alreadyKnown"],
                        get = function(info) return
                            E.db.lui.modules.misc.general.alreadyKnown[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.misc.general.alreadyKnown[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                            },
                            color = {
                                order = 2,
                                type = "color",
                                name = L["color"],
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.general.alreadyKnown["enable"]
                                end,
                                get = function(info)
                                    local t = E.db.lui.modules.misc.general.alreadyKnown[info[#info]]
                                    local d = P.lui.modules.misc.general.alreadyKnown[info[#info]]
                                    return t.r, t.g, t.b, t.a, d.r, d.g, d.b, d.a
                                end,
                                set = function(info, r, g, b, a)
                                    E.db.lui.modules.misc.general.alreadyKnown[info[#info]] = {}
                                    local t = E.db.lui.modules.misc.general.alreadyKnown[info[#info]]
                                    t.r, t.g, t.b, t.a = r, g, b, a
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            }
                        }
                    },
                    -- talentProfiles = {
                    --     order = 11,
                    --     type = "group",
                    --     guiInline = true,
                    --     name = L["talentProfiles"],
                    --     get = function(info)
                    --         return E.db.lui.modules.misc.general.talentProfiles[info[#info]]
                    --     end,
                    --     set = function(info, value)
                    --         E.db.lui.modules.misc.general.talentProfiles[info[#info]] = value
                    --     end,
                    --     args = {
                    --         enable = {
                    --             order = 5,
                    --             type = "toggle",
                    --             name = L["Enable"],
                    --         },
                    --         ElvUISkins = {
                    --             order = 6,
                    --             type = "toggle",
                    --             name = L["ElvUISkins"],
                    --             hidden = function(info)
                    --                 return not E.db.lui.modules.misc.general.talentProfiles["enable"]
                    --             end,
                    --         }
                    --     }
                    -- },
                    setPoi = {
                        order = 12,
                        type = "group",
                        guiInline = true,
                        name = L["setPoi"],
                        get = function(info)
                            return E.db.lui.modules.misc.general.setPoi[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.misc.general.setPoi[info[#info]] = value
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                                set = function(info, value)
                                    E.db.lui.modules.misc.general.setPoi["enable"] = value
                                    E:GetModule("LuiMisc"):LoadSetPoi()
                                end,
                            },
                            spacer1 = {
                                order = 2,
                                type = "description",
                                name = "",
                            },
                            poiCombat = {
                                order = 3,
                                type = "toggle",
                                name = L["poiCombat"],
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.general.setPoi["enable"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.misc.general.setPoi[info[#info]] = value
                                    E:GetModule("LuiMisc"):LoadSetPoi()
                                end,
                            },
                            poiColor = {
                                order = 4,
                                type = "color",
                                name = L["poiColor"],
                                hasAlpha = false,
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.general.setPoi["enable"]
                                end,
                                get = function(info)
                                    local t = E.db.lui.modules.misc.general.setPoi[info[#info]]
                                    local d = P.lui.modules.misc.general.setPoi[info[#info]]
                                    return t.r, t.g, t.b, t.a, d.r, d.g, d.b, d.a
                                end,
                                set = function(info, r, g, b, a)
                                    E.db.lui.modules.misc.general.setPoi.poiColor = {}
                                    local t = E.db.lui.modules.misc.general.setPoi[info[#info]]
                                    t.r, t.g, t.b, t.a = r, g, b, a
                                    E:GetModule("LuiMisc"):LoadSetPoi()
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            poiText = {
                                order = 5,
                                type = "select",
                                name = L["poiText"],
                                values = {
                                    ["┼"] = "┼",
                                    ["╋"] = "╋",
                                    ["◆"] = "◆",
                                    ["■"] = "■",
                                    ["●"] = "●",
                                    ["※"] = "※",
                                    ["↓"] = "↓",
                                },
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.general.setPoi["enable"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.misc.general.setPoi[info[#info]] = value
                                    E:GetModule("LuiMisc"):LoadSetPoi()
                                end,
                            },
                            poiTextSize = {
                                order = 6,
                                type = "range",
                                name = L["poiTextSize"],
                                min = 10, max = 50, step = 1,
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.general.setPoi["enable"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.misc.general.setPoi[info[#info]] = value
                                    E:GetModule("LuiMisc"):LoadSetPoi()
                                end,
                            },
                        },
                    },
                    autoScreenShoot = {
                        order = 13,
                        type = "group",
                        guiInline = true,
                        name = L["autoScreenShoot"],
                        get = function(info)
                            return E.db.lui.modules.misc.general.autoScreenShoot[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.misc.general.autoScreenShoot[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                            },
                            screenFormat = {
                                order = 2,
                                name = L["screenFormat"],
                                type = "select",
                                values = {
                                    ["jpeg"] = "JPG",
                                    ["tga"] = "TGA",
                                },
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.general.autoScreenShoot["enable"]
                                end,
                                get = function(info)
                                    return GetCVar("screenshotFormat")
                                end,
                                set = function(info, value)
                                    SetCVar("screenshotFormat", value)
                                end,
                            },
                            screenQuality = {
                                order = 3,
                                name = L["screenQuality"],
                                type = "range",
                                min = 3, max = 10, step = 1,
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.general.autoScreenShoot["enable"]
                                end,
                                get = function(info)
                                    return T.tonumber(GetCVar("screenshotQuality"))
                                end,
                                set = function(info, value)
                                    SetCVar("screenshotQuality", T.tostring(value))
                                end,
                            }
                        }
                    }
                }
            },
            group = {
                order = 2,
                type = "group",
                name = L["group"],
                get = function(info)
                    return E.db.lui.modules.misc.group[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.misc.group[info[#info]] = value
                end,
                args = {
                    lfgMemberInfo = {
                        order = 1,
                        type = "toggle",
                        name = L["lfgMemberInfo"],
                    },
                    inviteGroup = {
                        order = 2,
                        type = "group",
                        guiInline = true,
                        name = L["inviteGroup"],
                        get = function(info)
                            return E.db.lui.modules.misc.group.inviteGroup[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.misc.group.inviteGroup[info[#info]] = value
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                                set = function(info, value)
                                    E.db.lui.modules.misc.group.inviteGroup[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            ainvkeyword = {
                                order = 2,
                                type = "input",
                                name = L["ainvkeyword"],
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.group.inviteGroup["enable"]
                                end,
                            },
                            spacer = {
                                order = 3,
                                type = "description",
                                name = "",
                                desc = "",
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.group.inviteGroup["enable"]
                                end,
                            },
                            inviteRank = {
                                order = 4,
                                type = "multiselect",
                                name = L["inviteRank"],
                                values = E:GetModule("LuiMisc"):GetGuildRanks(),
                                hidden = function(info)
                                    return not T.IsInGuild() or not E.db.lui.modules.misc.group.inviteGroup["enable"]
                                end,
                                get = function(info, k)
                                    return E.db.lui.modules.misc.group.inviteGroup.inviteRank[k]
                                end,
                                set = function(info, k, v)
                                    E.db.lui.modules.misc.group.inviteGroup.inviteRank[k] = v
                                end,
                            },
                            refreshRank = {
                                order = 5,
                                type = "execute",
                                name = L["refreshRank"],
                                hidden = function(info)
                                    return not T.IsInGuild() or not E.db.lui.modules.misc.group.inviteGroup["enable"]
                                end,
                                func = function()
                                    E.Options.args.lui.args.modules.args.misc.args.group.args.inviteGroup.args.inviteRank.values = E:GetModule("LuiMisc"):GetGuildRanks()
                                end,
                            },
                            startInvite = {
                                order = 6,
                                type = "execute",
                                name = L["startInvite"],
                                hidden = function(info)
                                    return not T.IsInGuild() or not E.db.lui.modules.misc.group.inviteGroup["enable"]
                                end,
                                func = function()
                                    for k, v in T.pairs(E.db.lui.modules.misc.group.inviteGroup.inviteRank) do
                                        if v then
                                            T.SendChatMessage(T.string_format(L["LUI_INVITEGROUP_MSG"], GuildControlGetRankName(k)), "GUILD")
                                        end
                                    end
                                    E:Delay(10, E:GetModule("LuiMisc").InviteRanks)
                                end,
                            },
                        },
                    },
                },
            },
            loot = {
                order = 3,
                type = "group",
                name = L["loot"],
                get = function(info)
                    return E.db.lui.modules.misc.loot[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.misc.loot[info[#info]] = value
                end,
                args = {
                    -- lootSpecManager = {
                    --     order = 1,
                    --     type = "group",
                    --     guiInline = true,
                    --     name = L["lootSpecManager"],
                    --     get = function(info)
                    --         return E.db.lui.modules.misc.loot.lootSpecManager[info[#info]]
                    --     end,
                    --     set = function(info, value)
                    --         E.db.lui.modules.misc.loot.lootSpecManager[info[#info]] = value
                    --         E:StaticPopup_Show("PRIVATE_RL")
                    --     end,
                    --     args = {
                    --         enable = {
                    --             order = 1,
                    --             type = "toggle",
                    --             name = L["Enable"],
                    --         },
                    --         lootSpecManagerBtn = {
                    --             order = 2,
                    --             type = "execute",
                    --             name = L["lootSpecManagerBtn"],
                    --             hidden = function(info)
                    --                 return not E.db.lui.modules.misc.loot.lootSpecManager["enable"]
                    --             end,
                    --             func = function()
                    --                 if LTSM_GUI then
                    --                     LTSM_GUI.frame:Show()
                    --                     E:ToggleOptionsUI()
                    --                 end
                    --             end,
                    --         }
                    --     }
                    -- },
                    fastLoot = {
                        order = 2,
                        type = "group",
                        guiInline = true,
                        name = L["fastLoot"],
                        get = function(info)
                            return E.db.lui.modules.misc.loot.fastLoot[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.misc.loot.fastLoot[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                            },
                            lootSpeed = {
                                order = 2,
                                type = "select",
                                name = L["lootSpeed"],
                                values = {
                                    ["光速"] = "光速",
                                    ["极快"] = "极快",
                                    ["稍快"] = "稍快",
                                },
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.loot.fastLoot["enable"]
                                end,
                            },
                        },
                    },
                },
            },
            azerite = {
                order = 4,
                type = "group",
                name = L["azerite"],
                get = function(info)
                    return E.db.lui.modules.misc.azerite[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.misc.azerite[info[#info]] = value
                end,
                args = {
                    skipAzeriteAnimations = {
                        order = 1,
                        type = "toggle",
                        name = L["skipAzeriteAnimations"],
                        set = function(info, value)
                            E.db.lui.modules.misc.azerite[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                    },
                    azeriteTooltip = {
                        order = 2,
                        type = "group",
                        guiInline = true,
                        name = L["azeriteTooltip"],
                        get = function(info)
                            return E.db.lui.modules.misc.azerite.azeriteTooltip[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.misc.azerite.azeriteTooltip[info[#info]] = value
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                                set = function(info, value)
                                    E.db.lui.modules.misc.azerite.azeriteTooltip[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            removeBlizzard = {
                                order = 2,
                                type = "toggle",
                                name = L["removeBlizzard"],
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.azerite.azeriteTooltip["enable"]
                                end,
                            },
                            onlyIcon = {
                                order = 3,
                                type = "toggle",
                                name = L["onlyIcon"],
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.azerite.azeriteTooltip["enable"]
                                end,
                            },
                            onlySpec = {
                                order = 4,
                                type = "toggle",
                                name = L["onlySpec"],
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.azerite.azeriteTooltip["enable"]
                                end,
                            },
                            bagIcon = {
                                order = 5,
                                type = "toggle",
                                name = L["bagIcon"],
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.azerite.azeriteTooltip["enable"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.misc.azerite.azeriteTooltip[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            bagIconPosition = {
                                order = 6,
                                type = "select",
                                name = L["bagIconPosition"],
                                values = {
                                    ["TOP"] = L["TOP"],
                                    ["BOTTOM"] = L["BOTTOM"],
                                },
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.azerite.azeriteTooltip["enable"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.misc.azerite.azeriteTooltip[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            characterIcon = {
                                order = 7,
                                type = "toggle",
                                name = L["characterIcon"],
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.azerite.azeriteTooltip["enable"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.misc.azerite.azeriteTooltip[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            characterIconPosition = {
                                order = 8,
                                type = "select",
                                name = L["characterIconPosition"],
                                values = {
                                    ["TOP"] = L["TOP"],
                                    ["BOTTOM"] = L["BOTTOM"],
                                },
                                hidden = function(info)
                                    return not E.db.lui.modules.misc.azerite.azeriteTooltip["enable"]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.misc.azerite.azeriteTooltip[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            }
                        }
                    }
                }
            },
            addonpanel = {
                order = 5,
                type = "group",
                name = L["addonpanel"],
                get = function(info)
                    return E.db.lui.modules.misc.addonpanel[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.misc.addonpanel[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    Space1 = {
                        order = 2,
                        type = "description",
                        name = "",
                    },
                    numAddOns = {
                        order = 3,
                        type = "range",
                        name = L["numAddOns"],
                        min = 3, max = 30, step = 1,
                        disabled = function()
                            return not E.db.lui.modules.misc.addonpanel["enable"]
                        end,
                    },
                    frameWidth = {
                        order = 4,
                        type = "range",
                        name = L["frameWidth"],
                        min = 225, max = 1024, step = 1,
                        disabled = function()
                            return not E.db.lui.modules.misc.addonpanel["enable"]
                        end,
                    },
                    buttonWidth = {
                        order = 5,
                        type = "range",
                        name = L["buttonWidth"],
                        min = 3, max = 30, step = 1,
                        disabled = function()
                            return not E.db.lui.modules.misc.addonpanel["enable"]
                        end,
                    },
                    buttonHeight = {
                        order = 6,
                        type = "range",
                        name = L["buttonHeight"],
                        min = 3, max = 30, step = 1,
                        disabled = function()
                            return not E.db.lui.modules.misc.addonpanel["enable"]
                        end,
                    },
                    fontName = {
                        order = 7,
                        type = "select",
                        dialogControl = "LSM30_Font",
                        name = L["fontName"],
                        values = LUI.fontName,
                        disabled = function()
                            return not E.db.lui.modules.misc.addonpanel["enable"]
                        end,
                    },
                    fontSize = {
                        order = 8,
                        name = FONT_SIZE,
                        type = "range",
                        min = 6, max = 22, step = 1,
                        disabled = function()
                            return not E.db.lui.modules.misc.addonpanel["enable"]
                        end,
                    },
                    fontFlag = {
                        order = 9,
                        name = L["Font Outline"],
                        type = "select",
                        values = LUI.fontFlagValues,
                        disabled = function()
                            return not E.db.lui.modules.misc.addonpanel["enable"]
                        end,
                    },
                    Space2 = {
                        order = 10,
                        type = "description",
                        name = "",
                    },
                    fontColor = {
                        order = 11,
                        type = "select",
                        name = L["fontColor"],
                        values = {
                            [1] = CLASS_COLORS,
                            [2] = CUSTOM,
                            [3] = L["Value Color"],
                        },
                        disabled = function()
                            return not E.db.lui.modules.misc.addonpanel["enable"]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.misc.addonpanel[info[#info]] = value
                            E:GetModule("LuiAddonControlPanel"):Update()
                        end,
                    },
                    fontCustomColor = {
                        order = 12,
                        type = "color",
                        name = L["fontCustomColor"],
                        disabled = function()
                            return E.db.lui.modules.misc.addonpanel.fontColor == 1 or E.db.lui.modules.misc.addonpanel.fontColor == 3 or not E.db.lui.modules.misc.addonpanel["enable"]
                        end,
                        get = function(info)
                            local t = E.db.lui.modules.misc.addonpanel[info[#info]]
                            local d = P.lui.modules.misc.addonpanel[info[#info]]
                            return t.r, t.g, t.b, t.a, d.r, d.g, d.b, d.a
                        end,
                        set = function(info, r, g, b)
                            E.db.lui.modules.misc.addonpanel[info[#info]] = {}
                            local t = E.db.lui.modules.misc.addonpanel[info[#info]]
                            t.r, t.g, t.b, t.a = r, g, b, a
                            E:GetModule("LuiAddonControlPanel"):Update()
                        end,
                    },
                    Space3 = {
                        order = 13,
                        type = "description",
                        name = "",
                    },
                    buttonTexture = {
                        order = 14,
                        type = "select",
                        dialogControl = "LSM30_Statusbar",
                        name = L["buttonTexture"],
                        values = LUI.texture,
                        disabled = function()
                            return not E.db.lui.modules.misc.addonpanel["enable"]
                        end,
                    },
                    buttonclassColor = {
                        order = 15,
                        type = "toggle",
                        name = L["buttonclassColor"],
                        disabled = function()
                            return not E.db.lui.modules.misc.addonpanel["enable"]
                        end,
                    },
                    buttonCustomColor = {
                        order = 16,
                        type = "color",
                        name = L["buttonCustomColor"],
                        hasAlpha = true,
                        get = function(info)
                            return unpack(E.db.lui.modules.misc.addonpanel[info[#info]])
                        end,
                        set = function(info, r, g, b, a)
                            E.db.lui.modules.misc.addonpanel[info[#info]] = {r, g, b, a}
                            E:GetModule("LuiAddonControlPanel"):Update()
                        end,
                        disabled = function()
                            return not E.db.lui.modules.misc.addonpanel["enable"] or E.db.lui.modules.misc.addonpanel["buttonclassColor"]
                        end,
                    },
                },
            },
            autoWorkOrders = {
                order = 6,
                type = "group",
                name = L["autoWorkOrders"],
                get = function(info)
                    return E.db.lui.modules.misc.autoWorkOrders[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.misc.autoWorkOrders[info[#info]] = value
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    WarlordsofDraenor = {
                        order = 2,
                        type = "group",
                        name = EXPANSION_NAME5,
                        disabled = function(info) return not E.db.lui.modules.misc.autoWorkOrders.enable end,
                        hidden = function(info) return not E.db.lui.modules.misc.autoWorkOrders.enable end,
                        get = function(info)
                            return E.db.lui.modules.misc.autoWorkOrders.WarlordsofDraenor[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.misc.autoWorkOrders.WarlordsofDraenor[info[#info]] = value
                        end,
                        args = {
                            header = {
                                order = 0,
                                type = "header",
                                name = GARRISON_LOCATION_TOOLTIP,
                            },
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                            },
                            spacer = {
                                order = 2,
                                type = "description",
                                name = "",
                            },
                            autoWarmill = {
                                order = 3,
                                type = "toggle",
                                name = L["autoWarmill"],
                                disabled = function() return not E.db.lui.modules.misc.autoWorkOrders.WarlordsofDraenor.enable end,
                            },
                            autoTradingPost = {
                                order = 4,
                                type = "toggle",
                                name = L["autoTradingPost"],
                                disabled = function() return not E.db.lui.modules.misc.autoWorkOrders.WarlordsofDraenor.enable end,
                            },
                            autoShipyard = {
                                order = 5,
                                type = "toggle",
                                name = L["autoShipyard"],
                                disabled = function() return not E.db.lui.modules.misc.autoWorkOrders.WarlordsofDraenor.enable end,
                            },
                        },
                    },
                    LEGION = {
                        order = 3,
                        type = "group",
                        name = EXPANSION_NAME6,
                        disabled = function(info) return not E.db.lui.modules.misc.autoWorkOrders.enable end,
                        hidden = function(info) return not E.db.lui.modules.misc.autoWorkOrders.enable end,
                        get = function(info)
                            return E.db.lui.modules.misc.autoWorkOrders.LEGION[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.misc.autoWorkOrders.LEGION[info[#info]] = value
                        end,
                        args = {
                            header = {
                                order = 0,
                                type = "header",
                                name = HallName,
                            },
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                            },
                            spacer = {
                                order = 2,
                                type = "description",
                                name = "",
                            },
                            autoEquip = {
                                order = 3,
                                type = "toggle",
                                name = L["autoEquip"],
                                disabled = function() return not E.db.lui.modules.misc.autoWorkOrders.LEGION.enable end,
                            },
                        },
                    },
                    BattleforAzeroth = {
                        order = 4,
                        type = "group",
                        name = EXPANSION_NAME7,
                        disabled = function(info) return not E.db.lui.modules.misc.autoWorkOrders.enable end,
                        hidden = function(info) return not E.db.lui.modules.misc.autoWorkOrders.enable end,
                        get = function(info)
                            return E.db.lui.modules.misc.autoWorkOrders.BattleforAzeroth[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.misc.autoWorkOrders.BattleforAzeroth[info[#info]] = value
                        end,
                        args = {
                            header = {
                                order = 0,
                                type = "header",
                                name = WAR_CAMPAIGN,
                            },
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
    }
end
T.table_insert(LUI.Configs, configTable)
