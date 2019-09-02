local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LSM = E.LSM or E.Libs.LSM

if E.db.lui == nil then E.db.lui = {} end

LUI.positionValues = {
    ["BOTTOM"] = L["BOTTOM"],
    ["BOTTOMLEFT"] = L["BOTTOMLEFT"],
    ["BOTTOMRIGHT"] = L["BOTTOMRIGHT"],
    ["CENTER"] = L["CENTER"],
    ["LEFT"] = L["LEFT"],
    ["RIGHT"] = L["RIGHT"],
    ["TOP"] = L["TOP"],
    ["TOPLEFT"] = L["TOPLEFT"],
    ["TOPRIGHT"] = L["TOPRIGHT"],
}

LUI.fontName = LSM:HashTable("font")
LUI.texture = LSM:HashTable("statusbar")

LUI.fontFlagValues = {
    ["NONE"] = L["NONE"],
    ["OUTLINE"] = L["OUTLINE"],
    ["THICKOUTLINE"] = L["THICKOUTLINE"],
    ["MONOCHROMEOUTLINE"] = L["MONOCROMEOUTLINE"],
}

local function configTable()
	local ACD = LibStub("AceConfigDialog-3.0-ElvUI")

	local function CreateButton(number, text, ...)
		local path = {}
		local num = select("#", ...)
		for i = 1, num do
			local name = select(i, ...)
			T.table_insert(path, #(path)+1, name)
		end
		local config = {
			order = number,
			type = "execute",
			name = text,
			func = function() ACD:SelectGroup("ElvUI", "lui", unpack(path)) end,
		}
		return config
	end

	local function CreateModulesButton(number, text, ...)
		local path = {}
		local num = select("#", ...)
		for i = 1, num do
			local name = select(i, ...)
			T.table_insert(path, #(path)+1, name)
		end
		local config = {
			order = number,
			type = "execute",
			name = text,
			func = function() ACD:SelectGroup("ElvUI", "lui", "modules", unpack(path)) end,
		}
		return config
	end

	E.Options.args.lui = {
		order = 9001,
		type = "group",
		name = LUI.Title,
		get = function(info)
			return E.db.lui[ info[#info] ]
		end,
		set = function(info, value)
			E.db.lui[ info[#info] ] = value
			E:StaticPopup_Show("PRIVATE_RL")
		end,
		args = {
			name = {
				order = 0,
				type = "header",
				name = LUI.Header,
			},
			logo = {
				order = 1,
				type = "description",
				name = "",
				width = "full",
				image = function()
					return LUI.Logo, 150, 150
				end,
			},
			changelog = {
				order = 2,
				type = "execute",
				name = L["changelog"],
				func = function()
					LUI:ToggleChangeLog()
					E:ToggleOptionsUI()
				end,
			},
			modulesButton = CreateButton(3, L["modules"], "modules"),
			skinsButton = CreateButton(4, L["media"], "media"),
			informationButton = CreateButton(5, L["information"], "information"),
			general = {
				order = 7,
				type = "group",
				guiInline = true,
				name = "",
				get = function(info)
					return E.db.lui.general[ info[#info] ]
				end,
				set = function(info, value)
					E.db.lui.general[ info[#info] ] = value
					E:StaticPopup_Show("PRIVATE_RL")
				end,
				args = {
					name = {
						order = 0,
						type = "header",
						name = LUI:cOption(L["general"]),
					},
					loginMsg = {
						order = 1,
						type = "toggle",
						name = L["loginMsg"],
					},
					splashScreen = {
						order = 2,
						type = "toggle",
						name = L["splashScreen"],
					},
					gamemenu = {
						order = 3,
						type = "toggle",
						name = L["gamemenu"],
					},
				},
			},
			modules = {
				order = 8,
				type = "group",
				name = L["modules"],
				get = function(info)
					return E.db.lui.modules[ info[#info] ]
				end,
				set = function(info, value)
					E.db.lui.modules[ info[#info] ] = value
					E:StaticPopup_Show("PRIVATE_RL")
				end,
				args = {
					name = {
						order = 0,
						type = "header",
						name = LUI:cOption(L["modules"]),
					},
					miscButton = CreateModulesButton(1, L["misc"], "misc"),
					actionbarsButton = CreateModulesButton(2, L["actionbars"], "actionbars"),
					armoryButton = CreateModulesButton(3, L["armory"], "armory"),
					bagsButton = CreateModulesButton(4, L["bags"], "bags"),
					blizzardButton = CreateModulesButton(5, L["blizzard"], "blizzard"),
					chatButton = CreateModulesButton(6, L["chat"], "chat"),
					combatButton = CreateModulesButton(7, L["combat"], "combat"),
					mapsButton = CreateModulesButton(8, L["maps"], "maps"),
					nameplatesButton = CreateModulesButton(9, L["nameplates"], "nameplates"),
					questButton = CreateModulesButton(10, L["quest"], "quest"),
					raidButton = CreateModulesButton(11, L["raid"], "raid"),
					tooltipButton = CreateModulesButton(12, L["tooltip"], "tooltip"),
					unitframesButton = CreateModulesButton(13, L["unitframes"], "unitframes"),
					cvarButton = CreateModulesButton(14, L["cvar"], "cvar"),
					filtersButton = CreateModulesButton(15, L["filters"], "filters"),
					clickSetButton = CreateModulesButton(16, L["viiClickSet"], "viiclickset"),
				},
			},
			information = {
				order = 99,
				type = "group",
				name = L["information"],
				get = function(info)
					return E.db.lui.information[ info[#info] ]
				end,
				set = function(info, value)
					E.db.lui.information[ info[#info] ] = value
					E:StaticPopup_Show("PRIVATE_RL")
				end,
				args = {
					name = {
						order = 1,
						type = "header",
						name = LUI:cOption(L["information"]),
					},
					support = {
						order = 2,
						type = "group",
						guiInline = true,
						name = LUI:cOption(L["support"]),
						args = {
							contactAuthor = {
								order = 1,
								type = "execute",
								name = L["contactAuthor"],
								func = function()
									E:StaticPopup_Show("VII_CREDITS", nil, nil, "Livven#51778")
								end,
							},
						},
					},
					version = {
						order = 3,
						type = "group",
						guiInline = true,
						name = LUI:cOption(L["version"]),
						args = {
							version = {
								order = 1,
								type = "description",

								name = LUI.Header,
							},
						},
					},
				},
			},
		},
	}
end
T.table_insert(LUI.Configs, configTable)
