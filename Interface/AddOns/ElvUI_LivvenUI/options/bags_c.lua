local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local function configTable()
    E.Options.args.lui.args.modules.args.bags = {
        order = 4,
        type = "group",
        childGroups = "tab",
        name = L["bags"],
        get = function(info)
            return E.db.lui.modules.bags[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.bags[info[#info]] = value
            E:StaticPopup_Show("PRIVATE_RL")
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["bags"]),
            },
            moveElvUIBags = {
                order = 1,
                type = "toggle",
                name = L["moveElvUIBags"],
            },
            enhancedElvUIBank = {
                order = 2,
                type = "group",
                guiInline = true,
                name = L["enhancedElvUIBank"],
                get = function(info)
                    return E.db.lui.modules.bags.enhancedElvUIBank[info[#info]]
                end,
                set = function(info, value)
                    E.db.lui.modules.bags.enhancedElvUIBank[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    moveElvUIBank = {
                        order = 1,
                        type = "toggle",
                        name = L["moveElvUIBank"],
                    },
                    showBankTab = {
                        order = 2,
                        type = "toggle",
                        name = L["showBankTab"],
                    },
                    autoDepositReagents = {
                        order = 3,
                        type = "toggle",
                        name = L["autoDepositReagents"],
                    },
                }
            }
        }
    }
end
T.table_insert(LUI.Configs, configTable)
