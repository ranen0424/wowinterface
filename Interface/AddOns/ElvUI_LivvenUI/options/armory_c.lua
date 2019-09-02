local LUI, T, E, L, V, P, G = unpack(select(2, ...))

LUI.BackgroundsTextures = {
    Keys = {
        ["0"] = "NONE",
        ["1"] = "CUSTOM",
        ["2"] = "CLASS",
        ["3"] = "FACTION",
        ["4"] = "RACE",
        ["5"] = "Superman",
        ["6"] = "Spiderman",
        ["7"] = "Alliance-bliz",
        ["8"] = "Horde-bliz",
        ["9"] = "Arena-bliz",
        ["10"] = "Space",
    },
    Config = {
        ["0"] = L["NONE"],
        ["1"] = CUSTOM,
        ["2"] = CLASS,
        ["3"] = FACTION,
        ["4"] = RACE,
        ["5"] = L["Superman"],
        ["6"] = L["Spiderman"],
        ["7"] = FACTION_ALLIANCE .. " Blizzard",
        ["8"] = FACTION_HORDE .. " Blizzard",
        ["9"] = ARENA .. " Blizzard",
        ["10"] = L["Space"],
    },
}

local function configTable()
    E.Options.args.lui.args.modules.args.armory = {
        order = 3,
        type = "group",
        childGroups = "tab",
        name = L["armory"],
        get = function(info)
            return E.db.lui.modules.armory[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.armory[info[#info]] = value
            E:StaticPopup_Show("PRIVATE_RL")
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["armory"]),
            },
            enable = {
                order = 1,
                type = "toggle",
                name = L["Enable"],
                disabled = function()
                    return IsAddOnLoaded("ElvUI_SLE")
                end,
            },
            desc = {
                order = 2,
                type = "description",
                name = L["armory_DESC"],
                hidden = function(info)
                    return not T.IsAddOnLoaded("ElvUI_SLE")
                end,
            },
            general = {
                order = 3,
                type = "group",
                name = L["general"],
                disabled = function()
                    return not E.db.lui.modules.armory.enable or IsAddOnLoaded("ElvUI_SLE")
                end,
                hidden = function()
                    return not E.db.lui.modules.armory.enable or IsAddOnLoaded("ElvUI_SLE")
                end,
                get = function(info)
                    return E.db.lui.modules.armory.general[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.armory.general[info[#info]] = value
                end,
                args = {
                    azeritebtn = {
                        order = 1,
                        type = "toggle",
                        name = L["AzeriteButtons"],
                    },
                    naked = {
                        order = 2,
                        type = "toggle",
                        name = L["NakedButton"],
                    },
                    azeriteGlow = {
                        order = 3,
                        type = "toggle",
                        name = L["azeriteGlow"],
                    },
                    neckSlotTop = {
                        order = 4,
                        type = "toggle",
                        name = L["neckSlotTop"],
                    },
                    backdrop = {
                        order = 5,
                        type = "group",
                        guiInline = true,
                        name = L["backdrop"],
                        disabled = function()
                            return not E.db.lui.modules.armory.enable or IsAddOnLoaded("ElvUI_SLE")
                        end,
                        get = function(info)
                            return E.db.lui.modules.armory.general.backdrop[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.armory.general.backdrop[info[#info]] = value
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                                set = function(info, value)
                                    E.db.lui.modules.armory.general.backdrop[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            selectedBG = {
                                order = 2,
                                type = "select",
                                name = L["SelectImage"],
                                disabled = function()
                                    return not E.db.lui.modules.armory.general.backdrop.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.armory.general.backdrop.enable
                                end,
                                get = function()
                                    for Index, Key in T.pairs(LUI.BackgroundsTextures.Keys) do
                                        if Key == E.db.lui.modules.armory.general.backdrop.selectedBG then
                                            return Index
                                        end
                                    end
                                    return "1"
                                end,
                                set = function(_, value)
                                    E.db.lui.modules.armory.general.backdrop.selectedBG = LUI.BackgroundsTextures.Keys[value]
                                    E:GetModule("LuiArmory"):Update_BG(_G["LuiCharacterArmory"])
                                end,
                                values = function()
                                    return LUI.BackgroundsTextures.Config
                                end,
                            },
                            overlay = {
                                order = 3,
                                type = "toggle",
                                name = L["overlay"],
                                disabled = function()
                                    return not E.db.lui.modules.armory.general.backdrop.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.armory.general.backdrop.enable
                                end,
                                set = function(_, value)E.db.lui.modules.armory.general.backdrop.overlay = value
                                    E:GetModule("LuiArmory"):ElvOverlayToggle()
                                end
                            },
                            alpha = {
                                order = 4,
                                name = L["alpha"],
                                type = "range",
                                min = 0, max = 1, step = .1,
                                disabled = function()
                                    return not E.db.lui.modules.armory.general.backdrop.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.armory.general.backdrop.enable
                                end,
                                set = function(_, value)
                                    E.db.lui.modules.armory.general.backdrop.alpha = value
                                    E:GetModule("LuiArmory"):Update_BG(_G["LuiCharacterArmory"])
                                end,
                            },
                            space1 = {
                                order = 5,
                                type = "description",
                                name = "",
                                disabled = function()
                                    return not E.db.lui.modules.armory.general.backdrop.enable
                                end,
                                hidden = function()
                                    return not E.db.lui.modules.armory.general.backdrop.enable
                                end,
                            },
                            customAddress = {
                                order = 6,
                                type = "input",
                                width = "double",
                                name = L["CustomImagePath"],
                                disabled = function()
                                    return not E.db.lui.modules.armory.general.backdrop.enable
                                end,
                                hidden = function()
                                    return E.db.lui.modules.armory.general.backdrop.selectedBG ~= "CUSTOM" or E.db.lui.modules.armory.general.backdrop.enable
                                end,
                                set = function(_, value)
                                    E.db.lui.modules.armory.general.backdrop.customAddress = value
                                    E:GetModule("LuiArmory"):Update_BG(_G["LuiCharacterArmory"])
                                end,
                            },
                        }
                    },
                    durability = {
                        order = 6,
                        type = "group",
                        guiInline = true,
                        name = L["durability"],
                        get = function(info)
                            return E.db.lui.modules.armory.general.durability[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.armory.general.durability[info[#info]] = value
                            E:GetModule("LuiArmory"):UpdatePaperDoll()
                        end,
                        args = {
                            enable = {
                                type = "toggle",
                                order = 1,
                                name = L["Enable"],
                            },
                            onlydamaged = {
                                type = "toggle",
                                order = 2,
                                name = L["DamagedOnly"],
                                disabled = function()
                                    return not E.db.lui.modules.armory.general.durability.enable
                                end,
                            },
                            space1 = {
                                order = 3,
                                type = "description",
                                name = "",
                            },
                            fontName = {
                                order = 4,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                name = L["fontName"],
                                values = LUI.fontName,
                                disabled = function()
                                    return not E.db.lui.modules.armory.general.durability.enable
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.armory.general.durability[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            fontSize = {
                                order = 5,
                                name = L["fontSize"],
                                type = "range",
                                min = 6, max = 22, step = 1,
                                disabled = function()
                                    return not E.db.lui.modules.armory.general.durability.enable
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.armory.general.durability[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                            fontFlag = {
                                order = 6,
                                type = "select",
                                name = L["fontFlag"],
                                values = LUI.fontFlagValues,
                                disabled = function()
                                    return not E.db.lui.modules.armory.general.durability.enable
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.armory.general.durability[info[#info]] = value
                                    E:StaticPopup_Show("PRIVATE_RL")
                                end,
                            },
                        },
                    },
                    gradient = {
                        order = 7,
                        type = "group",
                        guiInline = true,
                        name = L["gradient"],
                        get = function(info)
                            return E.db.lui.modules.armory.general.gradient[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.armory.general.gradient[info[#info]] = value
                            E:GetModule("LuiArmory"):UpdatePaperDoll()
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                            },
                            colorStyle = {
                                order = 2,
                                type = "select",
                                name = COLOR,
                                values = {
                                    ["RARITY"] = RARITY,
                                    ["VALUE"] = L["Value"],
                                    ["CUSTOM"] = CUSTOM,
                                },
                            },
                            color = {
                                order = 3,
                                type = "color",
                                name = COLOR_PICKER,
                                disabled = function()
                                    return E.db.lui.modules.armory.general.gradient.colorStyle == "RARITY" or E.db.lui.modules.armory.general.gradient.colorStyle == "VALUE" or not E.db.lui.modules.armory.general.gradient.enable
                                end,
                                get = function(info)
                                    local t = E.db.lui.modules.armory.general.gradient[info[#info]]
                                    local d = P.lui.modules.armory.general.gradient[info[#info]]
                                    return t.r, t.g, t.b, d.r, d.g, d.b
                                end,
                                set = function(info, r, g, b)
                                    E.db.lui.modules.armory.general.gradient[info[#info]] = {}
                                    local t = E.db.lui.modules.armory.general.gradient[info[#info]]
                                    t.r, t.g, t.b = r, g, b
                                    E:GetModule("LuiArmory"):UpdatePaperDoll()
                                end,
                            },
                            alpha = {
                                order = 4,
                                name = L["alpha"],
                                type = "range",
                                min = 0, max = 1, step = .1,
                            },
                        },
                    },
                    transmog = {
                        order = 8,
                        type = "group",
                        guiInline = true,
                        name = L["transmog"],
                        get = function(info)
                            return E.db.lui.modules.armory.general.transmog[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.armory.general.transmog[info[#info]] = value
                            E:GetModule("LuiArmory"):UpdatePaperDoll()
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                            },
                        },
                    },
                },
            },
            stats = {
                order = 4,
                type = "group",
                name = STAT_CATEGORY_ATTRIBUTES,
                disabled = function()
                    return IsAddOnLoaded("ElvUI_SLE") or IsAddOnLoaded("DejaCharacterStats") or not E.db.lui.modules.armory.enable
                end,
                hidden = function()
                    return IsAddOnLoaded("ElvUI_SLE") or IsAddOnLoaded("DejaCharacterStats") or not E.db.lui.modules.armory.enable
                end,
                get = function(info)
                    return E.db.lui.modules.armory.stats[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.armory.stats[info[#info]] = value
                    E:GetModule("LuiArmory"):PaperDollFrame_UpdateStats()
                end,
                args = {
                    IlvlFull = {
                        order = 1,
                        type = "toggle",
                        name = L["FullItemLevel"],
                    },
                    IlvlColor = {
                        order = 2,
                        type = "toggle",
                        name = L["ItemLevelColoring"],
                        disabled = function()
                            return not E.db.lui.modules.armory.stats.IlvlFull
                        end,
                    },
                    AverageColor = {
                        order = 3,
                        type = "color",
                        name = L["color"],
                        hasAlpha = false,
                        disabled = function()
                            return not E.db.lui.modules.armory.stats.IlvlFull or not E.db.lui.modules.armory.stats.IlvlColor
                        end,
                        get = function(info)
                            local t = E.db.lui.modules.armory.stats[info[#info]]
                            local d = P.lui.modules.armory.stats[info[#info]]
                            return t.r, t.g, t.b, t.a, d.r, d.g, d.b, d.a
                        end,
                        set = function(info, r, g, b, a)
                            E.db.lui.modules.armory.stats[info[#info]] = {}
                            local t = E.db.lui.modules.armory.stats[info[#info]]
                            t.r, t.g, t.b, t.a = r, g, b, a
                            E:GetModule("LuiArmory"):PaperDollFrame_UpdateStats()
                        end,
                    },
                    OnlyPrimary = {
                        order = 4,
                        type = "toggle",
                        name = L["OnlyPrimary"],
                    },
                    ElvUISkins = {
                        order = 5,
                        type = "toggle",
                        name = L["ElvUISkins"],
                        set = function(info, value)
                            E.db.lui.modules.armory.stats[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                    },
                    Stats = {
                        order = 6,
                        type = "group",
                        name = STAT_CATEGORY_ATTRIBUTES,
                        guiInline = true,
                        get = function(info) return E.db.lui.modules.armory.stats.List[info[#info]] end,
                        set = function(info, value)E.db.lui.modules.armory.stats.List[info[#info]] = value E:GetModule("LuiArmory"):ToggleStats() end,
                        args = {
                            HEALTH = {order = 1, type = "toggle", name = HEALTH, },
                            POWER = {order = 2, type = "toggle", name = _G[select(2, UnitPowerType("player"))], },
                            ALTERNATEMANA = {order = 3, type = "toggle", name = ALTERNATE_RESOURCE_TEXT, },
                            ATTACK_DAMAGE = {order = 4, type = "toggle", name = DAMAGE, },
                            ATTACK_AP = {order = 5, type = "toggle", name = ATTACK_POWER, },
                            ATTACK_ATTACKSPEED = {order = 6, type = "toggle", name = ATTACK_SPEED, },
                            SPELLPOWER = {order = 7, type = "toggle", name = STAT_SPELLPOWER, },
                            ENERGY_REGEN = {order = 8, type = "toggle", name = STAT_ENERGY_REGEN, },
                            RUNE_REGEN = {order = 9, type = "toggle", name = STAT_RUNE_REGEN, },
                            FOCUS_REGEN = {order = 10, type = "toggle", name = STAT_FOCUS_REGEN, },
                            MOVESPEED = {order = 11, type = "toggle", name = STAT_SPEED, },
                            GCD = {order = 12, type = "toggle", name = L["GlobalCooldown"], }
                        },
                    },
                    catFonts = {
                        order = 7,
                        type = "group",
                        guiInline = true,
                        name = L["catFonts"],
                        get = function(info)
                            return E.db.lui.modules.armory.stats.catFonts[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.armory.stats.catFonts[info[#info]] = value
                            E:GetModule("LuiArmory"):PaperDollFrame_UpdateStats()
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
                                type = "range",
                                name = L["fontSize"],
                                min = 6, max = 22, step = 1,
                            },
                            fontFlag = {
                                order = 3,
                                type = "select",
                                name = L["fontFlag"],
                                values = LUI.fontFlagValues,
                            },
                        },
                    },
                    statFonts = {
                        order = 8,
                        type = "group",
                        guiInline = true,
                        name = L["statFonts"],
                        get = function(info)
                            return E.db.lui.modules.armory.stats.statFonts[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.armory.stats.statFonts[info[#info]] = value
                            E:GetModule("LuiArmory"):PaperDollFrame_UpdateStats()
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
                                type = "range",
                                name = L["fontSize"],
                                min = 6, max = 22, step = 1,
                            },
                            fontFlag = {
                                order = 3,
                                type = "select",
                                name = L["fontFlag"],
                                values = LUI.fontFlagValues,
                            },
                        },
                    },
                },
            },
            -- inspect = {
            --     order = 5,
            --     type = "group",
            --     name = L["inspect"],
            --     disabled = function()
            --         return IsAddOnLoaded("TinyInspect") or not E.db.lui.modules.armory.enable
            --     end,
            --     hidden = function()
            --         return IsAddOnLoaded("TinyInspect") or not E.db.lui.modules.armory.enable
            --     end,
            --     get = function(info)
            --         return E.db.lui.modules.armory.inspect[info[#info]]
            --     end,
            --     set = function(info, value)
            --         E.db.lui.modules.armory.inspect[info[#info]] = value
            --     end,
            --     args = {
            --         enable = {
            --             order = 1,
            --             type = "toggle",
            --             name = L["Enable"],
            --         },
            --         space1 = {
            --             order = 2,
            --             type = "description",
            --             name = "",
            --             disabled = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --             hidden = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --         },
            --         ShowCharacterItemSheet = {
            --             order = 3,
            --             type = "toggle",
            --             name = L["ShowCharacterItemSheet"],
            --             disabled = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --             hidden = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --         },
            --         ShowOwnFrameWhenInspecting = {
            --             order = 4,
            --             type = "toggle",
            --             name = L["ShowOwnFrameWhenInspecting"],
            --             disabled = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --             hidden = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --         },
            --         ShowInspectAngularBorder = {
            --             order = 5,
            --             type = "toggle",
            --             name = L["ShowInspectAngularBorder"],
            --             disabled = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --             hidden = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --         },
            --         ShowPluginGreenState = {
            --             order = 6,
            --             type = "toggle",
            --             name = L["ShowPluginGreenState"],
            --             disabled = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --             hidden = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --             set = function(info, value)
            --                 E.db.lui.modules.armory.inspect[info[#info]] = value
            --                 E:StaticPopup_Show("PRIVATE_RL")
            --             end,
            --         },
            --         AltEquipment = {
            --             order = 7,
            --             type = "toggle",
            --             name = L["AltEquipment"],
            --             disabled = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --             hidden = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --             set = function(info, value)
            --                 E.db.lui.modules.armory.inspect[info[#info]] = value
            --                 E:StaticPopup_Show("PRIVATE_RL")
            --             end,
            --         },
            --         PaperDollEquipment = {
            --             order = 8,
            --             type = "toggle",
            --             name = L["PaperDollEquipment"],
            --             disabled = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --             hidden = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --             set = function(info, value)
            --                 E.db.lui.modules.armory.inspect[info[#info]] = value
            --                 E:StaticPopup_Show("PRIVATE_RL")
            --             end,
            --         },
            --         EnablePartyItemLevel = {
            --             order = 9,
            --             type = "group",
            --             guiInline = true,
            --             name = L["EnablePartyItemLevel"],
            --             disabled = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --             hidden = function()
            --                 return not E.db.lui.modules.armory.inspect.enable
            --             end,
            --             get = function(info)
            --                 return E.db.lui.modules.armory.inspect.EnablePartyItemLevel[info[#info]]
            --             end,
            --             set = function(info, value)
            --                 E.db.lui.modules.armory.inspect.EnablePartyItemLevel[info[#info]] = value
            --             end,
            --             args = {
            --                 enable = {
            --                     order = 1,
            --                     type = "toggle",
            --                     name = L["Enable"],
            --                 },
            --                 space1 = {
            --                     order = 2,
            --                     type = "description",
            --                     name = "",
            --                     disabled = function()
            --                         return not E.db.lui.modules.armory.inspect.EnablePartyItemLevel["enable"]
            --                     end,
            --                 },
            --                 SendPartyItemLevelToSelf = {
            --                     order = 3,
            --                     type = "toggle",
            --                     name = L["SendPartyItemLevelToSelf"],
            --                     disabled = function()
            --                         return not E.db.lui.modules.armory.inspect.EnablePartyItemLevel["enable"]
            --                     end,
            --                 },
            --                 SendPartyItemLevelToParty = {
            --                     order = 4,
            --                     type = "toggle",
            --                     name = L["SendPartyItemLevelToParty"],
            --                     disabled = function()
            --                         return not E.db.lui.modules.armory.inspect.EnablePartyItemLevel["enable"]
            --                     end,
            --                 },
            --             },
            --         },
            --     },
            -- }
        }
    }
end
T.table_insert(LUI.Configs, configTable)
