local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local _G = _G

local DecorAddons = {
	{"ActionBarProfiles", L["ActonBarProfiles"], "abp"},
	{"BigWigs", L["BigWigs"], "bw"},
	{"ElvUI_BenikUI", L["BenikUI"], "bui"},
	{"BugSack", L["BugSack"], "bs"},
	{"ProjectAzilroka", L["ProjectAzilroka"], "pa"},
	{"Postal", L["Postal"], "po"},
	{"ls_Toasts", L["ls_Toasts"], "ls"},
	{"DBM-Core", L["Deadly Boss Mods"], "dbm"},
	{"Clique", L["Clique"], "cl"},
	{"cargBags_Nivaya", L["cargBags_Nivaya"], "cbn"}
}

local SupportedProfiles = {
	{"AddOnSkins", "AddOnSkins"},
	{"BigWigs", "BigWigs"},
	{"Details", "Details"},
	{"ElvUI_BenikUI", "BenikUI"},
	{"ElvUI_FCT", "FCT"},
	{"Skada", "Skada"},
	{"OzCooldowns", "OzCooldowns"},
	{"ProjectAzilroka", "ProjectAzilroka"},
	{"ls_Toasts", "ls_Toasts"},
	{"DBM-Core", "Deadly Boss Mods"},
	{"Touhin", "Thouhin"},
}

local profileString = T.string_format("|cfffff400%s |r", L["LivvenUI successfully created and applied profile(s) for:"])

