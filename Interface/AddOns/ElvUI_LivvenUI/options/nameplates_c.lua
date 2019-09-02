local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local function configTable()
	E.Options.args.lui.args.modules.args.nameplates = {
        order = 9,
		type = "group",
		childGroups = "tab",
        name = L["nameplates"],
        get = function(info)
            return E.db.lui.modules.nameplates[info[#info]]
        end,
        set = function(info, value)
            E.db.lui.modules.nameplates[info[#info]] = value
            E:StaticPopup_Show("PRIVATE_RL")
        end,
        args = {
            name = {
				order = 0,
				type = "header",
				name = LUI:cOption(L["nameplates"]),
            },
            castbarTarget = {
                order = 2,
                type = "toggle",
                name = L["castbarTarget"],
            }
		}
	}
end
T.table_insert(LUI.Configs, configTable)