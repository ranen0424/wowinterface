local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local function configTable()
    E.Options.args.lui.args.modules.args.raid = {
        order = 11,
        type = "group",
        childGroups = "tab",
        name = L["raid"],
        get = function(info)
            return E.db.lui.modules.raid[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.raid[info[#info]] = value
            E:StaticPopup_Show("PRIVATE_RL")
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["raid"]),
            },
            teamStats = {
                order = 1,
                type = "toggle",
                name = L["teamStats"],
            },
            raidManager = {
                order = 2,
                type = "toggle",
                name = L["raidManager"],
            },
        }
    }
end
T.table_insert(LUI.Configs, configTable)