local function configTable()
	E.Options.args.lui.args.skins = {
		order = 11,
		type = "group",
		name = L["skins"],
		childGroups = "tab",
		get = function(info) return E.db.lui.skins[ info[#info] ] end,
		set = function(info, value) E.db.lui.skins[ info[#info] ] = value
			E:StaticPopup_Show("PRIVATE_RL")
		end,
		args = {
			name = {
				order = 0,
				type = "header",
				name = LUI:cOption(L["skins"]),
			},
			enable = {
				order = 1,
				type = "toggle",
				name = L["Enable"],
			},
			skins = {
				order = 1,
				type = "group",
				name = L["General"],
				disabled = function()
					return not E.db.lui.skins["enable"]
				end,
				hidden = function()
					return not E.db.lui.skins["enable"]
				end,
				get = function(info) return E.db.lui.skins[ info[#info] ] end,
				set = function(info, value) E.db.lui.skins[ info[#info] ] = value
					E:StaticPopup_Show("PRIVATE_RL")
				end,
				args = {
					style = {
						order = 2,
						type = "select",
						name = L["style"],
						values = {
							["style1"] = L["style1"],
							["style2"] = L["style2"],
							["NONE"] = L["NONE"],
						},
					},
					shadowOverlay = {
						order = 3,
						type = "group",
						guiInline = true,
						name = L["shadowOverlay"],
						get = function(info) return E.db.lui.skins.shadowOverlay[ info[#info] ] end,
						set = function(info, value) E.db.lui.skins.shadowOverlay[ info[#info] ] = value
							E:StaticPopup_Show("PRIVATE_RL")
						end,
						args = {
							enable = {
								order = 1,
								type = "toggle",
								name = L["Enable"],
							},
							shadowAlpha = {
								order = 2,
								name = L["shadowAlpha"],
								type = "range",
								hidden = function()
									return not E.db.lui.skins.shadowOverlay["enable"]
								end,
								min = 0, max = 100, step = 10,
							},
						},
					},
				},
			},
			merchant = {
				order = 2,
				type = "group",
				name = L["merchant"],
				disabled = function()
					return not E.db.lui.skins["enable"]
				end,
				hidden = function()
					return not E.db.lui.skins["enable"]
				end,
				get = function(info)
					return E.private.lui.luiSkins.merchant[ info[#info] ]
				end,
				set = function(info, value) E.private.lui.luiSkins.merchant[ info[#info] ] = value
					E:StaticPopup_Show("PRIVATE_RL")
				end,
				args = {
					enable = {
						order = 1,
						type = "toggle",
						name = L["Enable"],
					},
					subpages = {
						order = 2,
						type = "range",
						name = L["subpages"],
						min = 2, max = 5, step = 1,
						hidden = function() return
							not E.private.lui.luiSkins.merchant["enable"]
						end,
					},
				},
			},
		},
	}

	E.Options.args.lui.args.skins.args.addonskins = {
		order = 3,
		type = "group",
		name =L["AddOnSkins"],
		disabled = function()
			return not E.db.lui.skins["enable"]
		end,
		hidden = function()
			return not E.db.lui.skins["enable"]
		end,
		get = function(info) return E.private.lui.luiSkins.addonSkins[ info[#info] ] end,
		set = function(info, value) E.private.lui.luiSkins.addonSkins[ info[#info] ] = value E:StaticPopup_Show("PRIVATE_RL") end,
		args = {},
	}

	local addorder = 3
	for i, v in T.ipairs(DecorAddons) do
		local addonName, addonString, addonOption = unpack( v )
		E.Options.args.lui.args.skins.args.addonskins.args[addonOption] = {
			order = addorder + 1,
			type = "toggle",
			name = addonString,
			disabled = function() return not T.IsAddOnLoaded(addonName) end,
		}
	end

	E.Options.args.lui.args.skins.args.blizzard = {
		order = 4,
		type = "group",
		name = L["Blizzard"],
		disabled = function()
			return not E.db.lui.skins["enable"]
		end,
		hidden = function()
			return not E.db.lui.skins["enable"]
		end,
		get = function(info) return E.private.lui.luiSkins.blizzard[ info[#info] ] end,
		set = function(info, value) E.private.lui.luiSkins.blizzard[ info[#info] ] = value E:StaticPopup_Show("PRIVATE_RL") end,
		args = {
			-- enable = {
			-- 	order = 1,
			-- 	type = "toggle",
			-- 	name = L["Enable"],
			-- },
			-- space1 = {
			-- 	order = 2,
			-- 	type = "description",
			-- 	name = "",
			-- 	disabled = function() return
			-- 		not E.private.lui.luiSkins.blizzard["enable"]
			-- 	end,
			-- },
			encounterjournal = {
				type = "toggle",
				name = ENCOUNTER_JOURNAL,
				disabled = function () return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.encounterjournal end
			},
			spellbook = {
				type = "toggle",
				name = SPELLBOOK,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.spellbook end,
			},
			character = {
				type = "toggle",
				name = L["Character Frame"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.character end,
			},
			gossip = {
				type = "toggle",
				name = L["Gossip Frame"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.gossip end,
			},
			quest = {
				type = "toggle",
				name = L["Quest Frames"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.quest end,
			},
			questChoice = {
				type = "toggle",
				name = L["Quest Choice"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.questChoice end,
			},
			garrison = {
				type = "toggle",
				name = GARRISON_LOCATION_TOOLTIP,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.garrison end,
			},
			orderhall = {
				type = "toggle",
				name = L["Orderhall"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.orderhall end,
			},
			talent = {
				type = "toggle",
				name = TALENTS,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.talent end,
			},
			auctionhouse = {
				type = "toggle",
				name = AUCTIONS,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.auctionhouse end,
			},
			friends = {
				type = "toggle",
				name = FRIENDS,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.friends end,
			},
			contribution = {
				type = "toggle",
				name = L["Contribution"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.Contribution end,
			},
			artifact = {
				type = "toggle",
				name = ITEM_QUALITY6_DESC,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.artifact end,
			},
			collections = {
				type = "toggle",
				name = COLLECTIONS,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.collections end,
			},
			calendar = {
				type = "toggle",
				name = L["Calendar Frame"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.calendar end,
			},
			merchant = {
				type = "toggle",
				name = L["Merchant Frame"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.merchant end,
			},
			worldmap = {
				type = "toggle",
				name = WORLD_MAP,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.worldmap end,
			},
			pvp = {
				type = "toggle",
				name = L["PvP Frames"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.pvp end,
			},
			achievement = {
				type = "toggle",
				name = ACHIEVEMENTS,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.achievement end,
			},
			tradeskill = {
				type = "toggle",
				name = TRADESKILLS,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.tradeskill end,
			},
			lfg = {
				type = "toggle",
				name = LFG_TITLE,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.lfg end,
			},
			lfguild = {
				type = "toggle",
				name = L["LF Guild Frame"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.lfguild end,
			},
			talkinghead = {
				type = "toggle",
				name = L["TalkingHead"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.talkinghead end,
			},
			guild = {
				type = "toggle",
				name = GUILD,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.guild end,
			},
			objectiveTracker = {
				type = "toggle",
				name = OBJECTIVES_TRACKER_LABEL,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.objectiveTracker end,
			},
			addonManager = {
				type = "toggle",
				name = L["AddOn Manager"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.addonManager end,
			},
			mail = {
				type = "toggle",
				name =  L["Mail Frame"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.mail end,
			},
			raid = {
				type = "toggle",
				name = L["Raid Frame"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.raid end,
			},
			dressingroom = {
				type = "toggle",
				name = DRESSUP_FRAME,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.dressingroom end,
			},
			timemanager = {
				type = "toggle",
				name = TIMEMANAGER_TITLE,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.timemanager end,
			},
			blackmarket = {
				type = "toggle",
				name = BLACK_MARKET_AUCTION_HOUSE,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.bmah end,
			},
			guildcontrol = {
				type = "toggle",
				name = L["Guild Control Frame"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.guildcontrol end,
			},
			macro = {
				type = "toggle",
				name = MACROS,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.macro end,
			},
			binding = {
				type = "toggle",
				name = KEY_BINDING,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.binding end,
			},
			gbank = {
				type = "toggle",
				name = GUILD_BANK,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.gbank end,
			},
			taxi = {
				type = "toggle",
				name = FLIGHT_MAP,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.taxi end,
			},
			help = {
				type = "toggle",
				name = L["Help Frame"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.help end,
			},
			loot = {
				type = "toggle",
				name = L["Loot Frames"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.loot end,
			},
			warboard = {
				type = "toggle",
				name = L["Warboard"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.Warboard end,
			},
			deathRecap = {
				type = "toggle",
				name = DEATH_RECAP_TITLE,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.deathRecap end,
			},
			questPOI = {
				type = "toggle",
				name = L["QuestPOI"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.questChoice end,
			},
			channels = {
				type = "toggle",
				name = CHANNELS,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.Channels end,
			},
			communities = {
				type = "toggle",
				name = COMMUNITIES,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.Communities end,
			},
			challenges = {
				type = "toggle",
				name = CHALLENGES,
				disabled = function() return not E.private.skins.blizzard.enable end,
			},
			AzeriteUI = {
				type = "toggle",
				name = L["AzeriteUI"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.AzeriteUI end,
			},
			AzeriteRespec = {
				type = "toggle",
				name = AZERITE_RESPEC_TITLE,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.AzeriteRespec end,
			},
			IslandQueue = {
				type = "toggle",
				name = ISLANDS_HEADER,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.IslandQueue end,
			},
			IslandsPartyPose = {
				type = "toggle",
				name = L["Island Party Pose"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.IslandsPartyPose end,
			},
			minimap = {
				type = "toggle",
				name = L["Minimap"],
				disabled = function() return not E.private.skins.blizzard.enable end,
			},
			Scrapping = {
				type = "toggle",
				name = SCRAP_BUTTON,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.Scrapping end,
			},
			trainer = {
				type = "toggle",
				name = L["Trainer Frame"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.trainer end,
			},
			debug = {
				type = "toggle",
				name = L["Debug Tools"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.debug end,
			},
			inspect = {
				type = "toggle",
				name = INSPECT,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.inspect end,
			},
			socket = {
				type = "toggle",
				name = L["Socket Frame"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.socket end,
			},
			itemUpgrade = {
				type = "toggle",
				name = L["Item Upgrade"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.itemUpgrade end,
			},
			trade = {
				type = "toggle",
				name = TRADESKILLS,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.trade end,
			},
			voidstorage = {
				type = "toggle",
				name = VOID_STORAGE,
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.voidstorage end,
			},
			AlliedRaces = {
				type = "toggle",
				name = L["Allied Races"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.AlliedRaces end,
			},
			GMChat = {
				type = "toggle",
				name = L["GM Chat"],
				disabled = function() return not E.private.skins.blizzard.enable or not E.private.skins.blizzard.GMChat end,
			},
			raidInfo = {
				type = "toggle",
				name = L["raidInfo"],
				disabled = function() return not E.private.skins.blizzard.enable end,
			},
			raidUtility = {
				type = "toggle",
				name = L["raidUtility"],
				disabled = function() return not E.private.skins.blizzard.enable end,
			},
		},
	}
end

T.table_insert(LUI.Configs, configTable)
