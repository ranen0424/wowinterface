local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local function configTable()
    E.Options.args.lui.args.modules.args.actionbars = {
        order = 2,
        type = "group",
        childGroups = "tab",
        name = L["actionbars"],
        get = function(info)
            return E.db.lui.modules.actionbars[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.actionbars[info[#info]] = value
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["actionbars"]),
            },
            general = {
                order = 1,
                type = "group",
                name = L["general"],
                get = function(info)
                    return E.db.lui.modules.actionbars.general[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.actionbars.general[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    finishingMoveHighlight = {
                        order = 1,
                        type = "toggle",
                        name = L["finishingMoveHighlight"],
                    },
                    randomHearthstone = {
                        order = 2,
                        type = "group",
                        guiInline = true,
                        name = L["randomHearthstone"],
                        get = function(info)
                            return E.db.lui.modules.actionbars.general.randomHearthstone[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.actionbars.general.randomHearthstone[info[#info]] = value
                        end,
                        args = {
                            enable = {
                                order = 1,
                                type = "toggle",
                                name = L["Enable"],
                            },
                            creatRHS = {
                                order = 2,
                                type = "execute",
                                name = L["creatRHS"],
                                hidden = function(info)
                                    return not E.db.lui.modules.actionbars.general.randomHearthstone["enable"]
                                end,
                                func = function()
                                    E:GetModule("LuiRandomHearthStone"):UpdateMacro()
                                    local name = T.GetMacroInfo("RHS")
                                    if name then
                                        LUI:Print("已创建随机炉石玩具宏，请放至动作栏！")
                                        T.PickupMacro("RHS")
                                    end
                                    E:ToggleOptionsUI()
                                end,
                            }
                        }
                    }
                }
            },
            microBar = {
                order = 2,
                type = "group",
                name = L["microBar"],
                get = function(info)
                    return E.db.lui.modules.actionbars.microBar[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.actionbars.microBar[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
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
                    scale = {
                        order = 3,
                        type = "range",
                        isPercent = true,
                        name = L["scale"],
                        min = 0.5, max = 1.0, step = 0.01,
                        hidden = function()
                            return not E.db.lui.modules.actionbars.microBar["enable"]
                        end,
                    },
                    barBackdrop = {
                        order = 4,
                        type = "toggle",
                        name = L["barBackdrop"],
                        hidden = function()
                            return not E.db.lui.modules.actionbars.microBar["enable"]
                        end,
                    },
                    barMouseOver = {
                        order = 5,
                        type = "toggle",
                        name = L["barMouseOver"],
                        hidden = function()
                            return not E.db.lui.modules.actionbars.microBar["enable"]
                        end,
                    },
                    hideInOrderHall = {
                        order = 7,
                        type = "toggle",
                        name = L["hideInOrderHall"],
                        hidden = function()
                            return not E.db.lui.modules.actionbars.microBar["enable"]
                        end,
                    },
                    tooltip = {
                        order = 8,
                        type = "toggle",
                        name = L["tooltip"],
                        hidden = function()
                            return not E.db.lui.modules.actionbars.microBar["enable"]
                        end,
                    },
                    buttonClassColor = {
                        order = 9,
                        type = "toggle",
                        name = L["buttonClassColor"],
                        hidden = function()
                            return not E.db.lui.modules.actionbars.microBar["enable"]
                        end,
                    },
                    buttonColor = {
                        order = 10,
                        type = "color",
                        hasAlpha = true,
                        name = L["buttonColor"],
                        disabled = function()
                            return not E.db.lui.modules.actionbars.microBar["buttonClassColor"]
                        end,
                        hidden = function()
                            return not E.db.lui.modules.actionbars.microBar["enable"]
                        end,
                        get = function(info)
                            local t = E.db.lui.modules.actionbars.microBar[info[#info]]
                            local d = P.lui.modules.actionbars.microBar[info[#info]]
                            return t.r, t.g, t.b, t.a, d.r, d.g, d.b, d.a
                        end,
                        set = function(info, r, g, b, a)
                            E.db.lui.modules.actionbars.microBar[info[#info]] = {}
                            local t = E.db.lui.modules.actionbars.microBar[info[#info]]
                            t.r, t.g, t.b, t.a = r, g, b, a
                        end,
                    },
                    text = {
                        order = 11,
                        type = "group",
                        name = L["text"],
                        guiInline = true,
                        hidden = function()
                            return not E.db.lui.modules.actionbars.microBar["enable"]
                        end,
                        get = function(info)
                            return E.db.lui.modules.actionbars.microBar.text[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.actionbars.microBar.text[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            friends = {
                                order = 1,
                                type = "toggle",
                                name = FRIENDS,
                            },
                            guild = {
                                order = 2,
                                type = "toggle",
                                name = GUILD,
                            },
                            lfr = {
                                order = 3,
                                type = "toggle",
                                name = L["lfr"],
                            },
                            position = {
                                order = 4,
                                type = "select",
                                name = L["position"],
                                values = {
                                    ["TOP"] = L["TOP"],
                                    ["BOTTOM"] = L["BOTTOM"],
                                },
                            },
                            fontClassColor = {
                                order = 5,
                                type = "toggle",
                                name = L["fontClassColor"],
                            },
                            fontColor = {
                                order = 6,
                                type = "color",
                                hasAlpha = false,
                                name = L["fontColor"],
                                disabled = function()
                                    return E.db.lui.modules.actionbars.microBar.text["fontClassColor"]
                                end,
                                get = function(info)
                                    local t = E.db.lui.modules.actionbars.microBar.text[info[#info]]
                                    local d = P.lui.modules.actionbars.microBar.text[info[#info]]
                                    return t.r, t.g, t.b, t.a, d.r, d.g, d.b, d.a
                                end,
                                set = function(info, r, g, b, a)
                                    E.db.lui.modules.actionbars.microBar.text[info[#info]] = {}
                                    local t = E.db.lui.modules.actionbars.microBar.text[info[#info]]
                                    t.r, t.g, t.b, t.a = r, g, b, a
                                end,
                            },
                        },
                    },
                },
            },
            autoButtons = {
                order = 3,
                type = "group",
                name = L["autoButtons"],
                get = function(info)
                    return E.db.lui.modules.actionbars.autoButtons[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.actionbars.autoButtons[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    featureconfig = {
                        order = 2,
                        type = "group",
                        guiInline = true,
                        name = L["featureconfig"],
                        hidden = function()
                            return not E.db.lui.modules.actionbars.autoButtons["enable"]
                        end,
                        get = function(info)
                            return E.db.lui.modules.actionbars.autoButtons[info[#info]]
                        end,
                        set = function(info, value)
                            E.db.lui.modules.actionbars.autoButtons[info[#info]] = value
                            E:GetModule("LuiAutoButtons"):UpdateAutoButton()
                        end,
                        args = {
                            fontName = {
                                order = 1,
                                type = "select",
                                dialogControl = "LSM30_Font",
                                name = L["fontName"],
                                values = LUI.fontName,
                            },
                            bindFontSize = {
                                order = 1,
                                type = "range",
                                min = 4, max = 40, step = 1,
                                name = L["bindFontSize"],
                            },
                            countFontSize = {
                                order = 2,
                                type = "range",
                                min = 4, max = 40, step = 1,
                                name = L["countFontSize"],
                            },
                            soltAutoButtons = {
                                order = 3,
                                type = "group",
                                guiInline = true,
                                name = L["soltAutoButtons"],
                                get = function(info)
                                    return E.db.lui.modules.actionbars.autoButtons.soltAutoButtons[info[#info]]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.actionbars.autoButtons.soltAutoButtons[info[#info]] = value
                                    E:GetModule("LuiAutoButtons"):UpdateAutoButton()
                                end,
                                args = {
                                    enable = {
                                        order = 1,
                                        type = "toggle",
                                        name = L["Enable"],
                                        set = function(info, value)
                                            E.db.lui.modules.actionbars.autoButtons.soltAutoButtons[info[#info]] = value
                                        end,
                                    },
                                    slotBBColorByItem = {
                                        order = 2,
                                        type = "toggle",
                                        name = L["slotBBColorByItem"],
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["enable"]
                                        end,
                                    },
                                    slotBBColor = {
                                        order = 3,
                                        type = "color",
                                        name = L["slotBBColor"],
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["enable"]
                                        end,
                                        disabled = function()
                                            return E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["slotBBColorByItem"]
                                        end,
                                        get = function(info)
                                            local t = E.db.lui.modules.actionbars.autoButtons.soltAutoButtons[info[#info]]
                                            local d = P.lui.modules.actionbars.autoButtons.soltAutoButtons[info[#info]]
                                            return t.r, t.g, t.b, t.a, d.r, d.g, d.b, d.a
                                        end,
                                        set = function(info, r, g, b, a)
                                            E.db.lui.modules.actionbars.autoButtons.soltAutoButtons[info[#info]] = {}
                                            local t = E.db.lui.modules.actionbars.autoButtons.soltAutoButtons[info[#info]]
                                            t.r, t.g, t.b, t.a = r, g, b, a
                                            E:GetModule("LuiAutoButtons"):UpdateAutoButton()
                                        end,
                                    },
                                    slotSpace = {
                                        order = 4,
                                        type = "range",
                                        name = L["slotSpace"],
                                        min = -1, max = 10, step = 1,
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["enable"]
                                        end,
                                    },
                                    slotDirection = {
                                        order = 5,
                                        type = "select",
                                        name = L["slotDirection"],
                                        values = {
                                            ["RIGHT"] = L["RIGHT"],
                                            ["LEFT"] = L["LEFT"],
                                        },
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["enable"]
                                        end,
                                    },
                                    slotNum = {
                                        order = 6,
                                        type = "range",
                                        name = L["slotNum"],
                                        min = 0, max = 12, step = 1,
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["enable"]
                                        end,
                                    },
                                    slotPerRow = {
                                        order = 7,
                                        type = "range",
                                        name = L["slotPerRow"],
                                        min = 1, max = 12, step = 1,
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["enable"]
                                        end,
                                    },
                                    slotSize = {
                                        order = 8,
                                        type = "range",
                                        name = L["slotSize"],
                                        min = 10, max = 100, step = 1,
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.soltAutoButtons["enable"]
                                        end,
                                    },
                                }
                            },
                            questAutoButtons = {
                                order = 4,
                                type = "group",
                                guiInline = true,
                                name = L["questAutoButtons"],
                                get = function(info)
                                    return E.db.lui.modules.actionbars.autoButtons.questAutoButtons[info[#info]]
                                end,
                                set = function(info, value)
                                    E.db.lui.modules.actionbars.autoButtons.questAutoButtons[info[#info]] = value
                                    E:GetModule("LuiAutoButtons"):UpdateAutoButton()
                                end,
                                args = {
                                    enable = {
                                        order = 1,
                                        type = "toggle",
                                        name = L["Enable"],
                                        set = function(info, value)
                                            E.db.lui.modules.actionbars.autoButtons.questAutoButtons[info[#info]] = value
                                        end,
                                    },
                                    questBBColorByItem = {
                                        order = 2,
                                        type = "toggle",
                                        name = L["questBBColorByItem"],
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.questAutoButtons["enable"]
                                        end,
                                    },
                                    questBBColor = {
                                        order = 3,
                                        type = "color",
                                        name = L["questBBColor"],
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.questAutoButtons["enable"]
                                        end,
                                        disabled = function()
                                            return E.db.lui.modules.actionbars.autoButtons.questAutoButtons["questBBColorByItem"]
                                        end,
                                        get = function(info)
                                            local t = E.db.lui.modules.actionbars.autoButtons.questAutoButtons[info[#info]]
                                            local d = P.lui.modules.actionbars.autoButtons.questAutoButtons[info[#info]]
                                            return t.r, t.g, t.b, t.a, d.r, d.g, d.b, d.a
                                        end,
                                        set = function(info, r, g, b, a)
                                            E.db.lui.modules.actionbars.autoButtons.questAutoButtons[info[#info]] = {}
                                            local t = E.db.lui.modules.actionbars.autoButtons.questAutoButtons[info[#info]]
                                            t.r, t.g, t.b, t.a = r, g, b, a
                                            E:GetModule("LuiAutoButtons"):UpdateAutoButton()
                                        end,
                                    },
                                    questSpace = {
                                        order = 4,
                                        type = "range",
                                        name = L["questSpace"],
                                        min = -1, max = 10, step = 1,
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.questAutoButtons["enable"]
                                        end,
                                    },
                                    questDirection = {
                                        order = 5,
                                        type = "select",
                                        name = L["questDirection"],
                                        values = {
                                            ["RIGHT"] = L["RIGHT"],
                                            ["LEFT"] = L["LEFT"],
                                        },
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.questAutoButtons["enable"]
                                        end,
                                    },
                                    questNum = {
                                        order = 6,
                                        type = "range",
                                        name = L["questNum"],
                                        min = 0, max = 12, step = 1,
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.questAutoButtons["enable"]
                                        end,
                                    },
                                    questPerRow = {
                                        order = 7,
                                        type = "range",
                                        name = L["questPerRow"],
                                        min = 1, max = 12, step = 1,
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.questAutoButtons["enable"]
                                        end,
                                    },
                                    questSize = {
                                        order = 8,
                                        type = "range",
                                        name = L["questSize"],
                                        min = 10, max = 100, step = 1,
                                        hidden = function()
                                            return not E.db.lui.modules.actionbars.autoButtons.questAutoButtons["enable"]
                                        end,
                                    },
                                }
                            },
                            whiteItemID = {
                                order = 6,
                                type = "input",
                                name = L["whiteItemID"],
                                get = function()
                                    return whiteItemID or ""
                                end,
                                set = function(info, value)
                                    whiteItemID = value
                                end,
                            },
                            AddItemID = {
                                order = 7,
                                type = "execute",
                                name = L["AddItemID"],
                                func = function()
                                    if not tonumber(whiteItemID) then
                                        LUI:Print(L["Must is itemID!"])
                                        return
                                    end
                                    local id = tonumber(whiteItemID)
                                    if not GetItemInfo(id) then
                                        LUI:Print(whiteItemID .. L["is error itemID"])
                                        return
                                    end
                                    E.db.lui.modules.actionbars.autoButtons.whiteList[id] = true
                                    E.Options.args.lui.args.modules.args.actionbars.args.autoButtons.args.featureconfig.args.whiteList.values[id] = GetItemInfo(id)
                                    E:GetModule("LuiAutoButtons"):UpdateAutoButton()
                                end,
                            },
                            DeleteItemID = {
                                order = 8,
                                type = "execute",
                                name = L["DeleteItemID"],
                                func = function()
                                    if not tonumber(whiteItemID) then
                                        LUI:Print(L["Must is itemID!"])
                                        return
                                    end
                                    local id = tonumber(whiteItemID)
                                    if not GetItemInfo(id) then
                                        LUI:Print(whiteItemID .. L["is error itemID"])
                                        return
                                    end
                                    if E.db.lui.modules.actionbars.autoButtons.whiteList[id] == true or E.db.lui.modules.actionbars.autoButtons.whiteList[id] == false then
                                        E.db.lui.modules.actionbars.autoButtons.whiteList[id] = nil
                                        E.Options.args.lui.args.modules.args.actionbars.args.autoButtons.args.featureconfig.args.whiteList.values[id] = nil
                                    end
                                    E:GetModule("LuiAutoButtons"):UpdateAutoButton()
                                end,
                            },
                            whiteList = {
                                order = 9,
                                type = "multiselect",
                                name = L["whiteList"],
                                get = function(info, k)
                                    return E.db.lui.modules.actionbars.autoButtons.whiteList[k]
                                end,
                                set = function(info, k, v)
                                    E.db.lui.modules.actionbars.autoButtons.whiteList[k] = v
                                    E:GetModule("LuiAutoButtons"):UpdateAutoButton()
                                end,
                                values = {}
                            },
                            blackitemID = {
                                order = 10,
                                type = "input",
                                name = L["blackitemID"],
                                get = function()
                                    return blackItemID or ""
                                end,
                                set = function(info, value)
                                    blackItemID = value
                                end,
                            },
                            AddblackItemID = {
                                order = 11,
                                type = "execute",
                                name = L["AddblackItemID"],
                                func = function()
                                    if not tonumber(blackItemID) then
                                        LUI:Print(L["Must is itemID!"])
                                        return
                                    end
                                    local id = tonumber(blackItemID)
                                    if not GetItemInfo(id) then
                                        LUI:Print(blackItemID .. L["is error itemID"])
                                        return
                                    end
                                    E.db.lui.modules.actionbars.autoButtons.blackList[id] = true
                                    E.Options.args.lui.args.modules.args.actionbars.args.autoButtons.args.featureconfig.args.blackList.values[id] = GetItemInfo(id)
                                    E:GetModule("LuiAutoButtons"):UpdateAutoButton()
                                end,
                            },
                            DeleteblackItemID = {
                                order = 12,
                                type = "execute",
                                name = L["DeleteblackItemID"],
                                func = function()
                                    if not tonumber(blackItemID) then
                                        LUI:Print(L["Must is itemID!"])
                                        return
                                    end
                                    local id = tonumber(blackItemID)
                                    if not GetItemInfo(id) then
                                        LUI:Print(blackItemID .. L["is error itemID"])
                                        return
                                    end
                                    if E.db.lui.modules.actionbars.autoButtons.blackList[id] == true or E.db.lui.modules.actionbars.autoButtons.blackList[id] == false then
                                        E.db.lui.modules.actionbars.autoButtons.blackList[id] = nil
                                        E.Options.args.lui.args.modules.args.actionbars.args.autoButtons.args.featureconfig.args.blackList.values[id] = nil
                                    end
                                    E:GetModule("LuiAutoButtons"):UpdateAutoButton()
                                end,
                            },
                            blackList = {
                                order = 13,
                                type = "multiselect",
                                name = L["blackList"],
                                get = function(info, k)
                                    return E.db.lui.modules.actionbars.autoButtons.blackList[k]
                                end,
                                set = function(info, k, v)
                                    E.db.lui.modules.actionbars.autoButtons.blackList[k] = v
                                    E:GetModule("LuiAutoButtons"):UpdateAutoButton()
                                end,
                                values = {}
                            },
                        }
                    }
                }
            }
        }
    }
    for k, v in pairs(E.db.lui.modules.actionbars.autoButtons.whiteList) do
        if type(k) == "string" then k = tonumber(k) end
        if GetItemInfo(k) then
            E.Options.args.lui.args.modules.args.actionbars.args.autoButtons.args.featureconfig.args.whiteList.values[k] = GetItemInfo(k)
        end
    end
    for k, v in pairs(E.db.lui.modules.actionbars.autoButtons.blackList) do
        if type(k) == "string" then k = tonumber(k) end
        if GetItemInfo(k) then
            E.Options.args.lui.args.modules.args.actionbars.args.autoButtons.args.featureconfig.args.blackList.values[k] = GetItemInfo(k)
        end
    end
end
T.table_insert(LUI.Configs, configTable)
