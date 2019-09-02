
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["残忍精准"] = {
			[193357] = 1269441,
		},
		["骷髅黑帆"] = {
			[199603] = 1269439,
		},
		["强势连击"] = {
			[193356] = 1393014,
		},
		["刀锋冲刺"] = {
			[271896] = 1016243,
		},
		["潜行"] = {
			[1784] = 132320,
		},
		["可乘之机"] = {
			[195627] = 1373908,
		},
		["神射手"] = {
			[272940] = 1373908,
		},
		["埋藏的宝藏"] = {
			[199600] = 1269443,
		},
		["剑刃乱舞"] = {
			[13877] = 132350,
		},
		["冲动"] = {
			[13750] = 136206,
		},
		["正中眉心"] = {
			[199804] = 135610,
		},
		["大乱斗"] = {
			[193358] = 1269440,
		},
		["消失"] = {
			[11327] = 132331,
		},
		["疾跑"] = {
			[2983] = 132307,
		},
		["敏锐"] = {
			[193538] = 571558,
		},
	},
	["minimap"] = {
		["hide"] = false,
	},
	["displays"] = {
		["Rogue_AfenarUI"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Rogue_ComboPoints_Bar", -- [1]
				"R_CP2", -- [2]
				"R_CP3", -- [3]
				"R_CP4", -- [4]
				"R_CP5", -- [5]
				"R_DS6", -- [6]
				"Rogue_Energy", -- [7]
				"Rogue_Energy_Sin", -- [8]
				"Rogue_Energy_Sin 2", -- [9]
				"Rogue_Energy_T", -- [10]
				"Rogue_Energy_T Sin", -- [11]
				"Special_Rogue_Bar", -- [12]
				"Cripling_Poison", -- [13]
				"Deadly_Poison", -- [14]
				"Envenom", -- [15]
				"Mark_of_Death", -- [16]
				"Garrote", -- [17]
				"Garrote_CD", -- [18]
				"Garrote Subturge Empowerment", -- [19]
				"Rapture ", -- [20]
				"Crimson_Tempest", -- [21]
				"Hidden_Blades", -- [22]
				"Blindside", -- [23]
				"Mutilate", -- [24]
				"Elaborate_Planning", -- [25]
				"Vendetta 2", -- [26]
				"Toxic_Blade", -- [27]
				"Exsanguinate", -- [28]
				"Backstub_Shadowblade", -- [29]
				"Shadowstrike", -- [30]
				"Simbols_of_Death", -- [31]
				"Find_Weakness", -- [32]
				"Mark_of_Death_Sub", -- [33]
				"Alacrity_Sub", -- [34]
				"Nightblade", -- [35]
				"Shadow_Dance", -- [36]
				"Shadow_Dance_S", -- [37]
				"Shadow_Blades", -- [38]
				"Shuriken_Tornado", -- [39]
				"Secret_Technique", -- [40]
				"Pistol_Shot_Alt", -- [41]
				"Pistol_Shot", -- [42]
				"Roll_the_Bones", -- [43]
				"Roll_the_Bones_Alt", -- [44]
				"CDR", -- [45]
				"CP+", -- [46]
				"Enrg", -- [47]
				"Atk/Lch", -- [48]
				"Crit", -- [49]
				"SS", -- [50]
				"Mark_of_Death_Outlaw", -- [51]
				"Between_the_Eyes", -- [52]
				"Adrenalin_Rush", -- [53]
				"Ghostly_Strike", -- [54]
				"Blade_Rush", -- [55]
				"Killing_Spree", -- [56]
				"Blade_Flurry", -- [57]
				"Alacrity", -- [58]
				"Slice_and_Dice", -- [59]
				"RL1", -- [60]
				"RL2", -- [61]
				"Rogue_CastBar", -- [62]
				"Stealth", -- [63]
				"Stealth_CD", -- [64]
				"Kick", -- [65]
				"Gouge", -- [66]
				"Kidney_Shot", -- [67]
				"Distract", -- [68]
				"Blind", -- [69]
				"Feint", -- [70]
				"Crimson_Vial", -- [71]
				"Shroud_ of_Concealment", -- [72]
				"Trick_of_Trade", -- [73]
				"Grappling_Hook", -- [74]
				"Shadowstep", -- [75]
				"Vanish", -- [76]
				"Sprint", -- [77]
				"Evasion", -- [78]
				"Riposte", -- [79]
				"Cloak_of_Shadows", -- [80]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["scale"] = 0.9000000000000001,
			["border"] = false,
			["yOffset"] = -307,
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderInset"] = 11,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["authorOptions"] = {
			},
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["unevent"] = "timed",
						["duration"] = "1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["borderEdge"] = "None",
			["internalVersion"] = 16,
			["semver"] = "2.2.1",
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Rogue_AfenarUI",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -1,
			["uid"] = "cJVnDNZyjkI",
			["version"] = 10,
			["borderOffset"] = 5,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["conditions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
		},
		["Evasion"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["authorOptions"] = {
			},
			["yOffset"] = -61.5,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 5277,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "xPfShpg8(1N",
			["displayIcon"] = 135994,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"5277", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Ускользание", -- [1]
						},
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["useGroup_count"] = false,
						["spellIds"] = {
							5277, -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["useCount"] = true,
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["spellName"] = 5277,
						["charges_operator"] = "~=",
						["type"] = "status",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["count"] = "2",
						["event"] = "Cooldown Progress (Spell)",
						["charges"] = "3",
						["realSpellName"] = "闪避",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["countOperator"] = "<=",
						["unevent"] = "auto",
						["use_remaining"] = false,
						["custom_hide"] = "timed",
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 5277,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["text1Enabled"] = true,
			["desaturate"] = false,
			["zoom"] = 0.27,
			["text2"] = "%s%c",
			["xOffset"] = -76,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%p",
			["progressPrecision"] = 0,
			["useTooltip"] = false,
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["useglowColor"] = false,
			["id"] = "Evasion",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["frameStrata"] = 2,
			["width"] = 35,
			["alpha"] = 0.2,
			["glowLength"] = 20,
			["inverse"] = true,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [2]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["PhoGuild - Raid Ability Timeline"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"PhoGuild - Raid Ability Timeline Icon", -- [1]
				"PhoGuild - Raid Ability Timeline Backdrop ElvUI", -- [2]
				"PhoGuild - Raid Ability Timeline Backdrop", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -435.000305175781,
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["desc"] = "Made by: Bosmutus - Zul'jin(US)",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["yOffset"] = 303.000305175781,
			["url"] = "https://wago.io/B1pfxTOtb/29",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["anchorPoint"] = "CENTER",
			["borderOffset"] = 5,
			["semver"] = "2.0.3",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "PhoGuild - Raid Ability Timeline",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 16,
			["borderInset"] = 11,
			["version"] = 29,
			["selfPoint"] = "BOTTOMLEFT",
			["config"] = {
			},
			["conditions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "u1iyH0Dh9eh",
		},
		["Secret_Technique"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 14,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						[17] = true,
						[4] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["config"] = {
			},
			["displayIcon"] = "Interface\\Icons\\spell_rogue_deathfromabove",
			["glowLength"] = 10,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Предчувствие", -- [1]
							"Предчувствие", -- [2]
						},
						["use_showgcd"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["ownOnly"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["spellName"] = 280719,
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["realSpellName"] = "影分身",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["remOperator"] = ">=",
						["unevent"] = "auto",
						["use_track"] = true,
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 280719,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorB"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["scalex"] = 1,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = 1,
					["x"] = -1,
					["use_color"] = false,
					["translateType"] = "spiralandpulse",
					["colorFunc"] = "",
					["rotate"] = 0,
					["colorA"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["xOffset"] = -92,
			["text1Containment"] = "INSIDE",
			["icon"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "cuBiy2ff8g3",
			["text1"] = " ",
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["progressPrecision"] = 0,
			["semver"] = "2.2.1",
			["text2"] = "%p",
			["id"] = "Secret_Technique",
			["useglowColor"] = false,
			["frameStrata"] = 2,
			["width"] = 43,
			["alpha"] = 0.3,
			["text1Enabled"] = false,
			["inverse"] = true,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "insufficientResources",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "1",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["帷幕"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "BOTTOMLEFT",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["authorOptions"] = {
			},
			["borderOffset"] = 5,
			["scale"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "帷幕",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "QLAQcr5RkMj",
			["config"] = {
			},
			["internalVersion"] = 16,
			["borderInset"] = 11,
			["conditions"] = {
			},
			["load"] = {
				["use_class"] = "true",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
		},
		["SS"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 58,
			["displayText"] = "SS",
			["yOffset"] = -33,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text1Enabled"] = false,
			["keepAspectRatio"] = true,
			["wordWrap"] = "WordWrap",
			["desaturate"] = true,
			["rotation"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[17] = true,
						[16] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 193316,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["blendMode"] = "BLEND",
			["text2FontSize"] = 14,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 1,
			["uid"] = "Uasj9R(Tbju",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["glowLength"] = 20,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["auranames"] = {
							"199603", -- [1]
						},
						["ownOnly"] = true,
						["use_unit"] = true,
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Череп с костями", -- [1]
						},
						["duration"] = "1",
						["debuffType"] = "HELPFUL",
						["buffShowOn"] = "showAlways",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["matchesShowOn"] = "showAlways",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 79140,
						["realSpellName"] = "Вендетта",
						["use_spellName"] = true,
						["spellIds"] = {
							199603, -- [1]
						},
						["useName"] = true,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["useGroup_count"] = false,
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 79140,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"199600", -- [1]
							"193359", -- [2]
							"193358", -- [3]
							"193357", -- [4]
							"193356", -- [5]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["unit"] = "player",
						["use_exact_spellName"] = true,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 5171,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["config"] = {
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Rogue_AfenarUI",
			["text1Containment"] = "INSIDE",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["authorOptions"] = {
			},
			["version"] = 10,
			["automaticWidth"] = "Auto",
			["height"] = 16,
			["rotate"] = true,
			["glowLines"] = 30,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["glowFrequency"] = 0,
			["fontSize"] = 16,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				0.90980392156863, -- [2]
				0.70980392156863, -- [3]
				0, -- [4]
			},
			["text1Font"] = "Expressway",
			["anchorFrameType"] = "SCREEN",
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:Atk/Lch",
			["displayIcon"] = "Interface\\Icons\\ability_rogue_rollthebones01",
			["alpha"] = 0.2,
			["text2Font"] = "ArchivoNarrow-Bold",
			["useglowColor"] = false,
			["semver"] = "2.2.1",
			["font"] = "Expressway",
			["text1"] = "%p",
			["zoom"] = 0.5,
			["justify"] = "LEFT",
			["glow"] = false,
			["useGlowColor"] = false,
			["progressPrecision"] = 0,
			["id"] = "SS",
			["text2Color"] = {
				1, -- [1]
				0.90980392156863, -- [2]
				0.70980392156863, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 2,
			["width"] = 37,
			["text2"] = "2xSS",
			["selfPoint"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["On-Use Essences"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"On-Use Essence CD", -- [1]
				"On-Use Essence Stacks", -- [2]
				"The Well of Existence", -- [3]
				"The Ever-Rising Tide", -- [4]
			},
			["xOffset"] = -158.3316980122712,
			["yOffset"] = -321.9972933514304,
			["anchorPoint"] = "CENTER",
			["rowSpace"] = 1,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["useLimit"] = false,
			["align"] = "CENTER",
			["stagger"] = 0,
			["version"] = 11,
			["load"] = {
				["use_class"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 0.6500000000000001,
			["rotation"] = 0,
			["border"] = "None",
			["limit"] = 5,
			["regionType"] = "dynamicgroup",
			["backgroundInset"] = 0,
			["sort"] = "none",
			["url"] = "https://wago.io/onUseEssences/11",
			["space"] = 2,
			["constantFactor"] = "RADIUS",
			["authorOptions"] = {
			},
			["borderOffset"] = 16,
			["semver"] = "1.0.10",
			["uid"] = "eumZ(JX0)mI",
			["id"] = "On-Use Essences",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 16,
			["config"] = {
			},
			["arcLength"] = 360,
			["gridType"] = "RD",
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["selfPoint"] = "LEFT",
		},
		["Shadowstrike"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 14,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 16,
					["multi"] = {
						[8] = true,
						[16] = true,
						[7] = true,
						[18] = true,
					},
				},
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						[19] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
						[7] = true,
						[8] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["config"] = {
			},
			["displayIcon"] = 132304,
			["glowLength"] = 10,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["ownOnly"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["spellName"] = 185438,
						["type"] = "status",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["realSpellName"] = "暗影打击",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
							"Предчувствие", -- [1]
							"Предчувствие", -- [2]
						},
						["remOperator"] = ">=",
						["unevent"] = "auto",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 1329,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"185422", -- [1]
							"115192", -- [2]
							"115191", -- [3]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["useExactSpellId"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 9,
						},
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 17,
						},
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 19,
						},
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorA"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["scalex"] = 1,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["x"] = -1,
					["y"] = 1,
					["colorType"] = "custom",
					["translateType"] = "spiralandpulse",
					["use_color"] = false,
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["colorB"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["xOffset"] = -92,
			["text1Enabled"] = false,
			["uid"] = "TB2u2sMamU0",
			["text1"] = " ",
			["desaturate"] = false,
			["width"] = 43,
			["useglowColor"] = false,
			["semver"] = "2.2.1",
			["zoom"] = 0.3,
			["id"] = "Shadowstrike",
			["alpha"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Homespun",
			["progressPrecision"] = 0,
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.34117647058824, -- [2]
								0.25098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [3]
							{
								["trigger"] = 5,
								["variable"] = "show",
								["value"] = 0,
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Adrenalin_Rush"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 13750,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["config"] = {
			},
			["displayIcon"] = 135994,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"13750", -- [1]
						},
						["ownOnly"] = true,
						["names"] = {
							"Выброс адреналина", -- [1]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["spellIds"] = {
							13750, -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_showgcd"] = true,
						["useCount"] = true,
						["use_charges"] = false,
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "~=",
						["use_remaining"] = false,
						["spellName"] = 13750,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["count"] = "2",
						["countOperator"] = "<=",
						["unit"] = "player",
						["realSpellName"] = "冲动",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["type"] = "status",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 13750,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 3,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 9,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 19,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "13750",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["sourceUnit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["glow"] = false,
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["uid"] = "VB8dOIRq7xg",
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["text1Enabled"] = false,
			["glowLength"] = 20,
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["width"] = 43,
			["text1"] = "%s",
			["zoom"] = 0.3,
			["text2"] = "%s%c",
			["useGlowColor"] = false,
			["semver"] = "2.2.1",
			["progressPrecision"] = 0,
			["id"] = "Adrenalin_Rush",
			["useglowColor"] = false,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["useTooltip"] = false,
			["alpha"] = 0.3,
			["inverse"] = true,
			["xOffset"] = 92,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 0,
									}, -- [3]
								},
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["value"] = 96,
							["property"] = "xOffset",
						}, -- [1]
						{
							["value"] = 74,
							["property"] = "yOffset",
						}, -- [2]
						{
							["value"] = 35,
							["property"] = "height",
						}, -- [3]
						{
							["value"] = 35,
							["property"] = "width",
						}, -- [4]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "1",
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "useGlowColor",
						}, -- [3]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 6,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [6]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Exsanguinate"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[17] = true,
						[4] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["use_glyph"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "zQgtE8Q6MOR",
			["displayIcon"] = "Interface\\Icons\\ability_deathwing_bloodcorruption_earth",
			["glowLength"] = 10,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "7",
						["ownOnly"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Расторопность", -- [1]
						},
						["use_showgcd"] = true,
						["duration"] = "1",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["use_genericShowOn"] = true,
						["type"] = "status",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 200806,
						["realSpellName"] = "抽血",
						["use_spellName"] = true,
						["spellIds"] = {
							193538, -- [1]
						},
						["use_unit"] = true,
						["remOperator"] = ">=",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["useRem"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 200806,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorB"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["scalex"] = 1,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = 1,
					["x"] = -1,
					["use_color"] = false,
					["translateType"] = "spiralandpulse",
					["colorFunc"] = "",
					["rotate"] = 0,
					["colorA"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = false,
			["alpha"] = 0.3,
			["text1Color"] = {
				0.062745098039216, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["anchorFrameType"] = "SCREEN",
			["useglowColor"] = false,
			["semver"] = "2.2.1",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Exsanguinate",
			["xOffset"] = 46,
			["frameStrata"] = 3,
			["width"] = 43,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["inverse"] = true,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "insufficientResources",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "1",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Quaking Bar"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = -410.000915527344,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/B1H06AUNM/3",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.63529411764706, -- [1]
				0.34117647058824, -- [2]
				0.18823529411765, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["affixes"] = {
					["single"] = 14,
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_affixes"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "challenge",
					["multi"] = {
						["challenge"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["use_size"] = true,
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "001",
			["textFont"] = "Expressway",
			["sparkTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["auto"] = false,
			["timerFont"] = "Expressway",
			["alpha"] = 1,
			["borderInset"] = 0,
			["displayIcon"] = 136025,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["parent"] = "小功能整合",
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then\n        return \"20\"\n    else\n        if aura_env.state and aura_env.state.expirationTime then\n            local remaining = aura_env.state.expirationTime - GetTime()\n            \n            return floor(remaining % 20)\n        end\n    end\nend",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " ",
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 0,
						["spellId"] = "240447",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["destUnit"] = "player",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["duration"] = "60",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 0,
						["subeventSuffix"] = "_AURA_APPLIED",
						["type"] = "event",
						["spellIds"] = {
						},
						["auraType"] = "DEBUFF",
						["use_showOn"] = true,
						["use_spellId"] = true,
						["use_itemName"] = true,
						["event"] = "Combat Log",
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["name"] = "Quake",
						["unevent"] = "timed",
						["debuffType"] = "HELPFUL",
						["use_destUnit"] = true,
						["unit"] = "player",
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["config"] = {
			},
			["internalVersion"] = 16,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["sparkWidth"] = 3,
			["stickyDuration"] = false,
			["textSize"] = 25,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["version"] = 3,
			["zoom"] = 0.3,
			["height"] = 30,
			["timerFlags"] = "None",
			["spark"] = false,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["timer"] = true,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_custom"] = false,
					["do_sound"] = true,
				},
				["init"] = {
					["custom"] = "-- Made by Domestos#3678 @Discord\nlocal bar = WeakAuras.regions[aura_env.id].region.bar\n\nlocal function CreateSpark()\n    local spark = bar:CreateTexture(nil, \"ARTWORK\")\n    spark:SetDrawLayer(\"ARTWORK\", 4)\n    spark:SetTexture(bar.spark:GetTexture())\n    spark:SetBlendMode(bar.spark:GetBlendMode())\n    spark:SetWidth(bar.spark:GetWidth())\n    spark:SetHeight(bar.spark:GetHeight())\n    \n    return spark\nend\n\nlocal function DrawSpark(offset, spark)\n    spark:SetPoint(\"CENTER\", bar, \"RIGHT\", offset * -1, 0)\n    spark:Show()\nend\n\n-- create sparks\nif bar.spark20 then bar.spark20:Hide() end\nif bar.spark40 then bar.spark40:Hide() end\nif bar.spark60 then bar.spark60:Hide() end\nbar.spark20 = CreateSpark()\nbar.spark40 = CreateSpark()\nbar.spark60 = CreateSpark()\n\n-- place sparks on bar\nlocal sizePerUnit = bar:GetWidth() / 60\nDrawSpark(sizePerUnit * 20, bar.spark20)\nDrawSpark(sizePerUnit * 40, bar.spark40)\nDrawSpark(sizePerUnit * 60, bar.spark60)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["stacksFont"] = "Friz Quadrata TT",
			["sparkHidden"] = "NEVER",
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["displayTextRight"] = "%c",
			["borderSize"] = 2,
			["semver"] = "1.0.0",
			["icon_side"] = "LEFT",
			["sparkRotationMode"] = "AUTO",
			["backgroundColor"] = {
				0.086274509803922, -- [1]
				0.086274509803922, -- [2]
				0.086274509803922, -- [3]
				1, -- [4]
			},
			["sparkHeight"] = 30,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["rotateText"] = "NONE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 28,
			["borderInFront"] = false,
			["id"] = "Quaking Bar",
			["sparkOffsetX"] = 0,
			["frameStrata"] = 1,
			["width"] = 256,
			["uid"] = "v0WIvsY8rNA",
			["borderOffset"] = 2,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["color"] = {
			},
		},
		["Blind"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["authorOptions"] = {
			},
			["yOffset"] = -42,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 2094,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 20,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = false,
						["remaining"] = "0.1",
						["use_unit"] = true,
						["custom_hide"] = "timed",
						["use_remaining"] = false,
						["type"] = "status",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = "致盲",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 2094,
						["unit"] = "player",
						["remaining_operator"] = ">=",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 2094,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["uid"] = "Cj5qJgFslrZ",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["xOffset"] = -138,
			["desaturate"] = false,
			["text1Color"] = {
				0.98823529411765, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.27,
			["text2"] = "%s%c",
			["text1"] = "%p",
			["progressPrecision"] = 0,
			["width"] = 35,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["semver"] = "2.2.1",
			["alpha"] = 0,
			["id"] = "Blind",
			["useglowColor"] = false,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["glowLength"] = 10,
			["inverse"] = true,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "1",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Rapture "] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["xOffset"] = -46,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[19] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 1943,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["config"] = {
			},
			["displayIcon"] = 132302,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["unitExists"] = true,
						["use_tooltip"] = false,
						["names"] = {
							"Рваная рана", -- [1]
						},
						["use_inverse"] = true,
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showAlways",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showAlways",
						["auranames"] = {
							"1943", -- [1]
						},
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 8042,
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							1943, -- [1]
						},
						["custom_hide"] = "timed",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["unit"] = "target",
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["realSpellName"] = "割裂",
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 1943,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["scaley"] = 1,
					["duration_type"] = "seconds",
					["colorType"] = "custom",
					["use_color"] = false,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["duration_type"] = "seconds",
					["duration"] = "1",
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["glowLength"] = 20,
			["text1Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				0.93725490196078, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useglowColor"] = false,
			["text1"] = " ",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.3,
			["text2"] = "%p",
			["useGlowColor"] = false,
			["uid"] = "m8k2USaJEyq",
			["id"] = "Rapture ",
			["semver"] = "2.2.1",
			["frameStrata"] = 2,
			["width"] = 43,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["progressPrecision"] = 0,
			["inverse"] = false,
			["text1Enabled"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "8.4",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.34117647058824, -- [2]
								0.25098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Find_Weakness"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["authorOptions"] = {
			},
			["yOffset"] = 74,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text1Enabled"] = false,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
						[14] = true,
						[13] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 93402,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["config"] = {
			},
			["displayIcon"] = 132295,
			["glowLength"] = 20,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["use_unit"] = true,
						["unit"] = "target",
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["names"] = {
							"Выявление слабости", -- [1]
						},
						["custom_hide"] = "timed",
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"91021", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 8042,
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							91021, -- [1]
						},
						["ownOnly"] = true,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "alphaPulse",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "none",
					["scaley"] = 1,
					["alpha"] = 0.7,
					["x"] = 0,
					["y"] = 0,
					["colorType"] = "custom",
					["duration"] = "0.5",
					["duration_type"] = "seconds",
					["colorFunc"] = "",
					["rotate"] = 0,
					["colorA"] = 1,
					["use_color"] = false,
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["duration_type"] = "seconds",
					["duration"] = "1",
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = true,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["xOffset"] = 0,
			["desaturate"] = false,
			["zoom"] = 0.3,
			["text1Color"] = {
				1, -- [1]
				0.93725490196078, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Homespun",
			["text1"] = " ",
			["width"] = 35,
			["text2"] = "%s%c",
			["uid"] = "lHMEFEB3OxG",
			["useGlowColor"] = true,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["id"] = "Find_Weakness",
			["semver"] = "2.2.1",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["useglowColor"] = false,
			["alpha"] = 1,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Mark_of_Death_Outlaw"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 18,
			["xOffset"] = 46,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 9,
					["multi"] = {
						[4] = true,
						[17] = true,
						[9] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["config"] = {
			},
			["displayIcon"] = "Interface\\Icons\\Achievement_BG_killingblow_berserker",
			["glowLength"] = 10,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["remaining"] = "1.5",
						["names"] = {
							"Предчувствие", -- [1]
							"Предчувствие", -- [2]
						},
						["unit"] = "player",
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["use_remaining"] = false,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 137619,
						["realSpellName"] = "死亡标记",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = ">=",
						["remaining_operator"] = ">=",
						["use_track"] = true,
						["ownOnly"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 137619,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 3,
						},
						["use_absorbMode"] = true,
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["realSpellName"] = "Выстрел из пистоли",
						["use_spellName"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 185763,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 19,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["colorR"] = 1,
					["scaley"] = 1,
					["duration_type"] = "seconds",
					["colorType"] = "custom",
					["use_color"] = false,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["authorOptions"] = {
			},
			["text1Containment"] = "INSIDE",
			["alpha"] = 0.3,
			["progressPrecision"] = 0,
			["text1Color"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["uid"] = "IRmNap18utB",
			["anchorFrameType"] = "SCREEN",
			["useglowColor"] = false,
			["semver"] = "2.2.1",
			["text2"] = "%p",
			["id"] = "Mark_of_Death_Outlaw",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["width"] = 43,
			["text1Enabled"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:Mark_of_Death_D",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["glow_frame"] = "WeakAuras:Mark_of_Death_D",
					["do_sound"] = false,
				},
			},
			["inverse"] = true,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
								},
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["value"] = 92,
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "1",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["PhoGuild - Raid Ability Timeline Backdrop"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.771618694067, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/B1pfxTOtb/29",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["event"] = "DBM Timer",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["event"] = "BigWigs Timer",
						["use_unit"] = true,
						["use_addon"] = false,
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["selfPoint"] = "TOP",
			["desc"] = "Made by: Bosmutus - Zul'jin(US)",
			["rotation"] = 90,
			["version"] = 29,
			["height"] = 200,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorMode"] = true,
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["texture"] = "369749",
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = true,
			["semver"] = "2.0.3",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "PhoGuild - Raid Ability Timeline Backdrop",
			["authorOptions"] = {
			},
			["frameStrata"] = 3,
			["width"] = 32,
			["config"] = {
			},
			["uid"] = "S01tqfVzqed",
			["alpha"] = 1,
			["discrete_rotation"] = 0,
			["conditions"] = {
			},
			["parent"] = "PhoGuild - Raid Ability Timeline",
			["xOffset"] = 0,
		},
		["PhoGuild - Raid Ability Timeline Backdrop ElvUI"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkRotation"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/B1pfxTOtb/29",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "TOP",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["desc"] = "Made by: Bosmutus - Zul'jin(US)",
			["rotation"] = 90,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["foregroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["blendMode"] = "ADD",
			["texture"] = "ElvUI Norm",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 1,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["uid"] = "ksmfARUAdU1",
			["backgroundOffset"] = 2,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["crop_y"] = 0.41,
			["sparkOffsetX"] = 0,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.timers={}",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.771618694067, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0.11764705882353, -- [1]
				0.11764705882353, -- [2]
				0.11764705882353, -- [3]
				0.75629188120365, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["desaturateBackground"] = false,
			["semver"] = "2.0.3",
			["timerSize"] = 12,
			["sparkRotationMode"] = "AUTO",
			["desaturateForeground"] = false,
			["textSize"] = 12,
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "auto",
						["use_unit"] = true,
						["event"] = "Chat Message",
						["custom_type"] = "status",
						["spellIds"] = {
						},
						["events"] = "PHOGUILD_RAT,PHOGUILD_RAT_EXP",
						["custom"] = "function(WAevent, event, id, msg, exp, icon, colors)\n    if WAevent == \"PHOGUILD_RAT\" then\n        if event == \"START\" or event==\"UPDATEPROG\" then\n            if not id then return end\n            aura_env.timers[id] = exp\n            C_Timer.After(exp-GetTime(), function() WeakAuras.ScanEvents(\"PHOGUILD_RAT_EXP\",\"\",id) end)\n            return true\n        end\n        return false\n    end\nend",
						["names"] = {
						},
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["custom"] = "function(WAevent, event, id, msg, exp, icon, colors)\n    if WAevent == \"PHOGUILD_RAT\" then\n        if event==\"STOP\" then\n            if not id then return end\n            aura_env.timers[id] = nil\n        elseif event==\"STOPALL\" then\n            for cid,cexp in pairs(aura_env.timers) do\n                if not id or tostring(id)==strsplit(\"^\",cid) then --With BW, id (called module in BW) can be a table here\n                    aura_env.timers[cid] = nil\n                end\n            end\n        else \n            return false \n        end\n    elseif WAevent == \"PHOGUILD_RAT_EXP\" then\n        \n    else \n        return false \n    end\n    -- Check expiration\n    local hasTimer = false\n    local now = GetTime()\n    for cid,cexp in pairs(aura_env.timers) do\n        if cexp <= now then\n            aura_env.timers[cid] = nil\n        else\n            hasTimer = true\n        end\n    end\n    return not hasTimer\nend",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 16,
			["rotateText"] = "NONE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["customTextUpdate"] = "update",
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["borderBackdrop"] = "None",
			["version"] = 29,
			["rotate"] = true,
			["timer"] = false,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["authorMode"] = true,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["startAngle"] = 0,
			["user_y"] = 0,
			["borderSize"] = 1,
			["height"] = 223,
			["mirror"] = false,
			["borderEdge"] = "1 Pixel",
			["border"] = true,
			["borderInFront"] = true,
			["config"] = {
			},
			["icon_side"] = "RIGHT",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.64000001549721, -- [4]
			},
			["spark"] = false,
			["sparkHeight"] = 30,
			["authorOptions"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["displayTextLeft"] = "%n",
			["id"] = "PhoGuild - Raid Ability Timeline Backdrop ElvUI",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 3,
			["width"] = 27,
			["parent"] = "PhoGuild - Raid Ability Timeline",
			["desaturate"] = true,
			["inverse"] = false,
			["crop"] = 0.41,
			["orientation"] = "VERTICAL",
			["crop_x"] = 0.41,
			["zoom"] = 0,
			["sparkWidth"] = 10,
		},
		["Simbols_of_Death"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 212283,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "U8HzBqt9fwU",
			["displayIcon"] = 135994,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"212283", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Символы смерти", -- [1]
						},
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["useGroup_count"] = false,
						["spellIds"] = {
							212283, -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["useCount"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "~=",
						["charges"] = "3",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["count"] = "2",
						["countOperator"] = "<=",
						["spellName"] = 212283,
						["realSpellName"] = "死亡符记",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["type"] = "status",
						["use_remaining"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 212283,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "212283",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["sourceUnit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["text1Enabled"] = false,
			["glowLength"] = 20,
			["config"] = {
			},
			["alpha"] = 0.3,
			["width"] = 43,
			["text1"] = "%s",
			["xOffset"] = 46,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text2"] = "%s%c",
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["id"] = "Simbols_of_Death",
			["useglowColor"] = false,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["useTooltip"] = false,
			["text1Containment"] = "INSIDE",
			["inverse"] = true,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["op"] = "<",
								["variable"] = "show",
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "glowType",
						}, -- [2]
						{
							["property"] = "useGlowColor",
						}, -- [3]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Rogue_ComboPoints_Bar"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = 47,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["backgroundColor"] = {
				0.29803921568628, -- [1]
				0.094117647058824, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.76078431372549, -- [2]
				0.44313725490196, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["DEATHKNIGHT"] = true,
						["WARRIOR"] = true,
						["ROGUE"] = true,
						["MAGE"] = true,
						["WARLOCK"] = true,
						["PALADIN"] = true,
						["DRUID"] = true,
						["MONK"] = true,
						["SHAMAN"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_petbattle"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				0.97254901960784, -- [2]
				0.67450980392157, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Solid",
			["textFont"] = "ArchivoNarrow-Bold",
			["borderOffset"] = 1,
			["auto"] = true,
			["timerFont"] = "Expressway",
			["alpha"] = 0.3,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				0.83529411764706, -- [2]
				0.7921568627451, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["customText"] = "function()\n    if aura_env.state and aura_env.state.stacks then\n        aura_env.region:SetDurationInfo(aura_env.state.stacks, IsPlayerSpell(193531) and 6 or 5, true)\n    end\nend",
			["spark"] = false,
			["customTextUpdate"] = "update",
			["sparkRotationMode"] = "MANUAL",
			["displayTextLeft"] = "%c",
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["auranames"] = {
							"205473", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["event"] = "Power",
						["names"] = {
						},
						["castType"] = "cast",
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["duration"] = "1",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["textSize"] = 14,
			["internalVersion"] = 16,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["sparkColor"] = {
				1, -- [1]
				0.42352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["uid"] = "I9IBdl)btvM",
			["borderBackdrop"] = "None",
			["version"] = 10,
			["icon"] = false,
			["timer"] = false,
			["timerFlags"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkTexture"] = "Legionfall_BarSpark",
			["displayTextRight"] = "%p / %t",
			["sparkHidden"] = "BOTH",
			["borderEdge"] = "Blizzard Dialog",
			["semver"] = "2.2.1",
			["border"] = true,
			["anchorFrameFrame"] = "SUFUnitplayer",
			["xOffset"] = 0,
			["borderInFront"] = false,
			["rotateText"] = "NONE",
			["icon_side"] = "LEFT",
			["totalPrecision"] = 1,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkHeight"] = 15,
			["borderSize"] = 2,
			["stacksFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["zoom"] = 0.3,
			["id"] = "Rogue_ComboPoints_Bar",
			["config"] = {
			},
			["frameStrata"] = 2,
			["width"] = 227,
			["height"] = 12,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "value",
								["value"] = "1",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["variable"] = "value",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.59,0.59,0.94,0.98,0.78,0.83)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "value",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [3]
			},
			["sparkWidth"] = 5,
			["parent"] = "Rogue_AfenarUI",
		},
		["Enrg"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 95.5,
			["displayText"] = "SS",
			["yOffset"] = -33,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text1Enabled"] = false,
			["keepAspectRatio"] = true,
			["wordWrap"] = "WordWrap",
			["desaturate"] = true,
			["rotation"] = 0,
			["font"] = "Expressway",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[17] = true,
						[16] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 193316,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["blendMode"] = "BLEND",
			["text2FontSize"] = 14,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 1,
			["uid"] = "KSTF4Q)fD5I",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["glowLength"] = 20,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["auranames"] = {
							"199600", -- [1]
						},
						["ownOnly"] = true,
						["names"] = {
							"Череп с костями", -- [1]
						},
						["use_tooltip"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showAlways",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellName"] = 79140,
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["useGroup_count"] = false,
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Вендетта",
						["use_spellName"] = true,
						["spellIds"] = {
							199603, -- [1]
						},
						["custom_hide"] = "timed",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 79140,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"199603", -- [1]
							"193359", -- [2]
							"193358", -- [3]
							"193357", -- [4]
							"193356", -- [5]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["useExactSpellId"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["unit"] = "player",
						["use_exact_spellName"] = true,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 5171,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["parent"] = "Rogue_AfenarUI",
			["text1Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["text2Font"] = "ArchivoNarrow-Bold",
			["version"] = 10,
			["config"] = {
			},
			["height"] = 16,
			["rotate"] = true,
			["glowLines"] = 30,
			["text1Point"] = "CENTER",
			["glowFrequency"] = 0,
			["fontSize"] = 16,
			["text2Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				0.90980392156863, -- [2]
				0.70980392156863, -- [3]
				0, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["mirror"] = false,
			["text2Color"] = {
				1, -- [1]
				0.90980392156863, -- [2]
				0.70980392156863, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["text2"] = "ENRG",
			["authorOptions"] = {
			},
			["semver"] = "2.2.1",
			["justify"] = "LEFT",
			["text1"] = "%p",
			["glow"] = false,
			["progressPrecision"] = 0,
			["text1Font"] = "Expressway",
			["useGlowColor"] = false,
			["displayIcon"] = "Interface\\Icons\\ability_rogue_rollthebones01",
			["id"] = "Enrg",
			["automaticWidth"] = "Auto",
			["frameStrata"] = 2,
			["width"] = 36,
			["anchorFrameFrame"] = "WeakAuras:Atk/Lch",
			["alpha"] = 0.2,
			["inverse"] = false,
			["zoom"] = 0.5,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Stealth"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["xOffset"] = 0,
			["yOffset"] = 74,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 20,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["config"] = {
			},
			["displayIcon"] = 132320,
			["glowLength"] = 20,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorA"] = 1,
					["colorType"] = "custom",
					["colorFunc"] = "",
					["rotate"] = 0,
					["use_color"] = false,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35.5,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = true,
			["authorOptions"] = {
			},
			["uid"] = "19kY0U3dhXV",
			["progressPrecision"] = 0,
			["width"] = 35.5,
			["text1"] = "%s",
			["zoom"] = 0.27,
			["text2"] = "%s%c",
			["useGlowColor"] = true,
			["semver"] = "2.2.1",
			["text1Color"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["id"] = "Stealth",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"115191", -- [1]
							"115192", -- [2]
						},
						["ownOnly"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["event"] = "Health",
						["names"] = {
							"Незаметность", -- [1]
							"Увертка", -- [2]
						},
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["spellIds"] = {
							115191, -- [1]
							115192, -- [2]
						},
						["useGroup_count"] = false,
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["useTooltip"] = false,
			["alpha"] = 1,
			["inverse"] = false,
			["text1Enabled"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Rogue_Energy_Sin"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.49803921568628, -- [1]
				0.81176470588235, -- [2]
				0.85098039215686, -- [3]
				0, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 1,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
						[5] = true,
						[6] = true,
						[4] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_petbattle"] = false,
				["use_vehicleUi"] = false,
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "ElvUI Norm",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "ElvUI Blank",
			["color"] = {
			},
			["customText"] = "\n\n\n\n",
			["sparkRotationMode"] = "MANUAL",
			["displayTextLeft"] = " ",
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["duration"] = "0",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_unit"] = true,
						["custom_hide"] = "custom",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["use_eclipsetype"] = true,
						["unevent"] = "auto",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["eclipsetype"] = "moon",
						["lunar_power_operator"] = ">=",
						["custom"] = "function()\n    return true\nend",
						["customDuration"] = "function()\n    local energyMaxPosition = UnitPowerMax(\"player\", SPELL_POWER_ENERGY);\n    return 50, energyMaxPosition, 0,0  \nend",
						["lunar_power"] = "0",
						["spellIds"] = {
						},
						["event"] = "Conditions",
						["check"] = "update",
						["use_lunar_power"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["eclipsetype"] = "sun",
						["use_eclipsetype"] = true,
						["custom"] = "\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["power"] = "50",
						["power_operator"] = "<",
						["use_absorbMode"] = true,
						["event"] = "Power",
						["unit"] = "player",
						["unevent"] = "auto",
						["powertype"] = 3,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_power"] = true,
						["use_unit"] = true,
						["use_powertype"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["power"] = "35",
						["power_operator"] = "<",
						["use_absorbMode"] = true,
						["event"] = "Power",
						["unit"] = "player",
						["unevent"] = "auto",
						["powertype"] = 3,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_power"] = true,
						["use_unit"] = true,
						["use_powertype"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["spark"] = true,
			["internalVersion"] = 16,
			["customTextUpdate"] = "update",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["textSize"] = 12,
			["stickyDuration"] = false,
			["xOffset"] = 0,
			["uid"] = "thfLMehaQS1",
			["version"] = 10,
			["height"] = 16,
			["timer"] = false,
			["timerFlags"] = "None",
			["backgroundColor"] = {
				0.066666666666667, -- [1]
				0.054901960784314, -- [2]
				0.10980392156863, -- [3]
				0, -- [4]
			},
			["sparkBlendMode"] = "BLEND",
			["useAdjustededMax"] = false,
			["rotateText"] = "NONE",
			["width"] = 229,
			["sparkRotation"] = 0,
			["zoom"] = 0,
			["sparkHidden"] = "BOTH",
			["border"] = false,
			["borderEdge"] = "Plain White",
			["timerSize"] = 12,
			["borderInFront"] = false,
			["semver"] = "2.2.1",
			["icon_side"] = "RIGHT",
			["config"] = {
			},
			["borderOffset"] = 1,
			["sparkHeight"] = 16,
			["stacksFont"] = "Friz Quadrata TT",
			["sparkOffsetX"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["borderSize"] = 1,
			["id"] = "Rogue_Energy_Sin",
			["backdropColor"] = {
				0.066666666666667, -- [1]
				0.054901960784314, -- [2]
				0.10980392156863, -- [3]
				0, -- [4]
			},
			["frameStrata"] = 4,
			["anchorFrameType"] = "SCREEN",
			["sparkColor"] = {
				1, -- [1]
				0.74117647058823, -- [2]
				0.34117647058824, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
			},
			["sparkWidth"] = 2,
			["parent"] = "Rogue_AfenarUI",
		},
		["Backstub_Shadowblade"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 14,
			["xOffset"] = -92,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 16,
					["multi"] = {
						[8] = true,
						[16] = true,
						[7] = true,
						[18] = true,
					},
				},
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						[19] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
						[7] = true,
						[8] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "5aKkRD0RrJo",
			["displayIcon"] = 132304,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorB"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["scalex"] = 1,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = 1,
					["x"] = -1,
					["use_color"] = false,
					["translateType"] = "spiralandpulse",
					["colorFunc"] = "",
					["rotate"] = 0,
					["colorA"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["text1Containment"] = "INSIDE",
			["authorOptions"] = {
			},
			["text1Enabled"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["alpha"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["progressPrecision"] = 0,
			["semver"] = "2.2.1",
			["text2"] = "%p",
			["id"] = "Backstub_Shadowblade",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["width"] = 43,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Предчувствие", -- [1]
							"Предчувствие", -- [2]
						},
						["use_showgcd"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 53,
						["realSpellName"] = "背刺",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["ownOnly"] = true,
						["remOperator"] = ">=",
						["unevent"] = "auto",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 1329,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"185422", -- [1]
							"115192", -- [2]
							"115191", -- [3]
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 9,
						},
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 17,
						},
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 19,
						},
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["inverse"] = true,
			["glowLength"] = 10,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.34117647058824, -- [2]
								0.25098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [3]
							{
								["trigger"] = 5,
								["variable"] = "show",
								["value"] = 0,
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["战斗时长 2"] = {
			["outline"] = "None",
			["fontSize"] = 11,
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				0.207843137254902, -- [2]
				0.698039215686275, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    if WA_xXx_Combat_Start ~=nil then\n        local combatTime = GetTime()-WA_xXx_Combat_Start\n        return string.format(\"%02d:%02d\", combatTime/60, combatTime%60)\n    else\n        return \"00:00\"\n    end\nend",
			["yOffset"] = -223.999877929688,
			["regionType"] = "text",
			["authorOptions"] = {
			},
			["anchorPoint"] = "CENTER",
			["xOffset"] = -156.999145507813,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BikeHorn.mp3",
					["sound_channel"] = "Master",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["events"] = "INSTANCE_ENCOUNTER_ENGAGE_UNIT, PLAYER_REGEN_DISABLED, PLAYER_REGEN_ENABLED",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["customDuration"] = "",
						["customName"] = "",
						["custom"] = "function()\n    if (UnitExists(\"boss1\") and UnitIsDeadOrGhost(\"player\")) or UnitAffectingCombat(\"player\") or InCombatLockdown() then\n        WA_xXx_Combat_Start = WA_xXx_Combat_Start or GetTime()\n        return true\n    else\n        WA_xXx_Combat_Start = nil\n        return false\n    end\nend",
						["custom_type"] = "event",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "function()\n    return WA_xXx_Combat_Start == nil\nend",
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["fixedWidth"] = 200,
			["internalVersion"] = 16,
			["justify"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "spiral",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "战斗时长 2",
			["parent"] = "小功能整合",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["font"] = "默认",
			["wordWrap"] = "WordWrap",
			["width"] = 61.9999847412109,
			["height"] = 10.9999952316284,
			["conditions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "mRxcjA48(kJ",
		},
		["Rogue_Energy_Sin 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.49803921568628, -- [1]
				0.81176470588235, -- [2]
				0.85098039215686, -- [3]
				0, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 1,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
						[5] = true,
						[6] = true,
						[4] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_vehicleUi"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "ElvUI Norm",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 1,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "ElvUI Blank",
			["color"] = {
			},
			["customText"] = "\n\n\n\n",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " ",
			["triggers"] = {
				{
					["trigger"] = {
						["lunar_power"] = "0",
						["duration"] = "0",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
						["custom_type"] = "status",
						["type"] = "custom",
						["use_eclipsetype"] = true,
						["unevent"] = "auto",
						["custom"] = "function()\n    return true\nend",
						["eclipsetype"] = "moon",
						["event"] = "Conditions",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["customDuration"] = "function()\n    local eclipseMaxPosition = UnitPowerMax(\"player\", SPELL_POWER_LUNAR_POWER);\n    return 35, eclipseMaxPosition, 0,0  \nend",
						["use_alwaystrue"] = true,
						["spellIds"] = {
						},
						["lunar_power_operator"] = ">=",
						["check"] = "update",
						["use_lunar_power"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
					},
					["untrigger"] = {
						["eclipsetype"] = "sun",
						["use_eclipsetype"] = true,
						["custom"] = "\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["power"] = "35",
						["power_operator"] = "<",
						["use_absorbMode"] = true,
						["event"] = "Power",
						["unit"] = "player",
						["unevent"] = "auto",
						["powertype"] = 3,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_power"] = true,
						["use_unit"] = true,
						["use_powertype"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["sparkTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["internalVersion"] = 16,
			["sparkWidth"] = 2,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["textSize"] = 12,
			["stickyDuration"] = false,
			["sparkColor"] = {
				1, -- [1]
				0.49411764705882, -- [2]
				0.070588235294118, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["version"] = 10,
			["sparkRotationMode"] = "MANUAL",
			["height"] = 16,
			["timerFlags"] = "None",
			["backgroundColor"] = {
				0.066666666666667, -- [1]
				0.054901960784314, -- [2]
				0.10980392156863, -- [3]
				0, -- [4]
			},
			["sparkBlendMode"] = "BLEND",
			["useAdjustededMax"] = false,
			["zoom"] = 0,
			["width"] = 229,
			["config"] = {
			},
			["borderSize"] = 1,
			["id"] = "Rogue_Energy_Sin 2",
			["border"] = false,
			["borderEdge"] = "Plain White",
			["timerSize"] = 12,
			["borderInFront"] = false,
			["displayTextRight"] = " ",
			["icon_side"] = "RIGHT",
			["uid"] = "zYkCfuPs5Sp",
			["spark"] = true,
			["sparkHeight"] = 16,
			["rotateText"] = "NONE",
			["stacksFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "2.2.1",
			["xOffset"] = 0,
			["sparkHidden"] = "BOTH",
			["sparkOffsetX"] = 0,
			["frameStrata"] = 4,
			["anchorFrameType"] = "SCREEN",
			["timer"] = false,
			["backdropColor"] = {
				0.066666666666667, -- [1]
				0.054901960784314, -- [2]
				0.10980392156863, -- [3]
				0, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
			},
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
		},
		["战复监视"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["font"] = "默认",
			["parent"] = "小功能整合",
			["displayText"] = "%c",
			["customText"] = "function()\n    if aura_env.EStart then       \n        local charges, _, started, duration = GetSpellCharges(20484)\n        local time = \"0:00\"\n        if started then\n            local timer = duration - (GetTime() - started)\n            time = (\"%d:%02d\"):format(floor(timer / 60), mod(timer, 60))\n        end\n        if charges == nil then \n            charges = 0    \n        end\n        local color = \"|cFFFFFFFF\"\n        if charges < 1 then\n            color = \"|cFFFF0000\"\n        elseif charges > 1 then\n            color = \"|cFF00FF00\"\n        end\n        return \"|cFFAAAAAACR:|r \" .. color .. charges .. \"|r |cFFAAAAAA/|r \" .. time  \n        \n    end\n    return \"|cFFAAAAAACR:|r 2 |cFFAAAAAA/|r 2:05\"\nend",
			["yOffset"] = -385.000686645508,
			["regionType"] = "text",
			["authorOptions"] = {
			},
			["anchorPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				0.207843137254902, -- [2]
				0.698039215686275, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["customTexture"] = "\n\n",
						["custom_hide"] = "custom",
						["type"] = "custom",
						["unit"] = "player",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(event, arg1)    \n    if event == \"ENCOUNTER_START\" and arg1 then\n        aura_env.EStart = true\n        return true\n    elseif event == \"ENCOUNTER_END\" and arg1 then\n        aura_env.EStart = false\n        return false\n    end\nend",
						["event"] = "Health",
						["customStacks"] = "\n\n",
						["customDuration"] = "\n\n",
						["customName"] = "\n\n",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["check"] = "event",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END",
						["customIcon"] = "\n\n",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function(event)\n    if event == \"ENCOUNTER_END\" then \n        return true\n    end \nend",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["internalVersion"] = 16,
			["justify"] = "CENTER",
			["selfPoint"] = "CENTER",
			["id"] = "战复监视",
			["xOffset"] = 755.001708984375,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["alphaType"] = "straight",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = true,
					["type"] = "none",
					["scaley"] = 1,
					["alpha"] = 0.2,
					["y"] = 0,
					["x"] = 0,
					["scalex"] = 1,
					["rotate"] = 0,
					["colorB"] = 1,
					["duration"] = "0.2",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["colorR"] = 1,
					["type"] = "none",
					["scaley"] = 1,
					["duration_type"] = "seconds",
					["x"] = 0,
					["scalex"] = 1,
					["alpha"] = 0.2,
					["colorA"] = 1,
					["y"] = 0,
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["alphaType"] = "straight",
					["rotate"] = 0,
					["duration"] = "0.2",
					["use_alpha"] = true,
				},
			},
			["uid"] = "T2zMHEU1Wxt",
			["wordWrap"] = "WordWrap",
			["width"] = 98.166732788086,
			["height"] = 20.000003814697,
			["fixedWidth"] = 200,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
						["scenario"] = true,
						["flexible"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["twenty"] = true,
						["fortyman"] = true,
					},
				},
			},
			["config"] = {
			},
		},
		["控怪监控"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 10,
			["xOffset"] = 433.0009765625,
			["yOffset"] = 379.000549316406,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/appliedCCtrackerICONS/9",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["custom"] = "if aura_env.config.print and not aura_env.config.printBreak and aura_env.state.auto then\n    if aura_env.oldProgress[aura_env.state.destGUID] then aura_env.oldProgress[aura_env.state.destGUID] = nil end --means dmgCC expired too\n    print(aura_env.state.colorName .. \"'s \" .. GetSpellLink(aura_env.state.spellid) .. \" on |cFFFF0000\" .. aura_env.state.destName .. \"|r has EXPIRED\")\n    aura_env.flag = true\nend\n\naura_env.region:ClearAllPoints()",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "--tracked CCs\naura_env.cc = {\n    --demon hunter\n    [217832] = 60, --Imprison\n    --druid\n    [2637] = 40, --Hibernate\n    [102359] = 30, --[talented] Mass Entanglement\n    [339] = 30, --Entangling Roots\n    --hunter\n    [19386] = 30, --[talented] Wyvern sting\n    [3355] = 60, --Freezing Trap\n    --mage\n    [118] = 60, --Polymorph sheep [default]\n    [161354] = 60, --Polymorph monkey\n    [61780] = 60, --Polymorph turkey\n    [161355] = 60, --Polymorph penguin\n    [126819] = 60, --Polymorph porcupine\n    [161353] = 60, --Polymorph polar bear cub\n    [61305] = 60, --Polymorph harmless black cat\n    [161372] = 60, --Polymorph peacock\n    [28272] =  60, --Polymorph pig\n    [28271] = 60, --Polymorph turtle\n    [61721] = 60, --Polymorph harmless rabbit\n    [277792] = 60, --Polymorph bumblebee\n    [277787] = 60, --Polymorph direhorn\n    --monk\n    [115078] = 60, --Paralysis\n    --paladin\n    [20066] = 60, --Repentance\n    --priest\n    [9484] = 60, --Shackle Undead\n    --rogue\n    [6770] = 60, --Sap\n    [2094] = 60, --Blind\n    --shaman\n    [51514] = 60, --Hex frog [default]\n    [211004] = 60, --Hex spider\n    [210873] = 60, --Hex raptor\n    [211010] = 60, --Hex snake\n    [211015] = 60, --Hex roach\n    [277784] = 60, --Hex wicker mongrel (from Drustvar)\n    [277778] = 60, --Hex Zandalari Tendonripper (from Dazar'alor)\n    [269352] = 60, --Hex hatchling (from Atal'Dazar)\n    --warlock\n    [118699] = 20, --Fear\n    [6358] = 30, --Seduction\n    [710] = 30, --Banish\n}\n\n--damage resistant CCs\naura_env.dmgList = {\n    [102359] = 30, --[talented] Mass Entanglement\n    [339] = 30, --Entangling Roots\n    [118699] = 20, --Fear\n    [211004] = 60, --Hex spider\n    [210873] = 60, --Hex raptor\n    [211010] = 60, --Hex snake\n    [51514] = 60, --Hex frog [default]\n    [277784] = 60, --Hex wicker mongrel (from Drustvar)\n    [277778] = 60, --Hex Zandalari Tendonripper (from Dazar'alor)\n    [269352] = 60, --Hex hatchling (from Atal'Dazar)\n    [211015] = 60, --Hex roach\n}\n\n------------DO NOT TOUCH------------\naura_env.damageToCC = {\n}\n\naura_env.oldProgress = {\n}\n\nfunction aura_env.send(text)\n    if not aura_env.config.send then return end\n    local chatType = \"SAY\"\n    \n    if not IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and IsInGroup(LE_PARTY_CATEGORY_HOME) then\n        chatType = IsInRaid() and \"RAID\" or \"PARTY\"\n    elseif IsInGroup(LE_PARTY_CATEGORY_INSTANCE) then\n        chatType = \"INSTANCE_CHAT\"\n    end\n    SendChatMessage(text, chatType)\nend\n\nlocal aura_env = aura_env\n\naura_env.sortAndOffset = function()\n    local spacing = aura_env.config.spacing or 2\n    local count = 0\n    local t = {}\n    \n    for k, v in pairs(WeakAuras.clones[aura_env.id]) do\n        if v.state and v.state.show and v.state.destName and v.state.expirationTime then\n            table.insert(t, v)\n        end\n    end\n    if aura_env.config.sorting == 1 then\n        table.sort(t, function(a,b) return a.state.expirationTime < b.state.expirationTime end)\n    else\n        table.sort(t, function(a,b) return a.state.expirationTime > b.state.expirationTime end)\n    end\n    \n    \n    for i, region in pairs(t) do\n        if region.toShow then\n            local xOffset = 0\n            local yOffset = 0\n            \n            if aura_env.config.direction == 1 then\n                xOffset = 0\n                yOffset = 0 + (region.height + spacing) * count\n            elseif aura_env.config.direction == 2 then\n                xOffset = 0\n                yOffset = 0 - (region.height + spacing) * count\n            elseif aura_env.config.direction == 3 then\n                xOffset = 0 - (region.width + spacing) * count\n                yOffset = 0\n            elseif aura_env.config.direction == 4 then\n                xOffset = 0 + (region.width + spacing) * count\n                yOffset = 0\n            end\n            \n            region:ClearAllPoints()\n            region:SetPoint(\"CENTER\" , WeakAuras.regions[aura_env.id].region, \"CENTER\", xOffset, yOffset)\n            \n            count = count + 1\n        end\n    end\nend\n\n\naura_env.clones = {}\n\nif not aura_env.region.hook then\n    hooksecurefunc(WeakAuras, \"OpenOptions\", function()\n            for _, cloneRegion in pairs(aura_env.clones) do\n                cloneRegion:ClearAllPoints()\n            end\n    end)\nend\naura_env.region.hook = true\n\n\n",
					["do_custom"] = true,
				},
			},
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "TOP",
			["text2FontFlags"] = "THICKOUTLINE",
			["load"] = {
				["difficulty"] = {
				},
				["use_size"] = false,
				["use_never"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["flexible"] = true,
						["arena"] = true,
						["twenty"] = true,
						["party"] = true,
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "None",
			["regionType"] = "icon",
			["text2FontSize"] = 20,
			["zoom"] = 0.41,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 0,
			["config"] = {
				["self"] = false,
				["direction"] = 4,
				["send"] = false,
				["print"] = false,
				["dmgCC"] = true,
				["printBreak"] = false,
				["spacing"] = 10,
				["timeLeft"] = 10,
				["sound"] = true,
				["sorting"] = 1,
			},
			["displayIcon"] = 136072,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function(expirationTime, duration, progress, formatedDuration, name, icon, stacks)\n    if WeakAuras.IsOptionsOpen() then\n        local name = RAID_CLASS_COLORS[select(2, UnitClass(\"player\"))]:WrapTextInColorCode(Ambiguate(WeakAuras.me, \"short\"))\n        if IsAddOnLoaded(\"OmniCC\") then\n            return name\n        else\n            return name, Round(expirationTime - GetTime())\n        end\n    end\n    if aura_env.state and aura_env.state.expirationTime then\n        if IsAddOnLoaded(\"OmniCC\") then\n            return aura_env.state.colorName\n        else\n            local timeLeft = aura_env.state.expirationTime - GetTime()\n            local seconds = timeLeft == math.huge and \"\" or timeLeft > 60 and floor(timeLeft/60)..\"m\" or Round(timeLeft)\n            return aura_env.state.colorName, seconds\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["type"] = "custom",
					["duration"] = "1",
					["duration_type"] = "seconds",
					["alphaType"] = "custom",
					["scalex"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    if aura_env.config.sound and aura_env.state and aura_env.state.srcGUID and aura_env.state.srcGUID == WeakAuras.myGUID and (aura_env.state.expirationTime - GetTime() <= aura_env.config.timeLeft) then\n        if aura_env.tick and aura_env.tick < GetTime() - 1.1 or not aura_env.tick then\n            aura_env.tick = GetTime()\n            PlaySoundFile(\"Interface\\\\addons\\\\WeakAuras\\\\PowerAurasMedia\\\\Sounds\\\\Sonar.ogg\", \"MASTER\")\n        end\n    end\n    if aura_env.flag then\n        aura_env.flag = false\n        aura_env.sortAndOffset()\n    end\n    if aura_env.gather then\n        aura_env.gather = false\n        local count = 0\n        for _, region in pairs(WeakAuras.clones[aura_env.id]) do\n            count = count + 1\n            aura_env.clones[count] = region\n        end\n    end\n    return start\nend",
					["colorA"] = 1,
					["rotate"] = 0,
					["scaley"] = 1,
					["use_alpha"] = true,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["version"] = 9,
			["height"] = 31.9996318817139,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "小功能整合",
			["glowLength"] = 10,
			["text2Color"] = {
				0.203921568627451, -- [1]
				1, -- [2]
				0.274509803921569, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["cooldownTextDisabled"] = false,
			["authorOptions"] = {
				{
					["fontSize"] = "large",
					["type"] = "description",
					["text"] = "GENERAL SETTINGS",
					["width"] = 2,
				}, -- [1]
				{
					["type"] = "toggle",
					["name"] = "Show self CC only",
					["default"] = false,
					["key"] = "self",
					["width"] = 2,
				}, -- [2]
				{
					["text"] = "",
					["type"] = "header",
					["useName"] = false,
					["width"] = 1,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "print",
					["width"] = 1,
					["name"] = "Print CC status to the chat",
					["useDesc"] = true,
					["default"] = true,
					["desc"] = "applied / refreshed / removed / expired",
				}, -- [4]
				{
					["type"] = "toggle",
					["key"] = "printBreak",
					["width"] = 1,
					["name"] = "Print CC breaks only",
					["useDesc"] = true,
					["default"] = false,
					["desc"] = "will only print if someone removed CC by the damage",
				}, -- [5]
				{
					["type"] = "toggle",
					["name"] = "Send CC breaks messages to the group chat",
					["default"] = false,
					["key"] = "send",
					["width"] = 2,
				}, -- [6]
				{
					["type"] = "toggle",
					["name"] = "Print CC breaks of damage resistant CC (hex/fear...)",
					["default"] = true,
					["key"] = "dmgCC",
					["width"] = 2,
				}, -- [7]
				{
					["text"] = "",
					["type"] = "header",
					["useName"] = false,
					["width"] = 1,
				}, -- [8]
				{
					["type"] = "toggle",
					["name"] = "Play sound on low time remaining of self CC",
					["default"] = true,
					["key"] = "sound",
					["width"] = 1,
				}, -- [9]
				{
					["softMin"] = 3,
					["type"] = "range",
					["bigStep"] = 1,
					["max"] = 15,
					["step"] = 1,
					["width"] = 1,
					["min"] = 3,
					["name"] = "Seconds left to start play sound (if enabled)",
					["softMax"] = 15,
					["default"] = 10,
					["key"] = "timeLeft",
				}, -- [10]
				{
					["text"] = "",
					["type"] = "header",
					["useName"] = false,
					["width"] = 1,
				}, -- [11]
				{
					["fontSize"] = "large",
					["type"] = "description",
					["text"] = "POSITION SETTINGS",
					["width"] = 2,
				}, -- [12]
				{
					["type"] = "select",
					["key"] = "direction",
					["default"] = 3,
					["values"] = {
						"BOTTOM TO TOP", -- [1]
						"TOP TO BOTTOM", -- [2]
						"RIGHT TO LEFT", -- [3]
						"LEFT TO RIGHT", -- [4]
					},
					["name"] = "Aura growth direction",
					["width"] = 1,
				}, -- [13]
				{
					["type"] = "select",
					["key"] = "sorting",
					["default"] = 1,
					["values"] = {
						"Ascending", -- [1]
						"Descending", -- [2]
					},
					["name"] = "Aura duration sorting",
					["width"] = 1,
				}, -- [14]
				{
					["softMin"] = 0,
					["type"] = "range",
					["bigStep"] = 1,
					["max"] = 10,
					["step"] = 1,
					["width"] = 2,
					["min"] = 0,
					["name"] = "Spacing between bars",
					["softMax"] = 10,
					["default"] = 2,
					["key"] = "spacing",
				}, -- [15]
			},
			["cooldownTextEnabled"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["buffShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(states, event, ...)\n    if event == \"ENCOUNTER_END\" and ... then --clear all CC on encounter end if in the raid\n        local inside, itype = IsInInstance()\n        if inside and itype == \"raid\" then\n            for k, v in pairs(states) do\n                local region = WeakAuras.GetRegion(aura_env.id, k)\n                region:ClearAllPoints()\n                v.show = false\n                v.changed = true\n            end\n        end\n    end\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local timestamp, message, hideCaster, srcGUID, srcName, srcFlags, srcRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellid, spellName, spellSchool, extraSpellid = ...\n        --CC applied\n        if aura_env.config.self then\n            if (message == \"SPELL_AURA_APPLIED\" or message == \"SPELL_AURA_REFRESH\") and aura_env.cc[spellid] and srcGUID == WeakAuras.myGUID then\n                \n                if aura_env.config.print and not aura_env.config.printBreak and spellid == 710 then \n                    aura_env.newBanish = false\n                    for k, v in pairs(states) do\n                        if v.srcGUID == srcGUID then\n                            aura_env.newBanish = \"and also REMOVED it from |cFFFF0000\" .. v.destName .. \"|r\"\n                            break\n                        end\n                    end\n                end\n                \n                \n                local duration = aura_env.cc[spellid]\n                local icon = GetSpellTexture(spellid)\n                local class = select(2, UnitClass(srcName))\n                local name = \"unknown\"\n                if srcName then\n                    name = UnitIsPlayer(srcName) and RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(srcName, \"short\")) or Ambiguate(srcName, \"short\")\n                end\n                \n                if aura_env.config.print and not aura_env.config.printBreak then\n                    if states[destGUID] then\n                        print(name ..\" has RECONTROLLED \" .. states[destGUID].colorName .. \"'s |cFFFF0000\" .. destName .. \"|r with \" .. GetSpellLink(spellid))\n                    elseif aura_env.newBanish then\n                        print(name .. \" has applied \" .. GetSpellLink(spellid) .. \" on |cFFFF0000\" .. destName .. \"|r \" .. aura_env.newBanish)\n                        aura_env.newBanish = false\n                    else\n                        print(name .. \" has applied \" .. GetSpellLink(spellid) .. \" on |cFFFF0000\" .. destName .. \"|r\")\n                    end\n                end\n                \n                states[destGUID] = {\n                    name = srcName and Ambiguate(srcName, \"short\") or \"unknown\",\n                    srcGUID = srcGUID,\n                    class = class,\n                    spellid = spellid,\n                    colorName = name,\n                    destName = destName,\n                    destGUID = destGUID,\n                    icon = icon,       \n                    progressType = \"timed\",\n                    duration = duration,\n                    expirationTime = GetTime() + duration,\n                    auto = true,\n                    autoHide = true,\n                    changed = true,\n                    show = true,\n                }\n                \n                aura_env.flag = true\n                aura_env.gather = true\n                --CC expired\n            elseif message == \"SPELL_AURA_REMOVED\" and aura_env.cc[spellid] then\n                if states[destGUID] then\n                    if aura_env.damageToCC[destGUID] and aura_env.damageToCC[destGUID][3] + 1 >= GetTime() then --check if dmgCC was removed by melee damage\n                        local name = UnitIsPlayer(aura_env.damageToCC[destGUID][2]) and RAID_CLASS_COLORS[select(2, UnitClass(aura_env.damageToCC[destGUID][2]))]:WrapTextInColorCode(Ambiguate(aura_env.damageToCC[destGUID][2], \"short\")) or Ambiguate(aura_env.damageToCC[destGUID][2], \"short\")\n                        if aura_env.config.send then\n                            aura_env.send(aura_env.damageToCC[destGUID][2] .. \" has REMOVED \" .. states[destGUID].name .. \"'s \" .. GetSpellLink(spellid) .. \" from \" .. destName .. \" with \" .. aura_env.damageToCC[destGUID][4])\n                        elseif aura_env.config.print then\n                            print(name .. \" has REMOVED \" .. states[destGUID].colorName .. \"'s \" .. GetSpellLink(spellid) .. \" from |cFFFF0000\" .. destName .. \"|r with \" .. aura_env.damageToCC[destGUID][4])\n                        end\n                        \n                        local region = WeakAuras.GetRegion(aura_env.id, destGUID)\n                        region:ClearAllPoints()\n                        states[destGUID].auto = false\n                        states[destGUID].show = false\n                        states[destGUID].changed = true\n                        \n                        aura_env.flag = true\n                        aura_env.damageToCC[destGUID] = nil\n                    else\n                        C_Timer.After(0.3, function() WeakAuras.ScanEvents(\"DELAY_REMOVED\", destGUID) end) --because _REMOVED fired before _DAMAGE -.-\n                    end\n                end\n                --Banish CC breaks\n            elseif message == \"SPELL_CAST_SUCCESS\" and spellid == 710 and states[destGUID] and states[destGUID].spellid == 710 then\n                if aura_env.config.send then\n                    if states[destGUID].srcGUID == WeakAuras.myGUID then\n                        aura_env.send(states[destGUID].name .. \" has REMOVED his \" .. GetSpellLink(710) .. \" from \" .. destName)\n                    else\n                        aura_env.send(srcName .. \" has REMOVED \" .. states[destGUID].name .. \"'s \" .. GetSpellLink(710) .. \" from \" .. destName)\n                    end\n                elseif aura_env.config.print then\n                    if states[destGUID].srcGUID == WeakAuras.myGUID then\n                        print(states[destGUID].colorName ..  \" has REMOVED his \" .. GetSpellLink(710) .. \" from |cFFFF0000\" .. destName .. \"|r\")\n                    else\n                        local name = \"unknown\"\n                        if srcName then\n                            name = UnitIsPlayer(srcName) and RAID_CLASS_COLORS[select(2, UnitClass(srcName))]:WrapTextInColorCode(Ambiguate(srcName, \"short\")) or Ambiguate(srcName, \"short\")\n                        end\n                        print(name .. \" has REMOVED \" .. states[destGUID].colorName .. \"'s \" .. GetSpellLink(spellid) .. \" from |cFFFF0000\" .. destName .. \"|r\")\n                    end\n                end\n                --CC broken by damage\n            elseif (message == \"SWING_DAMAGE\" or message == \"SPELL_DAMAGE\" or message == \"SPELL_PERIODIC_DAMAGE\" or message == \"RANGE_DAMAGE\") and states[destGUID] and states[destGUID].spellid ~= 710 and spellid ~= 124255 then\n                local name = \"unknown\"\n                if srcName then\n                    name = UnitIsPlayer(srcName) and RAID_CLASS_COLORS[select(2, UnitClass(srcName))]:WrapTextInColorCode(Ambiguate(srcName, \"short\")) or Ambiguate(srcName, \"short\")\n                end\n                local type = message == \"SWING_DAMAGE\" and \"melee hit\" or GetSpellLink(spellid)\n                if aura_env.dmgList[states[destGUID].spellid] then --check dmg on dmgCC\n                    srcName = srcName or \"unknown\"\n                    aura_env.damageToCC[destGUID] = {srcGUID, srcName, GetTime(), type}\n                else\n                    if aura_env.config.send then\n                        aura_env.send(srcName .. \" has REMOVED \" .. states[destGUID].name .. \"'s \" .. GetSpellLink(states[destGUID].spellid) .. \" from \" .. destName .. \" with \" .. type)\n                    elseif aura_env.config.print then\n                        print(name ..\" has REMOVED \" .. states[destGUID].colorName .. \"'s \" .. GetSpellLink(states[destGUID].spellid) .. \" from |cFFFF0000\" .. destName .. \"|r with \" .. type)\n                    end\n                    \n                    local region = WeakAuras.GetRegion(aura_env.id, destGUID)\n                    region:ClearAllPoints()\n                    states[destGUID].auto = false\n                    states[destGUID].show = false\n                    states[destGUID].changed = true\n                    \n                    aura_env.flag = true\n                end            \n                \n            end\n            \n        elseif not aura_env.config.self then\n            if (message == \"SPELL_AURA_APPLIED\" or message == \"SPELL_AURA_REFRESH\") and aura_env.cc[spellid] then\n                \n                if aura_env.config.print and not aura_env.config.printBreak and spellid == 710 then \n                    aura_env.newBanish = false\n                    for k, v in pairs(states) do\n                        if v.srcGUID == srcGUID then\n                            aura_env.newBanish = \"and also REMOVED it from |cFFFF0000\" .. v.destName .. \"|r\"\n                            break\n                        end\n                    end\n                end\n                \n                if not states[destGUID] or states[destGUID] and states[destGUID].expirationTime < GetTime() + aura_env.cc[spellid] then --take longest duration CC\n                    if not aura_env.dmgList[spellid] and states[destGUID] and aura_env.dmgList[states[destGUID].spellid] then --check if new CC is not dmgCC and old CC is dmgCC\n                        local icon = GetSpellTexture(spellid)\n                        local class = select(2, UnitClass(srcName))\n                        \n                        local name = \"unknown\"\n                        if srcName then\n                            name = UnitIsPlayer(srcName) and RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(srcName, \"short\")) or Ambiguate(srcName, \"short\")\n                        end\n                        local overlay = aura_env.cc[spellid] - (states[destGUID].expirationTime - GetTime())\n                        \n                        if aura_env.config.print and not aura_env.config.printBreak then\n                            print(name ..\" has RECONTROLLED \" .. states[destGUID].colorName .. \"'s |cFFFF0000\" .. destName .. \"|r with \" .. GetSpellLink(spellid))\n                        end\n                        \n                        aura_env.oldProgress[destGUID] = copyTable(states[destGUID])\n                        states[destGUID].name = srcName and Ambiguate(srcName, \"short\") or \"unknown\"\n                        states[destGUID].srcGUID = srcGUID\n                        states[destGUID].spellid = spellid\n                        states[destGUID].colorName = name\n                        states[destGUID].icon = icon\n                        states[destGUID].duration = aura_env.cc[spellid]\n                        states[destGUID].expirationTime = aura_env.cc[spellid] + GetTime()\n                        states[destGUID].show = true\n                        states[destGUID].changed = true\n                        \n                        aura_env.flag = true\n                    else\n                        if next(aura_env.oldProgress) then --check if dmgCC was stored before and now reapplied on the different target\n                            for k, v in pairs(aura_env.oldProgress) do\n                                if v.srcGUID == srcGUID then\n                                    k = nil\n                                    break\n                                end\n                            end\n                        end\n                        local duration = aura_env.cc[spellid]\n                        local icon = GetSpellTexture(spellid)\n                        local class = select(2, UnitClass(srcName))\n                        local name = \"unknown\"\n                        if srcName then\n                            name = UnitIsPlayer(srcName) and RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(srcName, \"short\")) or Ambiguate(srcName, \"short\")\n                        end\n                        \n                        if aura_env.config.print and not aura_env.config.printBreak then\n                            if states[destGUID] then\n                                print(name ..\" has RECONTROLLED \" .. states[destGUID].colorName .. \"'s |cFFFF0000\" .. destName .. \"|r with \" .. GetSpellLink(spellid))\n                            elseif aura_env.newBanish then\n                                print(name .. \" has applied \" .. GetSpellLink(spellid) .. \" on |cFFFF0000\" .. destName .. \"|r \" .. aura_env.newBanish)\n                                aura_env.newBanish = false\n                            else\n                                print(name .. \" has applied \" .. GetSpellLink(spellid) .. \" on |cFFFF0000\" .. destName .. \"|r\")\n                            end\n                        end\n                        \n                        states[destGUID] = {\n                            name = srcName and Ambiguate(srcName, \"short\") or \"unknown\",\n                            srcGUID = srcGUID,\n                            class = class,\n                            spellid = spellid,\n                            colorName = name,\n                            destName = destName,\n                            destGUID = destGUID,\n                            icon = icon,       \n                            progressType = \"timed\",\n                            duration = duration,\n                            expirationTime = GetTime() + duration,\n                            auto = true,\n                            autoHide = true,\n                            changed = true,\n                            show = true,\n                        }\n                        aura_env.gather = true\n                        aura_env.flag = true\n                    end\n                end\n                --CC expired\n            elseif message == \"SPELL_AURA_REMOVED\" and aura_env.cc[spellid] then\n                if next(aura_env.oldProgress) then --check if dmgCC was stored before and now has expired\n                    for k, v in pairs(aura_env.oldProgress) do\n                        if v.srcGUID == srcGUID then\n                            k = nil\n                        end\n                    end\n                end\n                \n                if states[destGUID] then\n                    if aura_env.damageToCC[destGUID] and aura_env.damageToCC[destGUID][3] + 1 >= GetTime() then --check if dmgCC was removed by melee damage\n                        local name = UnitIsPlayer(aura_env.damageToCC[destGUID][2]) and RAID_CLASS_COLORS[select(2, UnitClass(aura_env.damageToCC[destGUID][2]))]:WrapTextInColorCode(Ambiguate(aura_env.damageToCC[destGUID][2], \"short\")) or Ambiguate(aura_env.damageToCC[destGUID][2], \"short\")\n                        if aura_env.config.send then\n                            aura_env.send(aura_env.damageToCC[destGUID][2] .. \" has REMOVED \" .. states[destGUID].name .. \"'s \" .. GetSpellLink(spellid) .. \" from \" .. destName .. \" with \" .. aura_env.damageToCC[destGUID][4])\n                        elseif aura_env.config.print then\n                            print(name .. \" has REMOVED \" .. states[destGUID].colorName .. \"'s \" .. GetSpellLink(spellid) .. \" from |cFFFF0000\" .. destName .. \"|r with \" .. aura_env.damageToCC[destGUID][4])\n                        end\n                        \n                        local region = WeakAuras.GetRegion(aura_env.id, destGUID)\n                        region:ClearAllPoints()\n                        states[destGUID].auto = false\n                        states[destGUID].show = false\n                        states[destGUID].changed = true\n                        \n                        aura_env.flag = true\n                        aura_env.damageToCC[destGUID] = nil\n                    elseif states[destGUID].srcGUID == srcGUID and not aura_env.oldProgress[destGUID] then\n                        C_Timer.After(0.3, function() WeakAuras.ScanEvents(\"DELAY_REMOVED\", destGUID) end) --because _REMOVED fired before _DAMAGE -.-\n                    end\n                end\n                --Banish CC breaks\n            elseif message == \"SPELL_CAST_SUCCESS\" and spellid == 710 and states[destGUID] and states[destGUID].spellid == 710 then\n                if aura_env.config.send then\n                    if states[destGUID].srcGUID == WeakAuras.myGUID then\n                        aura_env.send(states[destGUID].name .. \" has REMOVED his \" .. GetSpellLink(710) .. \" from \" .. destName)\n                    else\n                        aura_env.send(srcName .. \" has REMOVED \" .. states[destGUID].name .. \"'s \" .. GetSpellLink(710) .. \" from \" .. destName)\n                    end\n                elseif aura_env.config.print then\n                    if states[destGUID].srcGUID == WeakAuras.myGUID then\n                        print(states[destGUID].colorName ..  \" has REMOVED his \" .. GetSpellLink(710) .. \" from |cFFFF0000\" .. destName .. \"|r\")\n                    else\n                        local name = \"unknown\"\n                        if srcName then\n                            name = UnitIsPlayer(srcName) and RAID_CLASS_COLORS[select(2, UnitClass(srcName))]:WrapTextInColorCode(Ambiguate(srcName, \"short\")) or Ambiguate(srcName, \"short\")\n                        end\n                        print(name .. \" has REMOVED \" .. states[destGUID].colorName .. \"'s \" .. GetSpellLink(spellid) .. \" from |cFFFF0000\" .. destName .. \"|r\")\n                    end\n                end\n                --CC broken by damage\n            elseif (message == \"SWING_DAMAGE\" or message == \"SPELL_DAMAGE\" or message == \"SPELL_PERIODIC_DAMAGE\" or message == \"RANGE_DAMAGE\") and states[destGUID] and states[destGUID].spellid ~= 710 and spellid ~= 124255 then\n                local name = \"unknown\"\n                if srcName then\n                    name = UnitIsPlayer(srcName) and RAID_CLASS_COLORS[select(2, UnitClass(srcName))]:WrapTextInColorCode(Ambiguate(srcName, \"short\")) or Ambiguate(srcName, \"short\")\n                end\n                local type = message == \"SWING_DAMAGE\" and \"melee hit\" or GetSpellLink(spellid)\n                if aura_env.oldProgress[destGUID] then --check if dmgCC was on the target\n                    if aura_env.config.dmgCC then\n                        if aura_env.config.send then\n                            aura_env.send(srcName .. \" has REMOVED \" .. states[destGUID].name .. \"'s \" .. GetSpellLink(states[destGUID].spellid) .. \" from HEXXED \" .. destName .. \" with \" .. type)\n                        elseif aura_env.config.print then\n                            print(name ..\" has REMOVED \" .. states[destGUID].colorName .. \"'s \" .. GetSpellLink(states[destGUID].spellid) .. \" from HEXXED |cFFFF0000\" .. destName .. \"|r with \" .. type)\n                        end\n                    end\n                    \n                    states[destGUID] = copyTable(aura_env.oldProgress[destGUID]) \n                    states[destGUID].show = true\n                    states[destGUID].changed = true\n                    aura_env.oldProgress[destGUID] = nil\n                    \n                    aura_env.flag = true\n                elseif aura_env.dmgList[states[destGUID].spellid] then --check dmg on dmgCC\n                    srcName = srcName or \"unknown\"\n                    aura_env.damageToCC[destGUID] = {srcGUID, srcName, GetTime(), type}\n                else\n                    if aura_env.config.send then\n                        aura_env.send(srcName .. \" has REMOVED \" .. states[destGUID].name .. \"'s \" .. GetSpellLink(states[destGUID].spellid) .. \" from \" .. destName .. \" with \" .. type)\n                    elseif aura_env.config.print then\n                        print(name ..\" has REMOVED \" .. states[destGUID].colorName .. \"'s \" .. GetSpellLink(states[destGUID].spellid) .. \" from |cFFFF0000\" .. destName .. \"|r with \" .. type)\n                    end\n                    \n                    local region = WeakAuras.GetRegion(aura_env.id, destGUID)\n                    region:ClearAllPoints()\n                    states[destGUID].auto = false\n                    states[destGUID].show = false\n                    states[destGUID].changed = true\n                    \n                    aura_env.flag = true\n                end            \n                \n            end\n        end\n    end\n    if event == \"DELAY_REMOVED\" and ... then\n        local destGUID  = ...\n        if states[destGUID] then\n            local region = WeakAuras.GetRegion(aura_env.id, destGUID)\n            region:ClearAllPoints()\n            states[destGUID].auto = false\n            states[destGUID].show = false\n            states[destGUID].changed = true\n            \n            aura_env.flag = true\n        end\n    end\n    return true\nend",
						["spellIds"] = {
						},
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED DELAY_REMOVED ENCOUNTER_END",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1"] = "%c1",
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "聊天",
			["text2"] = "%c2",
			["semver"] = "1.0.2",
			["text1Enabled"] = true,
			["id"] = "控怪监控",
			["uid"] = "FFK6krC3KH3",
			["frameStrata"] = 1,
			["width"] = 45.9991035461426,
			["alpha"] = 1,
			["text1Font"] = "聊天",
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Rogue_Energy_T Sin"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = 31,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["wordWrap"] = "WordWrap",
			["barColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "ArchivoNarrow-Bold",
			["sparkOffsetY"] = 2,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["stacks"] = false,
			["texture"] = "fer28",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["fixedWidth"] = 200,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["sparkOffsetX"] = 0,
			["color"] = {
				1, -- [1]
				0.90196078431373, -- [2]
				0.63529411764706, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["borderOffset"] = 1,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["displayTextLeft"] = "%p                    ",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["powertype"] = 3,
						["spellIds"] = {
						},
						["names"] = {
						},
						["event"] = "Power",
						["use_unit"] = true,
						["use_powertype"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 16,
			["textSize"] = 14,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["spark"] = true,
			["text"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["uid"] = "2ijRJXf4R4S",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["version"] = 10,
			["borderBackdrop"] = "None",
			["height"] = 19.999952316284,
			["timerFlags"] = "None",
			["width"] = 24.000047683716,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["fontSize"] = 16,
			["zoom"] = 0,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["sparkHidden"] = "BOTH",
			["semver"] = "2.2.1",
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["timerSize"] = 12,
			["borderSize"] = 1,
			["xOffset"] = 0,
			["icon_side"] = "LEFT",
			["config"] = {
			},
			["icon"] = false,
			["sparkHeight"] = 40,
			["selfPoint"] = "CENTER",
			["sparkRotationMode"] = "MANUAL",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "CENTER",
			["displayTextRight"] = "%p",
			["id"] = "Rogue_Energy_T Sin",
			["stacksFont"] = "Friz Quadrata TT",
			["frameStrata"] = 4,
			["anchorFrameType"] = "SCREEN",
			["timer"] = false,
			["displayText"] = "%p",
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "50",
						["variable"] = "power",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.90196078431373, -- [2]
								0.63529411764706, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["sparkWidth"] = 15,
			["parent"] = "Rogue_AfenarUI",
		},
		["Shadow_Dance_S"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "ArchivoNarrow-Bold",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 185313,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 0,
			["config"] = {
			},
			["displayIcon"] = 135994,
			["glowLength"] = 10,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				0.90196078431373, -- [2]
				0.63529411764706, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "local r = WeakAuras.regions[aura_env.id].region\nr.text2:ClearAllPoints()\nr.text2:SetPoint(\"TOPRIGHT\", r, \"TOPRIGHT\", 3.5, 3.5)",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["uid"] = "J96XpZwDPXw",
			["zoom"] = 0.3,
			["text1Enabled"] = false,
			["xOffset"] = 0,
			["text1"] = "%s",
			["anchorFrameType"] = "SCREEN",
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["useCount"] = true,
						["subeventPrefix"] = "SPELL",
						["use_charges"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["custom_hide"] = "timed",
						["charges_operator"] = "~=",
						["charges"] = "3",
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["unit"] = "player",
						["realSpellName"] = "暗影之舞",
						["use_spellName"] = true,
						["count"] = "2",
						["unevent"] = "auto",
						["type"] = "status",
						["spellName"] = 185313,
						["use_track"] = true,
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 185313,
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"185422", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Танец теней", -- [1]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["useName"] = true,
						["spellIds"] = {
							185422, -- [1]
						},
						["ownOnly"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "2.2.1",
			["desaturate"] = false,
			["id"] = "Shadow_Dance_S",
			["text2"] = "%s",
			["frameStrata"] = 3,
			["width"] = 43,
			["useTooltip"] = false,
			["alpha"] = 1,
			["inverse"] = true,
			["text1Font"] = "Homespun",
			["conditions"] = {
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Pistol_Shot_Alt"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["xOffset"] = 0,
			["yOffset"] = 74,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[9] = true,
						[3] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 93402,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "8SQ6h2iytoX",
			["displayIcon"] = "1373908",
			["glowLength"] = 20,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["scaley"] = 1,
					["duration_type"] = "seconds",
					["colorType"] = "custom",
					["use_color"] = false,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["colorR"] = 1,
					["colorFunc"] = "",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["duration_type"] = "seconds",
					["duration"] = "1",
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = true,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text1Containment"] = "INSIDE",
			["authorOptions"] = {
			},
			["text1Color"] = {
				1, -- [1]
				0.93725490196078, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Замечательная возможность", -- [1]
						},
						["duration"] = "1",
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["ownOnly"] = true,
						["matchesShowOn"] = "showAlways",
						["custom_hide"] = "timed",
						["useName"] = true,
						["buffShowOn"] = "showAlways",
						["unevent"] = "auto",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"195627", -- [1]
						},
						["spellName"] = 8042,
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							195627, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 3,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["use_talent"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 9,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["use_talent"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 19,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["use_talent"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["text1"] = " ",
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = false,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = true,
			["text2"] = "%s%c",
			["id"] = "Pistol_Shot_Alt",
			["semver"] = "2.2.1",
			["frameStrata"] = 3,
			["width"] = 35,
			["alpha"] = 0,
			["zoom"] = 0.3,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
								["checks"] = {
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 0,
									}, -- [3]
								},
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 0,
								["checks"] = {
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = 80,
							["property"] = "yOffset",
						}, -- [2]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["RL1"] = {
			["user_y"] = 0,
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = -117,
			["stacksFlags"] = "None",
			["yOffset"] = 15,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.76078431372549, -- [2]
				0.44313725490196, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = -0.5,
			["load"] = {
				["use_petbattle"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["HUNTER"] = true,
						["WARRIOR"] = true,
						["WARLOCK"] = true,
						["DEMONHUNTER"] = true,
						["MAGE"] = true,
						["ROGUE"] = true,
						["DEATHKNIGHT"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["stacks"] = false,
			["blendMode"] = "ADD",
			["slantMode"] = "INSIDE",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
			["textFont"] = "Expressway",
			["sparkTexture"] = "worldstate-capturebar-spark-green",
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 0.3,
			["spark"] = false,
			["uid"] = "jscqrxZW8IS",
			["borderInset"] = 1,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
			},
			["sparkRotation"] = 0,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["startAngle"] = 0,
			["textColor"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0.86274509803922, -- [3]
				1, -- [4]
			},
			["backgroundOffset"] = 0,
			["progressPrecision"] = 1,
			["width"] = 1,
			["sparkOffsetX"] = 0,
			["parent"] = "Rogue_AfenarUI",
			["color"] = {
				0.07843137254902, -- [1]
				0.59607843137255, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["sparkHidden"] = "BOTH",
			["borderOffset"] = 1,
			["timerSize"] = 12,
			["desaturateBackground"] = false,
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["customTextUpdate"] = "update",
			["totalPrecision"] = 1,
			["displayTextLeft"] = "%p / %t",
			["textSize"] = 12,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Global Cooldown",
						["names"] = {
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = false,
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["castType"] = "cast",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["event"] = "Conditions",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 16,
			["textFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.role_data = 'DAMAGER'\naura_env.inc_exc='HEALER'--exc для исключения одной роли, inc для ее включения\n\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["authorOptions"] = {
			},
			["version"] = 10,
			["timerFlags"] = "None",
			["timer"] = false,
			["rotate"] = true,
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "450915",
			["borderInFront"] = false,
			["foregroundColor"] = {
				1, -- [1]
				0.84313725490196, -- [2]
				0.51372549019608, -- [3]
				1, -- [4]
			},
			["anchorFrameFrame"] = "SUFUnitplayer",
			["mirror"] = false,
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["height"] = 75,
			["borderSize"] = 1,
			["fontSize"] = 12,
			["icon_side"] = "LEFT",
			["crop_y"] = 0.41,
			["config"] = {
			},
			["sparkHeight"] = 24,
			["desaturateForeground"] = false,
			["sparkRotationMode"] = "MANUAL",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "2.2.1",
			["displayTextRight"] = "%p",
			["id"] = "RL1",
			["backgroundColor"] = {
				0.29019607843137, -- [1]
				0.050980392156863, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["borderBackdrop"] = "None",
			["zoom"] = 0.3,
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "VERTICAL",
			["crop_x"] = 0.41,
			["sparkWidth"] = 4,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Rogue_Energy_T"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = "%p",
			["yOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "ArchivoNarrow-Bold",
			["sparkOffsetY"] = 2,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["stacks"] = false,
			["texture"] = "fer28",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["fixedWidth"] = 200,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["borderBackdrop"] = "None",
			["color"] = {
				1, -- [1]
				0.90196078431373, -- [2]
				0.63529411764706, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["sparkWidth"] = 15,
			["sparkRotationMode"] = "MANUAL",
			["automaticWidth"] = "Auto",
			["displayTextLeft"] = "%p                    ",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["powertype"] = 3,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["use_powertype"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["internalVersion"] = 16,
			["textSize"] = 14,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["text"] = true,
			["wordWrap"] = "WordWrap",
			["stickyDuration"] = false,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["version"] = 10,
			["width"] = 24.000047683716,
			["timer"] = false,
			["timerFlags"] = "None",
			["height"] = 19.999952316284,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["fontSize"] = 16,
			["timerSize"] = 12,
			["id"] = "Rogue_Energy_T",
			["displayTextRight"] = "%p",
			["semver"] = "2.2.1",
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["stacksFont"] = "Friz Quadrata TT",
			["borderSize"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["spark"] = true,
			["borderOffset"] = 1,
			["sparkHeight"] = 40,
			["sparkOffsetX"] = 0,
			["uid"] = "Xi7Ubm5dyNE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "CENTER",
			["anchorFrameFrame"] = "WeakAuras:Rogue_Energy",
			["sparkHidden"] = "BOTH",
			["zoom"] = 0,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SELECTFRAME",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["stacksFlags"] = "None",
			["parent"] = "Rogue_AfenarUI",
		},
		["Riposte"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["xOffset"] = -76,
			["yOffset"] = -61.5,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 199754,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "WXGIpTndB4G",
			["displayIcon"] = 135994,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"199754", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Отражение ударов", -- [1]
						},
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["useGroup_count"] = false,
						["spellIds"] = {
							199754, -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["useCount"] = true,
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["spellName"] = 199754,
						["charges_operator"] = "~=",
						["type"] = "status",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["count"] = "2",
						["event"] = "Cooldown Progress (Spell)",
						["charges"] = "3",
						["realSpellName"] = "还击",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["countOperator"] = "<=",
						["unevent"] = "auto",
						["use_remaining"] = false,
						["custom_hide"] = "timed",
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 199754,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["zoom"] = 0.27,
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["authorOptions"] = {
			},
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["desaturate"] = false,
			["config"] = {
			},
			["glow"] = false,
			["text1Enabled"] = true,
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["width"] = 35,
			["text1"] = "%p",
			["useTooltip"] = false,
			["text2"] = "%s%c",
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["useglowColor"] = false,
			["id"] = "Riposte",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["glowLength"] = 20,
			["alpha"] = 0.2,
			["inverse"] = true,
			["progressPrecision"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [2]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Mythic+ Interrupt Tracker v3"] = {
			["textFlags"] = "None",
			["stacksSize"] = 11,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/SkjHi61Bz/18",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.20000004768372, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["uniqueId"] = "NnoggaM+InterruptTracker",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "challenge",
					["multi"] = {
						["challenge"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_size"] = true,
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "001",
			["textFont"] = "ArchivoNarrow-Bold",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["timerFont"] = "ArchivoNarrow-Bold",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Mythic+ Interrupt Tracker DG v3",
			["customText"] = "function(expirationTime, duration, progress, formatedDuration, name, icon, stacks)\n    if not aura_env.state then return end\n    local now = GetTime()\n    if not aura_env.state.last or aura_env.state.last < now - 0.1 then\n        aura_env.state.last = now\n        local region = WeakAuras.GetRegion(aura_env.id,aura_env.cloneId)\n        if expirationTime<GetTime() then\n            local color = WeakAurasSaved['displays'][aura_env.id].barColor\n            region.bar.bg:SetVertexColor(color[1],color[2],color[3],color[4])\n            aura_env.state.coloredName = aura_env.getColored(aura_env.state.sourceName)\n            aura_env.state.coloredProgress = aura_env.options.readyTextGreen and \"|cFF00FF00Ready|r\" or \"Ready\"\n        else \n            local color = WeakAurasSaved['displays'][aura_env.id].backgroundColor\n            region.bar.bg:SetVertexColor(color[1],color[2],color[3],color[4])\n            aura_env.state.coloredName = aura_env.state.sourceName\n            aura_env.state.coloredProgress = progress \n        end        \n    end\n    return aura_env.state.coloredName, aura_env.state.coloredProgress\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%c1",
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "timed",
						["use_unit"] = true,
						["event"] = "Combat Log",
						["custom_type"] = "stateupdate",
						["spellIds"] = {
						},
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["custom"] = "function(allstates,event,...)\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then        \n        local subevent = select(2,...)\n        if subevent == \"SPELL_CAST_SUCCESS\" then\n            local sourceName = select(5,...)\n            local sourceGUID = select(4,...)\n            local spellId = select(12,...)\n            if aura_env.trackedSpells[spellId] then\n                sourceName = gsub(sourceName, \"%-[^|]+\", \"\") --strip realm name\n                --Attribute Pet Spell's to its owner\n                local type = strsplit(\"-\",sourceGUID)\n                if type == \"Pet\" then\n                    for unit in aura_env.GroupMembers() do\n                        if UnitGUID(unit..\"pet\") == sourceGUID then\n                            sourceGUID = UnitGUID(unit)                        \n                            sourceName = UnitName(unit)\n                            sourceName = gsub(sourceName, \"%-[^|]+\", \"\")\n                            break\n                        end\n                    end\n                end            \n                --merge warlock spellIds\n                if spellId == 119910 or spellId == 132409 then spellId = 19647 end\n                --recover old states for the same spellId and sourceGUID            \n                local state\n                for idx,s in pairs(allstates) do\n                    if s.sourceGUID == sourceGUID and s.spellId == spellId then\n                        state = s\n                    end\n                end\n                if not state then\n                    local idx = #allstates+1\n                    allstates[idx] = allstates[idx] or {}\n                    state = allstates[idx]\n                end            \n                state.show = true\n                state.changed = true\n                state.sourceName = sourceName\n                state.progressType = 'timed'\n                state.autoHide = false\n                state.resort = true\n                \n                local duration = aura_env.trackedSpells[spellId].default\n                --check talent mods\n                if aura_env.inspectLib then\n                    duration = aura_env.getDuration(spellId,sourceGUID)\n                end\n                \n                state.duration = duration\n                state.expirationTime = duration + GetTime() \n                local icon = select(3,GetSpellInfo(spellId))\n                state.icon = icon\n                state.sourceGUID = sourceGUID\n                state.spellId = spellId                     \n                return true            \n            end        \n        end\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["use_absorbMode"] = true,
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["borderBackdrop"] = "Blizzard Tooltip",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["scaley"] = 1,
					["duration_type"] = "seconds",
					["x"] = 0,
					["scalex"] = 1,
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = 0,
					["colorB"] = 1,
					["colorG"] = 1,
					["type"] = "custom",
					["colorFunc"] = "function()\n    \n    if aura_env.state and aura_env.state.sourceName then\n        local englishClass = select(2,UnitClass(aura_env.state.sourceName))\n        if englishClass then            \n            local colors = RAID_CLASS_COLORS[englishClass]\n            if colors then\n                return colors.r,colors.g,colors.b,1\n            end            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
					["rotate"] = 0,
					["use_color"] = true,
					["colorA"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["sparkWidth"] = 10,
			["stickyDuration"] = false,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderOffset"] = 5,
			["version"] = 18,
			["timer"] = true,
			["height"] = 20,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["backgroundColor"] = {
				0.352941176470588, -- [1]
				0.352941176470588, -- [2]
				0.352941176470588, -- [3]
				0, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.inspectLib = LibStub:GetLibrary(\"LibGroupInSpecT-1.1\",true)\n\naura_env.options = {\n    readyTextGreen = true,\n}\n\naura_env.trackedSpells = { --[spellId]=cooldown\n    [47528]  = {default=15}, --Mind Freeze\n    [106839] = {default=15}, --Skull Bash\n    [78675]  = {default=60}, --Solar Beam\n    [183752] = {default=15}, --Disrupt\n    [147362] = {default=24}, --Counter Shot\n    [187707] = {default=15}, --Muzzle\n    [2139]   = {default=24}, --Counter Spell\n    [116705] = {default=15}, --Spear Hand Strike\n    [96231]  = {default=15}, --Rebuke\n    [1766]   = {default=15}, --Kick\n    [57994]  = {default=12}, --Wind Shear\n    [6552]   = {default=15}, --Pummel\n    [119910] = {default=24}, --Spell Lock Command Demon\n    [19647]  = {default=24}, --Spell Lock if used from pet bar\n    [132409] = {default=24}, --Spell Lock Command Demon Sacrifice\n    [15487]  = {default=45,talents={[23137]=30}},--Silence 30 with talent   \n}\n\nWeakAurasSaved['displays'][aura_env.id].uniqueId = \"NnoggaM+InterruptTracker\"\n\n--https://wago.io/profile/asakawa\n--usage:\n--for unit in aura_env.GroupMembers() do\n-- --do stuff\n--end\nfunction aura_env.GroupMembers(reversed, forceParty)\n    local unit  = (not forceParty and IsInRaid()) and 'raid' or 'party'\n    local numGroupMembers = forceParty and GetNumSubgroupMembers()  or GetNumGroupMembers()\n    local i = reversed and numGroupMembers or (unit == 'party' and 0 or 1)\n    return function()\n        local ret \n        if i == 0 and unit == 'party' then \n            ret = 'player'\n        elseif i <= numGroupMembers and i > 0 then\n            ret = unit .. i\n        end\n        i = i + (reversed and -1 or 1)\n        return ret\n    end\nend\n\n--get talent adjusted duration\nfunction aura_env.getDuration(spellId,sourceGUID)\n    local info = aura_env.inspectLib:GetCachedInfo(sourceGUID)\n    local data = aura_env.trackedSpells[spellId]\n    if info then\n        for talentIdx,_ in pairs(info.talents) do\n            if data.talents and data.talents[talentIdx] then return data.talents[talentIdx] end\n        end\n    end    \n    return data.default\nend\n\n\n--returns class colored for valid units\nfunction aura_env.getColored(unit)\n    if not unit then return end\n    local function DecimalToHex(r,g,b)\n        return string.format(\"|cff%02x%02x%02x\", r*255, g*255, b*255)\n    end\n    local playername = UnitName(unit)\n    local playerclass,PLAYERCLASS = UnitClass(unit)\n    if not PLAYERCLASS then return unit end\n    local classcolor = RAID_CLASS_COLORS[PLAYERCLASS]\n    if not classcolor then return unit end\n    local r,g,b = classcolor.r,classcolor.g,classcolor.b\n    if UnitIsDeadOrGhost(unit) then r,g,b = 0.5,0.5,0.5 end        \n    local classcolorhex = DecimalToHex(r,g,b)\n    return classcolorhex..playername..\"|r\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["border"] = false,
			["borderEdge"] = "None",
			["id"] = "Mythic+ Interrupt Tracker v3",
			["borderInFront"] = true,
			["displayTextRight"] = "%c2",
			["icon_side"] = "LEFT",
			["semver"] = "1.0.0-18",
			["rotateText"] = "NONE",
			["sparkHeight"] = 30,
			["stacksFont"] = "Friz Quadrata TT",
			["uid"] = "Rlx86HDnepB",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 10,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["borderSize"] = 16,
			["frameStrata"] = 1,
			["width"] = 125,
			["spark"] = false,
			["textSize"] = 10,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["Alacrity"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["xOffset"] = -95.999816894531,
			["yOffset"] = 74,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "ArchivoNarrow-Bold",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[17] = true,
						[18] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 93402,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 26,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 1,
			["uid"] = "aFj8EClhvOr",
			["displayIcon"] = 132306,
			["glowLength"] = 20,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_inverse"] = true,
						["use_tooltip"] = false,
						["ownOnly"] = true,
						["duration"] = "1",
						["names"] = {
							"Расторопность", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"193538", -- [1]
						},
						["spellName"] = 8042,
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							193538, -- [1]
						},
						["use_unit"] = true,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["unit"] = "player",
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 3,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 9,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 19,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["colorR"] = 1,
					["scaley"] = 1,
					["use_color"] = false,
					["colorType"] = "custom",
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["use_translate"] = false,
					["duration"] = "1",
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35.5,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["text1Enabled"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				0.90196078431373, -- [2]
				0.63529411764706, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "local r = WeakAuras.regions[aura_env.id].region\nr.text2:ClearAllPoints()\nr.text2:SetPoint(\"TOPRIGHT\", r, \"TOPRIGHT\", 3.5, 3.5)",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["authorOptions"] = {
			},
			["glow"] = false,
			["text1Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				0.93725490196078, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["width"] = 35.5,
			["useglowColor"] = false,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = false,
			["text2"] = "%s",
			["id"] = "Alacrity",
			["semver"] = "2.2.1",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0,
			["zoom"] = 0.3,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = -2,
										["variable"] = "OR",
										["checks"] = {
											{
												["trigger"] = 4,
												["variable"] = "show",
												["value"] = 0,
											}, -- [1]
											{
												["trigger"] = 4,
												["variable"] = "show",
												["value"] = 1,
											}, -- [2]
										},
									}, -- [3]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [2]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = 46,
							["property"] = "xOffset",
						}, -- [1]
						{
							["value"] = 0,
							["property"] = "yOffset",
						}, -- [2]
						{
							["value"] = 43,
							["property"] = "height",
						}, -- [3]
						{
							["value"] = 43,
							["property"] = "width",
						}, -- [4]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [4]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["R_CP3"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_petbattle"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Solid",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["parent"] = "Rogue_AfenarUI",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = false,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["type"] = "status",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["power_operator"] = ">=",
						["power"] = "3",
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["spellIds"] = {
						},
						["use_combopoints"] = true,
						["combopoints_operator"] = ">=",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["combopoints"] = "3",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["realSpellName"] = "Расчетливость",
						["use_spellName"] = true,
						["use_exact_spellName"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Spell Known",
						["use_unit"] = true,
						["unevent"] = "auto",
						["spellName"] = 193531,
					},
					["untrigger"] = {
						["spellName"] = 193531,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 16,
			["textSize"] = 12,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["sparkRotationMode"] = "AUTO",
			["stickyDuration"] = false,
			["zoom"] = 0,
			["uid"] = ")mVFDGtWjgS",
			["version"] = 10,
			["config"] = {
			},
			["timer"] = false,
			["timerFlags"] = "None",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["borderOffset"] = 1,
			["width"] = 0.99999433755875,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["id"] = "R_CP3",
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:Rogue_ComboPoints_Bar",
			["displayTextRight"] = "%p",
			["borderSize"] = 2,
			["semver"] = "2.2.1",
			["icon_side"] = "RIGHT",
			["sparkRotation"] = 0,
			["height"] = 14,
			["sparkHeight"] = 30,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderInFront"] = false,
			["sparkHidden"] = "NEVER",
			["borderEdge"] = "Blizzard Dialog",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SELECTFRAME",
			["xOffset"] = -37,
			["sparkOffsetX"] = 0,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = -23,
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [1]
			},
			["spark"] = false,
			["sparkWidth"] = 10,
		},
		["R_CP5"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_petbattle"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Solid",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 1,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["parent"] = "Rogue_AfenarUI",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = false,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["type"] = "status",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["power_operator"] = ">=",
						["power"] = "5",
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["spellIds"] = {
						},
						["use_combopoints"] = true,
						["combopoints_operator"] = ">=",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["combopoints"] = "5",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["realSpellName"] = "Расчетливость",
						["use_spellName"] = true,
						["use_exact_spellName"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Spell Known",
						["use_unit"] = true,
						["unevent"] = "auto",
						["spellName"] = 193531,
					},
					["untrigger"] = {
						["spellName"] = 193531,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["textSize"] = 12,
			["internalVersion"] = 16,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["xOffset"] = 37,
			["stickyDuration"] = false,
			["uid"] = "ZABaIkPWHz0",
			["config"] = {
			},
			["version"] = 10,
			["auto"] = true,
			["height"] = 13.99998664856,
			["timerFlags"] = "None",
			["timer"] = false,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["width"] = 0.99999433755875,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkRotationMode"] = "AUTO",
			["id"] = "R_CP5",
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["displayTextRight"] = "%p",
			["borderSize"] = 2,
			["semver"] = "2.2.1",
			["icon_side"] = "RIGHT",
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["sparkHeight"] = 30,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderInFront"] = false,
			["sparkHidden"] = "NEVER",
			["anchorFrameFrame"] = "WeakAuras:Rogue_ComboPoints_Bar",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SELECTFRAME",
			["zoom"] = 0,
			["sparkOffsetX"] = 0,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 67,
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [1]
			},
			["sparkRotation"] = 0,
			["sparkWidth"] = 10,
		},
		["Kick"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["authorOptions"] = {
			},
			["yOffset"] = 34,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 1766,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 20,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "sR3Z2OhAQt)",
			["glowLength"] = 10,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = false,
						["remaining"] = "0.1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["type"] = "status",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = "脚踢",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 1766,
						["custom_hide"] = "timed",
						["remaining_operator"] = ">=",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 1766,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["text1Containment"] = "INSIDE",
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["xOffset"] = -138,
			["config"] = {
			},
			["text1Color"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["alpha"] = 0.2,
			["text1"] = "%s",
			["width"] = 35,
			["text2"] = "%s%c",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = false,
			["text1Enabled"] = false,
			["id"] = "Kick",
			["semver"] = "2.2.1",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["useglowColor"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["inverse"] = true,
			["zoom"] = 0.3,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "1",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["R_DS6"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 193531,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Solid",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 1,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["parent"] = "Rogue_AfenarUI",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = false,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["type"] = "status",
						["unevent"] = "auto",
						["power"] = "5",
						["use_combopoints"] = true,
						["use_unit"] = true,
						["event"] = "Power",
						["use_percentpower"] = false,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["duration"] = "1",
						["combopoints_operator"] = ">=",
						["subeventPrefix"] = "SPELL",
						["power_operator"] = ">=",
						["combopoints"] = "5",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["sparkWidth"] = 10,
			["internalVersion"] = 16,
			["spark"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["stickyDuration"] = false,
			["uid"] = "tLfbbL1Sp)f",
			["config"] = {
			},
			["version"] = 10,
			["sparkOffsetX"] = 0,
			["timer"] = false,
			["timerFlags"] = "None",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["width"] = 0.99999433755875,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 2,
			["id"] = "R_DS6",
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["displayTextRight"] = "%p",
			["borderInFront"] = false,
			["semver"] = "2.2.1",
			["icon_side"] = "RIGHT",
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["sparkHeight"] = 30,
			["stacksFont"] = "Friz Quadrata TT",
			["anchorFrameFrame"] = "WeakAuras:Rogue_ComboPoints_Bar",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["xOffset"] = 75,
			["sparkHidden"] = "NEVER",
			["zoom"] = 0,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SELECTFRAME",
			["sparkRotationMode"] = "AUTO",
			["height"] = 14,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
		},
		["Vanish"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["authorOptions"] = {
			},
			["yOffset"] = -61.5,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 1856,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "tiXkU(XNJEW",
			["displayIcon"] = 135994,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"11327", -- [1]
						},
						["ownOnly"] = true,
						["names"] = {
							"Исчезновение", -- [1]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["spellIds"] = {
							11327, -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["useCount"] = true,
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["spellName"] = 1856,
						["custom_hide"] = "timed",
						["type"] = "status",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "~=",
						["charges"] = "3",
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["use_remaining"] = false,
						["realSpellName"] = "消失",
						["use_spellName"] = true,
						["count"] = "2",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_unit"] = true,
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 1856,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["xOffset"] = 0,
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["text1Enabled"] = true,
			["zoom"] = 0.27,
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["alpha"] = 0.2,
			["progressPrecision"] = 0,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%p",
			["icon"] = true,
			["desaturate"] = false,
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["text2"] = "%s%c",
			["id"] = "Vanish",
			["useglowColor"] = false,
			["frameStrata"] = 2,
			["width"] = 35,
			["useTooltip"] = false,
			["glowLength"] = 20,
			["inverse"] = true,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [2]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Mrrl's trade game"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 15,
			["automaticWidth"] = "Auto",
			["xOffset"] = 0,
			["displayText"] = "%c",
			["customText"] = "function()\n    return string.format(\"%s%s\", aura_env.generatebuyString(), aura_env.checkDealReplacementString())\nend",
			["yOffset"] = 250,
			["regionType"] = "text",
			["authorOptions"] = {
				{
					["type"] = "description",
					["text"] = "步骤:\n1. 先和所有鱼人对话一次\n2. 跟着文本提示\n\n警告:\n编辑这里任何选项都会初始化这个WeakAura，并且你必须重新开始.",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [1]
				{
					["useName"] = false,
					["text"] = "",
					["type"] = "header",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["name"] = "显示每个物品所需要的东西",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "showReq",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "showAllButNotOnlyMeetsReq",
					["default"] = false,
					["name"] = "显示每个物品，不只是当前需要的",
					["width"] = 2,
				}, -- [4]
				{
					["type"] = "toggle",
					["key"] = "Cape",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "购买披风额外物品",
					["width"] = 1,
				}, -- [5]
				{
					["type"] = "select",
					["values"] = {
						"NPC 优先", -- [1]
						"品质优先", -- [2]
					},
					["default"] = 2,
					["key"] = "sort",
					["name"] = "购买顺序:",
					["width"] = 2,
				}, -- [6]
			},
			["anchorPoint"] = "CENTER",
			["uid"] = "KjXLpU2EBxt",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/6YhvXz76q/32",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "--# Edit those if you're sure what you're doing.\naura_env.fullNPC = {\n    [151950] = true,\n    [151951] = true,\n    [151952] = true,\n    [151953] = true,\n    [152084] = true,\n}\naura_env.replaceList  = {\n    [167923] = 167916,\n}\naura_env.marksList = {\n    [151950] = 6,\n    [151951] = 7,\n    [151952] = 3,\n    [151953] = 2,\n    [152084] = 8,\n}\naura_env.playerIsWearingCape = (GetInventoryItemID(\"player\", 15) == 169489) and true or false\naura_env.playerHasTaco = (GetItemCount(170100, true) > 0) and true or false\naura_env.playerLearnedCrimsonTidestallion = function()\n    for k,v in pairs(C_MountJournal.GetMountIDs()) do\n        local _, spellID, _, _, _, _, _, _, _, _, isCollected = C_MountJournal.GetMountInfoByID(v)\n        if spellID == 300153 then\n            return isCollected\n        end\n    end\n    return false --# incorrectly not scanned (maybe in some case?) return as unlearned\nend\n\naura_env.valueableList = {\n    [168053] = 1,\n    [168091] = 1,\n    [168092] = 1,\n    [168093] = 1,\n    [168094] = 1,\n    [168095] = 1,\n    [168096] = 1,\n    [168097] = 1,\n    --## the following items require Azsh'ari Stormsurger Cape\n    --## as the wowhead data is not completed yet, some might skip taco check \n    [170159] = aura_env.config.Cape and aura_env.playerIsWearingCape and 1 or 0,\n    [170152] = aura_env.config.Cape and aura_env.playerIsWearingCape and 1 or 0,\n    [170157] = aura_env.config.Cape and aura_env.playerIsWearingCape and 1 or 0,\n    [170162] = aura_env.config.Cape and aura_env.playerIsWearingCape and 1 or 0, --# no need taco\n    [170101] = aura_env.config.Cape and aura_env.playerIsWearingCape and aura_env.playerHasTaco and 1 or 0,\n    [169202] = aura_env.playerLearnedCrimsonTidestallion() and 0 or aura_env.config.Cape and aura_env.playerIsWearingCape and aura_env.playerHasTaco and 1 or 0, --# Crimson Tidestallion; I'm looking for a way to see if I've collected this\n    [170158] = aura_env.config.Cape and aura_env.playerIsWearingCape and aura_env.playerHasTaco and 1 or 0,\n}\n\n--# Don't touch anything below!\n\nlocal name, realm = UnitFullName(\"player\")\naura_env.playerFullName = string.format(\"%s-%s\", name, realm)\n\naura_env.talkedNPC = {}\naura_env.NPCNameList = {}\naura_env.merchantItemList = {}\n\naura_env.buyList = {}\n\naura_env.GetItemID = function(itemLink)\n    if not itemLink then return nil end\n    local itemID = string.match(itemLink, \"item:(%d+):\")\n    return itemID and tonumber(itemID) or nil\nend\n\naura_env.getItemLink = function(itemID)\n    if not itemID then return nil end\n    return select(2,GetItemInfo(itemID))\nend\n\naura_env.GetNPCID = function(unit)\n    if not unit then return nil end\n    local id = UnitGUID(unit)\n    id = string.match(id, \"-(%d+)-%x+$\")\n    return tonumber(id, 10)\nend\n\naura_env.isSetContain = function(s1, s2)\n    for k,v in pairs(s2) do\n        if (not s1[k]) then\n            return false\n        end\n    end\n    return true\nend\n\naura_env.queueBuyMerchantItem = function(itemIndex, amount)\n    local amountLeft = amount\n    local max = math.min(GetMerchantItemMaxStack(itemIndex), 255)\n    while amountLeft > 0  do\n        BuyMerchantItem(itemIndex, min(amountLeft, max))\n        amountLeft  = amountLeft - min(amountLeft, max)\n    end\nend\n\naura_env.generateBuyList = function(amount, itemID)\n    if not aura_env.merchantItemList[itemID] then \n        return \n    end\n    \n    local currentItemReq, currentItemNPC = aura_env.merchantItemList[itemID].Req, aura_env.merchantItemList[itemID].NPC\n    local currentNeedAmount\n    if aura_env.buyList[itemID] then\n        currentNeedAmount = amount + aura_env.buyList[itemID].amount\n    else\n        currentNeedAmount = amount - GetItemCount(itemID) --# delete the num on player on first look\n    end\n    \n    if currentNeedAmount > 0 then\n        for k, req in pairs(currentItemReq) do\n            if req.item ~= \"c\" then\n                if aura_env.buyList[itemID] then\n                    aura_env.generateBuyList(amount * req.amount, aura_env.replaceList[req.item] or req.item)\n                else\n                    aura_env.generateBuyList(currentNeedAmount * req.amount, aura_env.replaceList[req.item] or req.item)\n                end\n            end\n        end\n    end\n    \n    aura_env.buyList[itemID] = {\n        amount = currentNeedAmount,\n        NPC = currentItemNPC,\n    }\n    \n    return \nend\n\naura_env.meetsReq = function(itemID)\n    if not aura_env.buyList[itemID] then return false end\n    if not aura_env.merchantItemList[itemID] then return false end\n    local currentItemReq = aura_env.merchantItemList[itemID].Req\n    local amount = aura_env.buyList[itemID].amount\n    for k, req in pairs(currentItemReq) do\n        if (req.item ~= \"c\") and (GetItemCount(req.item) < amount * req.amount) then\n            return false\n        end\n    end\n    return true\nend\n\naura_env.generateBuyListFromValueable = function()\n    for itemID, itemNum in pairs(aura_env.valueableList) do\n        if itemNum > 0 then\n            aura_env.generateBuyList(itemNum, itemID)\n        end\n        \n        if aura_env.buyList[itemID] then\n            aura_env.valueableList[itemID] = aura_env.valueableList[itemID] - aura_env.buyList[itemID].amount\n        end\n        \n    end\nend\n\naura_env.generatebuyString = function()\n    local compare\n    if aura_env.config.sort == 1 then\n        compare = function(a, b)\n            if a.NPC < b.NPC then\n                return true\n            elseif a.NPC > b.NPC then\n                return false\n            elseif a.rarity < b.rarity then\n                return true\n            elseif a.rarity > b.rarity then\n                return false\n            elseif a.itemID < b.itemID then\n                return true\n            elseif a.itemID > b.itemID then\n                return false\n            end\n        end\n    elseif aura_env.config.sort == 2 then\n        compare = function(a, b)\n            if a.rarity < b.rarity then\n                return true\n            elseif a.rarity > b.rarity then\n                return false\n            elseif a.NPC < b.NPC then\n                return true\n            elseif a.NPC > b.NPC then\n                return false\n            elseif a.itemID < b.itemID then\n                return true\n            elseif a.itemID > b.itemID then\n                return false\n            end\n        end\n    end\n    \n    local tempStrnSet = {}\n    \n    for itemID, itemBuyInfo in pairs(aura_env.buyList) do\n        local ReqStrn = aura_env.config.showReq and string.format(\" (%s)\", aura_env.generateReqString(itemID)) or \"\"\n        local strn\n        \n        if aura_env.meetsReq(itemID) or aura_env.config.showAllButNotOnlyMeetsReq then\n            if itemBuyInfo.amount > 1 then\n                strn = string.format(\"Talk to %s for %sx%d%s\", aura_env.NPCNameList[itemBuyInfo.NPC], aura_env.getItemLink(itemID), itemBuyInfo.amount, ReqStrn)\n            elseif itemBuyInfo.amount > 0 then\n                strn = string.format(\"Talk to %s for %s%s\", aura_env.NPCNameList[itemBuyInfo.NPC], aura_env.getItemLink(itemID), ReqStrn)\n            end\n            \n            table.insert(tempStrnSet, {\n                    itemID = itemID,            \n                    strn = strn,\n                    NPC = itemBuyInfo.NPC,\n                    rarity = aura_env.merchantItemList[itemID].rarity,\n            })\n        end        \n    end\n    \n    table.sort(tempStrnSet, compare)\n    \n    local retStrn = \"\"\n    for k,v in pairs(tempStrnSet) do\n        if v.strn then\n            retStrn = retStrn .. v.strn .. \"\\n\"\n        end\n    end\n    \n    return retStrn\nend\n\naura_env.checkDealReplacementString = function()\n    local strn = \"\"\n    for _, itemID in pairs(aura_env.replaceList) do\n        if GetItemCount(itemID) >= 1 then\n            strn = string.format(\"%sDeal with %s\", strn, aura_env.getItemLink(itemID))\n        end\n    end\n    \n    return strn\nend\n\naura_env.generateReqString = function(itemID)\n    if not aura_env.buyList[itemID] then return false end\n    if not aura_env.merchantItemList[itemID] then return false end\n    local Req = aura_env.merchantItemList[itemID].Req\n    local Amount = aura_env.buyList[itemID].amount\n    local strn = \"\"\n    if Amount > 0 then        \n        for k, req in pairs(Req) do\n            if req.item == \"c\" then\n                strn = GetCoinText(Amount * req.amount, \"+\")\n                break\n            else\n                if strn == \"\" then\n                    strn = (Amount * req.amount > 1) and string.format(\"%sx%d\", aura_env.getItemLink(req.item), Amount * req.amount) or string.format(\"%s\", aura_env.getItemLink(req.item))\n                else\n                    strn = (Amount * req.amount > 1) and string.format(\"%s+%sx%d\", strn, aura_env.getItemLink(req.item), Amount * req.amount) or string.format(\"%s+%s\", strn, aura_env.getItemLink(req.item))\n                end\n            end\n        end    \n    end\n    return strn\nend\n\naura_env.debug = {\n    forceValueablePurchase = false, --# open up this to test under item daily locked.\n}\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(e, ...)\n    if e == \"MERCHANT_SHOW\" then\n        local NPCID, NPCname = aura_env.GetNPCID(\"target\"), UnitName(\"target\")\n        local mark = GetRaidTargetIndex(\"target\")\n        if NPCID and aura_env.fullNPC[NPCID] then\n            \n            for itemIndex = 1, GetMerchantNumItems() do\n                local currentItem = GetMerchantItemLink(itemIndex)\n                \n                if currentItem then\n                    local currentItemID = aura_env.GetItemID(currentItem)\n                    local currentItemReq = {}\n                    \n                    --# meetsReq checks buyList. This is the automatic buying function, and will only be used after buylist is generated.\n                    if aura_env.meetsReq(currentItemID) then\n                        if aura_env.buyList[currentItemID].amount > 0 then\n                            aura_env.queueBuyMerchantItem(itemIndex, aura_env.buyList[currentItemID].amount)\n                            \n                        end\n                    end\n                    \n                    local _, _, price, _, _, isPurchasable = GetMerchantItemInfo(itemIndex)\n                    if isPurchasable or aura_env.debug.forceValueablePurchase then\n                        if price == 0 then --# this item is bought with currency\n                            \n                            for currencyIndex = 1, GetMerchantItemCostInfo(itemIndex) do\n                                local _, currentCurrencyNum, currentCurrency = GetMerchantItemCostItem(itemIndex, currencyIndex)\n                                currentItemReq[currencyIndex] = {\n                                    amount = currentCurrencyNum,\n                                    item = aura_env.GetItemID(currentCurrency),\n                                }                                \n                            end\n                            \n                        else --# this item is bought with money\n                            currentItemReq[1] = {\n                                amount = price,\n                                item = \"c\",\n                            }                            \n                        end\n                        \n                        local _, _, rarity = GetItemInfo(currentItemID)\n                        \n                        aura_env.merchantItemList[currentItemID] = {\n                            Req = currentItemReq,\n                            NPC = NPCID,\n                            rarity = rarity,\n                        }\n                    end                    \n                else\n                    print(string.format(\"|cff999900一个物品信息未被扫描. 再一次和 %s 对话!\", NPCname))\n                    return false\n                end                \n            end        \n            \n            aura_env.talkedNPC[NPCID] = true\n            aura_env.NPCNameList[NPCID] = mark and \"|TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_\"..mark..\":24:24:0:-9|t\"..NPCname or NPCname\n        end\n        \n        if aura_env.isSetContain(aura_env.talkedNPC, aura_env.fullNPC) then            \n            aura_env.generateBuyListFromValueable()\n        end\n        \n        return true\n    end\nend",
						["events"] = "MERCHANT_SHOW, MERCHANT_CLOSED",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "function(e)\n    if e == \"MERCHANT_CLOSED\" then\n        return true\n    end\nend",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "0",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(e, ...)\n    if e == \"CHAT_MSG_LOOT\" then\n        local line, _, _, _, unit = ...\n        \n        if unit == aura_env.playerFullName then\n            for itemID, _ in pairs(aura_env.buyList) do\n                \n                local item = GetItemInfo(itemID)\n                if string.match(line, item) then\n                    \n                    local lootAmount = string.match(line, item .. \"]|h|rx(%d+)\") or 1\n                    aura_env.buyList[itemID].amount = aura_env.buyList[itemID].amount - lootAmount\n                    \n                    break\n                end\n                \n            end\n            \n        end\n        return true\n    end\nend",
						["events"] = "CHAT_MSG_LOOT",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "UPDATE_MOUSEOVER_UNIT",
						["custom"] = "function(event, ...)\n    if event == \"UPDATE_MOUSEOVER_UNIT\" then\n        local NPCID = aura_env.GetNPCID(\"mouseover\")\n        if NPCID then\n            if aura_env.marksList[NPCID] and not GetRaidTargetIndex(\"mouseover\") then\n                SetRaidTarget(\"mouseover\", aura_env.marksList[NPCID])\n                return true\n            end\n        end\n    end\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 16,
			["justify"] = "LEFT",
			["wordWrap"] = "WordWrap",
			["id"] = "Mrrl's trade game",
			["semver"] = "3.0.3",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["font"] = "Friz Quadrata TT",
			["version"] = 32,
			["conditions"] = {
			},
			["config"] = {
				["Cape"] = true,
				["sort"] = 2,
				["showAllButNotOnlyMeetsReq"] = false,
				["showReq"] = false,
			},
			["fixedWidth"] = 200,
			["load"] = {
				["use_zone"] = false,
				["use_zoneId"] = true,
				["use_never"] = false,
				["zoneId"] = "1355",
				["use_zonegroupId"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "TOP",
		},
		["Hidden_Blades"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 30,
			["xOffset"] = -96,
			["yOffset"] = 74,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "local r = WeakAuras.regions[aura_env.id].region\nr.text2:ClearAllPoints()\nr.text2:SetPoint(\"TOPRIGHT\", r, \"TOPRIGHT\", 3.5, 3.5)",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text2Font"] = "ArchivoNarrow-Bold",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 16,
					["multi"] = {
						[16] = true,
					},
				},
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						[20] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 270070,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 19,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 1,
			["config"] = {
			},
			["displayIcon"] = 236273,
			["glowLength"] = 20,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["colorR"] = 1,
					["colorType"] = "custom",
					["scaley"] = 1,
					["x"] = 0,
					["scalex"] = 1,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["colorB"] = 1,
					["colorG"] = 1,
					["use_color"] = false,
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["use_translate"] = false,
					["duration"] = "1",
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				0.90196078431373, -- [2]
				0.63529411764706, -- [3]
				1, -- [4]
			},
			["desaturate"] = true,
			["text1Enabled"] = false,
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["text1Color"] = {
				0.9921568627451, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["text1"] = "%p",
			["width"] = 35,
			["alpha"] = 0.3,
			["uid"] = "G3s5N9oYfnA",
			["useGlowColor"] = false,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["id"] = "Hidden_Blades",
			["semver"] = "2.2.1",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["auranames"] = {
							"270070", -- [1]
						},
						["use_inverse"] = true,
						["use_unit"] = true,
						["matchesShowOn"] = "showAlways",
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Потайные клинки", -- [1]
						},
						["unit"] = "player",
						["custom_hide"] = "timed",
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 8042,
						["buffShowOn"] = "showAlways",
						["event"] = "Cooldown Progress (Spell)",
						["useGroup_count"] = false,
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							270070, -- [1]
						},
						["ownOnly"] = true,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 1,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["unit"] = "player",
						["realSpellName"] = "Метка смерти",
						["use_spellName"] = true,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["use_exact_spellName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 137619,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["unit"] = "player",
						["realSpellName"] = "Сила отравителя",
						["use_spellName"] = true,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["use_exact_spellName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 152152,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
										["checks"] = {
											{
												["trigger"] = 4,
												["variable"] = "show",
												["value"] = 1,
											}, -- [1]
											{
												["trigger"] = 4,
												["variable"] = "show",
												["value"] = 0,
											}, -- [2]
										},
									}, -- [2]
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [2]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [3]
								},
							}, -- [3]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["property"] = "xOffset",
						}, -- [1]
						{
							["property"] = "yOffset",
						}, -- [2]
						{
							["value"] = 43,
							["property"] = "height",
						}, -- [3]
						{
							["value"] = 43,
							["property"] = "width",
						}, -- [4]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [3]
								},
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["value"] = 96,
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Nightblade"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 195452,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "YUqJn(brNKS",
			["displayIcon"] = 1373907,
			["glowLength"] = 20,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["scaley"] = 1,
					["duration_type"] = "seconds",
					["colorType"] = "custom",
					["use_color"] = false,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["duration_type"] = "seconds",
					["duration"] = "1",
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				0.93725490196078, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["xOffset"] = -46,
			["text1Enabled"] = false,
			["glowColor"] = {
				0.94901960784314, -- [1]
				0.98823529411765, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["width"] = 43,
			["alpha"] = 0.3,
			["useGlowColor"] = false,
			["semver"] = "2.2.1",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["subeventPrefix"] = "SPELL",
						["unitExists"] = true,
						["use_tooltip"] = false,
						["use_unit"] = true,
						["names"] = {
							"Ночной клинок", -- [1]
						},
						["ownOnly"] = true,
						["duration"] = "1",
						["auranames"] = {
							"195452", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["spellName"] = 8042,
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							195452, -- [1]
						},
						["useName"] = true,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["unit"] = "target",
						["matchesShowOn"] = "showAlways",
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["realSpellName"] = "夜刃",
						["use_spellName"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["spellName"] = 195452,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["id"] = "Nightblade",
			["icon"] = true,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["text2"] = "%p",
			["inverse"] = false,
			["config"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<=",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<=",
								["variable"] = "expirationTime",
								["value"] = "4.8",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.34117647058824, -- [2]
								0.25098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Blade_Rush"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 26,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						[17] = true,
						[4] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["use_glyph"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["config"] = {
			},
			["displayIcon"] = 1016243,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"271896", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["rem"] = "7",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["type"] = "status",
						["ownOnly"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
							"Череда убийств", -- [1]
						},
						["realSpellName"] = "刀锋冲刺",
						["use_spellName"] = true,
						["spellIds"] = {
							51690, -- [1]
						},
						["spellName"] = 271877,
						["remOperator"] = ">=",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 271877,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["unit"] = "player",
						["realSpellName"] = "Призрачный удар",
						["use_spellName"] = true,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_spellName"] = true,
						["spellName"] = 196937,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["unit"] = "player",
						["realSpellName"] = "Метка смерти",
						["use_spellName"] = true,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_spellName"] = true,
						["spellName"] = 137619,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["event"] = "Spell Known",
						["use_exact_spellName"] = true,
						["realSpellName"] = "Мясорубка",
						["use_spellName"] = true,
						["use_petspell"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 5171,
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "271877",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["sourceUnit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorB"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["scalex"] = 1,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = -1,
					["x"] = 1,
					["use_color"] = false,
					["translateType"] = "spiralandpulse",
					["colorFunc"] = "",
					["rotate"] = 0,
					["colorA"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 46,
			["icon"] = true,
			["text1Color"] = {
				0.058823529411765, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["glowLength"] = 20,
			["uid"] = "CvtWS2cei5g",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["width"] = 43,
			["useglowColor"] = false,
			["text2"] = "%p",
			["useGlowColor"] = false,
			["alpha"] = 0.3,
			["id"] = "Blade_Rush",
			["semver"] = "2.2.1",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["text1Containment"] = "INSIDE",
			["inverse"] = true,
			["text1Enabled"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = -2,
										["variable"] = "OR",
										["checks"] = {
											{
												["trigger"] = 5,
												["variable"] = "show",
												["value"] = 0,
											}, -- [1]
											{
												["trigger"] = 5,
												["variable"] = "show",
												["value"] = 1,
											}, -- [2]
										},
									}, -- [3]
								},
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 6,
								["op"] = "<",
								["value"] = 1,
								["variable"] = "show",
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "glowType",
						}, -- [2]
						{
							["property"] = "useGlowColor",
						}, -- [3]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.34117647058824, -- [2]
								0.25098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [6]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["RL2 2"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = -500,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.role_data = 'DAMAGER'\naura_env.inc_exc='HEALER'--exc для исключения одной роли, inc для ее включения\n\n\n",
					["do_custom"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.76078431372549, -- [2]
				0.44313725490196, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 1,
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = -0.5,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["HUNTER"] = true,
						["WARRIOR"] = true,
						["WARLOCK"] = true,
						["DEMONHUNTER"] = true,
						["MAGE"] = true,
						["DEATHKNIGHT"] = true,
						["ROGUE"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["startAngle"] = 0,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["stacks"] = false,
			["blendMode"] = "ADD",
			["slantMode"] = "INSIDE",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
			["textFont"] = "Expressway",
			["sparkTexture"] = "worldstate-capturebar-spark-green",
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 0.3,
			["sparkWidth"] = 4,
			["xOffset"] = 218.5,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["crop_x"] = 0.41,
			["icon"] = false,
			["config"] = {
			},
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["textColor"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0.86274509803922, -- [3]
				1, -- [4]
			},
			["backgroundOffset"] = 0,
			["width"] = 4,
			["sparkOffsetX"] = 0,
			["color"] = {
				0.07843137254902, -- [1]
				0.59607843137255, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "动作条",
			["uid"] = "yorDiethO6G",
			["id"] = "RL2 2",
			["foregroundColor"] = {
				1, -- [1]
				0.843137254901961, -- [2]
				0.513725490196078, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["desaturateBackground"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["totalPrecision"] = 1,
			["displayTextLeft"] = "%p / %t",
			["textSize"] = 12,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Global Cooldown",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = false,
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["castType"] = "cast",
						["event"] = "Conditions",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 16,
			["spark"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["desaturateForeground"] = false,
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["backgroundColor"] = {
				0.29019607843137, -- [1]
				0.050980392156863, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["version"] = 79,
			["rotate"] = true,
			["height"] = 52,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "450915",
			["borderSize"] = 1,
			["borderInset"] = 1,
			["borderEdge"] = "1 Pixel",
			["border"] = false,
			["mirror"] = false,
			["anchorFrameFrame"] = "SUFUnitplayer",
			["customTextUpdate"] = "update",
			["borderInFront"] = false,
			["fontSize"] = 12,
			["icon_side"] = "LEFT",
			["timer"] = false,
			["sparkRotationMode"] = "MANUAL",
			["sparkHeight"] = 24,
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
			["user_y"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "2.1.2",
			["timerSize"] = 12,
			["sparkHidden"] = "BOTH",
			["borderBackdrop"] = "None",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["borderOffset"] = 1,
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "VERTICAL",
			["conditions"] = {
			},
			["url"] = "https://wago.io/Afenar_Rogue/79",
			["sparkRotation"] = 0,
		},
		["Blade_Flurry"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["xOffset"] = -92,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "ArchivoNarrow-Bold",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 13877,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 26,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 1,
			["uid"] = "Jmdfc2LP53G",
			["displayIcon"] = 135994,
			["glowLength"] = 20,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"13877", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Шквал клинков", -- [1]
						},
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["useGroup_count"] = false,
						["spellIds"] = {
							13877, -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["useCount"] = true,
						["use_genericShowOn"] = true,
						["unit"] = "player",
						["custom_hide"] = "timed",
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "~=",
						["use_remaining"] = false,
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["count"] = "2",
						["countOperator"] = "<=",
						["spellName"] = 13877,
						["realSpellName"] = "剑刃乱舞",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["type"] = "status",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 13877,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["realSpellName"] = "影袭",
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 193315,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "13877",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["sourceUnit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Enabled"] = false,
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["text2Color"] = {
				1, -- [1]
				0.90196078431373, -- [2]
				0.63529411764706, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["progressPrecision"] = 0,
			["text1Containment"] = "INSIDE",
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "local r = WeakAuras.regions[aura_env.id].region\nr.text2:ClearAllPoints()\nr.text2:SetPoint(\"TOPRIGHT\", r, \"TOPRIGHT\", 3.5, 3.5)",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["useglowColor"] = false,
			["text2"] = "%s",
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["zoom"] = 0.3,
			["id"] = "Blade_Flurry",
			["authorOptions"] = {
			},
			["frameStrata"] = 3,
			["width"] = 43,
			["useTooltip"] = false,
			["alpha"] = 0.3,
			["inverse"] = true,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["variable"] = "charges",
						["value"] = "0",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.34117647058824, -- [2]
								0.25098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "1",
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
						{
							["property"] = "useGlowColor",
						}, -- [2]
						{
							["value"] = "buttonOverlay",
							["property"] = "glowType",
						}, -- [3]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Deadly_Poison"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["xOffset"] = -19.5,
			["yOffset"] = 74,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[17] = true,
						[18] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "1AVimdt(JTF",
			["displayIcon"] = "Interface\\Icons\\ability_rogue_dualweild",
			["glowLength"] = 20,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "2",
					["alphaType"] = "alphaPulse",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = true,
					["type"] = "none",
					["scalex"] = 1,
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n      return startX + (progress * deltaX), startY + (progress * deltaY)\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0.65,
					["colorType"] = "custom",
					["y"] = 0,
					["x"] = 0,
					["use_color"] = false,
					["translateType"] = "straightTranslate",
					["colorFunc"] = "",
					["rotate"] = 0,
					["colorA"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["text1Containment"] = "INSIDE",
			["config"] = {
			},
			["progressPrecision"] = 0,
			["text1Color"] = {
				1, -- [1]
				0.96862745098039, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = false,
			["text1"] = " ",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["text2"] = "%p",
			["useGlowColor"] = false,
			["alpha"] = 1,
			["id"] = "Deadly_Poison",
			["semver"] = "2.2.1",
			["frameStrata"] = 2,
			["width"] = 35.5,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_sound"] = false,
					["do_custom"] = false,
					["glow_frame"] = "WeakAuras:Summon Gargoyle",
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
			},
			["glow"] = false,
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5",
						["auranames"] = {
							"2823", -- [1]
							"8679", -- [2]
						},
						["ownOnly"] = true,
						["spellName"] = 205223,
						["use_health"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["percenthealth"] = "35",
						["event"] = "Action Usable",
						["count"] = "9",
						["combineMatches"] = "showLowest",
						["useGroup_count"] = false,
						["names"] = {
							"Смертоносный яд", -- [1]
							"Нейтрализующий яд", -- [2]
						},
						["use_tooltip"] = false,
						["countOperator"] = "<",
						["duration"] = "1",
						["use_unit"] = true,
						["health_operator"] = ">",
						["use_debuffClass"] = false,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
							2823, -- [1]
							8679, -- [2]
						},
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["health"] = "1",
						["unit"] = "player",
						["buffShowOn"] = "showAlways",
						["custom_hide"] = "timed",
						["realSpellName"] = "Пожирание",
						["use_spellName"] = true,
						["inverse"] = true,
						["useName"] = true,
						["remOperator"] = ">=",
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "<=",
						["matchesShowOn"] = "showAlways",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["unit"] = "target",
						["spellName"] = 205223,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "240",
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "240",
					},
					["changes"] = {
						{
							["value"] = 0.15,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "60",
					},
					["changes"] = {
						{
							["value"] = 0.6,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "30",
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [3]
					},
				}, -- [5]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Shuriken_Tornado"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 14,
			["xOffset"] = -92,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 21,
					["multi"] = {
						[17] = true,
						[4] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "f3mFRQEkFPx",
			["displayIcon"] = "Interface\\Icons\\spell_rogue_deathfromabove",
			["glowLength"] = 10,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["translateType"] = "spiralandpulse",
					["scalex"] = 1,
					["colorA"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["colorB"] = 1,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["use_color"] = false,
					["alpha"] = 0,
					["x"] = -1,
					["y"] = 1,
					["colorType"] = "custom",
					["duration_type"] = "seconds",
					["colorR"] = 1,
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration"] = "",
					["scaley"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 43,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Предчувствие", -- [1]
							"Предчувствие", -- [2]
						},
						["use_showgcd"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["spellName"] = 277925,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["ownOnly"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["realSpellName"] = "袖剑旋风",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["remOperator"] = ">=",
						["unevent"] = "auto",
						["use_track"] = true,
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 277925,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["semver"] = "2.2.1",
			["text2"] = "%p",
			["id"] = "Shuriken_Tornado",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["text1Enabled"] = false,
			["inverse"] = true,
			["alpha"] = 0.3,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "insufficientResources",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "1",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["CDR"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = -58,
			["displayText"] = "SS",
			["yOffset"] = -33,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text1Enabled"] = false,
			["keepAspectRatio"] = true,
			["wordWrap"] = "WordWrap",
			["desaturate"] = true,
			["rotation"] = 0,
			["font"] = "Expressway",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[17] = true,
						[16] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 193316,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["blendMode"] = "BLEND",
			["text2FontSize"] = 14,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 1,
			["uid"] = "J7n7qtEFxOT",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["glowLength"] = 20,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["auranames"] = {
							"193359", -- [1]
						},
						["ownOnly"] = true,
						["names"] = {
							"Череп с костями", -- [1]
						},
						["use_tooltip"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showAlways",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellName"] = 79140,
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["useGroup_count"] = false,
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Вендетта",
						["use_spellName"] = true,
						["spellIds"] = {
							199603, -- [1]
						},
						["custom_hide"] = "timed",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 79140,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"199600", -- [1]
							"199603", -- [2]
							"193358", -- [3]
							"193357", -- [4]
							"193356", -- [5]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["useExactSpellId"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["unit"] = "player",
						["use_exact_spellName"] = true,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 5171,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["parent"] = "Rogue_AfenarUI",
			["text1Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["text2Font"] = "ArchivoNarrow-Bold",
			["version"] = 10,
			["config"] = {
			},
			["height"] = 16,
			["rotate"] = true,
			["glowLines"] = 30,
			["text1Point"] = "CENTER",
			["glowFrequency"] = 0,
			["fontSize"] = 16,
			["text2Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				0.90980392156863, -- [2]
				0.70980392156863, -- [3]
				0, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["mirror"] = false,
			["text2Color"] = {
				1, -- [1]
				0.90980392156863, -- [2]
				0.70980392156863, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["text2"] = "CDR",
			["authorOptions"] = {
			},
			["semver"] = "2.2.1",
			["justify"] = "LEFT",
			["text1"] = "%p",
			["glow"] = false,
			["progressPrecision"] = 0,
			["text1Font"] = "Expressway",
			["useGlowColor"] = false,
			["displayIcon"] = "Interface\\Icons\\ability_rogue_rollthebones01",
			["id"] = "CDR",
			["automaticWidth"] = "Auto",
			["frameStrata"] = 2,
			["width"] = 37,
			["anchorFrameFrame"] = "WeakAuras:Crit",
			["alpha"] = 0.2,
			["inverse"] = false,
			["zoom"] = 0.5,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Vendetta 2"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 79140,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "YwHcTreniA)",
			["displayIcon"] = 135994,
			["glowLength"] = 20,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"79140", -- [1]
						},
						["ownOnly"] = true,
						["names"] = {
							"Вендетта", -- [1]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["unit"] = "target",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["spellIds"] = {
							79140, -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["useCount"] = true,
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "~=",
						["type"] = "status",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["count"] = "2",
						["countOperator"] = "<=",
						["spellName"] = 79140,
						["realSpellName"] = "宿敌",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["use_remaining"] = false,
						["charges"] = "3",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 79140,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 9,
						},
						["use_absorbMode"] = true,
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["realSpellName"] = "Метка смерти",
						["use_spellName"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 137619,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 16,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 21,
						},
						["use_absorbMode"] = true,
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["realSpellName"] = "Кровавый вихрь",
						["use_spellName"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 121411,
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "79140",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["sourceUnit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Enabled"] = false,
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["alpha"] = 0.3,
			["icon"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["useTooltip"] = false,
			["desaturate"] = false,
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["progressPrecision"] = 0,
			["id"] = "Vendetta 2",
			["text2"] = "%s%c",
			["frameStrata"] = 2,
			["width"] = 43,
			["useglowColor"] = false,
			["xOffset"] = 92,
			["inverse"] = true,
			["zoom"] = 0.3,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["value"] = 96,
							["property"] = "xOffset",
						}, -- [1]
						{
							["value"] = 74,
							["property"] = "yOffset",
						}, -- [2]
						{
							["value"] = 35,
							["property"] = "height",
						}, -- [3]
						{
							["value"] = 35,
							["property"] = "width",
						}, -- [4]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 6,
								["op"] = "<",
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "glowType",
						}, -- [2]
						{
							["property"] = "useGlowColor",
						}, -- [3]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Cripling_Poison"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["xOffset"] = 19.5,
			["yOffset"] = 74,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[17] = true,
						[18] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "Vv6tO6EGaze",
			["displayIcon"] = 132274,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5",
						["auranames"] = {
							"3408", -- [1]
						},
						["duration"] = "1",
						["spellName"] = 205223,
						["use_health"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["percenthealth"] = "35",
						["event"] = "Action Usable",
						["count"] = "9",
						["combineMatches"] = "showLowest",
						["useGroup_count"] = false,
						["use_unit"] = true,
						["use_tooltip"] = false,
						["matchesShowOn"] = "showAlways",
						["names"] = {
							"Калечащий яд", -- [1]
						},
						["ownOnly"] = true,
						["use_debuffClass"] = false,
						["spellIds"] = {
							3408, -- [1]
						},
						["buffShowOn"] = "showAlways",
						["health"] = "1",
						["type"] = "aura2",
						["unit"] = "player",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["countOperator"] = "<",
						["subeventPrefix"] = "SPELL",
						["health_operator"] = ">",
						["realSpellName"] = "Пожирание",
						["use_spellName"] = true,
						["inverse"] = true,
						["useName"] = true,
						["remOperator"] = ">=",
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "<=",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["unit"] = "target",
						["spellName"] = 205223,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "2",
					["alphaType"] = "alphaPulse",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = true,
					["type"] = "none",
					["scalex"] = 1,
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n      return startX + (progress * deltaX), startY + (progress * deltaY)\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0.65,
					["colorType"] = "custom",
					["y"] = 0,
					["x"] = 0,
					["use_color"] = false,
					["translateType"] = "straightTranslate",
					["colorFunc"] = "",
					["rotate"] = 0,
					["colorA"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["authorOptions"] = {
			},
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["text1Containment"] = "INSIDE",
			["glowLength"] = 20,
			["text1Color"] = {
				1, -- [1]
				0.96862745098039, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["useglowColor"] = false,
			["text1"] = " ",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = false,
			["alpha"] = 1,
			["id"] = "Cripling_Poison",
			["semver"] = "2.2.1",
			["frameStrata"] = 2,
			["width"] = 35.5,
			["text1Enabled"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_sound"] = false,
					["do_custom"] = false,
					["glow_frame"] = "WeakAuras:Summon Gargoyle",
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
			},
			["inverse"] = false,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "240",
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "240",
					},
					["changes"] = {
						{
							["value"] = 0.15,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "60",
					},
					["changes"] = {
						{
							["value"] = 0.6,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "30",
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [3]
					},
				}, -- [5]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["On-Use Essence Stacks"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 25,
			["xOffset"] = 0,
			["parent"] = "On-Use Essences",
			["displayText"] = "%s\n",
			["color"] = {
				1, -- [1]
				0.003921568627451, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["regionType"] = "text",
			["font"] = "Expressway",
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/onUseEssences/11",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["type"] = "aura2",
						["duration"] = "1",
						["useExactSpellId"] = true,
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["auraspellids"] = {
							"295378", -- [1]
						},
						["realSpellName"] = "Concentrated Flame",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellName"] = 295378,
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["automaticWidth"] = "Auto",
			["internalVersion"] = 16,
			["justify"] = "LEFT",
			["wordWrap"] = "WordWrap",
			["id"] = "On-Use Essence Stacks",
			["fixedWidth"] = 200,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.10",
			["uid"] = "ALjN9ZT86(z",
			["version"] = 11,
			["selfPoint"] = "BOTTOM",
			["config"] = {
			},
			["conditions"] = {
			},
			["load"] = {
				["use_spellknown"] = false,
				["use_petbattle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["use_vehicle"] = false,
				["use_combat"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
		},
		["Cloak_of_Shadows"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["xOffset"] = -38,
			["yOffset"] = -61.5,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 31224,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "NswQ4K3PwwF",
			["displayIcon"] = 135994,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["glow"] = false,
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["text2Font"] = "Homespun",
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["authorOptions"] = {
			},
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%p",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"31224", -- [1]
						},
						["ownOnly"] = true,
						["names"] = {
							"Плащ Теней", -- [1]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["spellIds"] = {
							31224, -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["useCount"] = true,
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["custom_hide"] = "timed",
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "~=",
						["type"] = "status",
						["use_remaining"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["count"] = "2",
						["countOperator"] = "<=",
						["spellName"] = 31224,
						["realSpellName"] = "暗影斗篷",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 31224,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["zoom"] = 0.27,
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["text2"] = "%s%c",
			["id"] = "Cloak_of_Shadows",
			["useTooltip"] = false,
			["frameStrata"] = 2,
			["width"] = 35,
			["progressPrecision"] = 0,
			["alpha"] = 0.2,
			["inverse"] = true,
			["glowLength"] = 20,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [2]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Garrote Subturge Empowerment"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 14,
			["authorOptions"] = {
			},
			["yOffset"] = 72,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				0, -- [2]
				0.015686274509804, -- [3]
				1, -- [4]
			},
			["text1Point"] = "TOP",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 5,
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_talent"] = true,
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 20,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "6Qg23T8sBm9",
			["glowLength"] = 10,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["auraspellids"] = {
							"703", -- [1]
						},
						["spellIds"] = {
						},
						["auranames"] = {
							"锁喉", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["duration"] = "1",
						["event"] = "Health",
						["use_unit"] = true,
						["unevent"] = "auto",
						["custom"] = "function(event)\n    if aura_env.currentGUID ~= UnitGUID(\"target\") then\n        aura_env.currentGUID = UnitGUID(\"target\")    \n    end\n    \n    return aura_env.CheckIsShow(aura_env.currentGUID)\nend\n\n\n\n\n\n\n",
						["subeventPrefix"] = "SPELL",
						["check"] = "update",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED PLAYER_TARGET_CHANGED",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function(event,timestamp,subEvent,_,sourceGUID,_,_,_,destGUID,_,_,_,...)\n    if event == \"PLAYER_TARGET_CHANGED\" then\n        aura_env.currentGUID = UnitGUID(\"target\")\n    end\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" and  sourceGUID == WeakAuras.myGUID then\n        if subEvent ==\"SPELL_AURA_APPLIED\" then\n            local spell = ...\n            if spell == aura_env.trackSpell then\n                if aura_env.currentHasBuff() then\n                    aura_env.SetGUIDToTrack(destGUID)\n                else\n                    aura_env.CancelGUIDToTrack(destGUID)   \n                end\n                \n            end\n        end\n        \n        if subEvent == \"SPELL_AURA_REMOVED\"  then\n            local spell = ...\n            if spell == aura_env.trackSpell then\n                aura_env.CancelGUIDToTrack(destGUID)   \n            end\n        end\n        if subEvent == \"SPELL_AURA_REFRESH\"  then\n            local spell = ...\n            if spell == aura_env.trackSpell then\n                if aura_env.currentHasBuff() then\n                    aura_env.SetGUIDToTrack(destGUID)\n                else\n                    aura_env.CancelGUIDToTrack(destGUID)   \n                end\n                \n            end\n        end\n    end\n    \n    --[[\n    if subEvent == \"SPELL_CAST_SUCCESS\"  then\n        local spell = ...\n        if  spell == aura_env.trackSpell then\n            aura_env.currentGUID =  destGUID\n            \n            if aura_env.currentHasBuff then\n                aura_env.SetGUIDToTrack(aura_env.currentGUID)\n            end\n            \n        end\n        \n    end\n    --]]\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] and t[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "ArchivoNarrow-Bold",
			["config"] = {
			},
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				0.90196078431373, -- [2]
				0.63529411764706, -- [3]
				1, -- [4]
			},
			["xOffset"] = -138,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["text1"] = "EMP",
			["width"] = 35,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.trackGUID = {}\naura_env.trackSpell =703\naura_env.trackBuff =  115192\naura_env.trackBuff2 = 115191\naura_env.currentGUID = \"\"\naura_env.trackTime = GetTime()\n\n\naura_env.CheckIsShow = function(GUID)\n    return aura_env.trackGUID[GUID]\nend\n\naura_env.currentHasBuff = function()\n    if WA_GetUnitBuff(\"player\",aura_env.trackBuff) or WA_GetUnitBuff(\"player\",aura_env.trackBuff2) then\n        return true\n    else\n        return false\n    end\nend\n\naura_env.SetGUIDToTrack = function(GUID)\n    aura_env.trackGUID[GUID] = true\n    -- print(\"Set\",aura_env.trackGUID[GUID])\nend\n\n\naura_env.CancelGUIDToTrack = function(GUID)\n    if not aura_env.trackGUID[GUID] then aura_env.trackGUID[GUID] = false end\n    aura_env.trackGUID[GUID] = false\n    -- print(\"Cancel\",aura_env.trackGUID[GUID])\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["progressPrecision"] = 1,
			["useGlowColor"] = false,
			["useglowColor"] = false,
			["id"] = "Garrote Subturge Empowerment",
			["semver"] = "2.2.1",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "FrancoisOne",
			["alpha"] = 1,
			["inverse"] = false,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "5.4",
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["On-Use Essence CD"] = {
			["text2Point"] = "TOP",
			["text1FontSize"] = 18,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/onUseEssences/11",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "THICKOUTLINE",
			["load"] = {
				["use_spellknown"] = false,
				["use_petbattle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["use_vehicle"] = false,
				["use_combat"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "ACShine",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 25,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 0.05,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["config"] = {
			},
			["glowLength"] = 10,
			["cooldownSwipe"] = false,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["spellName"] = 296208,
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["use_absorbMode"] = true,
						["realSpellName"] = "艾泽拉斯之心精华",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "bounceDecay",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 11,
			["height"] = 50,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "OUTSIDE",
			["text1Font"] = "Expressway",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				0, -- [2]
				0.050980392156863, -- [3]
				1, -- [4]
			},
			["parent"] = "On-Use Essences",
			["desaturate"] = false,
			["glow"] = true,
			["authorOptions"] = {
			},
			["useglowColor"] = false,
			["text1Color"] = {
				0.88627450980392, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1"] = "%p",
			["uid"] = "hZ(znyYUrf8",
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Expressway",
			["semver"] = "1.0.10",
			["text2"] = "%charges/2",
			["id"] = "On-Use Essence CD",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 50,
			["icon"] = true,
			["progressPrecision"] = 0,
			["inverse"] = true,
			["zoom"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = "buttonOverlay",
							["property"] = "glowType",
						}, -- [1]
						{
							["value"] = {
								0.007843137254902, -- [1]
								0.066666666666667, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "glowColor",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Roll_the_Bones"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["xOffset"] = 46,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 19,
					["multi"] = {
						[19] = true,
					},
				},
				["talent"] = {
					["single"] = 16,
					["multi"] = {
						[17] = true,
						[16] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 93402,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "legEko5HQFh",
			["displayIcon"] = 1373910,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.30000001192093, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["use_unit"] = true,
						["matchesShowOn"] = "showAlways",
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["unit"] = "player",
						["buffShowOn"] = "showAlways",
						["useName"] = true,
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"199600", -- [1]
							"193359", -- [2]
							"193358", -- [3]
							"193357", -- [4]
							"193356", -- [5]
							"199603", -- [6]
						},
						["names"] = {
							"Зарытое сокровище", -- [1]
							"Истинный азимут", -- [2]
							"Великая битва", -- [3]
							"Беспощадная точность", -- [4]
							"Бортовой залп", -- [5]
							"Череп с костями", -- [6]
						},
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 8042,
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							199600, -- [1]
							193359, -- [2]
							193358, -- [3]
							193357, -- [4]
							193356, -- [5]
							199603, -- [6]
						},
						["debuffType"] = "HELPFUL",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["ownOnly"] = true,
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["use_talent"] = true,
						["talent"] = {
							["single"] = 3,
						},
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["use_talent"] = true,
						["talent"] = {
							["single"] = 9,
						},
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["use_talent"] = true,
						["talent"] = {
							["single"] = 19,
						},
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["colorR"] = 1,
					["colorType"] = "custom",
					["use_color"] = false,
					["x"] = 0,
					["scalex"] = 1,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["colorB"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "",
					["rotate"] = 0,
					["scaley"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["use_translate"] = false,
					["duration"] = "1",
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["text1Enabled"] = false,
			["alpha"] = 0,
			["authorOptions"] = {
			},
			["text1Color"] = {
				1, -- [1]
				0.93725490196078, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useglowColor"] = false,
			["text1"] = " ",
			["anchorFrameType"] = "SCREEN",
			["progressPrecision"] = 0,
			["desaturate"] = true,
			["useGlowColor"] = false,
			["zoom"] = 0.3,
			["id"] = "Roll_the_Bones",
			["semver"] = "2.2.1",
			["frameStrata"] = 2,
			["width"] = 43,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text2"] = "%s%c",
			["inverse"] = false,
			["glowLength"] = 20,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "8",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
						{
							["property"] = "useGlowColor",
						}, -- [2]
						{
							["value"] = "buttonOverlay",
							["property"] = "glowType",
						}, -- [3]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = -2,
										["variable"] = "OR",
										["checks"] = {
											{
												["trigger"] = 4,
												["variable"] = "show",
												["value"] = 1,
											}, -- [1]
											{
												["trigger"] = 4,
												["variable"] = "show",
												["value"] = 0,
											}, -- [2]
										},
									}, -- [3]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [2]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Elaborate_Planning"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 14,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 16,
					["multi"] = {
						[7] = true,
						[8] = true,
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						[16] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 193640,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "heb5fPFjwjl",
			["displayIcon"] = 237387,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorA"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["scalex"] = 1,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["x"] = -1,
					["y"] = 1,
					["colorType"] = "custom",
					["translateType"] = "spiralandpulse",
					["use_color"] = false,
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["colorB"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glow"] = false,
			["text1Containment"] = "INSIDE",
			["text1Enabled"] = false,
			["xOffset"] = 46.000061035156,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["width"] = 43,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["useGroup_count"] = false,
						["use_genericShowOn"] = true,
						["matchesShowOn"] = "showAlways",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["use_tooltip"] = false,
						["unit"] = "player",
						["ownOnly"] = true,
						["auranames"] = {
							"193641", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["spellName"] = 111240,
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Слепая зона",
						["use_spellName"] = true,
						["spellIds"] = {
							193641, -- [1]
						},
						["duration"] = "1",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Коварный план", -- [1]
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 111240,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 9,
						},
						["use_absorbMode"] = true,
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["realSpellName"] = "Метка смерти",
						["use_spellName"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 137619,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 16,
						},
						["use_absorbMode"] = true,
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["realSpellName"] = "Сила отравителя",
						["use_spellName"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 152152,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 21,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = false,
			["text2"] = "%p",
			["id"] = "Elaborate_Planning",
			["semver"] = "2.2.1",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.3,
			["zoom"] = 0.3,
			["inverse"] = false,
			["glowLength"] = 20,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [2]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [3]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [3]
								},
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["value"] = -96,
							["property"] = "xOffset",
						}, -- [1]
						{
							["value"] = 74,
							["property"] = "yOffset",
						}, -- [2]
						{
							["value"] = 35,
							["property"] = "height",
						}, -- [3]
						{
							["value"] = 35,
							["property"] = "width",
						}, -- [4]
						{
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [4]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [3]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [3]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Trick_of_Trade"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["xOffset"] = 138,
			["yOffset"] = 72,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 57934,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["config"] = {
			},
			["displayIcon"] = 135994,
			["glowLength"] = 20,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["zoom"] = 0.27,
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["uid"] = "VpztV4zl)8h",
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["glow"] = false,
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"57934", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Маленькие хитрости", -- [1]
						},
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["useGroup_count"] = false,
						["spellIds"] = {
							57934, -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["useCount"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["duration"] = "1",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["spellName"] = 57934,
						["charges_operator"] = "~=",
						["charges"] = "3",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["count"] = "2",
						["event"] = "Cooldown Progress (Spell)",
						["type"] = "status",
						["realSpellName"] = "嫁祸诀窍",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["countOperator"] = "<=",
						["unevent"] = "auto",
						["use_remaining"] = false,
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 57934,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["text1Enabled"] = false,
			["id"] = "Trick_of_Trade",
			["text2"] = "%s%c",
			["frameStrata"] = 2,
			["width"] = 35,
			["useTooltip"] = false,
			["alpha"] = 0,
			["inverse"] = true,
			["text1Containment"] = "INSIDE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Between_the_Eyes"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 14,
			["xOffset"] = -46,
			["yOffset"] = -0.000213623046875,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 16,
					["multi"] = {
						[16] = true,
					},
				},
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[17] = true,
						[16] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "08XEcfP)L5U",
			["displayIcon"] = 136189,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["ownOnly"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["spellName"] = 199804,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
							"Предчувствие", -- [1]
							"Предчувствие", -- [2]
						},
						["realSpellName"] = "正中眉心",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "1",
						["remOperator"] = ">=",
						["unevent"] = "auto",
						["use_track"] = true,
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 193315,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 3,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 9,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 18,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["use_unit"] = true,
						["talent"] = {
							["single"] = 19,
						},
						["duration"] = "1",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["use_inverse"] = false,
						["use_talent"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["auranames"] = {
							"193357", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Беспощадная точность", -- [1]
						},
						["spellIds"] = {
							193357, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["type"] = "aura2",
						["useGroup_count"] = false,
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorB"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["scalex"] = 1,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = 1,
					["x"] = -1,
					["use_color"] = false,
					["translateType"] = "spiralandpulse",
					["colorFunc"] = "",
					["rotate"] = 0,
					["colorA"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["text2"] = "%p",
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["text1Containment"] = "INSIDE",
			["config"] = {
			},
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["width"] = 43,
			["zoom"] = 0.3,
			["useGlowColor"] = true,
			["semver"] = "2.2.1",
			["useglowColor"] = false,
			["id"] = "Between_the_Eyes",
			["alpha"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = false,
			["glowLength"] = 10,
			["inverse"] = true,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "insufficientResources",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "1",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.34117647058824, -- [2]
								0.25098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
									{
										["trigger"] = -2,
										["variable"] = "OR",
										["checks"] = {
											{
												["trigger"] = 5,
												["variable"] = "show",
												["value"] = 1,
											}, -- [1]
											{
												["trigger"] = 5,
												["variable"] = "show",
												["value"] = 0,
											}, -- [2]
										},
									}, -- [4]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 0,
									}, -- [4]
								},
							}, -- [2]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 0,
									}, -- [4]
								},
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = -96,
							["property"] = "xOffset",
						}, -- [1]
						{
							["value"] = 74,
							["property"] = "yOffset",
						}, -- [2]
						{
							["value"] = 35,
							["property"] = "height",
						}, -- [3]
						{
							["value"] = 35,
							["property"] = "width",
						}, -- [4]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [4]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 0,
									}, -- [4]
								},
							}, -- [2]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [4]
								},
							}, -- [3]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [4]
								},
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["value"] = 46,
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [6]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Roll_the_Bones_Alt"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["xOffset"] = 96,
			["yOffset"] = 74,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 19,
					["multi"] = {
						[19] = true,
					},
				},
				["talent"] = {
					["single"] = 16,
					["multi"] = {
						[17] = true,
						[16] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 93402,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["config"] = {
			},
			["displayIcon"] = 1373910,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["scaley"] = 1,
					["duration_type"] = "seconds",
					["colorType"] = "custom",
					["use_color"] = false,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["colorR"] = 1,
					["colorFunc"] = "",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["duration_type"] = "seconds",
					["duration"] = "1",
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["uid"] = "Tm5iWVPxyr0",
			["authorOptions"] = {
			},
			["glowLength"] = 20,
			["text1Color"] = {
				1, -- [1]
				0.93725490196078, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["alpha"] = 0.3,
			["text1"] = " ",
			["width"] = 35,
			["text2"] = "%s%c",
			["useGlowColor"] = false,
			["semver"] = "2.2.1",
			["zoom"] = 0.3,
			["id"] = "Roll_the_Bones_Alt",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["auranames"] = {
							"199600", -- [1]
							"193359", -- [2]
							"193358", -- [3]
							"193357", -- [4]
							"193356", -- [5]
							"199603", -- [6]
						},
						["use_inverse"] = true,
						["names"] = {
							"Зарытое сокровище", -- [1]
							"Истинный азимут", -- [2]
							"Великая битва", -- [3]
							"Беспощадная точность", -- [4]
							"Бортовой залп", -- [5]
							"Череп с костями", -- [6]
						},
						["unit"] = "player",
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["ownOnly"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showAlways",
						["useGroup_count"] = false,
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 8042,
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							199600, -- [1]
							193359, -- [2]
							193358, -- [3]
							193357, -- [4]
							193356, -- [5]
							199603, -- [6]
						},
						["use_unit"] = true,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["matchesShowOn"] = "showAlways",
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Talent Known",
						["use_talent"] = true,
						["talent"] = {
							["single"] = 3,
						},
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Talent Known",
						["use_talent"] = true,
						["talent"] = {
							["single"] = 9,
						},
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Talent Known",
						["subeventPrefix"] = "SPELL",
						["talent"] = {
							["single"] = 17,
						},
						["use_talent"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Talent Known",
						["subeventPrefix"] = "SPELL",
						["talent"] = {
							["single"] = 16,
						},
						["use_talent"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Talent Known",
						["subeventPrefix"] = "SPELL",
						["talent"] = {
							["single"] = 19,
						},
						["use_talent"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "INSIDE",
			["text1Enabled"] = false,
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [4]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["op"] = "<",
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 1,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "8",
									}, -- [1]
									{
										["trigger"] = -1,
										["variable"] = "incombat",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 1,
										["variable"] = "buffed",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = -1,
										["variable"] = "incombat",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
						{
							["property"] = "useGlowColor",
						}, -- [2]
						{
							["value"] = "buttonOverlay",
							["property"] = "glowType",
						}, -- [3]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [3]
									{
										["trigger"] = 6,
										["variable"] = "show",
										["value"] = 0,
									}, -- [4]
								},
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["value"] = -96,
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
									{
										["trigger"] = 6,
										["variable"] = "show",
										["value"] = 0,
									}, -- [4]
								},
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["value"] = -58,
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
										["checks"] = {
											{
												["trigger"] = 2,
												["variable"] = "show",
												["value"] = 0,
											}, -- [1]
											{
												["trigger"] = 3,
												["variable"] = "show",
												["value"] = 0,
											}, -- [2]
										},
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
									{
										["trigger"] = 6,
										["variable"] = "show",
										["value"] = 1,
									}, -- [4]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
									{
										["trigger"] = -2,
										["variable"] = "OR",
										["checks"] = {
											{
												["trigger"] = 6,
												["variable"] = "show",
												["value"] = 1,
											}, -- [1]
											{
												["trigger"] = 6,
												["variable"] = "show",
												["value"] = 0,
											}, -- [2]
										},
									}, -- [4]
								},
							}, -- [2]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
									{
										["trigger"] = 6,
										["variable"] = "show",
										["value"] = 1,
									}, -- [4]
								},
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [7]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Shroud_ of_Concealment"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["xOffset"] = 138,
			["yOffset"] = -42,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 114018,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "2Rxr1Z6w54K",
			["displayIcon"] = 135994,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"114018", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Скрывающий покров", -- [1]
						},
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["spellIds"] = {
							114018, -- [1]
						},
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["useCount"] = true,
						["use_charges"] = false,
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["charges"] = "3",
						["custom_hide"] = "timed",
						["charges_operator"] = "~=",
						["type"] = "status",
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["use_remaining"] = false,
						["realSpellName"] = "潜伏帷幕",
						["use_spellName"] = true,
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 114018,
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 31224,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["zoom"] = 0.27,
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["text1Enabled"] = true,
			["glowLength"] = 20,
			["authorOptions"] = {
			},
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useglowColor"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%p",
			["icon"] = true,
			["desaturate"] = false,
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["alpha"] = 0,
			["id"] = "Shroud_ of_Concealment",
			["text2"] = "%s%c",
			["frameStrata"] = 2,
			["width"] = 35,
			["progressPrecision"] = 0,
			["useTooltip"] = false,
			["inverse"] = true,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "expirationTime",
						["value"] = "14",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "14",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "expirationTime",
						["value"] = "11",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "11",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "expirationTime",
						["value"] = "8",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "8",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "expirationTime",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "5",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "expirationTime",
						["value"] = "4",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "4",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [7]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "expirationTime",
						["value"] = "3",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "3",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [8]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "expirationTime",
						["value"] = "2",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "2",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [9]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "expirationTime",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "1",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [10]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["RL1 2"] = {
			["sparkWidth"] = 4,
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = -218.499755859375,
			["stacksFlags"] = "None",
			["yOffset"] = -500.001308441162,
			["foregroundColor"] = {
				1, -- [1]
				0.8431372549019608, -- [2]
				0.5137254901960784, -- [3]
				1, -- [4]
			},
			["sparkRotation"] = 0,
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.76078431372549, -- [2]
				0.44313725490196, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 1,
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = -0.5,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["HUNTER"] = true,
						["WARRIOR"] = true,
						["WARLOCK"] = true,
						["DEMONHUNTER"] = true,
						["MAGE"] = true,
						["ROGUE"] = true,
						["DEATHKNIGHT"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["stacks"] = false,
			["blendMode"] = "ADD",
			["slantMode"] = "INSIDE",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
			["textFont"] = "Expressway",
			["borderOffset"] = 1,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 0.3,
			["textFlags"] = "OUTLINE",
			["authorOptions"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["crop_x"] = 0.41,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.role_data = 'DAMAGER'\naura_env.inc_exc='HEALER'--exc для исключения одной роли, inc для ее включения\n\n\n",
					["do_custom"] = false,
				},
			},
			["zoom"] = 0.3,
			["rotation"] = 0,
			["crop_y"] = 0.41,
			["backgroundOffset"] = 0,
			["user_y"] = 0,
			["width"] = 4,
			["sparkOffsetX"] = 0,
			["color"] = {
				0.07843137254902, -- [1]
				0.59607843137255, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "动作条",
			["uid"] = "jscqrxZW8IS",
			["id"] = "RL1 2",
			["semver"] = "2.1.2",
			["displayTextRight"] = "%p",
			["desaturateBackground"] = false,
			["config"] = {
			},
			["customTextUpdate"] = "update",
			["totalPrecision"] = 1,
			["borderBackdrop"] = "None",
			["textSize"] = 12,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Global Cooldown",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = false,
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["castType"] = "cast",
						["event"] = "Conditions",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["names"] = {
						},
						["unit"] = "player",
						["use_unit"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 16,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["displayTextLeft"] = "%p / %t",
			["version"] = 79,
			["rotate"] = true,
			["timer"] = false,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["borderSize"] = 1,
			["sparkRotationMode"] = "MANUAL",
			["anchorFrameFrame"] = "SUFUnitplayer",
			["mirror"] = false,
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["startAngle"] = 0,
			["borderInFront"] = false,
			["backgroundTexture"] = "450915",
			["icon_side"] = "LEFT",
			["height"] = 52,
			["borderInset"] = 1,
			["sparkHeight"] = 24,
			["desaturateForeground"] = false,
			["sparkTexture"] = "worldstate-capturebar-spark-green",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["textColor"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0.86274509803922, -- [3]
				1, -- [4]
			},
			["sparkHidden"] = "BOTH",
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["spark"] = false,
			["backgroundColor"] = {
				0.2901960784313725, -- [1]
				0.05098039215686274, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "VERTICAL",
			["conditions"] = {
			},
			["url"] = "https://wago.io/Afenar_Rogue/79",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Grappling_Hook"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["xOffset"] = 76,
			["yOffset"] = -61.5,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 195457,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 20,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "POCkQuFRWN6",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glowLength"] = 10,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["glow"] = false,
			["text2"] = "%s%c",
			["text2Font"] = "Homespun",
			["config"] = {
			},
			["text1Color"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1"] = "%p",
			["authorOptions"] = {
			},
			["width"] = 35,
			["alpha"] = 0.2,
			["semver"] = "2.2.1",
			["progressPrecision"] = 0,
			["id"] = "Grappling_Hook",
			["zoom"] = 0.27,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["triggers"] = {
				{
					["trigger"] = {
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = false,
						["remaining"] = "0.1",
						["use_unit"] = true,
						["custom_hide"] = "timed",
						["use_remaining"] = false,
						["type"] = "status",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = "抓钩",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 195457,
						["unit"] = "player",
						["remaining_operator"] = ">=",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showAlways",
						["spellName"] = 195457,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["icon"] = true,
			["inverse"] = true,
			["text1Containment"] = "INSIDE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "1",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["R_CP4"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["use_class"] = true,
				["use_petbattle"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Solid",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["parent"] = "Rogue_AfenarUI",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = false,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["type"] = "status",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["power_operator"] = ">=",
						["power"] = "4",
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["spellIds"] = {
						},
						["use_combopoints"] = true,
						["combopoints_operator"] = ">=",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["combopoints"] = "4",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["realSpellName"] = "Расчетливость",
						["use_spellName"] = true,
						["use_exact_spellName"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Spell Known",
						["use_unit"] = true,
						["unevent"] = "auto",
						["spellName"] = 193531,
					},
					["untrigger"] = {
						["spellName"] = 193531,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 16,
			["textSize"] = 12,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["sparkRotationMode"] = "AUTO",
			["stickyDuration"] = false,
			["zoom"] = 0,
			["uid"] = "cy9EWm7s0J)",
			["version"] = 10,
			["config"] = {
			},
			["timer"] = false,
			["timerFlags"] = "None",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["borderOffset"] = 1,
			["width"] = 0.99999433755875,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["id"] = "R_CP4",
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:Rogue_ComboPoints_Bar",
			["displayTextRight"] = "%p",
			["borderSize"] = 2,
			["semver"] = "2.2.1",
			["icon_side"] = "RIGHT",
			["sparkRotation"] = 0,
			["height"] = 13.99998664856,
			["sparkHeight"] = 30,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderInFront"] = false,
			["sparkHidden"] = "NEVER",
			["borderEdge"] = "Blizzard Dialog",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SELECTFRAME",
			["xOffset"] = 0,
			["sparkOffsetX"] = 0,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 23,
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [1]
			},
			["spark"] = false,
			["sparkWidth"] = 10,
		},
		["Toxic_Blade"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 245388,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "PiAfJgB)8Jk",
			["displayIcon"] = 135994,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"245389", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "target",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Ядовитый клинок", -- [1]
						},
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["useGroup_count"] = false,
						["spellIds"] = {
							245389, -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_showgcd"] = true,
						["useCount"] = true,
						["unit"] = "player",
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "~=",
						["type"] = "status",
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["countOperator"] = "<=",
						["use_unit"] = true,
						["realSpellName"] = "淬毒之刃",
						["use_spellName"] = true,
						["count"] = "2",
						["unevent"] = "auto",
						["use_remaining"] = false,
						["spellName"] = 245388,
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 245388,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "245388",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["sourceUnit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Containment"] = "INSIDE",
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["zoom"] = 0.3,
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["glow"] = false,
			["config"] = {
			},
			["alpha"] = 0.3,
			["text1Enabled"] = false,
			["text1Font"] = "Homespun",
			["width"] = 43,
			["text1"] = "%s",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["text2"] = "%s%c",
			["id"] = "Toxic_Blade",
			["useglowColor"] = false,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 46,
			["useTooltip"] = false,
			["inverse"] = true,
			["glowLength"] = 20,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["op"] = "<",
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "glowType",
						}, -- [2]
						{
							["property"] = "useGlowColor",
						}, -- [3]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.34117647058824, -- [2]
								0.25098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Atk/Lch"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = "Atk/Lch",
			["yOffset"] = -33,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text2Font"] = "ArchivoNarrow-Bold",
			["keepAspectRatio"] = true,
			["wordWrap"] = "WordWrap",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["font"] = "Expressway",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[17] = true,
						[16] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 193316,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["blendMode"] = "BLEND",
			["text2FontSize"] = 14,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 1,
			["uid"] = "0rY9fLFte(z",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["auranames"] = {
							"193358", -- [1]
						},
						["ownOnly"] = true,
						["names"] = {
							"Великая битва", -- [1]
						},
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["duration"] = "1",
						["debuffType"] = "HELPFUL",
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["matchesShowOn"] = "showAlways",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 79140,
						["realSpellName"] = "Вендетта",
						["use_spellName"] = true,
						["spellIds"] = {
							193358, -- [1]
						},
						["useName"] = true,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["useGroup_count"] = false,
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 79140,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"193357", -- [1]
							"193359", -- [2]
							"199600", -- [3]
							"193356", -- [4]
							"199603", -- [5]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["unit"] = "player",
						["use_exact_spellName"] = true,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 5171,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["alpha"] = 0.2,
			["parent"] = "Rogue_AfenarUI",
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["useglowColor"] = false,
			["version"] = 10,
			["desaturate"] = true,
			["height"] = 16,
			["rotate"] = true,
			["glowLines"] = 30,
			["text1Point"] = "CENTER",
			["glowFrequency"] = 0,
			["fontSize"] = 16,
			["text2Containment"] = "INSIDE",
			["selfPoint"] = "CENTER",
			["text1Color"] = {
				1, -- [1]
				0.90980392156863, -- [2]
				0.70980392156863, -- [3]
				0, -- [4]
			},
			["text2"] = "ATK",
			["mirror"] = false,
			["text2Color"] = {
				1, -- [1]
				0.90980392156863, -- [2]
				0.70980392156863, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["displayIcon"] = "Interface\\Icons\\ability_rogue_rollthebones02",
			["progressPrecision"] = 0,
			["zoom"] = 0.5,
			["icon"] = true,
			["semver"] = "2.2.1",
			["text1"] = "%p",
			["justify"] = "LEFT",
			["glowLength"] = 20,
			["text1Enabled"] = false,
			["useGlowColor"] = false,
			["glow"] = false,
			["id"] = "Atk/Lch",
			["xOffset"] = 19.5,
			["frameStrata"] = 2,
			["width"] = 38,
			["rotation"] = 0,
			["text1Font"] = "Expressway",
			["inverse"] = false,
			["config"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Stealth_CD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["xOffset"] = -0.00048828125,
			["yOffset"] = 74,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 20,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "YK8CneWDWco",
			["displayIcon"] = 132320,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorA"] = 1,
					["colorType"] = "custom",
					["colorFunc"] = "",
					["rotate"] = 0,
					["use_color"] = false,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35.5,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["text1Enabled"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glowLength"] = 10,
			["text1Color"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useTooltip"] = false,
			["text1"] = "%s",
			["anchorFrameType"] = "SCREEN",
			["icon"] = true,
			["text2"] = "%s%c",
			["semver"] = "2.2.1",
			["zoom"] = 0.27,
			["id"] = "Stealth_CD",
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["names"] = {
							"Незаметность", -- [1]
							"Увертка", -- [2]
						},
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 115191,
						["realSpellName"] = "潜行",
						["use_spellName"] = true,
						["spellIds"] = {
							115191, -- [1]
							115192, -- [2]
						},
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
						["ownOnly"] = true,
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 2,
			["width"] = 35.5,
			["alpha"] = 1,
			["text1Containment"] = "INSIDE",
			["inverse"] = true,
			["glow"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Shadow_Dance"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "ArchivoNarrow-Bold",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 185313,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 1,
			["uid"] = "l26JGZuqpWv",
			["displayIcon"] = 236279,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"185422", -- [1]
							"115192", -- [2]
						},
						["ownOnly"] = true,
						["names"] = {
							"Танец теней", -- [1]
							"Увертка", -- [2]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["spellIds"] = {
							185422, -- [1]
							115192, -- [2]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["useCount"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "~=",
						["use_remaining"] = false,
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["count"] = "2",
						["countOperator"] = "<=",
						["spellName"] = 185313,
						["realSpellName"] = "暗影之舞",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["charges"] = "3",
						["custom_hide"] = "timed",
						["type"] = "status",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 185313,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["realSpellName"] = "背刺",
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 53,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "185313",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["sourceUnit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["glow"] = false,
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				0.90196078431373, -- [2]
				0.63529411764706, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["glowLength"] = 20,
			["alpha"] = 0.3,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["width"] = 43,
			["text1"] = "%s",
			["text1Enabled"] = false,
			["text2"] = "%s",
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["useglowColor"] = false,
			["id"] = "Shadow_Dance",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "local r = WeakAuras.regions[aura_env.id].region\nr.text2:ClearAllPoints()\nr.text2:SetPoint(\"TOPRIGHT\", r, \"TOPRIGHT\", 3.5, 3.5)",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["useTooltip"] = false,
			["xOffset"] = 0,
			["inverse"] = true,
			["text1Font"] = "Homespun",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["variable"] = "charges",
						["value"] = "0",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.34117647058824, -- [2]
								0.25098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = -2,
								["op"] = "<",
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
						{
							["property"] = "useGlowColor",
						}, -- [2]
						{
							["value"] = "buttonOverlay",
							["property"] = "glowType",
						}, -- [3]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["R_CP2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["use_class"] = true,
				["use_petbattle"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Solid",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 1,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["parent"] = "Rogue_AfenarUI",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = false,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["type"] = "status",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["power_operator"] = ">=",
						["power"] = "2",
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["spellIds"] = {
						},
						["use_combopoints"] = true,
						["combopoints_operator"] = ">=",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["combopoints"] = "2",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["realSpellName"] = "Расчетливость",
						["use_spellName"] = true,
						["use_exact_spellName"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Spell Known",
						["use_unit"] = true,
						["unevent"] = "auto",
						["spellName"] = 193531,
					},
					["untrigger"] = {
						["spellName"] = 193531,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["textSize"] = 12,
			["internalVersion"] = 16,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["xOffset"] = -76,
			["stickyDuration"] = false,
			["uid"] = "OovEJieupdD",
			["config"] = {
			},
			["version"] = 10,
			["auto"] = true,
			["height"] = 14,
			["timerFlags"] = "None",
			["timer"] = false,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["width"] = 0.99999433755875,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkRotationMode"] = "AUTO",
			["id"] = "R_CP2",
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["displayTextRight"] = "%p",
			["borderSize"] = 2,
			["semver"] = "2.2.1",
			["icon_side"] = "RIGHT",
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["sparkHeight"] = 30,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderInFront"] = false,
			["sparkHidden"] = "NEVER",
			["anchorFrameFrame"] = "WeakAuras:Rogue_ComboPoints_Bar",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SELECTFRAME",
			["zoom"] = 0,
			["sparkOffsetX"] = 0,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = -67,
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [1]
			},
			["sparkRotation"] = 0,
			["sparkWidth"] = 10,
		},
		["Mythic+ Interrupt Tracker DG v3"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Mythic+ Interrupt Tracker v3", -- [1]
			},
			["xOffset"] = -482.996917724609,
			["yOffset"] = -229,
			["anchorPoint"] = "CENTER",
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["unevent"] = "timed",
						["duration"] = "1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["columnSpace"] = 1,
			["backgroundInset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["align"] = "CENTER",
			["stagger"] = 0,
			["version"] = 18,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["arcLength"] = 360,
			["border"] = "None",
			["limit"] = 5,
			["regionType"] = "dynamicgroup",
			["useLimit"] = false,
			["sort"] = "ascending",
			["authorOptions"] = {
			},
			["gridType"] = "RD",
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 16,
			["semver"] = "1.0.0",
			["uid"] = "vIe3W9ZEaeB",
			["id"] = "Mythic+ Interrupt Tracker DG v3",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["rotation"] = 0,
			["config"] = {
			},
			["url"] = "https://wago.io/SkjHi61Bz/18",
			["selfPoint"] = "TOP",
			["conditions"] = {
			},
			["radius"] = 200,
			["internalVersion"] = 16,
		},
		["Sprint"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["xOffset"] = 38,
			["yOffset"] = -61.5,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 2983,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "FEWlZl)DrzA",
			["displayIcon"] = 135994,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["glow"] = false,
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["zoom"] = 0.27,
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["config"] = {
			},
			["useTooltip"] = false,
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Homespun",
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%p",
			["icon"] = true,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["authorOptions"] = {
			},
			["id"] = "Sprint",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"2983", -- [1]
						},
						["ownOnly"] = true,
						["names"] = {
							"Спринт", -- [1]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["spellIds"] = {
							2983, -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["useCount"] = true,
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["custom_hide"] = "timed",
						["charges_operator"] = "~=",
						["type"] = "status",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["count"] = "2",
						["countOperator"] = "<=",
						["use_unit"] = true,
						["realSpellName"] = "疾跑",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["charges"] = "3",
						["spellName"] = 2983,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 2983,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 2,
			["width"] = 35,
			["text2"] = "%s%c",
			["alpha"] = 0.2,
			["inverse"] = true,
			["glowLength"] = 20,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [2]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["The Well of Existence"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 25,
			["xOffset"] = 0,
			["authorOptions"] = {
			},
			["displayText"] = "%tooltip1",
			["parent"] = "On-Use Essences",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["config"] = {
			},
			["regionType"] = "text",
			["color"] = {
				1, -- [1]
				0.003921568627451, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/onUseEssences/11",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["tooltipValueNumber"] = 1,
						["tooltipValue_operator"] = ">=",
						["fetchTooltip"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_tooltipValue"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"296138", -- [1]
						},
						["useExactSpellId"] = true,
						["names"] = {
						},
						["tooltipValue"] = "0",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["automaticWidth"] = "Auto",
			["internalVersion"] = 16,
			["semver"] = "1.0.10",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "The Well of Existence",
			["fixedWidth"] = 200,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["font"] = "Expressway",
			["version"] = 11,
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "BOTTOM",
			["conditions"] = {
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 296197,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "et)3V)neCj8",
		},
		["PhoGuild - Raid Ability Timeline Icon"] = {
			["glow"] = false,
			["text1FontSize"] = 15,
			["authorOptions"] = {
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "\n",
					["width"] = 2,
				}, -- [1]
				{
					["min"] = 0,
					["type"] = "number",
					["key"] = "totalDur",
					["desc"] = "Show the timers only if the remaining cooldown is less than this value, Set to 0 to always show all timers",
					["default"] = 0,
					["name"] = "Only show timers if less than",
					["useDesc"] = true,
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "space",
					["variableWidth"] = false,
					["width"] = 1,
				}, -- [3]
				{
					["min"] = 0,
					["type"] = "number",
					["key"] = "maxDur",
					["desc"] = "How long should it take to travel from top to bottom",
					["default"] = 10,
					["name"] = "Travel Duration",
					["useDesc"] = true,
					["width"] = 0.6,
				}, -- [4]
				{
					["min"] = 0,
					["type"] = "number",
					["key"] = "travelDist",
					["desc"] = "The total travel distance of the icons. You will also need to manually change the length of the line in the background.",
					["default"] = 200,
					["name"] = "Travel Distance",
					["useDesc"] = true,
					["width"] = 0.6,
				}, -- [5]
				{
					["type"] = "toggle",
					["name"] = "Inverse Travel Direction",
					["desc"] = "Because I was inverted...",
					["default"] = false,
					["useDesc"] = true,
					["key"] = "reverse",
					["width"] = 0.8,
				}, -- [6]
				{
					["min"] = 0,
					["type"] = "number",
					["key"] = "spacing",
					["desc"] = "This should be equal to the icon size if you ever change that in the display tab. ",
					["default"] = 25,
					["name"] = "Icon Spacing",
					["useDesc"] = true,
					["width"] = 1,
				}, -- [7]
				{
					["type"] = "space",
					["variableWidth"] = false,
					["width"] = 1,
				}, -- [8]
				{
					["min"] = 0,
					["type"] = "number",
					["key"] = "textMaxLength",
					["desc"] = "Max length of the text by the icon. Text longer than this will be truncated and followed by \"..\". Set to 0 to disable truncating text.",
					["default"] = 20,
					["name"] = "Text Max Length",
					["useDesc"] = true,
					["width"] = 1,
				}, -- [9]
				{
					["type"] = "space",
					["variableWidth"] = false,
					["width"] = 1,
				}, -- [10]
				{
					["type"] = "description",
					["text"] = "\n\nThese options control the default boss mod bars visibility. Changing these options requires a game reload.\n",
					["fontSize"] = "large",
					["width"] = 2,
				}, -- [11]
				{
					["type"] = "toggle",
					["key"] = "hideBWBars",
					["default"] = true,
					["name"] = "Hide Default BigWigs Bars",
					["width"] = 1,
				}, -- [12]
				{
					["type"] = "toggle",
					["key"] = "hideDBMBars",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Hide Default DBM Bars",
					["width"] = 1,
				}, -- [13]
				{
					["type"] = "description",
					["text"] = "\n\n",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [14]
				{
					["type"] = "space",
					["variableWidth"] = false,
					["width"] = 1,
				}, -- [15]
			},
			["displayText"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/B1pfxTOtb/29",
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desc"] = "Made by: Bosmutus - Zul'jin(US)",
			["progressPrecision"] = 4,
			["font"] = "Friz Quadrata TT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 16,
			["text2"] = "%p",
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 0,
			["config"] = {
				["hideDBMBars"] = true,
				["travelDist"] = 200,
				["totalDur"] = 0,
				["reverse"] = false,
				["textMaxLength"] = 20,
				["spacing"] = 25,
				["hideBWBars"] = true,
				["maxDur"] = 10,
			},
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    if not aura_env.state then return end\n    local text = aura_env.state.name\n    text = strtrim(text) -- Trim\n    local inlineIconAdjust = string.len(string.match(text,\"|T.-|t\") or \"\")\n    if inlineIconAdjust > 0 then inlineIconAdjust = inlineIconAdjust - 2 end -- Make icons take 2 characters.\n    if (aura_env.config.textMaxLength or 0)>=5 and text:len()-inlineIconAdjust>aura_env.config.textMaxLength then\n        text = string.sub(text,1,aura_env.config.textMaxLength+inlineIconAdjust-2)..\"..\" -- Truncate\n    end\n    if aura_env.state.colorTable then\n        local t=aura_env.state.colorTable\n        text = string.format(\"\\124c%02x%02x%02x%02x%s\\124r\",255*(t[4] or 1),255*(t[1] or 0),255*(t[2] or 0),255*(t[3] or 0),text)\n    end\n    return text\nend",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_hide"] = "timed",
						["custom_type"] = "stateupdate",
						["unevent"] = "auto",
						["unit"] = "player",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["event"] = "Chat Message",
						["spellIds"] = {
						},
						["custom"] = "function(allstates, WAevent, event, id, msg, exp, icon, colors)\n    if event == \"START\" then\n        if not id then return end\n        aura_env.hideDBMBarsHelper() -- Sometimes DBM will revert the screen clamping.\n        allstates[id] = allstates[id] or {}\n        local state = allstates[id]\n        state.name = msg\n        state.icon = icon    \n        state.progressType = \"timed\"\n        state.expirationTime = exp\n        state.duration = exp-GetTime()\n        state.colorTable = colors\n        state.c_offset = 0\n        state.autoHide = true\n        state.changed = true\n        state.show = true\n        local now = GetTime()\n        if exp < now + aura_env.config.maxDur then\n            state.c_queued=false\n        else\n            state.c_queued=true\n            C_Timer.After(exp-now-aura_env.config.maxDur, function() WeakAuras.ScanEvents(\"PHOGUILD_RAT\",\"REFRESH\",id) end)\n        end\n    elseif event==\"STOP\" then\n        if not id then return end\n        allstates[id] = allstates[id] or {}\n        local state = allstates[id]\n        state.show=false\n        state.changed=true\n    elseif event==\"UPDATEPROG\" then\n        if not id then return end\n        local state = allstates[id]\n        if state then\n            state.duration = msg\n            state.expirationTime = exp\n            local now = GetTime()\n            if exp < now + aura_env.config.maxDur then\n                state.c_queued=false\n            else\n                state.c_queued=true\n                C_Timer.After(exp-now-aura_env.config.maxDur, function() WeakAuras.ScanEvents(\"PHOGUILD_RAT\",\"REFRESH\",id) end)\n            end\n            state.changed = true\n        end\n    elseif event==\"FORCESTOP\" then\n        -- This is called from DBM.Bars:CancelBar function hook callback.\n        -- This needs to be removed once we are 100% confident that DBM_TimerStop event will fire for everything\n        if not id then return end\n        local state = allstates[id]\n        if state then\n            state.show=false\n            state.changed=true\n        else\n            for _,state in pairs(allstates) do\n                if state.name == id then\n                    state.show=false\n                    state.changed=true\n                    break\n                end\n            end\n        end\n    elseif event==\"STOPALL\" then\n        for cid,state in pairs(allstates) do\n            if not id or tostring(id)==strsplit(\"^\",cid) then --With BW, id (called module in BW) can be a table here\n                state.show=false\n                state.changed=true\n            end\n        end\n    elseif event==\"REFRESH\" then\n        if not allstates[id] then return end\n        -- For performance reasons, we are not canceling the REFRESH callbacks when events are canceled. \n        -- Therefore we need to disregard the ones that are leaked from the previous pull.\n        local timeLeft = (allstates[id].expirationTime or 0) - GetTime()\n        if (aura_env.config.maxDur or 0)-timeLeft > 0.5 or (aura_env.config.maxDur or 0)-timeLeft < -0.1 then return end\n        allstates[id].c_offset=0\n        allstates[id].c_queued=false\n        allstates[id].changed=true\n    end\n    -- Refresh and recalculate offset\n    local queuedEvents={}\n    local events={}\n    -- Sort everything by exp\n    for id,state in pairs(allstates) do\n        if state.c_queued then\n            table.insert(queuedEvents,{id=id,exp=state.expirationTime})\n        else\n            table.insert(events,{id=id,exp=state.expirationTime})\n        end\n    end\n    table.sort(queuedEvents,function(a,b) return (a.exp or 0)<(b.exp or 0) end)\n    table.sort(events,function(a,b) return (a.exp or 0)<(b.exp or 0) end)\n    -- Calculate offset for queued events\n    for i,event in ipairs(queuedEvents) do\n        allstates[event.id].c_offset=i*aura_env.config.spacing\n    end\n    -- Calculate offset for the regluar events to prevent icon collision\n    for i=#events,1,-1 do\n        local event=events[i]\n        local lastEvent = events[i+1]\n        if lastEvent then\n            allstates[event.id].c_offset = aura_env.config.spacing - \n            (((allstates[lastEvent.id].expirationTime or 0)-(allstates[event.id].expirationTime or 0)) *\n                aura_env.config.travelDist / aura_env.config.maxDur - (allstates[lastEvent.id].c_offset or 0))\n            -- offset must be positive\n            if allstates[event.id].c_offset < 0 then allstates[event.id].c_offset = 0 end\n        end\n    end\n    return true\nend",
						["events"] = "PHOGUILD_RAT",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["unit"] = "player",
						["unevent"] = "auto",
						["event"] = "Conditions",
						["custom_type"] = "status",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "custom",
					["colorR"] = 1,
					["colorB"] = 1,
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local endX,endY\n    if not aura_env.state then\n        endX = startX\n        endY = startY \n    elseif (aura_env.config.totalDur or 0)>0 and aura_env.state.expirationTime-GetTime()>aura_env.config.totalDur then\n        endX = startX\n        endY = startY+GetScreenHeight()\n    elseif aura_env.state.c_queued then\n        endX = startX\n        endY = startY + (aura_env.state.c_offset or 0)\n    else\n        local prog=1\n        if aura_env.state.expirationTime then\n            prog = (aura_env.state.expirationTime - GetTime())/aura_env.config.maxDur\n        end\n        if prog>1 then prog=1\n        elseif prog<0 then prog=0 end\n        endX = startX\n        endY = startY - ((1-prog) * aura_env.config.travelDist) - (aura_env.state.c_offset or 0)\n    end\n    if aura_env.config.reverse then endY = -aura_env.config.travelDist-endY end\n    return endX,endY\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["translateType"] = "custom",
					["duration_type"] = "seconds",
					["rotate"] = 0,
					["use_translate"] = true,
					["scalex"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 29,
			["height"] = 25,
			["glowLines"] = 8,
			["alpha"] = 1,
			["glowFrequency"] = 0.25,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["glowLength"] = 10,
			["text1Font"] = "Arial Narrow",
			["cooldownTextDisabled"] = false,
			["parent"] = "PhoGuild - Raid Ability Timeline",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["xOffset"] = 0,
			["uid"] = "tGYnrOdWAgj",
			["text1Point"] = "LEFT",
			["width"] = 25,
			["useglowColor"] = false,
			["text1"] = "%c",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "PT Sans Narrow",
			["justify"] = "LEFT",
			["semver"] = "2.0.3",
			["desaturate"] = false,
			["id"] = "PhoGuild - Raid Ability Timeline Icon",
			["text1Containment"] = "OUTSIDE",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "-- Made by: Bosmutus - Zul'jin(US) --\n\n----- Customization -----\n-- Moved to the Custom Options Tab --\n\n----- Don't Edit Anything Below -----\naura_env.DBMCallback = function(event, id, msg, duration, icon, timerType, spellId, colorId)\n    if event==\"DBM_TimerStart\" then\n        -- Get DBM bar color\n        local barOptions=DBM.Bars.options\n        local barRed=0\n        local barGreen=0\n        local barBlue=0\n        if colorId == 1 then--Add\n            barRed, barGreen, barBlue = barOptions.StartColorAR, barOptions.StartColorAG, barOptions.StartColorAB\n        elseif colorId == 2 then--AOE\n            barRed, barGreen, barBlue = barOptions.StartColorAER, barOptions.StartColorAEG, barOptions.StartColorAEB\n        elseif colorId == 3 then--Debuff\n            barRed, barGreen, barBlue = barOptions.StartColorDR, barOptions.StartColorDG, barOptions.StartColorDB\n        elseif colorId == 4 then--Interrupt\n            barRed, barGreen, barBlue = barOptions.StartColorIR, barOptions.StartColorIG, barOptions.StartColorIB\n        elseif colorId == 5 then--Role\n            barRed, barGreen, barBlue = barOptions.StartColorRR, barOptions.StartColorRG, barOptions.StartColorRB\n        elseif colorId == 6 then--Phase\n            barRed, barGreen, barBlue = barOptions.StartColorPR, barOptions.StartColorPG, barOptions.StartColorPB\n        elseif colorId == 7 then--Important\n            barRed, barGreen, barBlue = barOptions.StartColorUIR, barOptions.StartColorUIG, barOptions.StartColorUIB\n        else\n            barRed, barGreen, barBlue = barOptions.StartColorR, barOptions.StartColorG, barOptions.StartColorB\n        end\n        WeakAuras.ScanEvents(\"PHOGUILD_RAT\",\"START\",id,msg,GetTime()+(duration or 0),icon,{barRed,barGreen,barBlue})\n    elseif event==\"DBM_TimerUpdate\" then\n        -- DBM Args: fireEvent(\"DBM_TimerUpdate\", id, elapsed, total+extendAmount)\n        -- UPDATEPROG Args: id,newDuration,newExpiration\n        WeakAuras.ScanEvents(\"PHOGUILD_RAT\",\"UPDATEPROG\",id,duration,GetTime()+(duration or 0)-(msg or 0))\n    elseif event==\"DBM_TimerStop\" then\n        WeakAuras.ScanEvents(\"PHOGUILD_RAT\",\"STOP\",id,msg,0,icon)\n    end\nend\n--[[\naura_env.DBMHideDefaultBar = function(event, id, msg, duration, icon, timerType, spellId, colorId)\n    local defaultBar = DBM.Bars:GetBar(id)\n    if not defaultBar then defaultBar = DBM.Bars:GetBar(msg) end\n    if defaultBar then defaultBar.frame:Hide() end\nend\n]]\n\n--[[ One day we'll make this shit work\nif DBT then\n    hooksecurefunc(DBT,\"CreateBar\",\n        function(self,timer, id, icon, huge, small, color, isDummy, colorType, inlineIcon)\n            if isDummy then return end\n            print(color)\n            local barOptions=DBM.Bars.options\n            local barRed=0\n            local barGreen=0\n            local barBlue=0\n            ViragDevTool_AddData(timer,\"timer\")\n            barRed, barGreen, barBlue = barOptions.StartColorR, barOptions.StartColorG, barOptions.StartColorB\n            WeakAuras.ScanEvents(\"PHOGUILD_RAT\",\"START_CREATEBAR\",id,id,GetTime()+(timer or 0),icon,{barRed,barGreen,barBlue})\n        end\n    )\nend\n]]\nif DBM and DBM.Bars then\n    hooksecurefunc(DBM.Bars,\"CancelBar\",\n        function(self, id)\n            WeakAuras.ScanEvents(\"PHOGUILD_RAT\",\"FORCESTOP\",id)\n        end\n    )\nend\n\naura_env.hideDBMBarsHelper=function()\n    if DBM and DBM.Bars then\n        if aura_env.config.hideDBMBars then\n            -- DBM will anchor to the closest anchor point on the screen\n            -- So a valid offset really shouldn't be more than +/- 1/4 of the screen resolution\n            local point,relativeTo,relativePoint,xOffset,yOffset=DBM.Bars.mainAnchor:GetPoint(1)\n            if yOffset<GetScreenHeight()/2 then\n                DBM.Bars.mainAnchor:SetClampedToScreen(false)\n                DBM.Bars.mainAnchor:SetPoint(point,relativeTo,relativePoint,xOffset,yOffset+GetScreenHeight())\n            end\n            point,relativeTo,relativePoint,xOffset,yOffset=DBM.Bars.secAnchor:GetPoint(1)\n            if yOffset<GetScreenHeight()/2 then\n                DBM.Bars.secAnchor:SetClampedToScreen(false)\n                DBM.Bars.secAnchor:SetPoint(point,relativeTo,relativePoint,xOffset,yOffset+GetScreenHeight())\n            end\n        else\n            -- Try restore the original offsets\n            local point,relativeTo,relativePoint,xOffset,yOffset=DBM.Bars.mainAnchor:GetPoint(1)\n            if yOffset>GetScreenHeight()/2 then\n                DBM.Bars.mainAnchor:SetPoint(point,relativeTo,relativePoint,xOffset,yOffset-GetScreenHeight())\n            end\n            point,relativeTo,relativePoint,xOffset,yOffset=DBM.Bars.secAnchor:GetPoint(1)\n            if yOffset>GetScreenHeight()/2 then\n                DBM.Bars.secAnchor:SetPoint(point,relativeTo,relativePoint,xOffset,yOffset-GetScreenHeight())\n            end\n        end\n    end\nend\naura_env.hideDBMBarsHelper()\n\nif DBM and not DBM:IsCallbackRegistered(\"DBM_TimerStart\", aura_env.DBMCallback) then \n    DBM:RegisterCallback(\"DBM_TimerStart\",aura_env.DBMCallback)\nend\nif DBM and not DBM:IsCallbackRegistered(\"DBM_TimerUpdate\", aura_env.DBMCallback) then \n    DBM:RegisterCallback(\"DBM_TimerUpdate\",aura_env.DBMCallback)\nend\n--[[\nif DBM and aura_env.hideDBMBars and not DBM:IsCallbackRegistered(\"DBM_TimerStart\", aura_env.DBMHideDefaultBar) then \n    DBM:RegisterCallback(\"DBM_TimerStart\",aura_env.DBMHideDefaultBar)\nend   \n]] \nif DBM and not DBM:IsCallbackRegistered(\"DBM_TimerStop\", aura_env.DBMCallback) then \n    DBM:RegisterCallback(\"DBM_TimerStop\",aura_env.DBMCallback)\nend\n\naura_env.BigwigsCallback = function(event, ...)\n    if event==\"BigWigs_StartBar\" then\n        local module, spellId, msg, duration, icon = ...\n        local r,g,b,a=BigWigs:GetPlugin(\"Colors\"):GetColor(\"barText\", module,spellId)\n        WeakAuras.ScanEvents(\"PHOGUILD_RAT\",\"START\",tostring(module)..\"^\"..(msg or \"\"),msg,GetTime()+(duration or 0),icon,{r,g,b,a})\n    elseif event==\"BigWigs_StopBar\" then\n        local module, msg = ...\n        WeakAuras.ScanEvents(\"PHOGUILD_RAT\",\"STOP\",tostring(module)..\"^\"..(msg or \"\"),msg,0,icon)\n    elseif (event == \"BigWigs_StopBars\"\n        or event == \"BigWigs_OnBossDisable\"\n    or event == \"BigWigs_OnPluginDisable\") then\n        local module=...\n        WeakAuras.ScanEvents(\"PHOGUILD_RAT\",\"STOPALL\",module)\n    end\nend\n\nif BigWigsLoader then\n    PHOGUILD_WA_RAT_BWCallbackObj = {}\n    BigWigsLoader.RegisterMessage(PHOGUILD_WA_RAT_BWCallbackObj, \"BigWigs_StartBar\", aura_env.BigwigsCallback);\n    BigWigsLoader.RegisterMessage(PHOGUILD_WA_RAT_BWCallbackObj, \"BigWigs_StopBar\", aura_env.BigwigsCallback);\n    BigWigsLoader.RegisterMessage(PHOGUILD_WA_RAT_BWCallbackObj, \"BigWigs_StopBars\", aura_env.BigwigsCallback);\n    BigWigsLoader.RegisterMessage(PHOGUILD_WA_RAT_BWCallbackObj, \"BigWigs_OnBossDisable\", aura_env.BigwigsCallback);\n    if aura_env.config.hideBWBars then\n        local f = function(event,addon,bar,...) \n            bar.candyBarBar:Hide()\n            bar.candyBarIconFrame:Hide()\n            -- For some reason the first ever icon after game launch won't be hidden because it hasn't been initialized properly? Set a short timer to hide it again to work around this.\n            PHO_BW_BAR_TO_HIDE = bar.candyBarIconFrame\n            C_Timer.After(0.01, function() if (PHO_BW_BAR_TO_HIDE~=nil and PHO_BW_BAR_TO_HIDE:IsVisible()) then PHO_BW_BAR_TO_HIDE:Hide() end end)\n        end\n        BigWigsLoader.RegisterMessage(PHOGUILD_WA_RAT_BWCallbackObj, \"BigWigs_BarCreated\", f);\n        BigWigsLoader.RegisterMessage(PHOGUILD_WA_RAT_BWCallbackObj, \"BigWigs_BarEmphasized\", f);\n    end\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["text2Point"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Crimson_Vial"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["xOffset"] = 138,
			["yOffset"] = -4,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text1Enabled"] = false,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 185311,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "taLT)jwFp(O",
			["displayIcon"] = 135994,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"185311", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Алый фиал", -- [1]
						},
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["useGroup_count"] = false,
						["spellIds"] = {
							185311, -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["useCount"] = true,
						["use_charges"] = false,
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["custom_hide"] = "timed",
						["charges_operator"] = "~=",
						["use_remaining"] = false,
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["countOperator"] = "<=",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 185311,
						["realSpellName"] = "猩红之瓶",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["use_unit"] = true,
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 185311,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["glow"] = false,
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.27,
			["glowLength"] = 20,
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["width"] = 35,
			["text1"] = "%s",
			["useglowColor"] = false,
			["authorOptions"] = {
			},
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["text2"] = "%s%c",
			["id"] = "Crimson_Vial",
			["useTooltip"] = false,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Homespun",
			["inverse"] = true,
			["alpha"] = 0.2,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Special_Rogue_Bar"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = -28,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.81960784313725, -- [2]
				0.56078431372549, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
						[5] = true,
						[2] = true,
						[4] = true,
						[6] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["sequence"] = 5,
			["timerColor"] = {
				1, -- [1]
				0.90980392156863, -- [2]
				0.70980392156863, -- [3]
				1, -- [4]
			},
			["scale"] = 1,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Solid",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["timerFont"] = "Expressway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["sparkWidth"] = 5,
			["parent"] = "Rogue_AfenarUI",
			["adjustedMax"] = 40,
			["borderOffset"] = 1,
			["model_z"] = 2,
			["backgroundColor"] = {
				0.29803921568628, -- [1]
				0.094117647058824, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["model_x"] = 0,
			["zoom"] = 0,
			["displayTextLeft"] = "%p                     ",
			["sparkRotationMode"] = "AUTO",
			["anchorFrameType"] = "SCREEN",
			["textSize"] = 14,
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["ownOnly"] = true,
						["genericShowOn"] = "showOnActive",
						["names"] = {
							"Танец теней", -- [1]
						},
						["use_tooltip"] = false,
						["powertype"] = 3,
						["subeventPrefix"] = "SPELL",
						["use_power"] = true,
						["matchesShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["power"] = "32",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["power_operator"] = "<",
						["buffShowOn"] = "showOnActive",
						["event"] = "Power",
						["unevent"] = "auto",
						["auranames"] = {
							"185422", -- [1]
						},
						["use_unit"] = true,
						["spellIds"] = {
							185422, -- [1]
						},
						["type"] = "aura2",
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["ownOnly"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Отравление", -- [1]
						},
						["spellIds"] = {
							32645, -- [1]
						},
						["useName"] = true,
						["matchesShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["auranames"] = {
							"32645", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Cast",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["rotateText"] = "NONE",
			["internalVersion"] = 16,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["borderBackdrop"] = "Solid",
			["stickyDuration"] = false,
			["sparkHidden"] = "NEVER",
			["timer"] = false,
			["version"] = 10,
			["timerSize"] = 10,
			["height"] = 6,
			["timerFlags"] = "OUTLINE",
			["customTextUpdate"] = "update",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["displayStacks"] = "%s",
			["useAdjustededMax"] = false,
			["model_path"] = "SPELLS/Fire_Stylized_var_1.m2",
			["xOffset"] = 0,
			["border"] = true,
			["borderEdge"] = "Blizzard Dialog",
			["config"] = {
			},
			["borderInFront"] = true,
			["modelIsUnit"] = false,
			["icon_side"] = "RIGHT",
			["borderSize"] = 2,
			["progressPrecision"] = 4,
			["sparkHeight"] = 22,
			["spark"] = false,
			["stacksContainment"] = "INSIDE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["semver"] = "2.2.1",
			["id"] = "Special_Rogue_Bar",
			["model_y"] = 0.5,
			["frameStrata"] = 3,
			["width"] = 227,
			["icon"] = false,
			["uid"] = "C(2)hd)KbIU",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.59,0.59,0.94,0.98,0.78,0.83)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [3]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Crimson_Tempest"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[19] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 121411,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["config"] = {
			},
			["displayIcon"] = 132302,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["auranames"] = {
							"121411", -- [1]
						},
						["use_inverse"] = true,
						["use_unit"] = true,
						["unitExists"] = true,
						["use_tooltip"] = false,
						["names"] = {
							"Кровавый вихрь", -- [1]
						},
						["ownOnly"] = true,
						["matchesShowOn"] = "showAlways",
						["duration"] = "1",
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 8042,
						["useGroup_count"] = false,
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							121411, -- [1]
						},
						["type"] = "aura2",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["colorR"] = 1,
					["scaley"] = 1,
					["use_color"] = false,
					["colorType"] = "custom",
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["use_translate"] = false,
					["duration"] = "1",
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = true,
			["icon"] = true,
			["xOffset"] = 0,
			["glowLength"] = 20,
			["text1Color"] = {
				1, -- [1]
				0.93725490196078, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["uid"] = "CbIpfvYuKyV",
			["text1"] = " ",
			["width"] = 43,
			["alpha"] = 0.3,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = false,
			["useglowColor"] = false,
			["id"] = "Crimson_Tempest",
			["semver"] = "2.2.1",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["text2"] = "%p",
			["inverse"] = false,
			["text1Enabled"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Mutilate"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 14,
			["xOffset"] = 46,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text1Enabled"] = false,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_talent3"] = false,
				["talent2"] = {
					["single"] = 16,
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["use_talent2"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
						[7] = true,
						[8] = true,
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "C0Rruh1Wzja",
			["displayIcon"] = 132304,
			["glowLength"] = 10,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Предчувствие", -- [1]
							"Предчувствие", -- [2]
						},
						["use_showgcd"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["ownOnly"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["spellName"] = 1329,
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["realSpellName"] = "毁伤",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["remOperator"] = ">=",
						["unevent"] = "auto",
						["use_track"] = true,
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 1329,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorB"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["scalex"] = 1,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = 1,
					["x"] = -1,
					["use_color"] = false,
					["translateType"] = "spiralandpulse",
					["colorFunc"] = "",
					["rotate"] = 0,
					["colorA"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["text2Font"] = "Friz Quadrata TT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["config"] = {
			},
			["text1Containment"] = "INSIDE",
			["text1"] = " ",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 43,
			["progressPrecision"] = 0,
			["semver"] = "2.2.1",
			["text2"] = "%p",
			["id"] = "Mutilate",
			["zoom"] = 0.3,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.3,
			["useglowColor"] = false,
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.34117647058824, -- [2]
								0.25098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Rogue_Energy"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.76078431372549, -- [2]
				0.44313725490196, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0.2,
			["load"] = {
				["use_petbattle"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Solid",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 1,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 0.3,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%p                    ",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["powertype"] = 3,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["use_powertype"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["useName"] = true,
						["type"] = "aura2",
						["auranames"] = {
							"115191", -- [1]
							"185422", -- [2]
							"115192", -- [3]
							"195627", -- [4]
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["sparkWidth"] = 5,
			["internalVersion"] = 16,
			["sparkRotation"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["spark"] = true,
			["stickyDuration"] = false,
			["textSize"] = 14,
			["config"] = {
			},
			["version"] = 10,
			["uid"] = "7z5IoJHT0G0",
			["height"] = 16,
			["timerFlags"] = "None",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.26,0.78,0.67,1,0.76, 0.44)",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["timer"] = false,
			["anchorFrameType"] = "SCREEN",
			["sparkOffsetX"] = 0,
			["borderSize"] = 2,
			["id"] = "Rogue_Energy",
			["border"] = true,
			["borderEdge"] = "Blizzard Dialog",
			["semver"] = "2.2.1",
			["borderInFront"] = false,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["sparkTexture"] = "Legionfall_BarSpark",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["sparkHeight"] = 29,
			["rotateText"] = "NONE",
			["stacksFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["xOffset"] = 0,
			["sparkHidden"] = "BOTH",
			["zoom"] = 0,
			["frameStrata"] = 2,
			["width"] = 227,
			["sparkColor"] = {
				1, -- [1]
				0.74117647058823, -- [2]
				0.34117647058824, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0.29803921568628, -- [1]
				0.094117647058824, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "percentpower",
								["value"] = "100",
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.59,0.59,0.94,0.98,0.78,0.83)",
							},
							["property"] = "customcode",
						}, -- [1]
						{
							["value"] = {
								0.15686274509804, -- [1]
								0.11764705882353, -- [2]
								0.25490196078431, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [3]
			},
			["sparkRotationMode"] = "AUTO",
			["parent"] = "Rogue_AfenarUI",
		},
		["Killing_Spree"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 26,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 21,
					["multi"] = {
						[17] = true,
						[4] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["use_glyph"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "trQP70d(wPD",
			["displayIcon"] = "Interface\\Icons\\ability_rogue_murderspree",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorB"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["scalex"] = 1,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = -1,
					["x"] = 1,
					["use_color"] = false,
					["translateType"] = "spiralandpulse",
					["colorFunc"] = "",
					["rotate"] = 0,
					["colorA"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["text1Containment"] = "INSIDE",
			["xOffset"] = 46,
			["glowLength"] = 10,
			["text1Color"] = {
				0.058823529411765, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["text2"] = "%p",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.3,
			["semver"] = "2.2.1",
			["zoom"] = 0.3,
			["id"] = "Killing_Spree",
			["progressPrecision"] = 0,
			["frameStrata"] = 2,
			["width"] = 43,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "7",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Череда убийств", -- [1]
						},
						["use_showgcd"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["spellName"] = 51690,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cooldown Progress (Spell)",
						["ownOnly"] = true,
						["realSpellName"] = "影舞步",
						["use_spellName"] = true,
						["spellIds"] = {
							51690, -- [1]
						},
						["use_unit"] = true,
						["remOperator"] = ">=",
						["unevent"] = "auto",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 271877,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["unit"] = "player",
						["realSpellName"] = "Призрачный удар",
						["use_spellName"] = true,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["use_exact_spellName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 196937,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["unit"] = "player",
						["realSpellName"] = "Метка смерти",
						["use_spellName"] = true,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["use_exact_spellName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 137619,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["event"] = "Spell Known",
						["use_exact_spellName"] = true,
						["realSpellName"] = "Мясорубка",
						["use_spellName"] = true,
						["use_petspell"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 5171,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["text1Enabled"] = false,
			["inverse"] = true,
			["icon"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = -2,
										["variable"] = "OR",
										["checks"] = {
											{
												["trigger"] = 4,
												["variable"] = "show",
												["value"] = 0,
											}, -- [1]
											{
												["trigger"] = 4,
												["variable"] = "show",
												["value"] = 1,
											}, -- [2]
										},
									}, -- [3]
								},
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "1",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["The Ever-Rising Tide"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 25,
			["color"] = {
				1, -- [1]
				0.003921568627451, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["displayText"] = "%tooltip1%%",
			["parent"] = "On-Use Essences",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["regionType"] = "text",
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/onUseEssences/11",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["tooltipValue"] = "0",
						["useExactSpellId"] = true,
						["tooltipValue_operator"] = ">=",
						["fetchTooltip"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_tooltipValue"] = true,
						["spellIds"] = {
						},
						["tooltipValueNumber"] = 1,
						["auraspellids"] = {
							"299624", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["automaticWidth"] = "Auto",
			["internalVersion"] = 16,
			["semver"] = "1.0.10",
			["selfPoint"] = "BOTTOM",
			["id"] = "The Ever-Rising Tide",
			["conditions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["font"] = "Expressway",
			["version"] = 11,
			["wordWrap"] = "WordWrap",
			["config"] = {
			},
			["fixedWidth"] = 200,
			["load"] = {
				["use_petbattle"] = false,
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 296072,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "ql32mWukjvn",
		},
		["动作条"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"RL1 2", -- [1]
				"RL2 2", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["scale"] = 1,
			["border"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderOffset"] = 5,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["regionType"] = "group",
			["internalVersion"] = 16,
			["borderEdge"] = "None",
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "动作条",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["uid"] = "TW2lzAaqQ5g",
			["conditions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Kidney_Shot"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["xOffset"] = -138,
			["yOffset"] = -4,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 408,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 20,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "FKPBmNllt8d",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = false,
						["remaining"] = "0.1",
						["use_unit"] = true,
						["custom_hide"] = "timed",
						["use_remaining"] = false,
						["type"] = "status",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = "肾击",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 408,
						["unit"] = "player",
						["remaining_operator"] = ">=",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 408,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["progressPrecision"] = 0,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["glow"] = false,
			["authorOptions"] = {
			},
			["text1Containment"] = "INSIDE",
			["alpha"] = 0.2,
			["text1"] = "%s",
			["text1Color"] = {
				0.98823529411765, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["width"] = 35,
			["useglowColor"] = false,
			["semver"] = "2.2.1",
			["text2"] = "%s%c",
			["id"] = "Kidney_Shot",
			["zoom"] = 0.27,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text1Enabled"] = false,
			["inverse"] = true,
			["glowLength"] = 10,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "1",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Shadowstep"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["authorOptions"] = {
			},
			["yOffset"] = -61.5,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "ArchivoNarrow-Bold",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
						[5] = true,
						[6] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 36554,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 20,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 0,
			["uid"] = "DijvIpcFREh",
			["glowLength"] = 10,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_matchedRune"] = false,
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["useCount"] = true,
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["spellName"] = 36554,
						["charges"] = "3",
						["custom_hide"] = "timed",
						["charges_operator"] = "~=",
						["use_remaining"] = false,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["unevent"] = "auto",
						["realSpellName"] = "暗影步",
						["use_spellName"] = true,
						["count"] = "2",
						["type"] = "status",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showAlways",
						["spellName"] = 36554,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				0.8078431372549, -- [2]
				0.51764705882353, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["text1Enabled"] = true,
			["desaturate"] = false,
			["text1"] = "%p",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "local r = WeakAuras.regions[aura_env.id].region\nr.text2:ClearAllPoints()\nr.text2:SetPoint(\"TOPRIGHT\", r, \"TOPRIGHT\", 3.5, 3.5)",
					["do_custom"] = true,
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["anchorFrameType"] = "SCREEN",
			["useglowColor"] = false,
			["semver"] = "2.2.1",
			["zoom"] = 0.27,
			["id"] = "Shadowstep",
			["alpha"] = 0.2,
			["frameStrata"] = 2,
			["width"] = 35,
			["xOffset"] = 76,
			["text1Font"] = "Homespun",
			["inverse"] = true,
			["progressPrecision"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Shadow_Blades"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["useTooltip"] = false,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 121471,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "eBcBh44yEOr",
			["displayIcon"] = 135994,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["text1Enabled"] = false,
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["xOffset"] = 92,
			["text2Font"] = "Homespun",
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["alpha"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["config"] = {
			},
			["text2"] = "%s%c",
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["id"] = "Shadow_Blades",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"121471", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Теневые клинки", -- [1]
						},
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["useGroup_count"] = false,
						["spellIds"] = {
							121471, -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["useCount"] = true,
						["use_unit"] = true,
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "~=",
						["use_remaining"] = false,
						["spellName"] = 121471,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["countOperator"] = "<=",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["realSpellName"] = "暗影之刃",
						["use_spellName"] = true,
						["count"] = "2",
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["charges"] = "3",
						["type"] = "status",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 121471,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["unit"] = "player",
						["realSpellName"] = "Мастер теней",
						["use_spellName"] = true,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_spellName"] = true,
						["spellName"] = 196976,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["unit"] = "player",
						["realSpellName"] = "Метка смерти",
						["use_spellName"] = true,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_spellName"] = true,
						["spellName"] = 137619,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "121471",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["sourceUnit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 2,
			["width"] = 43,
			["glowLength"] = 20,
			["glow"] = false,
			["inverse"] = true,
			["zoom"] = 0.3,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 74,
							["property"] = "yOffset",
						}, -- [1]
						{
							["value"] = 96,
							["property"] = "xOffset",
						}, -- [2]
						{
							["value"] = 35,
							["property"] = "height",
						}, -- [3]
						{
							["value"] = 35,
							["property"] = "width",
						}, -- [4]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 5,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "glowType",
						}, -- [2]
						{
							["property"] = "useGlowColor",
						}, -- [3]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["小功能整合"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"战斗时长 2", -- [1]
				"战复监视", -- [2]
				"控怪监控", -- [3]
				"Quaking Bar", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["scale"] = 1,
			["internalVersion"] = 16,
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "小功能整合",
			["selfPoint"] = "BOTTOMLEFT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "xscu(K6uaCk",
			["borderInset"] = 11,
			["anchorPoint"] = "CENTER",
			["config"] = {
			},
			["conditions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderOffset"] = 5,
		},
		["Alacrity_Sub"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "ArchivoNarrow-Bold",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
						[7] = true,
						[8] = true,
					},
				},
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[17] = true,
						[18] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["talent3"] = {
					["single"] = 19,
					["multi"] = {
						[19] = true,
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 93402,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 1,
			["config"] = {
			},
			["displayIcon"] = 132306,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["scaley"] = 1,
					["duration_type"] = "seconds",
					["colorType"] = "custom",
					["use_color"] = false,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["colorR"] = 1,
					["colorFunc"] = "",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["duration_type"] = "seconds",
					["duration"] = "1",
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["text1Enabled"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				0.90196078431373, -- [2]
				0.63529411764706, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "local r = WeakAuras.regions[aura_env.id].region\nr.text2:ClearAllPoints()\nr.text2:SetPoint(\"TOPRIGHT\", r, \"TOPRIGHT\", 3.5, 3.5)",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["glow"] = false,
			["uid"] = "0JZVoJ1m5gC",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Расторопность", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["duration"] = "1",
						["ownOnly"] = true,
						["unit"] = "player",
						["custom_hide"] = "timed",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"193538", -- [1]
						},
						["spellName"] = 8042,
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							193538, -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 19,
						},
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["xOffset"] = -92,
			["text1Color"] = {
				1, -- [1]
				0.93725490196078, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["width"] = 43,
			["desaturate"] = true,
			["zoom"] = 0.3,
			["useGlowColor"] = false,
			["text2"] = "%s",
			["id"] = "Alacrity_Sub",
			["semver"] = "2.2.1",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["progressPrecision"] = 0,
			["alpha"] = 0.3,
			["inverse"] = false,
			["glowLength"] = 20,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = -1,
										["variable"] = "incombat",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 1,
										["variable"] = "buffed",
										["value"] = 0,
									}, -- [3]
								},
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
						{
							["property"] = "glow",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = -1,
										["variable"] = "incombat",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
								},
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 1,
										["variable"] = "buffed",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = -1,
										["variable"] = "incombat",
										["value"] = 0,
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 1,
										["variable"] = "buffed",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = -1,
										["variable"] = "incombat",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = -96,
							["property"] = "xOffset",
						}, -- [1]
						{
							["value"] = 74,
							["property"] = "yOffset",
						}, -- [2]
						{
							["value"] = 35,
							["property"] = "height",
						}, -- [3]
						{
							["value"] = 35,
							["property"] = "width",
						}, -- [4]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Envenom"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 30,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
						[8] = true,
						[16] = true,
						[7] = true,
					},
				},
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[8] = true,
						[19] = true,
						[7] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 1943,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "b4jvcbwB9IM",
			["displayIcon"] = 132287,
			["glowLength"] = 20,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["colorR"] = 1,
					["scalex"] = 1,
					["colorType"] = "custom",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["duration_type"] = "seconds",
					["colorFunc"] = "",
					["rotate"] = 0,
					["use_color"] = false,
					["colorB"] = 1,
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["duration_type"] = "seconds",
					["duration"] = "1",
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.30000001192093, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["text1Containment"] = "INSIDE",
			["glow"] = false,
			["text1Color"] = {
				0.9921568627451, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["alpha"] = 0,
			["text1"] = "%p",
			["anchorFrameType"] = "SCREEN",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = false,
			["semver"] = "2.2.1",
			["text2"] = "%p",
			["id"] = "Envenom",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Отравление", -- [1]
						},
						["duration"] = "1",
						["use_tooltip"] = false,
						["matchesShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["ownOnly"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 8042,
						["type"] = "aura2",
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							32645, -- [1]
						},
						["use_unit"] = true,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["auranames"] = {
							"32645", -- [1]
						},
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 1,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 9,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 16,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 19,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["frameStrata"] = 2,
			["width"] = 43,
			["text1Enabled"] = false,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [4]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
										["checks"] = {
											{
												["trigger"] = 4,
												["variable"] = "show",
												["value"] = 1,
											}, -- [1]
											{
												["trigger"] = 5,
												["variable"] = "show",
												["value"] = 1,
											}, -- [2]
										},
									}, -- [3]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [4]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [4]
								},
							}, -- [2]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [4]
								},
							}, -- [3]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [3]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [4]
								},
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Garrote_CD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["authorOptions"] = {
			},
			["yOffset"] = 74,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text1Enabled"] = false,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 18,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[18] = true,
						[16] = true,
						[17] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 703,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "A5ezpPnYp)E",
			["displayIcon"] = 135813,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["unit"] = "target",
						["auranames"] = {
							"703", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["use_inverse"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
							"Гаррота", -- [1]
						},
						["unitExists"] = true,
						["use_tooltip"] = false,
						["use_genericShowOn"] = true,
						["matchesShowOn"] = "showAlways",
						["duration"] = "1",
						["spellName"] = 703,
						["useName"] = true,
						["buffShowOn"] = "showAlways",
						["unevent"] = "auto",
						["type"] = "status",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cooldown Progress (Spell)",
						["useGroup_count"] = false,
						["realSpellName"] = "锁喉",
						["use_spellName"] = true,
						["spellIds"] = {
							703, -- [1]
						},
						["debuffType"] = "HARMFUL",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["scaley"] = 1,
					["colorB"] = 1,
					["use_color"] = false,
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = 0,
					["colorA"] = 1,
					["colorG"] = 1,
					["x"] = 0,
					["colorFunc"] = "",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorR"] = 1,
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["duration_type"] = "seconds",
					["duration"] = "1",
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["config"] = {
			},
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["glow"] = true,
			["xOffset"] = 0,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				0.93725490196078, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["text1"] = " ",
			["width"] = 35,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text2"] = "%p",
			["useGlowColor"] = true,
			["useglowColor"] = false,
			["id"] = "Garrote_CD",
			["semver"] = "2.2.1",
			["frameStrata"] = 4,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0.3,
			["inverse"] = false,
			["glowLength"] = 20,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "expirationTime",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Blindside"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 14,
			["xOffset"] = 46.000061035156,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text1Enabled"] = false,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 16,
					["multi"] = {
						[7] = true,
						[8] = true,
					},
				},
				["talent"] = {
					["single"] = 16,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						[16] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 111240,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "zt19AHTMfah",
			["displayIcon"] = 236274,
			["glowLength"] = 20,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorB"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["scalex"] = 1,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = 1,
					["x"] = -1,
					["use_color"] = false,
					["translateType"] = "spiralandpulse",
					["colorFunc"] = "",
					["rotate"] = 0,
					["colorA"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["text1Containment"] = "INSIDE",
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["glow"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["text1"] = " ",
			["width"] = 43,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["useGlowColor"] = true,
			["semver"] = "2.2.1",
			["alpha"] = 0.3,
			["id"] = "Blindside",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Предчувствие", -- [1]
							"Предчувствие", -- [2]
						},
						["use_showgcd"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["spellName"] = 111240,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["ownOnly"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["realSpellName"] = "侧袭",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["remOperator"] = ">=",
						["unevent"] = "auto",
						["use_track"] = true,
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 111240,
					},
				}, -- [1]
				{
					["trigger"] = {
						["health_operator"] = ">",
						["type"] = "status",
						["use_health"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Слепая зона",
						["use_spellName"] = true,
						["health"] = "30",
						["use_unit"] = true,
						["unit"] = "target",
						["event"] = "Spell Activation Overlay",
						["unevent"] = "auto",
						["spellName"] = 111240,
					},
					["untrigger"] = {
						["unit"] = "target",
						["spellName"] = 111240,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["unit"] = "player",
						["realSpellName"] = "Метка смерти",
						["use_spellName"] = true,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["use_exact_spellName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 137619,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 16,
						},
						["use_absorbMode"] = true,
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["realSpellName"] = "Сила отравителя",
						["use_spellName"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 152152,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 21,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = true,
			["progressPrecision"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "spellUsable",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["property"] = "glow",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = -96,
							["property"] = "xOffset",
						}, -- [1]
						{
							["value"] = 74,
							["property"] = "yOffset",
						}, -- [2]
						{
							["value"] = 35,
							["property"] = "height",
						}, -- [3]
						{
							["value"] = 35,
							["property"] = "width",
						}, -- [4]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 0,
									}, -- [3]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 0,
									}, -- [3]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "xOffset",
						}, -- [1]
						{
							["property"] = "yOffset",
						}, -- [2]
						{
							["value"] = 43,
							["property"] = "height",
						}, -- [3]
						{
							["value"] = 43,
							["property"] = "width",
						}, -- [4]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 0,
										["checks"] = {
											{
												["trigger"] = 5,
												["variable"] = "show",
												["value"] = 0,
											}, -- [1]
											{
												["trigger"] = 5,
												["variable"] = "show",
												["value"] = 1,
											}, -- [2]
										},
									}, -- [3]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = -96,
							["property"] = "xOffset",
						}, -- [1]
						{
							["value"] = 80,
							["property"] = "yOffset",
						}, -- [2]
						{
							["value"] = 35.5,
							["property"] = "height",
						}, -- [3]
						{
							["value"] = 35.5,
							["property"] = "width",
						}, -- [4]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["RL2"] = {
			["user_y"] = 0,
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = 117,
			["stacksFlags"] = "None",
			["yOffset"] = 15,
			["foregroundColor"] = {
				1, -- [1]
				0.84313725490196, -- [2]
				0.51372549019608, -- [3]
				1, -- [4]
			},
			["sparkRotation"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.76078431372549, -- [2]
				0.44313725490196, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 1,
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = -0.5,
			["load"] = {
				["use_petbattle"] = false,
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["HUNTER"] = true,
						["WARRIOR"] = true,
						["WARLOCK"] = true,
						["DEMONHUNTER"] = true,
						["MAGE"] = true,
						["DEATHKNIGHT"] = true,
						["ROGUE"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["use_class"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["startAngle"] = 0,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["stacks"] = false,
			["blendMode"] = "ADD",
			["slantMode"] = "INSIDE",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
			["textFont"] = "Expressway",
			["borderOffset"] = 1,
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 0.3,
			["sparkTexture"] = "worldstate-capturebar-spark-green",
			["borderInset"] = 1,
			["uid"] = "yorDiethO6G",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
			},
			["rotation"] = 0,
			["zoom"] = 0.3,
			["crop_y"] = 0.41,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textColor"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0.86274509803922, -- [3]
				1, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 1,
			["sparkOffsetX"] = 0,
			["parent"] = "Rogue_AfenarUI",
			["color"] = {
				0.07843137254902, -- [1]
				0.59607843137255, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["sparkHidden"] = "BOTH",
			["stacksFont"] = "Friz Quadrata TT",
			["semver"] = "2.2.1",
			["desaturateBackground"] = false,
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
			["textSize"] = 12,
			["totalPrecision"] = 1,
			["displayTextLeft"] = "%p / %t",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Global Cooldown",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = false,
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["castType"] = "cast",
						["names"] = {
						},
						["spellIds"] = {
						},
						["event"] = "Conditions",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 16,
			["sparkRotationMode"] = "MANUAL",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["authorOptions"] = {
			},
			["version"] = 10,
			["timerFlags"] = "None",
			["timer"] = false,
			["rotate"] = true,
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "450915",
			["borderSize"] = 1,
			["height"] = 75,
			["borderEdge"] = "1 Pixel",
			["mirror"] = false,
			["border"] = false,
			["anchorFrameFrame"] = "SUFUnitplayer",
			["config"] = {
			},
			["borderInFront"] = false,
			["fontSize"] = 12,
			["icon_side"] = "LEFT",
			["textFlags"] = "OUTLINE",
			["borderBackdrop"] = "None",
			["sparkHeight"] = 24,
			["backgroundColor"] = {
				0.29019607843137, -- [1]
				0.050980392156863, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["timerSize"] = 12,
			["id"] = "RL2",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.role_data = 'DAMAGER'\naura_env.inc_exc='HEALER'--exc для исключения одной роли, inc для ее включения\n\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["backgroundOffset"] = 0,
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "VERTICAL",
			["crop_x"] = 0.41,
			["spark"] = false,
			["sparkWidth"] = 4,
		},
		["Gouge"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["xOffset"] = -138,
			["yOffset"] = -4,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text1Enabled"] = false,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 1776,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 20,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "r0uCldc9KWj",
			["glowLength"] = 10,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_matchedRune"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = false,
						["remaining"] = "0.1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["type"] = "status",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = "凿击",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 1776,
						["duration"] = "1",
						["remaining_operator"] = ">=",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 1776,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Homespun",
			["useglowColor"] = false,
			["config"] = {
			},
			["text1"] = "%s",
			["text1Color"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["progressPrecision"] = 0,
			["semver"] = "2.2.1",
			["text2"] = "%s%c",
			["id"] = "Gouge",
			["zoom"] = 0.27,
			["frameStrata"] = 2,
			["width"] = 35,
			["alpha"] = 0.2,
			["icon"] = true,
			["inverse"] = true,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "1",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Slice_and_Dice"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text1Enabled"] = false,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[17] = true,
						[18] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 93402,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "Yr8Ii5H969S",
			["displayIcon"] = 132306,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Мясорубка", -- [1]
							"Расторопность", -- [2]
						},
						["duration"] = "1",
						["use_tooltip"] = false,
						["matchesShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["ownOnly"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 8042,
						["type"] = "aura2",
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							5171, -- [1]
							193538, -- [2]
						},
						["use_unit"] = true,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["auranames"] = {
							"5171", -- [1]
							"193538", -- [2]
						},
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["scaley"] = 1,
					["duration_type"] = "seconds",
					["colorType"] = "custom",
					["use_color"] = false,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["duration_type"] = "seconds",
					["duration"] = "1",
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["glowLength"] = 20,
			["xOffset"] = -46,
			["text2Font"] = "Homespun",
			["useglowColor"] = false,
			["text1"] = " ",
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%s%c",
			["text1Color"] = {
				1, -- [1]
				0.93725490196078, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = false,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["id"] = "Slice_and_Dice",
			["semver"] = "2.2.1",
			["frameStrata"] = 2,
			["width"] = 43,
			["alpha"] = 0.3,
			["zoom"] = 0.3,
			["inverse"] = false,
			["text1Containment"] = "INSIDE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [4]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "10.8",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
						{
							["property"] = "useGlowColor",
						}, -- [2]
						{
							["value"] = "buttonOverlay",
							["property"] = "glowType",
						}, -- [3]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Pistol_Shot"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
						[7] = true,
						[8] = true,
					},
				},
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						[18] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 93402,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["config"] = {
			},
			["displayIcon"] = "1373908",
			["glowLength"] = 20,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["colorR"] = 1,
					["scalex"] = 1,
					["colorType"] = "custom",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["duration_type"] = "seconds",
					["colorFunc"] = "",
					["rotate"] = 0,
					["use_color"] = false,
					["colorB"] = 1,
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["duration_type"] = "seconds",
					["duration"] = "1",
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.30000001192093, -- [4]
			},
			["desaturate"] = true,
			["authorOptions"] = {
			},
			["text1Enabled"] = false,
			["uid"] = "caKshmKpH9O",
			["text1Color"] = {
				1, -- [1]
				0.93725490196078, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["width"] = 43,
			["zoom"] = 0.3,
			["useGlowColor"] = false,
			["semver"] = "2.2.1",
			["text2"] = "%s%c",
			["id"] = "Pistol_Shot",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["use_unit"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["ownOnly"] = true,
						["matchesShowOn"] = "showAlways",
						["names"] = {
							"Замечательная возможность", -- [1]
						},
						["type"] = "aura2",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"195627", -- [1]
						},
						["buffShowOn"] = "showAlways",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 8042,
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							195627, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 3,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 9,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 19,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["alpha"] = 0,
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [3]
								},
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Distract"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["authorOptions"] = {
			},
			["yOffset"] = 72,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 1725,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 20,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = false,
						["remaining"] = "0.1",
						["use_unit"] = true,
						["custom_hide"] = "timed",
						["use_remaining"] = false,
						["type"] = "status",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = "扰乱",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 1725,
						["unit"] = "player",
						["remaining_operator"] = ">=",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 1725,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["xOffset"] = -138,
			["text1Containment"] = "INSIDE",
			["glowLength"] = 10,
			["text1Color"] = {
				0.98823529411765, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.27,
			["text1"] = "%s",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["anchorFrameType"] = "SCREEN",
			["useglowColor"] = false,
			["semver"] = "2.2.1",
			["alpha"] = 0,
			["id"] = "Distract",
			["text1Enabled"] = false,
			["frameStrata"] = 2,
			["width"] = 35,
			["uid"] = "N6lJZKeTaVo",
			["text2"] = "%s%c",
			["inverse"] = true,
			["progressPrecision"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "1",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Garrote"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 18,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[18] = true,
						[16] = true,
						[17] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 703,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "94ou8joUUb(",
			["displayIcon"] = 135813,
			["glowLength"] = 20,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["unit"] = "target",
						["unitExists"] = true,
						["use_tooltip"] = false,
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["spellName"] = 8042,
						["useName"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["auranames"] = {
							"703", -- [1]
						},
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							703, -- [1]
						},
						["unevent"] = "auto",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Гаррота", -- [1]
						},
						["matchesShowOn"] = "showAlways",
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["colorR"] = 1,
					["type"] = "none",
					["duration_type"] = "seconds",
					["colorB"] = 1,
					["scaley"] = 1,
					["alpha"] = 0,
					["x"] = 0,
					["y"] = 0,
					["colorType"] = "custom",
					["colorG"] = 1,
					["colorA"] = 1,
					["colorFunc"] = "",
					["rotate"] = 0,
					["use_color"] = false,
					["scalex"] = 1,
				},
				["finish"] = {
					["alphaType"] = "hide",
					["type"] = "none",
					["preset"] = "fade",
					["use_translate"] = false,
					["duration"] = "1",
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["use_alpha"] = false,
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["text1Enabled"] = false,
			["parent"] = "Rogue_AfenarUI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = -92,
			["alpha"] = 0.3,
			["config"] = {
			},
			["text1Color"] = {
				1, -- [1]
				0.93725490196078, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["width"] = 43,
			["text2"] = "%p",
			["useGlowColor"] = false,
			["semver"] = "2.2.1",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["id"] = "Garrote",
			["desaturate"] = true,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["useglowColor"] = false,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["inverse"] = false,
			["zoom"] = 0.3,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "6",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Mark_of_Death"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 18,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text1Enabled"] = false,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 9,
					["multi"] = {
						[4] = true,
						[17] = true,
						[9] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "ysqDsnO22en",
			["displayIcon"] = "Interface\\Icons\\Achievement_BG_killingblow_berserker",
			["glowLength"] = 10,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["use_color"] = false,
					["scaley"] = 1,
					["colorB"] = 1,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = 0,
					["colorA"] = 1,
					["colorG"] = 1,
					["x"] = 0,
					["colorFunc"] = "",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorR"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 46,
			["text2Font"] = "Friz Quadrata TT",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_sound"] = false,
					["glow_frame"] = "WeakAuras:Mark_of_Death_D",
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
					["glow_frame"] = "WeakAuras:Mark_of_Death_D",
				},
			},
			["text1Color"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["desaturate"] = false,
			["width"] = 43,
			["alpha"] = 0.3,
			["semver"] = "2.2.1",
			["zoom"] = 0.3,
			["id"] = "Mark_of_Death",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["remaining"] = "1.5",
						["use_unit"] = true,
						["remaining_operator"] = ">=",
						["names"] = {
							"Предчувствие", -- [1]
							"Предчувствие", -- [2]
						},
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["use_remaining"] = false,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["ownOnly"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 137619,
						["realSpellName"] = "死亡标记",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = ">=",
						["debuffType"] = "HELPFUL",
						["use_track"] = true,
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 137619,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 16,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 21,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["progressPrecision"] = 0,
			["config"] = {
			},
			["inverse"] = true,
			["text2"] = "%p",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["value"] = 92,
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "1",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Ghostly_Strike"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Homespun",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 196937,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "lYoFm7ij4SZ",
			["displayIcon"] = 136136,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["glow"] = false,
			["authorOptions"] = {
			},
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useTooltip"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["alpha"] = 0.3,
			["zoom"] = 0.3,
			["text2"] = "%s%c",
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["id"] = "Ghostly_Strike",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"196937", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "target",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Призрачный удар", -- [1]
						},
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["useGroup_count"] = false,
						["spellIds"] = {
							196937, -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["useCount"] = true,
						["use_unit"] = true,
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "~=",
						["use_remaining"] = false,
						["spellName"] = 196937,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["countOperator"] = "<=",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["realSpellName"] = "鬼魅攻击",
						["use_spellName"] = true,
						["count"] = "2",
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["charges"] = "3",
						["type"] = "status",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 196937,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "196937",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["sourceUnit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 2,
			["width"] = 43,
			["progressPrecision"] = 0,
			["glowLength"] = 20,
			["inverse"] = true,
			["text1Enabled"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.34117647058824, -- [2]
								0.25098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "glowType",
						}, -- [2]
						{
							["property"] = "useGlowColor",
						}, -- [3]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["CP+"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = -95.5,
			["displayText"] = "SS",
			["yOffset"] = -33,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "ArchivoNarrow-Bold",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["rotation"] = 0,
			["font"] = "Expressway",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[17] = true,
						[16] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 193316,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["blendMode"] = "BLEND",
			["text2FontSize"] = 14,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 1,
			["config"] = {
			},
			["displayIcon"] = "Interface\\Icons\\ability_rogue_rollthebones01",
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["auranames"] = {
							"193356", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["names"] = {
							"Череп с костями", -- [1]
						},
						["unit"] = "player",
						["duration"] = "1",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["buffShowOn"] = "showAlways",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["useGroup_count"] = false,
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 79140,
						["realSpellName"] = "Вендетта",
						["use_spellName"] = true,
						["spellIds"] = {
							199603, -- [1]
						},
						["custom_hide"] = "timed",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["ownOnly"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 79140,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"199600", -- [1]
							"199603", -- [2]
							"193358", -- [3]
							"193357", -- [4]
							"193359", -- [5]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["unit"] = "player",
						["use_exact_spellName"] = true,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 5171,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["fixedWidth"] = 200,
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Rogue_AfenarUI",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["text1Enabled"] = false,
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["uid"] = "SH3PZc1XO9t",
			["version"] = 10,
			["wordWrap"] = "WordWrap",
			["height"] = 16,
			["rotate"] = true,
			["glowLines"] = 30,
			["text1Point"] = "CENTER",
			["glowFrequency"] = 0,
			["fontSize"] = 16,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Expressway",
			["text1Color"] = {
				1, -- [1]
				0.90980392156863, -- [2]
				0.70980392156863, -- [3]
				0, -- [4]
			},
			["width"] = 36.5,
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:Crit",
			["text2Color"] = {
				1, -- [1]
				0.90980392156863, -- [2]
				0.70980392156863, -- [3]
				1, -- [4]
			},
			["alpha"] = 0.2,
			["zoom"] = 0.5,
			["useglowColor"] = false,
			["semver"] = "2.2.1",
			["progressPrecision"] = 0,
			["text1"] = "%p",
			["authorOptions"] = {
			},
			["glowLength"] = 20,
			["justify"] = "LEFT",
			["useGlowColor"] = false,
			["glow"] = false,
			["id"] = "CP+",
			["text2"] = "CP",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["desaturate"] = true,
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Feint"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["xOffset"] = 138,
			["yOffset"] = 34,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text1Enabled"] = false,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_petbattle"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 1966,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 30,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 1,
			["uid"] = "bV10R3Kpbpd",
			["displayIcon"] = 135994,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"1966", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Уловка", -- [1]
						},
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["useGroup_count"] = false,
						["spellIds"] = {
							1966, -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["useCount"] = true,
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["unit"] = "player",
						["spellName"] = 1966,
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "~=",
						["type"] = "status",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["realSpellName"] = "佯攻",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["use_remaining"] = false,
						["charges"] = "3",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 1966,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 35,
			["glowLines"] = 30,
			["glowFrequency"] = 0,
			["text2Containment"] = "INSIDE",
			["glow"] = false,
			["text1Font"] = "Homespun",
			["parent"] = "Rogue_AfenarUI",
			["config"] = {
			},
			["text2Color"] = {
				0.95294117647059, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				0.30000001192093, -- [4]
			},
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.27,
			["glowLength"] = 20,
			["text1Color"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["width"] = 35,
			["text1"] = "%s",
			["useglowColor"] = false,
			["authorOptions"] = {
			},
			["semver"] = "2.2.1",
			["useGlowColor"] = false,
			["text2"] = "%s%c",
			["id"] = "Feint",
			["useTooltip"] = false,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Homespun",
			["inverse"] = true,
			["alpha"] = 0.2,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [5]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Rogue_CastBar"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = -33,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.80000001192093, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["DEATHKNIGHT"] = true,
						["WARRIOR"] = true,
						["ROGUE"] = true,
						["MAGE"] = true,
						["PRIEST"] = true,
						["WARLOCK"] = true,
						["DEMONHUNTER"] = true,
						["PALADIN"] = true,
						["DRUID"] = true,
						["MONK"] = true,
						["SHAMAN"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				0.89019607843137, -- [2]
				0.67843137254902, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Solid",
			["textFont"] = "ArchivoNarrow-Bold",
			["borderOffset"] = 1,
			["auto"] = true,
			["timerFont"] = "ArchivoNarrow-Bold",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				0.89019607843137, -- [2]
				0.67843137254902, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["sparkTexture"] = "Legionfall_BarSpark",
			["customTextUpdate"] = "update",
			["sparkWidth"] = 4,
			["displayTextLeft"] = "  %n",
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["type"] = "status",
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["castType"] = "cast",
						["names"] = {
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["event"] = "Cast",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["sparkRotation"] = 0,
			["internalVersion"] = 16,
			["backgroundColor"] = {
				0.15294117647059, -- [1]
				0.047058823529412, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["textSize"] = 12,
			["stickyDuration"] = false,
			["config"] = {
			},
			["sparkRotationMode"] = "MANUAL",
			["version"] = 10,
			["zoom"] = 0.3,
			["timer"] = true,
			["timerFlags"] = "OUTLINE",
			["width"] = 227,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["height"] = 16,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkHidden"] = "BOTH",
			["timerSize"] = 12,
			["semver"] = "2.2.1",
			["border"] = true,
			["anchorFrameFrame"] = "SUFUnitplayer",
			["borderInFront"] = false,
			["borderSize"] = 2,
			["rotateText"] = "NONE",
			["icon_side"] = "LEFT",
			["totalPrecision"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["sparkHeight"] = 26,
			["uid"] = "QBTxx9YAXSS",
			["authorOptions"] = {
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p - %t",
			["borderEdge"] = "Blizzard Dialog",
			["id"] = "Rogue_CastBar",
			["sparkOffsetX"] = 0,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["sparkColor"] = {
				0.99607843137255, -- [1]
				1, -- [2]
				0.99607843137255, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
			},
			["spark"] = true,
			["parent"] = "Rogue_AfenarUI",
		},
		["Crit"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = "Crit",
			["yOffset"] = -33,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text1Enabled"] = false,
			["keepAspectRatio"] = true,
			["wordWrap"] = "WordWrap",
			["desaturate"] = true,
			["glowColor"] = {
				1, -- [1]
				0.64705882352941, -- [2]
				0.31764705882353, -- [3]
				1, -- [4]
			},
			["font"] = "Expressway",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[17] = true,
						[16] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 193316,
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "Pixel",
			["glowThickness"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["blendMode"] = "BLEND",
			["text2FontSize"] = 14,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = true,
			["glowYOffset"] = 1,
			["uid"] = "bs2iTYnK9u6",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["glowLength"] = 20,
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["auranames"] = {
							"193357", -- [1]
						},
						["ownOnly"] = true,
						["use_unit"] = true,
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Беспощадная точность", -- [1]
						},
						["duration"] = "1",
						["debuffType"] = "HELPFUL",
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["matchesShowOn"] = "showAlways",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 79140,
						["realSpellName"] = "Вендетта",
						["use_spellName"] = true,
						["spellIds"] = {
							193357, -- [1]
						},
						["useName"] = true,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["useGroup_count"] = false,
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 79140,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"193358", -- [1]
							"199600", -- [2]
							"199603", -- [3]
							"193356", -- [4]
							"193359", -- [5]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Spell Known",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["unit"] = "player",
						["use_exact_spellName"] = true,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 5171,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["useglowColor"] = false,
			["parent"] = "Rogue_AfenarUI",
			["alpha"] = 0.2,
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["xOffset"] = -19.5,
			["version"] = 10,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["height"] = 16,
			["rotate"] = true,
			["glowLines"] = 30,
			["text2Font"] = "ArchivoNarrow-Bold",
			["glowFrequency"] = 0,
			["fontSize"] = 16,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				0.90980392156863, -- [2]
				0.70980392156863, -- [3]
				0, -- [4]
			},
			["text1Font"] = "Expressway",
			["text1Containment"] = "INSIDE",
			["mirror"] = false,
			["text2Color"] = {
				1, -- [1]
				0.90980392156863, -- [2]
				0.70980392156863, -- [3]
				1, -- [4]
			},
			["width"] = 38,
			["text2"] = " CRIT",
			["config"] = {
			},
			["text1Point"] = "CENTER",
			["progressPrecision"] = 0,
			["semver"] = "2.2.1",
			["text1"] = "%p",
			["justify"] = "LEFT",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["glow"] = false,
			["useGlowColor"] = false,
			["zoom"] = 0.5,
			["id"] = "Crit",
			["displayIcon"] = "Interface\\Icons\\ability_rogue_rollthebones03",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["automaticWidth"] = "Auto",
			["inverse"] = false,
			["rotation"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Mark_of_Death_Sub"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 18,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/XLGi_I7MT/10",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 9,
					["multi"] = {
						[4] = true,
						[17] = true,
						[9] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["config"] = {
			},
			["displayIcon"] = "Interface\\Icons\\Achievement_BG_killingblow_berserker",
			["glowLength"] = 10,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10.8",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["remaining"] = "1.5",
						["names"] = {
							"Предчувствие", -- [1]
							"Предчувствие", -- [2]
						},
						["unit"] = "player",
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["use_remaining"] = false,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["ownOnly"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 137619,
						["realSpellName"] = "死亡标记",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = ">=",
						["remaining_operator"] = ">=",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 137619,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["talent"] = {
							["single"] = 19,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_unit"] = true,
						["use_talent"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["scaley"] = 1,
					["use_color"] = false,
					["colorType"] = "custom",
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["colorR"] = 1,
					["colorFunc"] = "",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 10,
			["height"] = 43,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Rogue_AfenarUI",
			["xOffset"] = -92,
			["text1Containment"] = "INSIDE",
			["uid"] = "nUGUuLPN2fH",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:Mark_of_Death_D",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["glow_frame"] = "WeakAuras:Mark_of_Death_D",
					["do_sound"] = false,
				},
			},
			["text1Color"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 43,
			["alpha"] = 0.3,
			["semver"] = "2.2.1",
			["text2"] = "%p",
			["id"] = "Mark_of_Death_Sub",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["useglowColor"] = false,
			["text1Enabled"] = false,
			["inverse"] = true,
			["glow"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 92,
							["property"] = "xOffset",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "1",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
	},
	["registered"] = {
	},
	["login_squelch_time"] = 10,
	["frame"] = {
		["xOffset"] = -993.9969482421875,
		["yOffset"] = -11.9998779296875,
		["height"] = 670.000244140625,
		["width"] = 884.0003662109375,
	},
	["editor_theme"] = "Monokai",
}
