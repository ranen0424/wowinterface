local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local function configTable()
    E.Options.args.lui.args.modules.args.chat = {
        order = 6,
        type = "group",
        name = L["chat"],
        get = function(info)
            return E.db.lui.modules.chat[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.chat[info[#info]] = value
            E:StaticPopup_Show("PRIVATE_RL")
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["chat"]),
            },
            chatRepChange = {
                order = 1,
                type = "toggle",
                name = L["chatRepChange"],
            },
            chatIME = {
                order = 2,
                type = "toggle",
                name = L["chatIME"],
            },
            chatBar = {
                order = 3,
                type = "group",
                guiInline = true,
                name = L["chatBar"],
                get = function(info)
                    return E.db.lui.modules.chat.chatBar[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.chat.chatBar[info[#info]] = value
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
                        hidden = function()
                            return not E.db.lui.modules.chat.chatBar["enable"]
                        end,
                    },
                    fontName = {
                        order = 3,
                        type = "select",
                        dialogControl = "LSM30_Font",
                        name = L["fontName"],
                        values = LUI.fontName,
                        hidden = function()
                            return not E.db.lui.modules.chat.chatBar["enable"]
                        end,
                    },
                    fontSize = {
                        order = 4,
                        name = L["fontSize"],
                        type = "range",
                        min = 1, max = 30, step = 1,
                        hidden = function()
                            return not E.db.lui.modules.chat.chatBar["enable"]
                        end,
                    },
                    fontFlag = {
                        order = 5,
                        type = "select",
                        name = L["fontFlag"],
                        values = LUI.fontFlagValues,
                        hidden = function()
                            return not E.db.lui.modules.chat.chatBar["enable"]
                        end,
                    },
                    barMouseOver = {
                        order = 5,
                        type = "toggle",
                        name = L["barMouseOver"],
                        hidden = function()
                            return not E.db.lui.modules.chat.chatBar["enable"]
                        end,
                    },
                }
            },
            chatItemlevelLink = {
                order = 4,
                type = "group",
                guiInline = true,
                name = L["chatItemlevelLink"],
                get = function(info)
                    return E.db.lui.modules.chat.chatItemlevelLink[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.chat.chatItemlevelLink[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    itemsolt = {
                        order = 2,
                        type = "toggle",
                        name = L["itemsolt"],
                    },
                }
            },
            chatTradeLog = {
                order = 5,
                type = "group",
                guiInline = true,
                name = L["chatTradeLog"],
                get = function(info)
                    return E.db.lui.modules.chat.chatTradeLog[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.chat.chatTradeLog[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    tradeSendChat = {
                        order = 2,
                        type = "toggle",
                        name = L["tradeSendChat"],
                        hidden = function(info)
                            return not E.db.lui.modules.chat.chatTradeLog["enable"]
                        end,
                    }
                }
            },
            chatMSGLoot = {
                order = 6,
                type = "group",
                guiInline = true,
                name = L["chatMSGLoot"],
                get = function(info)
                    return E.db.lui.modules.chat.chatMSGLoot[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.chat.chatMSGLoot[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                    },
                    chatMSGLootGS = {
                        order = 2,
                        type = "toggle",
                        name = L["chatMSGLootGS"],
                        hidden = function(info)
                            return not E.db.lui.modules.chat.chatMSGLoot["enable"]
                        end,
                    }
                }
            },
            chatShortChannel = {
                order = 7,
                type = "group",
                guiInline = true,
                name = L["chatShortChannel"],
                get = function(info)
                    return E.db.lui.modules.chat.chatShortChannel[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.chat.chatShortChannel[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    CSCdesc = {
                        order = 0,
                        type = "description",
                        name = L["CSCdesc"],
                        hidden = function(info)
                            return not E.db.chat["shortChannels"]
                        end,
                    },
                    enable = {
                        order = 1,
                        type = "toggle",
                        name = L["Enable"],
                        hidden = function(info)
                            return E.db.chat["shortChannels"]
                        end,
                    },
                    hideChannelNum = {
                        order = 2,
                        type = "toggle",
                        name = L["hideChannelNum"],
                        hidden = function(info)
                            return not E.db.lui.modules.chat.chatShortChannel["enable"] or E.db.chat["shortChannels"]
                        end,
                    },
                    channelLen = {
                        order = 3,
                        type = "select",
                        name = L["channelLen"],
                        hidden = function(info)
                            return not E.db.lui.modules.chat.chatShortChannel["enable"] or E.db.chat["shortChannels"]
                        end,
                        values = {
                            ["1"] = "1",
                            ["2"] = "2",
                        }
                    }
                }
            }
        }
    }
end
T.table_insert(LUI.Configs, configTable)
