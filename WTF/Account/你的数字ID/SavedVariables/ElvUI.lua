
ElvDB = {
	["profileKeys"] = {
		["Midnightsun - 安苏"] = "Midnightsun - 安苏",
		["提取职业色 - 血色十字军"] = "提取职业色 - 血色十字军",
		["Eternalsun - 血色十字军"] = "Eternalsun - 血色十字军",
		["Eternalyg - 血色十字军"] = "Eternalyg - 血色十字军",
		["烟亦舞 - 血色十字军"] = "烟亦舞UI",
		["Midnightsun - 白银之手"] = "Midnightsun - 白银之手",
		["無剣道 - 血色十字军"] = "無剣道 - 血色十字军",
		["Minuitsun - 血色十字军"] = "Minuitsun - 血色十字军",
		["Ceshiy - 血色十字军"] = "Ceshiy - 血色十字军",
	},
	["Version"] = "|cfff960d91.2|r",
	["gold"] = {
		["安苏"] = {
			["Midnightsun"] = 3270592,
		},
		["白银之手"] = {
			["Midnightsun"] = 117015631,
		},
		["血色十字军"] = {
			["Minuitsun"] = 35405154,
			["Ceshiy"] = 0,
			["無剣道"] = 4025186,
			["提取职业色"] = 0,
			["烟亦舞"] = 1389807589,
			["Eternalyg"] = 100340900,
			["Eternalsun"] = 15192664,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["class"] = {
		["安苏"] = {
			["Midnightsun"] = "DRUID",
		},
		["白银之手"] = {
			["Midnightsun"] = "DEMONHUNTER",
		},
		["血色十字军"] = {
			["Minuitsun"] = "MAGE",
			["Ceshiy"] = "ROGUE",
			["無剣道"] = "WARRIOR",
			["提取职业色"] = "MONK",
			["烟亦舞"] = "ROGUE",
			["Eternalyg"] = "DRUID",
			["Eternalsun"] = "DEMONHUNTER",
		},
	},
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["ElvUI_NonTarget"] = {
					["actions"] = {
						["alpha"] = 80,
					},
				},
				["ElvUI_Target"] = {
					["actions"] = {
						["scale"] = 1.06,
					},
				},
			},
		},
		["general"] = {
			["showMissingTalentAlert"] = true,
			["AceGUI"] = {
				["height"] = 729,
				["width"] = 1048,
			},
			["locale"] = "zhCN",
			["UIScale"] = 0.71111,
		},
		["unitframe"] = {
			["aurafilters"] = {
				["Blacklist"] = {
					["spells"] = {
						[289423] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[279737] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[290165] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[195776] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[11426] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[283430] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[264689] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[206150] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[72351] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[206151] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[118714] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[45181] = {
							["enable"] = true,
							["priority"] = 0,
						},
					},
				},
			},
		},
		["dtbarsSetup"] = {
			["name"] = "1",
		},
		["dtbars"] = {
			["DTB2_1"] = {
				["strata"] = "LOW",
				["point"] = "CENTER",
				["anchor"] = "CENTER",
				["slots"] = 5,
				["hide"] = true,
			},
		},
	},
	["profiles"] = {
		["無剣道 - 血色十字军"] = {
			["databars"] = {
				["reputation"] = {
					["height"] = 146,
					["textSize"] = 10,
					["hideInVehicle"] = true,
					["width"] = 8,
				},
				["honor"] = {
					["enable"] = false,
					["hideOutsidePvP"] = true,
					["height"] = 155,
				},
				["experience"] = {
					["orientation"] = "HORIZONTAL",
					["height"] = 5,
					["textSize"] = 10,
					["width"] = 196,
				},
				["azerite"] = {
					["height"] = 8,
					["orientation"] = "HORIZONTAL",
					["mouseover"] = true,
					["width"] = 162,
				},
			},
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["size"] = 36,
				},
				["fontSize"] = 11,
				["interruptAnnounce"] = "EMOTE",
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Expressway",
					["locationFontSize"] = 10,
					["resetZoom"] = {
						["enable"] = true,
						["time"] = 5,
					},
					["icons"] = {
						["difficulty"] = {
							["scale"] = 0.8,
						},
						["ticket"] = {
							["scale"] = 0.75,
							["position"] = "TOP",
						},
						["mail"] = {
							["xOffset"] = 0,
							["position"] = "BOTTOMLEFT",
							["yOffset"] = -5,
						},
						["classHall"] = {
							["scale"] = 0.5,
							["position"] = "TOPRIGHT",
						},
						["lfgEye"] = {
							["xOffset"] = 0,
						},
					},
					["size"] = 160,
				},
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.350796043872833,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 0,
					["g"] = 0.992156862745098,
					["b"] = 0.584313725490196,
				},
				["loginmessage"] = false,
				["threat"] = {
					["enable"] = false,
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Expressway",
				},
				["decimalLenght"] = 0,
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["vehicleSeatIndicatorSize"] = 76,
				["stickyFrames"] = false,
				["altPowerBar"] = {
					["statusBar"] = "Duffed",
					["textFormat"] = "NAMECURMAXPERC",
					["statusBarColorGradient"] = true,
					["enable"] = false,
					["fontSize"] = 11,
					["font"] = "Expressway",
				},
				["font"] = "Expressway",
				["bonusObjectivePosition"] = "AUTO",
				["talkingHeadFrameScale"] = 0.7,
				["backdropcolor"] = {
					["a"] = 1,
					["r"] = 0.145098039215686,
					["g"] = 0.145098039215686,
					["b"] = 0.149019607843137,
				},
				["displayCharacterInfo"] = true,
				["displayInspectInfo"] = true,
				["numberPrefixStyle"] = "CHINESE",
			},
			["bags"] = {
				["countFontSize"] = 11,
				["itemLevelFont"] = "Expressway",
				["split"] = {
					["player"] = true,
				},
				["bagSize"] = 36,
				["itemLevelFontSize"] = 12,
				["alignToChat"] = false,
				["junkIcon"] = true,
				["countFont"] = "Expressway",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 36,
				["bankWidth"] = 426,
				["itemLevelFontOutline"] = "OUTLINE",
				["bagWidth"] = 408,
				["showBindType"] = true,
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
						["fontSize"] = 20,
					},
					["override"] = true,
					["hhmmColor"] = {
						["r"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["b"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["r"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["b"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
				},
				["scrapIcon"] = true,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["shortChannels"] = false,
				["tabFontOutline"] = "OUTLINE",
				["keywordSound"] = "Whisper Alert",
				["tabFont"] = "Expressway",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelTabTransparency"] = true,
				["panelWidthRight"] = 250,
				["panelBackdrop"] = "HIDEBOTH",
				["chatHistory"] = false,
				["customTimeColor"] = {
					["r"] = 0,
					["g"] = 0.75,
					["b"] = 0.98,
				},
				["panelColor"] = {
					["a"] = 0,
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["panelHeightRight"] = 146,
				["font"] = "Expressway",
				["panelColorConverted"] = true,
				["copyChatLines"] = true,
				["keywords"] = "%MYNAME%, ElvUI, MerathilisUI",
				["fadeUndockedTabs"] = false,
				["hideVoiceButtons"] = true,
				["panelWidth"] = 300,
			},
			["movers"] = {
				["LUI_SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-170",
				["MER_RaidBuffReminderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,188,-2",
				["ElvUF_FocusTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-513,277",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,245,90",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,262,-518",
				["MER_ReminderMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,543,314",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,0,808",
				["AutoButtonAnchor2Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-200,225",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,542,269",
				["VehicleSeatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-112,330",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,281",
				["SpecializationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-28,17",
				["LUI_RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,241,236",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,-189,14",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-23",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-422,27",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-55,-201",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,200",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,737,82",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-19,-276",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-241,281",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,2",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,571",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-22",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,68",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,1078",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,2",
				["GMMover"] = "TOP,ElvUIParent,TOP,-271,-2",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,336",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,374",
				["mUIMiddleDTPanelMover"] = "TOP,ElvUIParent,TOP,0,0",
				["AutoButtonAnchorMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-200,183",
				["ClassBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,184,-2",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["MER_MicroBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,241,281",
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,355",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,10,198",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-159",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,241,261",
				["DTB2_数据1_Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,252",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,14",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,247",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-170,-119",
				["ExperienceBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,379,0",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-163",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,542,281",
				["MER_SquareMinimapButtonBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,175",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,41",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,189,14",
				["DTB2_1_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["LuiRaidUtility_Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-494,2",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-241,261",
				["LuiMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-173",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,183,-2",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,265",
				["Notification Mover"] = "TOP,ElvUIParent,TOP,0,-37",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-531,21",
				["ElvAB_6"] = "TOPLEFT,ElvUIParent,TOPLEFT,299,-253",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-269,301",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,626",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-264,-316",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,503,12",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,281",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,361",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-74",
				["mUI_RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,241,236",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-1",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["itemCount"] = "NONE",
				["healthBar"] = {
					["statusPosition"] = "TOP",
					["fontSize"] = 11,
					["font"] = "Expressway",
					["height"] = 6,
				},
				["font"] = "Expressway",
				["alwaysShowRealm"] = true,
				["style"] = "inset",
				["smallTextFontSize"] = 11,
			},
			["mui"] = {
				["misc"] = {
					["cursor"] = true,
					["raidInfo"] = false,
				},
				["general"] = {
					["LoginMsg"] = false,
					["splashScreen"] = false,
					["panels"] = false,
					["shadowOverlay"] = false,
				},
				["media"] = {
					["fonts"] = {
						["objective"] = {
							["size"] = 13,
						},
						["objectiveHeader"] = {
							["outline"] = "NONE",
							["size"] = 12,
						},
					},
				},
				["bags"] = {
					["equipOverlay"] = false,
				},
				["raidBuffs"] = {
					["enable"] = false,
				},
				["chat"] = {
					["isExpanded"] = false,
					["hideChat"] = true,
					["emotes"] = false,
				},
				["cooldownFlash"] = {
					["enable"] = false,
				},
				["reminder"] = {
					["enable"] = false,
				},
				["tooltip"] = {
					["progressInfo"] = {
						["enable"] = false,
					},
				},
				["armory"] = {
					["gradient"] = {
						["color"] = {
							["g"] = 0.956862745098039,
							["b"] = 0.407843137254902,
						},
						["colorStyle"] = "CUSTOM",
					},
					["stats"] = {
						["List"] = {
							["ATTACK_AP"] = true,
							["MOVESPEED"] = true,
							["POWER"] = true,
							["ATTACK_DAMAGE"] = true,
						},
					},
				},
				["actionbars"] = {
					["autoButtons"] = {
						["soltAutoButtons"] = {
							["enable"] = false,
						},
					},
					["specBar"] = {
						["enable"] = false,
					},
					["equipBar"] = {
						["enable"] = false,
					},
				},
				["installed"] = true,
				["locPanel"] = {
					["colorType_Coords"] = "CLASS",
					["colorType"] = "DEFAULT",
					["template"] = "NoBackdrop",
					["enable"] = false,
					["height"] = 20,
					["width"] = 330,
				},
				["datatexts"] = {
					["threatBar"] = {
						["enable"] = false,
					},
					["middle"] = {
						["height"] = 15,
						["width"] = 408,
					},
					["panels"] = {
						["ChatTab_Datatext_Panel"] = {
							["right"] = "Friends",
							["left"] = "System",
							["middle"] = "Durability",
						},
						["mUIMiddleDTPanel"] = {
							["middle"] = "System",
						},
					},
					["rightChatTabDatatextPanel"] = {
						["enable"] = false,
					},
				},
				["nsct"] = {
					["enable"] = false,
				},
				["nameplates"] = {
					["castbarTarget"] = false,
				},
				["microBar"] = {
					["scale"] = 0.8,
					["text"] = {
						["position"] = "TOP",
					},
					["hideInCombat"] = false,
				},
				["raidmarkers"] = {
					["buttonSize"] = 20,
					["enable"] = false,
					["modifier"] = "alt-",
					["visibility"] = "ALWAYS",
					["reverse"] = true,
				},
				["nameHover"] = {
					["enable"] = false,
				},
			},
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 16,
					["wrapAfter"] = 16,
					["countFontsize"] = 16,
					["size"] = 36,
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 12,
					["wrapAfter"] = 16,
					["verticalSpacing"] = 15,
					["countFontsize"] = 12,
					["size"] = 30,
				},
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "默认",
						["fontSize"] = 12,
					},
				},
				["font"] = "Merathilis Gothom Narrow",
			},
			["lui"] = {
				["skins"] = {
					["shadowOverlay"] = {
						["enable"] = false,
					},
				},
				["modules"] = {
					["misc"] = {
						["loot"] = {
							["lootSpecManager"] = {
								["enable"] = false,
							},
						},
						["general"] = {
							["autoRelease"] = false,
							["autoScreenShoot"] = {
								["enable"] = false,
								["enableBtn"] = false,
							},
							["setPoi"] = {
								["enable"] = true,
								["poiTextSize"] = 20,
								["enableBtn"] = true,
							},
							["raidUtilityPlus"] = {
								["ruMouseover"] = true,
							},
						},
					},
					["combat"] = {
						["announceSystem"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["combatNotification"] = {
							["enableBtn"] = false,
						},
						["raidMarkers"] = {
							["mouseover"] = true,
							["backdrop"] = false,
							["autoMarkers"] = {
								["enable"] = false,
							},
						},
					},
					["blizzard"] = {
						["general"] = {
							["minimapWheel"] = false,
							["castbarTime"] = false,
						},
						["blizzardMoveFrames"] = {
							["remember"] = false,
							["points"] = {
								["FriendsFrame"] = {
									"TOPLEFT", -- [1]
									"UIParent", -- [2]
									"TOPLEFT", -- [3]
									16, -- [4]
									-116.000022888184, -- [5]
								},
								["GameMenuFrame"] = {
									"CENTER", -- [1]
									"UIParent", -- [2]
									"CENTER", -- [3]
									0, -- [4]
									0, -- [5]
								},
								["CommunitiesFrame"] = {
									"TOPLEFT", -- [1]
									"UIParent", -- [2]
									"TOPLEFT", -- [3]
									16, -- [4]
									-116.000007629395, -- [5]
								},
							},
						},
					},
					["armory"] = {
						["general"] = {
							["backdrop"] = {
								["selectedBG"] = "Space",
								["alpha"] = 0.6,
							},
							["gradient"] = {
								["colorStyle"] = "VALUE",
							},
						},
					},
					["actionbars"] = {
						["microBar"] = {
							["scale"] = 0.8,
							["text"] = {
								["friends"] = false,
								["guild"] = false,
								["textColor"] = {
									["r"] = 0,
									["g"] = 0.992156862745098,
									["b"] = 0.584313725490196,
								},
							},
						},
						["general"] = {
							["finishingMoveHighlight"] = false,
						},
						["autoButtons"] = {
							["soltAutoButtons"] = {
								["enable"] = false,
							},
							["whiteList"] = {
								[86534] = false,
								[116268] = false,
								[116276] = false,
								[116411] = false,
								[133897] = false,
								[63359] = false,
								[109220] = false,
								[133882] = false,
								[76097] = false,
								[49040] = false,
								[133756] = false,
								[140916] = false,
								[131931] = false,
								[109221] = false,
								[76090] = false,
								[76098] = false,
								[127295] = false,
								[86536] = false,
								[127843] = false,
								[81901] = false,
								[18606] = false,
								[109222] = false,
								[137299] = false,
								[64400] = false,
								[122454] = false,
								[118922] = false,
								[129725] = false,
								[116271] = false,
								[86569] = false,
								[90006] = false,
								[109223] = false,
								[133999] = false,
								[86125] = false,
								[122455] = false,
								[76093] = false,
								[122456] = false,
								[136605] = false,
								[138146] = false,
								[109217] = false,
								[76094] = false,
								[64399] = false,
								[64401] = false,
								[122100] = false,
								[36799] = false,
								[163222] = false,
								[116266] = false,
								[118269] = false,
								[118711] = false,
								[133925] = false,
								[122453] = false,
								[153023] = false,
								[18607] = false,
								[142117] = false,
								[64398] = false,
								[76095] = false,
								[127030] = false,
								[5512] = false,
								[129161] = false,
								[64402] = false,
								[118330] = false,
								[76089] = false,
								[122452] = false,
								[118704] = false,
								[132514] = false,
								[128651] = false,
								[109076] = false,
								[109218] = false,
								[109219] = false,
								[147707] = false,
								[163224] = false,
								[122451] = false,
								[163223] = false,
								[128772] = false,
							},
						},
					},
					["chat"] = {
						["chatBub"] = {
							["enable"] = false,
						},
						["chatBar"] = {
							["barMouseOver"] = true,
							["fontSize"] = 13,
						},
						["chatShortChannel"] = {
							["hideChannelNum"] = true,
						},
					},
					["quest"] = {
						["questAutomation"] = {
							["autoChoices"] = true,
						},
						["questAnnouncment"] = {
							["enableBtn"] = false,
						},
					},
					["maps"] = {
						["minimapIcons"] = {
							["buttons"] = {
								["barMouseOver"] = true,
								["buttonsPerRow"] = 6,
								["buttonSpacing"] = 1,
								["iconSize"] = 26,
							},
							["square"] = {
								["enable"] = false,
							},
						},
						["squareMinimap"] = {
							["enableBtn"] = false,
						},
						["enhancedWorldMap"] = {
							["useReveal"] = true,
						},
					},
					["nameplates"] = {
						["castbarTarget"] = false,
					},
					["tooltip"] = {
						["flashingCursor"] = {
							["cursorSize"] = 512,
						},
						["raidProg"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["nameHover"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["atlasLootReverse"] = false,
						["daisyCosp"] = false,
					},
					["cvar"] = {
						["interface"] = {
							["cameraDistanceMaxZoomFactor"] = 2.6,
							["weatherDensity"] = 0,
							["xpBarText"] = false,
						},
						["general"] = {
							["breakUpLargeNumbers"] = false,
							["alwaysCompareItems"] = true,
						},
						["combatText"] = {
							["targetCombatText"] = {
								["floatingCombatTextCombatDamageDirectionalScale"] = 0,
							},
							["WorldTextScale"] = 1.6,
							["worldTextScale"] = 1.6,
							["playerCombatText"] = {
								["floatingCombatTextCombatHealingAbsorbSelf"] = false,
								["floatingCombatTextReactives"] = false,
								["floatingCombatTextLowManaHealth"] = false,
								["floatingCombatTextCombatState"] = true,
							},
						},
						["nameplates"] = {
							["nameplateMinScale"] = 1,
							["nameplateMotionSpeed"] = 0.05,
							["nameplateOccludedAlphaMult"] = 1,
							["ShowClassColorInFriendlyNameplate"] = false,
							["nameplateMaxDistance"] = 100,
							["nameplateOtherTopInset"] = 0.085,
							["nameplateLargeTopInset"] = 0.085,
						},
						["chat"] = {
							["profanityFilter"] = false,
							["removeChatDelay"] = true,
						},
						["combat"] = {
							["SpellQueueWindow"] = 250,
						},
						["unitframes"] = {
							["noBuffDebuffFilterOnTarget"] = true,
						},
					},
					["unitframes"] = {
						["icons"] = {
							["role"] = "ElvUI",
						},
						["focusframe"] = {
							["rangeText"] = {
								["enable"] = false,
								["enableBtn"] = false,
							},
						},
						["targetframe"] = {
							["rangeText"] = {
								["rangePoi"] = "TOPLEFT",
								["rangePoiY"] = 11,
								["rangeFontSize"] = 9,
							},
						},
						["playerframe"] = {
							["swingBar"] = {
								["enable"] = false,
							},
						},
					},
				},
				["general"] = {
					["loginMsg"] = false,
					["splashScreen"] = false,
					["gamemenu"] = false,
				},
				["media"] = {
					["miscTexts"] = {
						["questTracker"] = {
							["enable"] = false,
							["fontSize"] = 13,
							["fontcolor"] = {
								["g"] = 0.956862745098039,
								["b"] = 0.407843137254902,
							},
							["enableBtn"] = false,
						},
						["mailText"] = {
							["enableBtn"] = false,
						},
						["questGossip"] = {
							["enableBtn"] = false,
						},
						["editboxText"] = {
							["enableBtn"] = false,
						},
						["questTrackerTitle"] = {
							["fontcolor"] = {
								["b"] = 0.584313725490196,
								["g"] = 0.992156862745098,
								["r"] = 0,
							},
							["fontSize"] = 13,
						},
						["questHeader"] = {
							["fontcolor"] = {
								["g"] = 0.819607843137255,
							},
							["enableBtn"] = false,
						},
						["questFontSuperHuge"] = {
							["enableBtn"] = false,
						},
					},
					["zoneTexts"] = {
						["enableBtn"] = false,
					},
				},
			},
			["unitframe"] = {
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "001",
				["colors"] = {
					["power"] = {
						["RAGE"] = {
							["r"] = 0.780392156862745,
							["g"] = 0.250980392156863,
							["b"] = 0.254901960784314,
						},
						["ENERGY"] = {
							["r"] = 0.650980392156863,
							["g"] = 0.631372549019608,
							["b"] = 0.349019607843137,
						},
					},
					["castColor"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["transparentCastbar"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["castNoInterrupt"] = {
						["r"] = 0.780392156862745,
						["g"] = 0.250980392156863,
						["b"] = 0.250980392156863,
					},
					["health_backdrop"] = {
						["g"] = 0.0117647058823529,
						["b"] = 0.0117647058823529,
					},
					["health"] = {
						["r"] = 0.309803921568627,
						["g"] = 0.309803921568627,
						["b"] = 0.309803921568627,
					},
					["transparentAurabars"] = true,
					["frameGlow"] = {
						["targetGlow"] = {
							["enable"] = false,
						},
						["mainGlow"] = {
							["class"] = true,
						},
						["mouseoverGlow"] = {
							["color"] = {
								["a"] = 0.5,
								["r"] = 0,
								["g"] = 0,
								["b"] = 0,
							},
							["class"] = true,
						},
					},
					["health_backdrop_dead"] = {
						["g"] = 0.0117647058823529,
						["b"] = 0.0117647058823529,
					},
				},
				["smartRaidFilter"] = false,
				["smoothbars"] = true,
				["font"] = "Expressway",
				["cooldown"] = {
					["fonts"] = {
						["fontSize"] = 16,
						["font"] = "默认",
					},
					["hhmmColor"] = {
						["r"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["b"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["r"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["b"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
				},
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["power"] = {
							["enable"] = false,
							["height"] = 4,
							["position"] = "CENTER",
						},
						["height"] = 30,
						["raidicon"] = {
							["yOffset"] = 15,
							["position"] = "TOP",
						},
						["health"] = {
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
						},
						["width"] = 75,
					},
					["pet"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 0,
							["fontSize"] = 10,
							["countFont"] = "Expressway",
							["anchorPoint"] = "TOPLEFT",
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["latency"] = true,
							["height"] = 10,
							["width"] = 75,
						},
						["width"] = 75,
						["infoPanel"] = {
							["height"] = 14,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 0,
							["bgUseBarTexture"] = true,
						},
						["height"] = 30,
						["name"] = {
							["attachTextTo"] = "Health",
							["text_format"] = "[name:short]",
						},
						["power"] = {
							["attachTextTo"] = "Health",
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["enable"] = false,
							["height"] = 4,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["text_format"] = "[powercolor][power:smart]",
							["width"] = "inset",
						},
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 30,
							["fontSize"] = 12,
							["countFont"] = "Expressway",
							["perrow"] = 7,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "BUFFS",
						},
						["middleClickFocus"] = false,
						["threatStyle"] = "ICONTOPLEFT",
						["power"] = {
							["powerPrediction"] = true,
							["strataAndLevel"] = {
								["frameLevel"] = 27,
							},
							["enable"] = false,
							["xOffset"] = 0,
							["text_format"] = "",
							["height"] = 3,
						},
						["customTexts"] = {
							["Percent"] = {
								["attachTextTo"] = "Health",
								["enable"] = false,
								["text_format"] = "[perhp<]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
							["Life"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:smart-left]",
								["yOffset"] = 0,
								["font"] = "默认",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["MERPower"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[power:smart]",
								["yOffset"] = -10,
								["font"] = "YYW",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 3,
								["size"] = 9,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:abbrev]",
								["yOffset"] = 22,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 3,
								["size"] = 12,
							},
						},
						["cft"] = {
							["text"] = {
								["enable"] = false,
							},
						},
						["pvpIcon"] = {
							["anchorPoint"] = "TOPLEFT",
							["xOffset"] = -7,
							["scale"] = 0.5,
							["yOffset"] = 7,
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 24,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -32,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["bgUseBarTexture"] = true,
						},
						["height"] = 30,
						["orientation"] = "LEFT",
						["buffs"] = {
							["countFontSize"] = 10,
							["sizeOverride"] = 24,
							["fontSize"] = 10,
							["attachTo"] = "Health",
							["countFont"] = "Expressway",
							["priority"] = "Personal,Boss,Whitelist,Blacklist,PlayerBuffs,nonPersonal",
							["numrows"] = 2,
							["yOffset"] = 15,
						},
						["castbar"] = {
							["latency"] = true,
							["width"] = 200,
							["insideInfoPanel"] = false,
						},
						["raidicon"] = {
							["yOffset"] = 15,
							["position"] = "TOP",
						},
					},
					["player"] = {
						["debuffs"] = {
							["countFontSize"] = 10,
							["sizeOverride"] = 30,
							["perrow"] = 3,
							["fontSize"] = 12,
							["countFont"] = "Expressway",
							["yOffset"] = 15,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["CombatIcon"] = {
							["anchorPoint"] = "LEFT",
							["customTexture"] = "",
							["xOffset"] = 9,
							["size"] = 12,
							["texture"] = "COMBAT",
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["RestIcon"] = {
							["anchorPoint"] = "LEFT",
							["xOffset"] = 11,
							["yOffset"] = 0,
							["texture"] = "RESTING1",
							["size"] = 18,
						},
						["threatStyle"] = "ICONTOPRIGHT",
						["pvpIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
							["xOffset"] = 7,
							["scale"] = 0.5,
							["yOffset"] = 7,
						},
						["customTexts"] = {
							["Life"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[health:smart-right]",
								["yOffset"] = 0,
								["font"] = "默认",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["MERPower"] = {
								["attachTextTo"] = "Power",
								["enable"] = false,
								["text_format"] = "[power:smart]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 16,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 22,
								["font"] = "默认",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -1,
								["size"] = 12,
							},
							["Group"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[group]",
								["yOffset"] = -24,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Percent"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[perhp<]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
							["Resting"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[resting]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
						},
						["cft"] = {
							["text"] = {
								["enable"] = false,
							},
						},
						["castbar"] = {
							["width"] = 200,
							["insideInfoPanel"] = false,
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 24,
							["transparent"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["powerPrediction"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["position"] = "CENTER",
							["height"] = 3,
							["hideonnpc"] = true,
							["detachedWidth"] = 278,
							["enable"] = false,
						},
						["health"] = {
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
							["text_format"] = "",
							["xOffset"] = 0,
						},
						["height"] = 30,
						["orientation"] = "RIGHT",
						["buffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 24,
							["fontSize"] = 12,
							["attachTo"] = "FRAME",
							["anchorPoint"] = "TOPRIGHT",
							["priority"] = "Blacklist,MER_RaidCDs",
							["countFont"] = "Expressway",
							["perrow"] = 4,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["height"] = 15,
							["detachedWidth"] = 278,
							["fill"] = "filled",
						},
						["raidicon"] = {
							["yOffset"] = 15,
							["position"] = "TOP",
						},
					},
					["raid40"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 15,
							["useBlacklist"] = false,
							["enable"] = true,
							["yOffset"] = -8,
							["anchorPoint"] = "TOPRIGHT",
							["clickThrough"] = true,
							["useFilter"] = "Whitlist (Strict)",
							["maxDuration"] = 0,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["perrow"] = 5,
							["countFont"] = "Expressway",
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "ROLE",
						["classHover"] = true,
						["buffIndicator"] = {
							["size"] = 10,
							["fontSize"] = 11,
						},
						["roleIcon"] = {
							["heal"] = true,
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["size"] = 10,
							["enable"] = true,
							["yOffset"] = -1,
						},
						["raidWideSorting"] = false,
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["height"] = 4,
							["attachTextTo"] = "Health",
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["health"] = {
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
							["text_format"] = "",
						},
						["width"] = 83,
						["infoPanel"] = {
							["height"] = 13,
							["transparent"] = true,
						},
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 20,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["perrow"] = 1,
							["anchorPoint"] = "CENTER",
							["countFontSize"] = 9,
							["clickThrough"] = true,
							["useFilter"] = "MER_RaidCDs",
							["priority"] = "MER_RaidCDs",
							["noDuration"] = false,
							["countFont"] = "Expressway",
						},
						["name"] = {
							["text_format"] = "",
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["height"] = 35,
						["verticalSpacing"] = 2,
						["visibility"] = "[@raid21,noexists] hide;show",
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["size"] = 15,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["enable"] = false,
							["height"] = 4,
						},
						["height"] = 30,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 0,
							["bgUseBarTexture"] = true,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["latency"] = true,
							["width"] = 75,
							["insideInfoPanel"] = false,
						},
						["width"] = 75,
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["horizontalSpacing"] = 2,
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 20,
							["maxDuration"] = 0,
							["clickThrough"] = true,
							["xOffset"] = -42,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 2,
						},
						["rdebuffs"] = {
							["size"] = 22,
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 1,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["heal"] = true,
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["size"] = 10,
							["yOffset"] = 0,
						},
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 3,
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "NONE",
								["xOffset"] = 0,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["buffIndicator"] = {
							["size"] = 10,
							["fontSize"] = 11,
						},
						["groupsPerRowCol"] = 4,
						["infoPanel"] = {
							["height"] = 13,
							["transparent"] = true,
						},
						["name"] = {
							["text_format"] = "",
						},
						["health"] = {
							["text_format"] = "",
							["bgUseBarTexture"] = true,
						},
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 16,
							["useBlacklist"] = false,
							["useWhitelist"] = true,
							["noDuration"] = false,
							["playerOnly"] = false,
							["yOffset"] = -20,
							["anchorPoint"] = "TOPLEFT",
							["xOffset"] = 3,
							["countFontSize"] = 9,
							["clickThrough"] = true,
							["useFilter"] = "MER_RaidCDs",
							["priority"] = "MER_RaidCDs",
							["perrow"] = 1,
							["countFont"] = "Expressway",
						},
						["height"] = 25,
						["verticalSpacing"] = 2,
						["visibility"] = "[@raid6,noexists] hide;show",
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["size"] = 15,
							["yOffset"] = 0,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["anchorPoint"] = "LEFT",
							["sizeOverride"] = 36,
							["maxDuration"] = 0,
							["clickThrough"] = true,
							["xOffset"] = -1,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 3,
						},
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["colorOverride"] = "FORCE_ON",
						["groupBy"] = "ROLE",
						["threatStyle"] = "BORDERS",
						["roleIcon"] = {
							["xOffset"] = 2,
							["size"] = 11,
							["position"] = "LEFT",
						},
						["targetsGroup"] = {
							["anchorPoint"] = "BOTTOM",
							["name"] = {
								["text_format"] = "[name:short]",
							},
							["height"] = 16,
							["xOffset"] = 0,
							["width"] = 79,
						},
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["height"] = 3,
							["position"] = "BOTTOMRIGHT",
							["text_format"] = "",
							["yOffset"] = 2,
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["buffIndicator"] = {
							["size"] = 10,
							["fontSize"] = 11,
						},
						["width"] = 125,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 36,
							["useBlacklist"] = false,
							["useWhitelist"] = true,
							["enable"] = true,
							["playerOnly"] = false,
							["perrow"] = 3,
							["anchorPoint"] = "RIGHT",
							["clickThrough"] = true,
							["xOffset"] = 1,
							["useFilter"] = "MER_RaidCDs",
							["noDuration"] = false,
							["countFont"] = "默认",
						},
						["orientation"] = "MIDDLE",
						["name"] = {
							["attachTextTo"] = "Frame",
							["text_format"] = "",
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "CENTER",
							["xOffset"] = 0,
							["bgUseBarTexture"] = true,
							["text_format"] = "",
							["yOffset"] = 2,
						},
						["height"] = 38,
						["verticalSpacing"] = 1,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 16,
							["width"] = 60,
							["xOffset"] = 0,
							["yOffset"] = -1,
						},
						["raidicon"] = {
							["attachTo"] = "RIGHT",
							["size"] = 16,
							["xOffset"] = -2,
							["yOffset"] = 0,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 30,
							["perrow"] = 6,
							["xOffset"] = -2,
							["countFont"] = "Expressway",
							["numrows"] = 1,
							["yOffset"] = 0,
						},
						["threatStyle"] = "HEALTHBORDER",
						["power"] = {
							["attachTextTo"] = "Power",
							["position"] = "CENTER",
							["xOffset"] = 0,
							["text_format"] = "[power:smart]",
							["height"] = 9,
						},
						["customTexts"] = {
							["Life"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Percent"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<]",
								["yOffset"] = -11,
								["font"] = "伤害数字",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 18,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 18,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
						},
						["width"] = 156,
						["infoPanel"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "RIGHT",
							["bgUseBarTexture"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["yOffset"] = 13,
						},
						["spacing"] = 30,
						["height"] = 35,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 32,
							["xOffset"] = 2,
							["countFont"] = "Expressway",
							["yOffset"] = 0,
						},
						["castbar"] = {
							["width"] = 156,
							["timeToHold"] = 0.5,
							["insideInfoPanel"] = false,
						},
						["name"] = {
							["attachTextTo"] = "Frame",
							["position"] = "RIGHT",
							["xOffset"] = 6,
							["text_format"] = "",
							["yOffset"] = 16,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 10,
				["goldFormat"] = "CONDENSED",
				["panelTransparency"] = true,
				["actionbar5"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "System",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["DTB2_1"] = {
						["middle"] = "System",
						["farleft"] = "Guild",
						["right"] = "ElvUI Config",
						["left"] = "Durability",
						["farright"] = "Friends",
					},
					["BottomLeftMiniPanel"] = "System",
					["DTB2_数据1"] = {
						["middle"] = "Guild",
						["left"] = "Friends",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Durability",
						["left"] = "Friends",
						["middle"] = "",
					},
				},
				["battleground"] = false,
				["rightChatPanel"] = false,
				["font"] = "默认",
				["wordWrap"] = true,
				["fontOutline"] = "OUTLINE",
				["leftChatPanel"] = false,
				["actionbar3"] = false,
				["goldCoins"] = true,
				["panelBackdrop"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 1,
					["buttonsize"] = 26,
				},
				["bar6"] = {
					["buttons"] = 8,
					["buttonspacing"] = 3,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 3,
					["visibility"] = "[vehicleui][overridebar][petbattle][possessbar] hide; show",
				},
				["extraActionButton"] = {
					["scale"] = 0.75,
				},
				["bar2"] = {
					["buttonspacing"] = 3,
					["backdropSpacing"] = 3,
					["visibility"] = "[vehicleui][overridebar][petbattle][possessbar] hide; show",
					["heightMult"] = 2,
				},
				["hotkeytext"] = false,
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttons"] = 4,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 26,
				},
				["bar1"] = {
					["buttonspacing"] = 1,
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["buttonsize"] = 26,
				},
				["cooldown"] = {
					["fonts"] = {
						["fontSize"] = 20,
						["font"] = "Expressway",
					},
					["override"] = true,
					["hhmmColor"] = {
						["r"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["b"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["r"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["b"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
				},
				["font"] = "Expressway",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "OUTLINE",
				["showGrid"] = false,
				["stanceBar"] = {
					["enabled"] = false,
					["point"] = "BOTTOMLEFT",
					["buttonspacing"] = 3,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdrop"] = false,
					["point"] = "BOTTOMLEFT",
					["buttons"] = 9,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 9,
					["backdropSpacing"] = 0,
					["buttonsize"] = 22,
				},
				["bar4"] = {
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["buttons"] = 4,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 2,
					["backdrop"] = false,
					["buttonsize"] = 26,
				},
			},
			["dtbars"] = {
				["DTB2_数据1"] = {
					["enable"] = true,
					["growth"] = "VERTICAL",
					["transparent"] = true,
					["height"] = 49,
					["pethide"] = true,
					["border"] = true,
					["width"] = 50,
				},
				["DTB2_1"] = {
					["enable"] = true,
					["growth"] = "HORIZONTAL",
					["transparent"] = true,
					["height"] = 12,
					["pethide"] = true,
					["border"] = false,
					["width"] = 460,
				},
			},
			["nameplates"] = {
				["fontSize"] = 12,
				["threat"] = {
					["badScale"] = 1.1,
					["useThreatColor"] = false,
				},
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
					},
					["hhmmColor"] = {
						["r"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["b"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["r"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["b"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
				},
				["stackFont"] = "Expressway",
				["nonTargetTransparency"] = 0.6,
				["smoothbars"] = true,
				["plateSize"] = {
					["enemyWidth"] = 160,
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["yOffset"] = 10,
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["width"] = 160,
							["height"] = 10,
							["yOffset"] = -16,
						},
						["questIcon"] = {
							["xOffset"] = 1,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["size"] = 16,
							["position"] = "RIGHT",
						},
						["eliteIcon"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["size"] = 12,
							["enable"] = true,
							["yOffset"] = -21,
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[health:smart-right]",
								["font"] = "默认",
							},
							["width"] = 168,
						},
						["level"] = {
							["yOffset"] = -6,
						},
						["name"] = {
							["yOffset"] = -6,
							["fontSize"] = 13,
						},
						["buffs"] = {
							["size"] = 26,
							["yOffset"] = 39,
						},
					},
					["TARGET"] = {
						["classpower"] = {
							["width"] = 144,
							["yOffset"] = 23,
						},
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
							["yOffset"] = 10,
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["width"] = 160,
							["height"] = 10,
							["yOffset"] = -16,
						},
						["questIcon"] = {
							["xOffset"] = 1,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["size"] = 16,
							["position"] = "RIGHT",
						},
						["eliteIcon"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["size"] = 12,
							["enable"] = true,
							["yOffset"] = -21,
						},
						["name"] = {
							["yOffset"] = -6,
							["fontSize"] = 13,
						},
						["level"] = {
							["yOffset"] = -6,
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[health:smart-right]",
								["font"] = "默认",
							},
							["width"] = 168,
						},
						["buffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["size"] = 26,
							["yOffset"] = 39,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
							["yOffset"] = 10,
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["power"] = {
							["displayAltPower"] = true,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["size"] = 16,
							["position"] = "RIGHT",
						},
						["title"] = {
							["format"] = "[npctitle]",
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[health:smart-right]",
								["font"] = "默认",
							},
						},
						["name"] = {
							["fontSize"] = 13,
							["format"] = "[name]",
							["yOffset"] = -6,
						},
						["buffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["size"] = 26,
							["yOffset"] = 39,
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
							["yOffset"] = -6,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["width"] = 160,
							["height"] = 10,
							["yOffset"] = -16,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
							["yOffset"] = 10,
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["power"] = {
							["displayAltPower"] = true,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["size"] = 16,
							["position"] = "RIGHT",
						},
						["title"] = {
							["format"] = "[npctitle]",
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[health:smart-right]",
								["font"] = "默认",
							},
							["width"] = 168,
						},
						["name"] = {
							["fontSize"] = 13,
							["format"] = "[name]",
							["yOffset"] = -6,
						},
						["buffs"] = {
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["size"] = 26,
							["yOffset"] = 39,
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
							["yOffset"] = -6,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["width"] = 160,
							["height"] = 10,
							["yOffset"] = -16,
						},
					},
					["PLAYER"] = {
						["debuffs"] = {
							["numAuras"] = 8,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["size"] = 24,
						},
						["name"] = {
							["format"] = "[name:abbrev]",
							["font"] = "Expressway",
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["fontSize"] = 10,
							["font"] = "Expressway",
						},
						["buffs"] = {
							["size"] = 20,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["yOffset"] = 2,
						},
						["level"] = {
							["font"] = "Expressway",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[perhp<%]",
								["font"] = "Expressway",
							},
						},
						["power"] = {
							["text"] = {
								["font"] = "Expressway",
								["fontSize"] = 10,
							},
						},
					},
				},
				["stackFontSize"] = 9,
				["statusbar"] = "001",
				["colors"] = {
					["selection"] = {
						[0] = {
							["g"] = 0,
							["b"] = 0.305882352941177,
						},
					},
				},
				["font"] = "Expressway",
				["clampToScreen"] = true,
				["lowHealthThreshold"] = 0,
				["visibility"] = {
					["enemy"] = {
						["totems"] = true,
						["pets"] = true,
					},
				},
				["filters"] = {
					["爆炸物"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
				},
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "默认",
					["fontSize"] = 16,
				},
			},
			["v11NamePlateReset"] = true,
		},
		["提取职业色 - 血色十字军"] = {
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["general"] = {
				["valuecolor"] = {
					["a"] = 1,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["dtbars"] = {
				["DTB2_1"] = {
					["enable"] = true,
					["pethide"] = true,
					["growth"] = "HORIZONTAL",
					["width"] = 300,
					["combatHide"] = false,
					["transparent"] = false,
					["height"] = 22,
					["border"] = true,
					["vehicleHide"] = false,
					["mouseover"] = false,
				},
			},
			["v11NamePlateReset"] = true,
			["lui"] = {
				["modules"] = {
					["blizzard"] = {
						["blizzardMoveFrames"] = {
							["points"] = {
								["GameMenuFrame"] = {
									"CENTER", -- [1]
									"UIParent", -- [2]
									"CENTER", -- [3]
									0, -- [4]
									0, -- [5]
								},
								["StaticPopup1"] = {
									"TOP", -- [1]
									"UIParent", -- [2]
									"TOP", -- [3]
									0, -- [4]
									-100.000152587891, -- [5]
								},
							},
						},
					},
					["maps"] = {
						["minimapIcons"] = {
							["buttons"] = {
								["enable"] = false,
							},
						},
					},
					["cvar"] = {
						["general"] = {
							["breakUpLargeNumbers"] = false,
							["alwaysCompareItems"] = true,
						},
						["combatText"] = {
							["playerCombatText"] = {
								["floatingCombatTextCombatHealingAbsorbSelf"] = false,
								["floatingCombatTextLowManaHealth"] = false,
								["floatingCombatTextReactives"] = false,
								["floatingCombatTextCombatState"] = true,
							},
							["WorldTextScale"] = 1.6,
							["targetCombatText"] = {
								["floatingCombatTextCombatDamageDirectionalScale"] = 0,
							},
						},
						["nameplates"] = {
							["nameplateMinScale"] = 1,
							["nameplateMaxDistance"] = 40,
							["nameplateOverlapV"] = 0.5,
							["nameplateOtherTopInset"] = -1,
						},
						["chat"] = {
							["removeChatDelay"] = true,
							["profanityFilter"] = false,
						},
						["combat"] = {
							["SpellQueueWindow"] = 250,
						},
						["interface"] = {
							["weatherDensity"] = 0,
							["cameraDistanceMaxZoomFactor"] = 2.6,
							["ffxGlow"] = false,
							["xpBarText"] = false,
						},
					},
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Eternalsun - 血色十字军"] = {
			["databars"] = {
				["reputation"] = {
					["height"] = 146,
					["hideInVehicle"] = true,
					["textSize"] = 10,
					["width"] = 8,
				},
				["azerite"] = {
					["height"] = 8,
					["orientation"] = "HORIZONTAL",
					["mouseover"] = true,
					["width"] = 162,
				},
				["experience"] = {
					["orientation"] = "HORIZONTAL",
					["height"] = 5,
					["textSize"] = 10,
					["width"] = 196,
				},
				["honor"] = {
					["enable"] = false,
					["hideOutsidePvP"] = true,
					["height"] = 155,
				},
			},
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["size"] = 36,
				},
				["fontSize"] = 11,
				["interruptAnnounce"] = "EMOTE",
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Expressway",
					["locationFontSize"] = 10,
					["resetZoom"] = {
						["enable"] = true,
						["time"] = 5,
					},
					["icons"] = {
						["difficulty"] = {
							["scale"] = 0.8,
						},
						["ticket"] = {
							["scale"] = 0.75,
							["position"] = "TOP",
						},
						["mail"] = {
							["xOffset"] = 0,
							["yOffset"] = -5,
							["position"] = "BOTTOMLEFT",
						},
						["classHall"] = {
							["scale"] = 0.5,
							["position"] = "TOPRIGHT",
						},
						["lfgEye"] = {
							["xOffset"] = 0,
						},
					},
					["size"] = 160,
				},
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.350796043872833,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0.788233578205109,
					["g"] = 0.188234880566597,
					["r"] = 0.639214277267456,
				},
				["loginmessage"] = false,
				["threat"] = {
					["enable"] = false,
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Expressway",
				},
				["decimalLenght"] = 0,
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["numberPrefixStyle"] = "CHINESE",
				["displayInspectInfo"] = true,
				["displayCharacterInfo"] = true,
				["font"] = "Expressway",
				["bonusObjectivePosition"] = "AUTO",
				["backdropcolor"] = {
					["a"] = 1,
					["b"] = 0.149019607843137,
					["g"] = 0.145098039215686,
					["r"] = 0.145098039215686,
				},
				["talkingHeadFrameScale"] = 0.7,
				["altPowerBar"] = {
					["statusBar"] = "Duffed",
					["textFormat"] = "NAMECURMAXPERC",
					["statusBarColorGradient"] = true,
					["enable"] = false,
					["font"] = "Expressway",
					["fontSize"] = 11,
				},
				["stickyFrames"] = false,
				["vehicleSeatIndicatorSize"] = 76,
			},
			["bags"] = {
				["countFontSize"] = 11,
				["itemLevelFont"] = "Expressway",
				["split"] = {
					["player"] = true,
				},
				["bagSize"] = 36,
				["itemLevelFontSize"] = 12,
				["alignToChat"] = false,
				["junkIcon"] = true,
				["countFont"] = "Expressway",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 36,
				["bankWidth"] = 426,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["showBindType"] = true,
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
						["fontSize"] = 20,
					},
					["override"] = true,
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["bagWidth"] = 408,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 16,
					["size"] = 36,
					["countFontsize"] = 16,
					["wrapAfter"] = 16,
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 12,
					["size"] = 30,
					["verticalSpacing"] = 15,
					["countFontsize"] = 12,
					["wrapAfter"] = 16,
				},
				["font"] = "Merathilis Gothom Narrow",
			},
			["movers"] = {
				["LUI_SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-170",
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,355",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-1",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-241,261",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,1078",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,2",
				["GMMover"] = "TOP,ElvUIParent,TOP,-275,-2",
				["ElvUF_FocusTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-513,277",
				["mUI_RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,241,236",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,357",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,281",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,245,90",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,262,-518",
				["MER_ReminderMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,543,314",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,542,281",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,68",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,241,261",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,0,808",
				["MER_MicroBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["AutoButtonAnchor2Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-40,266",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,374",
				["mUIMiddleDTPanelMover"] = "TOP,ElvUIParent,TOP,0,0",
				["AutoButtonAnchorMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-40,224",
				["ClassBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,184,-2",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,542,269",
				["VehicleSeatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-164,309",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-19,-275",
				["ExperienceBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,379,0",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,503,12",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,281",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-22",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,265",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,10,198",
				["SpecializationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-28,17",
				["DTB2_数据1_Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,252",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,14",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,247",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-170,-119",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,183,-2",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,-189,14",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-422,27",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-163",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,41",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,189,14",
				["DTB2_1_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["MER_SquareMinimapButtonBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,175",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-23",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-55,-201",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,200",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,737,82",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,241,281",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-531,21",
				["ElvAB_6"] = "TOPLEFT,ElvUIParent,TOPLEFT,299,-253",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-269,301",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,626",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-264,-316",
				["Notification Mover"] = "TOP,ElvUIParent,TOP,0,-37",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-241,281",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,2",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-23",
				["MER_RaidBuffReminderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,188,-2",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,571",
			},
			["mui"] = {
				["raidmarkers"] = {
					["buttonSize"] = 20,
					["enable"] = false,
					["modifier"] = "alt-",
					["visibility"] = "ALWAYS",
					["reverse"] = true,
				},
				["general"] = {
					["LoginMsg"] = false,
					["splashScreen"] = false,
					["panels"] = false,
					["shadowOverlay"] = false,
				},
				["media"] = {
					["fonts"] = {
						["objective"] = {
							["size"] = 13,
						},
						["objectiveHeader"] = {
							["outline"] = "NONE",
							["size"] = 12,
						},
					},
				},
				["armory"] = {
					["gradient"] = {
						["color"] = {
							["g"] = 0.956862745098039,
							["b"] = 0.407843137254902,
						},
						["colorStyle"] = "CUSTOM",
					},
					["stats"] = {
						["List"] = {
							["ATTACK_AP"] = true,
							["MOVESPEED"] = true,
							["POWER"] = true,
							["ATTACK_DAMAGE"] = true,
						},
					},
				},
				["raidBuffs"] = {
					["enable"] = false,
				},
				["chat"] = {
					["isExpanded"] = false,
					["hideChat"] = true,
					["emotes"] = false,
				},
				["cooldownFlash"] = {
					["enable"] = false,
				},
				["reminder"] = {
					["enable"] = false,
				},
				["tooltip"] = {
					["progressInfo"] = {
						["enable"] = false,
					},
				},
				["nameHover"] = {
					["enable"] = false,
				},
				["actionbars"] = {
					["autoButtons"] = {
						["soltAutoButtons"] = {
							["enable"] = false,
						},
					},
					["specBar"] = {
						["enable"] = false,
					},
					["equipBar"] = {
						["enable"] = false,
					},
				},
				["installed"] = true,
				["locPanel"] = {
					["colorType_Coords"] = "CLASS",
					["colorType"] = "DEFAULT",
					["template"] = "NoBackdrop",
					["enable"] = false,
					["height"] = 20,
					["width"] = 330,
				},
				["datatexts"] = {
					["rightChatTabDatatextPanel"] = {
						["enable"] = false,
					},
					["middle"] = {
						["height"] = 15,
						["width"] = 408,
					},
					["panels"] = {
						["ChatTab_Datatext_Panel"] = {
							["right"] = "Friends",
							["left"] = "System",
							["middle"] = "Durability",
						},
						["mUIMiddleDTPanel"] = {
							["middle"] = "System",
						},
					},
					["threatBar"] = {
						["enable"] = false,
					},
				},
				["nsct"] = {
					["enable"] = false,
				},
				["nameplates"] = {
					["castbarTarget"] = false,
				},
				["microBar"] = {
					["scale"] = 0.8,
					["text"] = {
						["position"] = "TOP",
					},
					["hideInCombat"] = false,
				},
				["misc"] = {
					["cursor"] = true,
					["raidInfo"] = false,
				},
				["bags"] = {
					["equipOverlay"] = false,
				},
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["itemCount"] = "NONE",
				["healthBar"] = {
					["statusPosition"] = "TOP",
					["fontSize"] = 11,
					["height"] = 6,
					["font"] = "Expressway",
				},
				["font"] = "Expressway",
				["alwaysShowRealm"] = true,
				["style"] = "inset",
				["smallTextFontSize"] = 11,
			},
			["v11NamePlateReset"] = true,
			["nameplates"] = {
				["fontSize"] = 12,
				["stackFont"] = "Expressway",
				["nonTargetTransparency"] = 0.6,
				["threat"] = {
					["badScale"] = 1.1,
					["useThreatColor"] = false,
				},
				["smoothbars"] = true,
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["countFont"] = "Expressway",
							["numAuras"] = 8,
							["yOffset"] = 33,
							["font"] = "Expressway",
							["size"] = 30,
						},
						["power"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
							},
						},
						["questIcon"] = {
							["xOffset"] = 36,
							["size"] = 12,
						},
						["eliteIcon"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = -8,
							["yOffset"] = -22,
							["enable"] = true,
							["size"] = 13,
						},
						["health"] = {
							["height"] = 12,
							["text"] = {
								["fontSize"] = 10,
								["position"] = "TOPRIGHT",
								["xOffset"] = 11,
								["format"] = "[perhp<]",
								["font"] = "Expressway",
								["yOffset"] = -20,
							},
							["width"] = 168,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["font"] = "Expressway",
							["yOffset"] = -13,
							["iconOffsetY"] = -1,
							["iconSize"] = 25,
							["iconOffsetX"] = -2,
							["timeToHold"] = 0.8,
							["width"] = 168,
						},
						["level"] = {
							["font"] = "Expressway",
							["xOffset"] = 11,
							["format"] = "[difficultycolor][level]",
							["enable"] = false,
							["yOffset"] = -7,
						},
						["buffs"] = {
							["countFont"] = "Expressway",
							["yOffset"] = 13,
							["size"] = 20,
							["font"] = "Expressway",
							["filters"] = {
								["priority"] = "Blacklist,RaidBuffsElvUI,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
						["name"] = {
							["fontSize"] = 13,
							["position"] = "CENTER",
							["format"] = "[name:abbrev]",
							["font"] = "Expressway",
							["yOffset"] = 15,
						},
					},
					["TARGET"] = {
						["classpower"] = {
							["yOffset"] = 23,
							["width"] = 144,
						},
						["glowStyle"] = "style8",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["size"] = 24,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["numAuras"] = 8,
						},
						["name"] = {
							["fontSize"] = 12,
							["xOffset"] = -10,
							["format"] = "[name:abbrev]",
							["font"] = "Expressway",
							["yOffset"] = -7,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["font"] = "Expressway",
							["iconOffsetY"] = -1,
							["iconSize"] = 25,
							["yOffset"] = -13,
							["iconOffsetX"] = -2,
							["width"] = 168,
						},
						["power"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
							},
						},
						["level"] = {
							["xOffset"] = 11,
							["font"] = "Expressway",
							["yOffset"] = -7,
						},
						["buffs"] = {
							["yOffset"] = 2,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["size"] = 20,
						},
						["health"] = {
							["height"] = 12,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
								["format"] = "[perhp<%]",
							},
							["width"] = 168,
						},
					},
					["PLAYER"] = {
						["debuffs"] = {
							["size"] = 24,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["numAuras"] = 8,
						},
						["name"] = {
							["font"] = "Expressway",
							["format"] = "[name:abbrev]",
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["fontSize"] = 10,
							["font"] = "Expressway",
						},
						["power"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
							},
						},
						["level"] = {
							["font"] = "Expressway",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
								["format"] = "[perhp<%]",
							},
						},
						["buffs"] = {
							["yOffset"] = 2,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["size"] = 20,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["size"] = 24,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["numAuras"] = 8,
						},
						["health"] = {
							["height"] = 12,
							["text"] = {
								["fontSize"] = 10,
								["position"] = "TOPRIGHT",
								["xOffset"] = 11,
								["format"] = "[perhp<]",
								["font"] = "Expressway",
								["yOffset"] = -20,
							},
							["width"] = 168,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["font"] = "Expressway",
							["iconOffsetY"] = -1,
							["iconSize"] = 25,
							["yOffset"] = -13,
							["iconOffsetX"] = -2,
							["width"] = 168,
						},
						["buffs"] = {
							["yOffset"] = 33,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["size"] = 30,
						},
						["level"] = {
							["xOffset"] = 11,
							["font"] = "Expressway",
							["yOffset"] = -7,
						},
						["power"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
							},
						},
						["name"] = {
							["fontSize"] = 12,
							["xOffset"] = -10,
							["format"] = "[name:abbrev]",
							["font"] = "Expressway",
							["yOffset"] = -7,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["size"] = 24,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["numAuras"] = 8,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
								["format"] = "[perhp<%]",
							},
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["fontSize"] = 10,
							["font"] = "Expressway",
						},
						["buffs"] = {
							["yOffset"] = 2,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["size"] = 20,
						},
						["level"] = {
							["font"] = "Expressway",
						},
						["power"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
							},
						},
						["name"] = {
							["font"] = "Expressway",
							["format"] = "[name:abbrev]",
						},
					},
				},
				["lowHealthThreshold"] = 0,
				["statusbar"] = "Melli",
				["colors"] = {
					["selection"] = {
						[0] = {
							["g"] = 0,
							["b"] = 0.305882352941177,
						},
					},
				},
				["stackFontSize"] = 9,
				["clampToScreen"] = true,
				["font"] = "Expressway",
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
					},
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["filters"] = {
					["爆炸物"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
				},
			},
			["unitframe"] = {
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "LivvenUIFlat",
				["colors"] = {
					["power"] = {
						["ENERGY"] = {
							["b"] = 0.349019607843137,
							["g"] = 0.631372549019608,
							["r"] = 0.650980392156863,
						},
						["RAGE"] = {
							["b"] = 0.254901960784314,
							["g"] = 0.250980392156863,
							["r"] = 0.780392156862745,
						},
					},
					["castColor"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["transparentCastbar"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["castNoInterrupt"] = {
						["b"] = 0.250980392156863,
						["g"] = 0.250980392156863,
						["r"] = 0.780392156862745,
					},
					["health_backdrop"] = {
						["g"] = 0.0117647058823529,
						["b"] = 0.0117647058823529,
					},
					["transparentAurabars"] = true,
					["health"] = {
						["b"] = 0.309803921568627,
						["g"] = 0.309803921568627,
						["r"] = 0.309803921568627,
					},
					["frameGlow"] = {
						["targetGlow"] = {
							["enable"] = false,
						},
						["mainGlow"] = {
							["class"] = true,
						},
						["mouseoverGlow"] = {
							["color"] = {
								["a"] = 0.5,
								["b"] = 0,
								["g"] = 0,
								["r"] = 0,
							},
							["class"] = true,
						},
					},
					["health_backdrop_dead"] = {
						["g"] = 0.0117647058823529,
						["b"] = 0.0117647058823529,
					},
				},
				["smartRaidFilter"] = false,
				["font"] = "Expressway",
				["smoothbars"] = true,
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
					},
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 30,
							["yOffset"] = 0,
							["xOffset"] = -2,
							["numrows"] = 1,
							["countFont"] = "Expressway",
							["perrow"] = 6,
						},
						["threatStyle"] = "HEALTHBORDER",
						["power"] = {
							["attachTextTo"] = "Power",
							["position"] = "CENTER",
							["xOffset"] = 0,
							["text_format"] = "[power:smart]",
							["height"] = 9,
						},
						["customTexts"] = {
							["Life"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Percent"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<]",
								["yOffset"] = -11,
								["font"] = "伤害数字",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 18,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 18,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
						},
						["width"] = 156,
						["infoPanel"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "RIGHT",
							["bgUseBarTexture"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["yOffset"] = 13,
						},
						["spacing"] = 30,
						["height"] = 35,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 32,
							["xOffset"] = 2,
							["countFont"] = "Expressway",
							["yOffset"] = 0,
						},
						["name"] = {
							["attachTextTo"] = "Frame",
							["position"] = "RIGHT",
							["xOffset"] = 6,
							["text_format"] = "",
							["yOffset"] = 16,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["timeToHold"] = 0.5,
							["width"] = 156,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["countFontSize"] = 10,
							["sizeOverride"] = 30,
							["xOffset"] = -2,
							["perrow"] = 5,
							["anchorPoint"] = "LEFT",
							["clickThrough"] = true,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["countFont"] = "Expressway",
							["maxDuration"] = 0,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["buffIndicator"] = {
							["fontSize"] = 11,
							["size"] = 10,
						},
						["roleIcon"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["size"] = 11,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "BOTTOM",
							["name"] = {
								["text_format"] = "[name:short]",
							},
							["height"] = 16,
							["xOffset"] = 0,
							["width"] = 79,
						},
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["height"] = 3,
							["yOffset"] = 2,
							["text_format"] = "",
							["position"] = "BOTTOMRIGHT",
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["groupBy"] = "ROLE",
						["width"] = 125,
						["name"] = {
							["attachTextTo"] = "Frame",
							["text_format"] = "",
							["position"] = "BOTTOMLEFT",
						},
						["verticalSpacing"] = 1,
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "CENTER",
							["xOffset"] = 0,
							["bgUseBarTexture"] = true,
							["text_format"] = "",
							["yOffset"] = 2,
						},
						["height"] = 36,
						["orientation"] = "MIDDLE",
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 30,
							["useBlacklist"] = false,
							["useWhitelist"] = true,
							["enable"] = true,
							["playerOnly"] = false,
							["perrow"] = 3,
							["anchorPoint"] = "RIGHT",
							["countFont"] = "Expressway",
							["clickThrough"] = true,
							["noDuration"] = false,
							["useFilter"] = "MER_RaidCDs",
							["countFontSize"] = 9,
							["xOffset"] = 2,
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 16,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["raidicon"] = {
							["attachTo"] = "RIGHT",
							["yOffset"] = 0,
							["xOffset"] = -2,
							["size"] = 16,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["power"] = {
							["enable"] = false,
							["height"] = 4,
							["position"] = "CENTER",
						},
						["height"] = 30,
						["width"] = 75,
						["health"] = {
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
						},
						["raidicon"] = {
							["position"] = "TOP",
							["yOffset"] = 15,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 2,
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 20,
							["enable"] = true,
							["perrow"] = 2,
							["maxDuration"] = 0,
							["clickThrough"] = true,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["countFont"] = "Expressway",
							["xOffset"] = -42,
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["xOffset"] = -10,
							["yOffset"] = 3,
							["size"] = 20,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["heal"] = true,
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["yOffset"] = 0,
							["size"] = 10,
						},
						["buffIndicator"] = {
							["fontSize"] = 11,
							["size"] = 10,
						},
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 3,
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "NONE",
								["xOffset"] = 0,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["name"] = {
							["text_format"] = "",
						},
						["groupsPerRowCol"] = 4,
						["infoPanel"] = {
							["height"] = 13,
							["transparent"] = true,
						},
						["verticalSpacing"] = 2,
						["health"] = {
							["text_format"] = "",
							["bgUseBarTexture"] = true,
						},
						["colorOverride"] = "FORCE_ON",
						["height"] = 25,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 16,
							["useBlacklist"] = false,
							["useWhitelist"] = true,
							["noDuration"] = false,
							["playerOnly"] = false,
							["yOffset"] = -20,
							["anchorPoint"] = "TOPLEFT",
							["countFont"] = "Expressway",
							["perrow"] = 1,
							["clickThrough"] = true,
							["useFilter"] = "MER_RaidCDs",
							["priority"] = "MER_RaidCDs",
							["countFontSize"] = 9,
							["xOffset"] = 3,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["yOffset"] = 0,
							["size"] = 15,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["fontSize"] = 12,
							["yOffset"] = 15,
							["countFont"] = "Expressway",
							["sizeOverride"] = 30,
							["perrow"] = 3,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["height"] = 15,
							["detachedWidth"] = 278,
							["fill"] = "filled",
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["RestIcon"] = {
							["anchorPoint"] = "LEFT",
							["xOffset"] = 11,
							["yOffset"] = 0,
							["size"] = 18,
							["texture"] = "RESTING1",
						},
						["threatStyle"] = "ICONTOPRIGHT",
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 200,
						},
						["customTexts"] = {
							["Life"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[health:smart-right]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
							["MERPower"] = {
								["attachTextTo"] = "Power",
								["enable"] = false,
								["text_format"] = "[power:smart]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 16,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 22,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -1,
								["size"] = 12,
							},
							["Group"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[group]",
								["yOffset"] = -24,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Percent"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[perhp<]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
							["Resting"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[resting]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
						},
						["cft"] = {
							["text"] = {
								["enable"] = false,
							},
						},
						["CombatIcon"] = {
							["anchorPoint"] = "LEFT",
							["customTexture"] = "",
							["xOffset"] = 9,
							["texture"] = "COMBAT",
							["size"] = 12,
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 24,
							["transparent"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["powerPrediction"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["position"] = "CENTER",
							["height"] = 3,
							["hideonnpc"] = true,
							["enable"] = false,
							["detachedWidth"] = 278,
						},
						["health"] = {
							["bgUseBarTexture"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["frequentUpdates"] = true,
						},
						["orientation"] = "RIGHT",
						["height"] = 30,
						["buffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 24,
							["fontSize"] = 12,
							["countFont"] = "Expressway",
							["anchorPoint"] = "TOPRIGHT",
							["priority"] = "Blacklist,MER_RaidCDs",
							["attachTo"] = "FRAME",
							["perrow"] = 4,
						},
						["pvpIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
							["xOffset"] = 7,
							["scale"] = 0.5,
							["yOffset"] = 7,
						},
						["raidicon"] = {
							["position"] = "TOP",
							["yOffset"] = 15,
						},
					},
					["raid40"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 15,
							["useBlacklist"] = false,
							["enable"] = true,
							["yOffset"] = -8,
							["anchorPoint"] = "TOPRIGHT",
							["countFont"] = "Expressway",
							["useFilter"] = "Whitlist (Strict)",
							["perrow"] = 5,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["maxDuration"] = 0,
							["clickThrough"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "ROLE",
						["classHover"] = true,
						["buffIndicator"] = {
							["fontSize"] = 11,
							["size"] = 10,
						},
						["roleIcon"] = {
							["heal"] = true,
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["yOffset"] = -1,
							["enable"] = true,
							["size"] = 10,
						},
						["raidWideSorting"] = false,
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["height"] = 4,
							["attachTextTo"] = "Health",
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["name"] = {
							["text_format"] = "",
						},
						["width"] = 83,
						["infoPanel"] = {
							["height"] = 13,
							["transparent"] = true,
						},
						["verticalSpacing"] = 2,
						["health"] = {
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
							["text_format"] = "",
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["height"] = 35,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 20,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["perrow"] = 1,
							["anchorPoint"] = "CENTER",
							["countFont"] = "Expressway",
							["clickThrough"] = true,
							["noDuration"] = false,
							["priority"] = "MER_RaidCDs",
							["useFilter"] = "MER_RaidCDs",
							["countFontSize"] = 9,
						},
						["visibility"] = "[@raid21,noexists] hide;show",
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["yOffset"] = 0,
							["size"] = 15,
						},
					},
					["focus"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["height"] = 4,
							["enable"] = false,
						},
						["height"] = 30,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 0,
							["bgUseBarTexture"] = true,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["insideInfoPanel"] = false,
							["width"] = 75,
							["latency"] = true,
						},
						["width"] = 75,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 30,
							["fontSize"] = 12,
							["countFont"] = "Expressway",
							["perrow"] = 7,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "BUFFS",
						},
						["middleClickFocus"] = false,
						["threatStyle"] = "ICONTOPLEFT",
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 200,
							["latency"] = true,
						},
						["customTexts"] = {
							["Percent"] = {
								["attachTextTo"] = "Health",
								["enable"] = false,
								["text_format"] = "[perhp<]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
							["Life"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:smart-left]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
							["MERPower"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[power:smart]",
								["yOffset"] = 0,
								["font"] = "YYW",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 3,
								["size"] = 10,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:abbrev]",
								["yOffset"] = 22,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 3,
								["size"] = 12,
							},
						},
						["cft"] = {
							["text"] = {
								["enable"] = false,
							},
						},
						["pvpIcon"] = {
							["anchorPoint"] = "TOPLEFT",
							["xOffset"] = -7,
							["scale"] = 0.5,
							["yOffset"] = 7,
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 24,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["bgUseBarTexture"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -32,
						},
						["orientation"] = "LEFT",
						["height"] = 30,
						["buffs"] = {
							["countFontSize"] = 10,
							["sizeOverride"] = 24,
							["fontSize"] = 10,
							["numrows"] = 2,
							["countFont"] = "Expressway",
							["priority"] = "Personal,Boss,Whitelist,Blacklist,PlayerBuffs,nonPersonal",
							["attachTo"] = "Health",
							["yOffset"] = 15,
						},
						["power"] = {
							["powerPrediction"] = true,
							["enable"] = false,
							["height"] = 3,
							["text_format"] = "",
							["width"] = "spaced",
						},
						["raidicon"] = {
							["position"] = "TOP",
							["yOffset"] = 15,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["text_format"] = "[powercolor][power:smart]",
							["width"] = "inset",
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 0,
							["anchorPoint"] = "TOPLEFT",
							["countFont"] = "Expressway",
							["fontSize"] = 10,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["width"] = 75,
							["height"] = 10,
							["latency"] = true,
						},
						["width"] = 75,
						["infoPanel"] = {
							["height"] = 14,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 0,
							["bgUseBarTexture"] = true,
						},
						["height"] = 30,
						["power"] = {
							["attachTextTo"] = "Health",
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["height"] = 4,
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "Health",
							["text_format"] = "[name:short]",
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 10,
				["goldFormat"] = "CONDENSED",
				["panelTransparency"] = true,
				["actionbar5"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "System",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Durability",
						["left"] = "Friends",
						["middle"] = "",
					},
					["BottomLeftMiniPanel"] = "System",
					["DTB2_数据1"] = {
						["middle"] = "Guild",
						["left"] = "Friends",
					},
					["DTB2_1"] = {
						["left"] = "Durability",
						["farleft"] = "Guild",
						["right"] = "ElvUI Config",
						["middle"] = "System",
						["farright"] = "Friends",
					},
				},
				["panelBackdrop"] = false,
				["rightChatPanel"] = false,
				["font"] = "Expressway",
				["goldCoins"] = true,
				["fontOutline"] = "OUTLINE",
				["leftChatPanel"] = false,
				["actionbar3"] = false,
				["wordWrap"] = true,
				["battleground"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 1,
					["buttonsize"] = 26,
				},
				["bar6"] = {
					["buttons"] = 8,
					["buttonspacing"] = 3,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 3,
					["visibility"] = "[vehicleui][overridebar][petbattle][possessbar] hide; show",
				},
				["extraActionButton"] = {
					["scale"] = 0.75,
				},
				["bar2"] = {
					["buttonspacing"] = 3,
					["heightMult"] = 2,
					["visibility"] = "[vehicleui][overridebar][petbattle][possessbar] hide; show",
					["backdropSpacing"] = 3,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["buttonspacing"] = 1,
					["backdropSpacing"] = 0,
					["buttonsize"] = 26,
				},
				["hotkeytext"] = false,
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttons"] = 4,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 26,
				},
				["barPet"] = {
					["backdrop"] = false,
					["point"] = "BOTTOMLEFT",
					["buttons"] = 9,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 9,
					["backdropSpacing"] = 0,
					["buttonsize"] = 22,
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Expressway",
				["desaturateOnCooldown"] = true,
				["globalFadeAlpha"] = 1,
				["showGrid"] = false,
				["stanceBar"] = {
					["enabled"] = false,
					["point"] = "BOTTOMLEFT",
					["buttonspacing"] = 3,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 24,
				},
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
						["fontSize"] = 20,
					},
					["override"] = true,
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["bar4"] = {
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["buttons"] = 4,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 2,
					["backdrop"] = false,
					["buttonsize"] = 26,
				},
			},
			["dtbars"] = {
				["DTB2_数据1"] = {
					["enable"] = true,
					["growth"] = "VERTICAL",
					["transparent"] = true,
					["height"] = 49,
					["pethide"] = true,
					["border"] = true,
					["width"] = 50,
				},
				["DTB2_1"] = {
					["enable"] = true,
					["growth"] = "HORIZONTAL",
					["transparent"] = true,
					["height"] = 12,
					["pethide"] = true,
					["border"] = false,
					["width"] = 460,
				},
			},
			["lui"] = {
				["skins"] = {
					["shadowOverlay"] = {
						["enable"] = false,
					},
				},
				["modules"] = {
					["misc"] = {
						["general"] = {
							["autoScreenShoot"] = {
								["enable"] = false,
								["enableBtn"] = false,
							},
							["setPoi"] = {
								["enableBtn"] = true,
								["poiTextSize"] = 20,
							},
							["autoRelease"] = false,
						},
					},
					["combat"] = {
						["combatNotification"] = {
							["enableBtn"] = false,
						},
						["announceSystem"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
					},
					["blizzard"] = {
						["general"] = {
							["castbarTime"] = false,
							["minimapWheel"] = false,
						},
						["blizzardMoveFrames"] = {
							["remember"] = false,
							["points"] = {
								["FriendsFrame"] = {
									"TOPLEFT", -- [1]
									"UIParent", -- [2]
									"TOPLEFT", -- [3]
									16, -- [4]
									-116.000022888184, -- [5]
								},
								["GameMenuFrame"] = {
									"CENTER", -- [1]
									"UIParent", -- [2]
									"CENTER", -- [3]
									0, -- [4]
									0, -- [5]
								},
								["CommunitiesFrame"] = {
									"TOPLEFT", -- [1]
									"UIParent", -- [2]
									"TOPLEFT", -- [3]
									16, -- [4]
									-116.000007629395, -- [5]
								},
							},
						},
					},
					["tooltip"] = {
						["nameHover"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["flashingCursor"] = {
							["cursorSize"] = 512,
						},
						["atlasLootReverse"] = false,
						["raidProg"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
					},
					["unitframes"] = {
						["targetframe"] = {
							["rangeText"] = {
								["rangePoi"] = "TOPLEFT",
								["rangePoiY"] = 11,
								["rangeFontSize"] = 9,
							},
						},
						["focusframe"] = {
							["rangeText"] = {
								["enable"] = false,
								["enableBtn"] = false,
							},
						},
						["icons"] = {
							["role"] = "ElvUI",
						},
						["playerframe"] = {
							["swingBar"] = {
								["enable"] = false,
							},
						},
					},
					["chat"] = {
						["chatBub"] = {
							["enable"] = false,
						},
						["chatBar"] = {
							["barMouseOver"] = true,
							["fontSize"] = 13,
						},
						["chatShortChannel"] = {
							["hideChannelNum"] = true,
						},
					},
					["cvar"] = {
						["unitframes"] = {
							["noBuffDebuffFilterOnTarget"] = true,
						},
						["general"] = {
							["breakUpLargeNumbers"] = false,
							["alwaysCompareItems"] = true,
						},
						["combatText"] = {
							["playerCombatText"] = {
								["floatingCombatTextCombatHealingAbsorbSelf"] = false,
								["floatingCombatTextReactives"] = false,
								["floatingCombatTextLowManaHealth"] = false,
								["floatingCombatTextCombatState"] = true,
							},
							["worldTextScale"] = 1.6,
							["WorldTextScale"] = 1.6,
							["targetCombatText"] = {
								["floatingCombatTextCombatDamageDirectionalScale"] = 0,
							},
						},
						["nameplates"] = {
							["nameplateOccludedAlphaMult"] = 1,
							["nameplateMotionSpeed"] = 0.05,
							["nameplateOverlapV"] = 1.5,
							["nameplateLargeTopInset"] = 0.085,
							["ShowClassColorInFriendlyNameplate"] = false,
							["nameplateMaxDistance"] = 100,
							["nameplateOtherTopInset"] = 0.085,
							["nameplateMinScale"] = 1,
						},
						["combat"] = {
							["SpellQueueWindow"] = 250,
						},
						["chat"] = {
							["removeChatDelay"] = true,
							["profanityFilter"] = false,
						},
						["interface"] = {
							["weatherDensity"] = 0,
							["cameraDistanceMaxZoomFactor"] = 2.6,
							["ffxGlow"] = false,
							["xpBarText"] = false,
						},
					},
					["maps"] = {
						["minimapIcons"] = {
							["chooseMinimap"] = "buttons",
							["square"] = {
								["enable"] = false,
							},
							["buttons"] = {
								["backdrop"] = false,
								["iconSize"] = 25,
								["buttonsPerRow"] = 6,
								["buttonSpacing"] = 1,
								["barMouseOver"] = true,
							},
						},
						["squareMinimap"] = {
							["enableBtn"] = false,
						},
						["enhancedWorldMap"] = {
							["useReveal"] = true,
						},
					},
					["nameplates"] = {
						["castbarTarget"] = false,
					},
					["raid"] = {
						["teamStats"] = false,
					},
					["quest"] = {
						["questAutomation"] = {
							["autoChoices"] = true,
						},
						["questAnnouncment"] = {
							["enableBtn"] = false,
						},
					},
					["actionbars"] = {
						["microBar"] = {
							["scale"] = 0.8,
							["text"] = {
								["friends"] = false,
								["guild"] = false,
							},
						},
						["general"] = {
							["finishingMoveHighlight"] = false,
						},
						["autoButtons"] = {
							["soltAutoButtons"] = {
								["enable"] = false,
							},
							["whiteList"] = {
								[86534] = false,
								[116268] = false,
								[116276] = false,
								[116411] = false,
								[133897] = false,
								[63359] = false,
								[109220] = false,
								[133882] = false,
								[76097] = false,
								[49040] = false,
								[133756] = false,
								[140916] = false,
								[131931] = false,
								[109221] = false,
								[76090] = false,
								[76098] = false,
								[127295] = false,
								[86536] = false,
								[127843] = false,
								[81901] = false,
								[18606] = false,
								[109222] = false,
								[137299] = false,
								[64400] = false,
								[122454] = false,
								[118922] = false,
								[129725] = false,
								[116271] = false,
								[86569] = false,
								[90006] = false,
								[109223] = false,
								[133999] = false,
								[86125] = false,
								[122455] = false,
								[76093] = false,
								[122456] = false,
								[136605] = false,
								[138146] = false,
								[109217] = false,
								[76094] = false,
								[128772] = false,
								[163223] = false,
								[122100] = false,
								[36799] = false,
								[163222] = false,
								[163224] = false,
								[118269] = false,
								[118711] = false,
								[133925] = false,
								[122453] = false,
								[109218] = false,
								[153023] = false,
								[142117] = false,
								[64398] = false,
								[76095] = false,
								[127030] = false,
								[5512] = false,
								[129161] = false,
								[128651] = false,
								[118330] = false,
								[76089] = false,
								[122452] = false,
								[118704] = false,
								[132514] = false,
								[64402] = false,
								[109076] = false,
								[18607] = false,
								[109219] = false,
								[147707] = false,
								[116266] = false,
								[122451] = false,
								[64401] = false,
								[64399] = false,
							},
						},
					},
				},
				["general"] = {
					["loginMsg"] = false,
					["splashScreen"] = false,
					["gamemenu"] = false,
				},
				["media"] = {
					["miscTexts"] = {
						["questHeader"] = {
							["enableBtn"] = false,
							["fontcolor"] = {
								["g"] = 0.819607843137255,
							},
						},
						["mailText"] = {
							["enableBtn"] = false,
						},
						["questGossip"] = {
							["enableBtn"] = false,
						},
						["questFontSuperHuge"] = {
							["enableBtn"] = false,
						},
						["questTrackerTitle"] = {
							["fontcolor"] = {
								["g"] = 0.956862745098039,
								["b"] = 0.407843137254902,
							},
							["fontSize"] = 13,
						},
						["questTracker"] = {
							["enable"] = false,
							["fontSize"] = 13,
							["fontcolor"] = {
								["g"] = 0.956862745098039,
								["b"] = 0.407843137254902,
							},
							["enableBtn"] = false,
						},
						["editboxText"] = {
							["enableBtn"] = false,
						},
					},
					["zoneTexts"] = {
						["enableBtn"] = false,
					},
				},
			},
			["cooldown"] = {
				["fonts"] = {
					["font"] = "YYW",
				},
			},
			["chat"] = {
				["shortChannels"] = false,
				["tabFontOutline"] = "OUTLINE",
				["keywordSound"] = "Whisper Alert",
				["tabFont"] = "Expressway",
				["panelColorConverted"] = true,
				["panelTabTransparency"] = true,
				["panelHeight"] = 178,
				["panelWidthRight"] = 250,
				["panelBackdrop"] = "HIDEBOTH",
				["chatHistory"] = false,
				["customTimeColor"] = {
					["b"] = 0.98,
					["g"] = 0.75,
					["r"] = 0,
				},
				["panelColor"] = {
					["a"] = 0,
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["fadeUndockedTabs"] = false,
				["font"] = "Expressway",
				["editBoxPosition"] = "ABOVE_CHAT",
				["copyChatLines"] = true,
				["panelHeightRight"] = 146,
				["keywords"] = "%MYNAME%, ElvUI, MerathilisUI",
				["hideVoiceButtons"] = true,
				["panelWidth"] = 300,
			},
		},
		["Eternalyg - 血色十字军"] = {
			["databars"] = {
				["reputation"] = {
					["height"] = 146,
					["hideInVehicle"] = true,
					["textSize"] = 10,
					["width"] = 8,
				},
				["azerite"] = {
					["height"] = 8,
					["orientation"] = "HORIZONTAL",
					["mouseover"] = true,
					["width"] = 162,
				},
				["experience"] = {
					["orientation"] = "HORIZONTAL",
					["height"] = 5,
					["textSize"] = 10,
					["width"] = 196,
				},
				["honor"] = {
					["enable"] = false,
					["hideOutsidePvP"] = true,
					["height"] = 155,
				},
			},
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["size"] = 36,
				},
				["fontSize"] = 11,
				["interruptAnnounce"] = "EMOTE",
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Expressway",
					["locationFontSize"] = 10,
					["resetZoom"] = {
						["enable"] = true,
						["time"] = 5,
					},
					["icons"] = {
						["difficulty"] = {
							["scale"] = 0.8,
						},
						["lfgEye"] = {
							["xOffset"] = 0,
						},
						["mail"] = {
							["xOffset"] = 0,
							["yOffset"] = -5,
							["position"] = "BOTTOMLEFT",
						},
						["classHall"] = {
							["scale"] = 0.5,
							["position"] = "TOPRIGHT",
						},
						["ticket"] = {
							["scale"] = 0.75,
							["position"] = "TOP",
						},
					},
					["size"] = 160,
				},
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.350796043872833,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0.584313725490196,
					["g"] = 0.992156862745098,
					["r"] = 0,
				},
				["loginmessage"] = false,
				["threat"] = {
					["enable"] = false,
				},
				["stickyFrames"] = false,
				["decimalLenght"] = 0,
				["vehicleSeatIndicatorSize"] = 76,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["numberPrefixStyle"] = "CHINESE",
				["displayInspectInfo"] = true,
				["displayCharacterInfo"] = true,
				["font"] = "Expressway",
				["altPowerBar"] = {
					["statusBar"] = "Duffed",
					["fontSize"] = 11,
					["statusBarColorGradient"] = true,
					["enable"] = false,
					["font"] = "Expressway",
					["textFormat"] = "NAMECURMAXPERC",
				},
				["backdropcolor"] = {
					["a"] = 1,
					["b"] = 0.149019607843137,
					["g"] = 0.145098039215686,
					["r"] = 0.145098039215686,
				},
				["talkingHeadFrameScale"] = 0.7,
				["bonusObjectivePosition"] = "AUTO",
				["itemLevel"] = {
					["itemLevelFont"] = "Expressway",
				},
				["topPanel"] = false,
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["shortChannels"] = false,
				["tabFontOutline"] = "OUTLINE",
				["keywordSound"] = "Whisper Alert",
				["tabFont"] = "Expressway",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelTabTransparency"] = true,
				["panelWidthRight"] = 250,
				["panelBackdrop"] = "HIDEBOTH",
				["chatHistory"] = false,
				["customTimeColor"] = {
					["b"] = 0.98,
					["g"] = 0.75,
					["r"] = 0,
				},
				["panelColor"] = {
					["a"] = 0,
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["fadeUndockedTabs"] = false,
				["font"] = "Expressway",
				["panelHeightRight"] = 146,
				["copyChatLines"] = true,
				["panelColorConverted"] = true,
				["keywords"] = "%MYNAME%, ElvUI, MerathilisUI",
				["hideVoiceButtons"] = true,
				["panelWidth"] = 300,
			},
			["movers"] = {
				["LUI_SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-170",
				["MER_RaidBuffReminderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,188,-2",
				["ElvUF_FocusTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-513,277",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,245,90",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,262,-518",
				["MER_ReminderMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,543,314",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,0,808",
				["AutoButtonAnchor2Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-200,225",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,542,269",
				["VehicleSeatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-112,330",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,281",
				["SpecializationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-28,17",
				["LUI_RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,241,236",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,-189,14",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-23",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-422,27",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-56,-222",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,200",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,744,69",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-106,-316",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-241,281",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,2",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,571",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,5,-37",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,68",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,1078",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,2",
				["GMMover"] = "TOP,ElvUIParent,TOP,-271,-2",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,336",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,374",
				["mUIMiddleDTPanelMover"] = "TOP,ElvUIParent,TOP,0,0",
				["AutoButtonAnchorMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-200,183",
				["ClassBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,184,-2",
				["MicrobarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-310,2",
				["ExperienceBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,379,0",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,241,281",
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,355",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-164",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-159",
				["mUI_RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,241,236",
				["DTB2_数据1_Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,252",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,14",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,247",
				["BelowMinimapContainerMover"] = "TOP,ElvUIParent,TOP,1,-99",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,241,261",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,281",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,542,281",
				["MER_SquareMinimapButtonBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,175",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,41",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,189,14",
				["DTB2_1_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["LuiRaidUtility_Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-519,2",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-241,261",
				["LuiMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-173",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,10,198",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,265",
				["Notification Mover"] = "TOP,ElvUIParent,TOP,0,-37",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-531,21",
				["ElvAB_6"] = "TOPLEFT,ElvUIParent,TOPLEFT,299,-253",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-269,301",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,626",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-264,-316",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,503,12",
				["MER_MicroBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,361",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-74",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,183,-2",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-1",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["itemCount"] = "NONE",
				["healthBar"] = {
					["statusPosition"] = "TOP",
					["font"] = "Expressway",
					["height"] = 6,
					["fontSize"] = 11,
				},
				["font"] = "Expressway",
				["alwaysShowRealm"] = true,
				["style"] = "inset",
				["smallTextFontSize"] = 11,
			},
			["bags"] = {
				["countFontSize"] = 11,
				["itemLevelFont"] = "Expressway",
				["split"] = {
					["player"] = true,
				},
				["bagSize"] = 36,
				["itemLevelFontSize"] = 12,
				["alignToChat"] = false,
				["junkIcon"] = true,
				["countFont"] = "Expressway",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 36,
				["bankWidth"] = 426,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["showBindType"] = true,
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
						["fontSize"] = 20,
					},
					["override"] = true,
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["bagWidth"] = 408,
			},
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 16,
					["size"] = 36,
					["countFontsize"] = 16,
					["wrapAfter"] = 16,
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 12,
					["size"] = 30,
					["verticalSpacing"] = 15,
					["countFontsize"] = 12,
					["wrapAfter"] = 16,
				},
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "默认",
						["fontSize"] = 12,
					},
				},
				["font"] = "Merathilis Gothom Narrow",
			},
			["lui"] = {
				["skins"] = {
					["shadowOverlay"] = {
						["enable"] = false,
					},
				},
				["modules"] = {
					["misc"] = {
						["general"] = {
							["raidUtilityPlus"] = {
								["ruMouseover"] = true,
							},
							["autoScreenShoot"] = {
								["enable"] = false,
								["enableBtn"] = false,
							},
							["setPoi"] = {
								["enableBtn"] = true,
								["poiTextSize"] = 20,
							},
							["autoRelease"] = false,
						},
						["loot"] = {
							["lootSpecManager"] = {
								["enable"] = false,
							},
						},
					},
					["combat"] = {
						["announceSystem"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["combatNotification"] = {
							["enableBtn"] = false,
						},
						["raidMarkers"] = {
							["backdrop"] = false,
							["mouseover"] = true,
						},
					},
					["blizzard"] = {
						["general"] = {
							["minimapWheel"] = false,
							["castbarTime"] = false,
						},
						["blizzardMoveFrames"] = {
							["remember"] = false,
							["points"] = {
								["FriendsFrame"] = {
									"TOPLEFT", -- [1]
									"UIParent", -- [2]
									"TOPLEFT", -- [3]
									16, -- [4]
									-116.000022888184, -- [5]
								},
								["GameMenuFrame"] = {
									"CENTER", -- [1]
									"UIParent", -- [2]
									"CENTER", -- [3]
									0, -- [4]
									0, -- [5]
								},
								["CommunitiesFrame"] = {
									"TOPLEFT", -- [1]
									"UIParent", -- [2]
									"TOPLEFT", -- [3]
									16, -- [4]
									-116.000007629395, -- [5]
								},
							},
						},
					},
					["armory"] = {
						["general"] = {
							["backdrop"] = {
								["selectedBG"] = "Space",
								["alpha"] = 0.6,
							},
							["gradient"] = {
								["colorStyle"] = "VALUE",
							},
						},
					},
					["chat"] = {
						["chatShortChannel"] = {
							["hideChannelNum"] = true,
						},
						["chatBar"] = {
							["barMouseOver"] = true,
							["fontSize"] = 13,
						},
						["chatBub"] = {
							["enable"] = false,
						},
					},
					["unitframes"] = {
						["icons"] = {
							["role"] = "ElvUI",
						},
						["focusframe"] = {
							["rangeText"] = {
								["enable"] = false,
								["enableBtn"] = false,
							},
						},
						["targetframe"] = {
							["rangeText"] = {
								["rangePoi"] = "TOPLEFT",
								["rangePoiY"] = 11,
								["rangeFontSize"] = 9,
							},
						},
						["playerframe"] = {
							["swingBar"] = {
								["enable"] = false,
							},
						},
					},
					["cvar"] = {
						["unitframes"] = {
							["noBuffDebuffFilterOnTarget"] = true,
						},
						["general"] = {
							["breakUpLargeNumbers"] = false,
							["alwaysCompareItems"] = true,
						},
						["combatText"] = {
							["playerCombatText"] = {
								["floatingCombatTextCombatHealingAbsorbSelf"] = false,
								["floatingCombatTextLowManaHealth"] = false,
								["floatingCombatTextReactives"] = false,
								["floatingCombatTextCombatState"] = true,
							},
							["worldTextScale"] = 1.6,
							["WorldTextScale"] = 1.6,
							["targetCombatText"] = {
								["floatingCombatTextCombatDamageDirectionalScale"] = 0,
							},
						},
						["nameplates"] = {
							["nameplateLargeTopInset"] = 0.085,
							["nameplateMotionSpeed"] = 0.05,
							["nameplateOverlapV"] = 1.5,
							["nameplateOccludedAlphaMult"] = 1,
							["nameplateMinScale"] = 1,
							["nameplateMaxDistance"] = 100,
							["nameplateOtherTopInset"] = 0.085,
							["ShowClassColorInFriendlyNameplate"] = false,
						},
						["combat"] = {
							["SpellQueueWindow"] = 250,
						},
						["chat"] = {
							["removeChatDelay"] = true,
							["profanityFilter"] = false,
						},
						["interface"] = {
							["cameraDistanceMaxZoomFactor"] = 2.6,
							["weatherDensity"] = 0,
							["xpBarText"] = false,
						},
					},
					["tooltip"] = {
						["flashingCursor"] = {
							["cursorSize"] = 512,
							["enable"] = false,
						},
						["raidProg"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["nameHover"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["atlasLootReverse"] = false,
						["daisyCosp"] = false,
					},
					["nameplates"] = {
						["castbarTarget"] = false,
					},
					["actionbars"] = {
						["microBar"] = {
							["scale"] = 0.8,
							["text"] = {
								["friends"] = false,
								["guild"] = false,
								["textColor"] = {
									["r"] = 0,
									["g"] = 0.992156862745098,
									["b"] = 0.584313725490196,
								},
							},
						},
						["general"] = {
							["finishingMoveHighlight"] = false,
						},
						["autoButtons"] = {
							["soltAutoButtons"] = {
								["enable"] = false,
							},
							["whiteList"] = {
								[86534] = false,
								[116268] = false,
								[116276] = false,
								[116411] = false,
								[133897] = false,
								[63359] = false,
								[109220] = false,
								[133882] = false,
								[76097] = false,
								[49040] = false,
								[133756] = false,
								[140916] = false,
								[131931] = false,
								[109221] = false,
								[76090] = false,
								[76098] = false,
								[127295] = false,
								[86536] = false,
								[127843] = false,
								[81901] = false,
								[18606] = false,
								[109222] = false,
								[137299] = false,
								[64400] = false,
								[122454] = false,
								[118922] = false,
								[129725] = false,
								[116271] = false,
								[86569] = false,
								[90006] = false,
								[109223] = false,
								[133999] = false,
								[86125] = false,
								[122455] = false,
								[76093] = false,
								[122456] = false,
								[136605] = false,
								[138146] = false,
								[109217] = false,
								[76094] = false,
								[128772] = false,
								[163223] = false,
								[122100] = false,
								[36799] = false,
								[163222] = false,
								[163224] = false,
								[118269] = false,
								[118711] = false,
								[133925] = false,
								[122453] = false,
								[18607] = false,
								[109218] = false,
								[142117] = false,
								[64398] = false,
								[76095] = false,
								[127030] = false,
								[5512] = false,
								[129161] = false,
								[128651] = false,
								[118330] = false,
								[76089] = false,
								[122452] = false,
								[118704] = false,
								[132514] = false,
								[64402] = false,
								[109076] = false,
								[153023] = false,
								[109219] = false,
								[147707] = false,
								[116266] = false,
								[122451] = false,
								[64401] = false,
								[64399] = false,
							},
						},
					},
					["quest"] = {
						["questAutomation"] = {
							["autoChoices"] = true,
						},
						["questAnnouncment"] = {
							["enableBtn"] = false,
						},
					},
					["maps"] = {
						["minimapIcons"] = {
							["square"] = {
								["enable"] = false,
							},
							["buttons"] = {
								["iconSize"] = 26,
								["buttonsPerRow"] = 6,
								["buttonSpacing"] = 1,
								["barMouseOver"] = true,
							},
						},
						["squareMinimap"] = {
							["enableBtn"] = false,
						},
						["enhancedWorldMap"] = {
							["useReveal"] = true,
						},
					},
				},
				["general"] = {
					["loginMsg"] = false,
					["splashScreen"] = false,
					["gamemenu"] = false,
				},
				["media"] = {
					["miscTexts"] = {
						["questTracker"] = {
							["enable"] = false,
							["fontSize"] = 13,
							["fontcolor"] = {
								["g"] = 0.956862745098039,
								["b"] = 0.407843137254902,
							},
							["enableBtn"] = false,
						},
						["mailText"] = {
							["enableBtn"] = false,
						},
						["questGossip"] = {
							["enableBtn"] = false,
						},
						["questFontSuperHuge"] = {
							["enableBtn"] = false,
						},
						["questTrackerTitle"] = {
							["fontcolor"] = {
								["b"] = 0.584313725490196,
								["g"] = 0.992156862745098,
								["r"] = 0,
							},
							["fontSize"] = 13,
						},
						["questHeader"] = {
							["fontcolor"] = {
								["g"] = 0.819607843137255,
							},
							["enableBtn"] = false,
						},
						["editboxText"] = {
							["enableBtn"] = false,
						},
					},
					["zoneTexts"] = {
						["enableBtn"] = false,
					},
				},
			},
			["unitframe"] = {
				["font"] = "Expressway",
				["smoothbars"] = true,
				["colors"] = {
					["power"] = {
						["ENERGY"] = {
							["b"] = 0.349019607843137,
							["g"] = 0.631372549019608,
							["r"] = 0.650980392156863,
						},
						["RAGE"] = {
							["b"] = 0.254901960784314,
							["g"] = 0.250980392156863,
							["r"] = 0.780392156862745,
						},
					},
					["castColor"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["transparentCastbar"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["castNoInterrupt"] = {
						["b"] = 0.250980392156863,
						["g"] = 0.250980392156863,
						["r"] = 0.780392156862745,
					},
					["health_backdrop"] = {
						["g"] = 0.0117647058823529,
						["b"] = 0.0117647058823529,
					},
					["health"] = {
						["b"] = 0.309803921568627,
						["g"] = 0.309803921568627,
						["r"] = 0.309803921568627,
					},
					["transparentAurabars"] = true,
					["frameGlow"] = {
						["targetGlow"] = {
							["enable"] = false,
						},
						["mainGlow"] = {
							["class"] = true,
						},
						["mouseoverGlow"] = {
							["color"] = {
								["a"] = 0.5,
								["b"] = 0,
								["g"] = 0,
								["r"] = 0,
							},
							["class"] = true,
						},
					},
					["health_backdrop_dead"] = {
						["g"] = 0.0117647058823529,
						["b"] = 0.0117647058823529,
					},
				},
				["smartRaidFilter"] = false,
				["statusbar"] = "001",
				["fontOutline"] = "OUTLINE",
				["cooldown"] = {
					["fonts"] = {
						["fontSize"] = 16,
						["font"] = "默认",
					},
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["countFontSize"] = 10,
							["sizeOverride"] = 30,
							["yOffset"] = 15,
							["countFont"] = "Expressway",
							["fontSize"] = 12,
							["perrow"] = 3,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["CombatIcon"] = {
							["anchorPoint"] = "LEFT",
							["customTexture"] = "",
							["xOffset"] = 9,
							["texture"] = "COMBAT",
							["size"] = 12,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["RestIcon"] = {
							["anchorPoint"] = "LEFT",
							["xOffset"] = 11,
							["yOffset"] = 0,
							["texture"] = "RESTING1",
							["size"] = 18,
						},
						["threatStyle"] = "ICONTOPRIGHT",
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 200,
						},
						["customTexts"] = {
							["Life"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[health:smart-right]",
								["yOffset"] = 0,
								["font"] = "默认",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["MERPower"] = {
								["attachTextTo"] = "Power",
								["enable"] = false,
								["text_format"] = "[power:smart]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 16,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 22,
								["font"] = "默认",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -1,
								["size"] = 12,
							},
							["Group"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[group]",
								["yOffset"] = -24,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Percent"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[perhp<]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
							["Resting"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[resting]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
						},
						["cft"] = {
							["text"] = {
								["enable"] = false,
							},
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["detachedWidth"] = 278,
							["height"] = 15,
							["fill"] = "filled",
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 24,
							["transparent"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["powerPrediction"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["position"] = "CENTER",
							["height"] = 3,
							["hideonnpc"] = true,
							["enable"] = false,
							["detachedWidth"] = 278,
						},
						["health"] = {
							["bgUseBarTexture"] = true,
							["xOffset"] = 0,
							["frequentUpdates"] = true,
							["text_format"] = "",
						},
						["orientation"] = "RIGHT",
						["height"] = 30,
						["buffs"] = {
							["countFontSize"] = 9,
							["fontSize"] = 12,
							["sizeOverride"] = 24,
							["countFont"] = "Expressway",
							["anchorPoint"] = "TOPRIGHT",
							["priority"] = "Blacklist,MER_RaidCDs",
							["attachTo"] = "FRAME",
							["perrow"] = 4,
						},
						["pvpIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
							["scale"] = 0.5,
							["xOffset"] = 7,
							["yOffset"] = 7,
						},
						["raidicon"] = {
							["position"] = "TOP",
							["yOffset"] = 15,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 30,
							["yOffset"] = 0,
							["xOffset"] = -2,
							["numrows"] = 1,
							["countFont"] = "Expressway",
							["perrow"] = 6,
						},
						["threatStyle"] = "HEALTHBORDER",
						["castbar"] = {
							["height"] = 16,
							["insideInfoPanel"] = false,
							["timeToHold"] = 0.5,
							["width"] = 156,
						},
						["customTexts"] = {
							["Life"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current]",
								["yOffset"] = 2,
								["font"] = "默认",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 13,
							},
							["Percent"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<]",
								["yOffset"] = 2,
								["font"] = "OW1",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 15,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 24,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 13,
							},
						},
						["width"] = 156,
						["infoPanel"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "RIGHT",
							["bgUseBarTexture"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["yOffset"] = 13,
						},
						["spacing"] = 30,
						["height"] = 35,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 32,
							["xOffset"] = 2,
							["countFont"] = "Expressway",
							["yOffset"] = 0,
						},
						["name"] = {
							["attachTextTo"] = "Frame",
							["position"] = "RIGHT",
							["xOffset"] = 6,
							["text_format"] = "",
							["yOffset"] = 16,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["position"] = "CENTER",
							["xOffset"] = 0,
							["height"] = 5,
							["text_format"] = "[power:smart]",
							["width"] = "inset",
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 2,
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 20,
							["maxDuration"] = 0,
							["clickThrough"] = true,
							["xOffset"] = -42,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 2,
						},
						["rdebuffs"] = {
							["yOffset"] = 1,
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["size"] = 22,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["buffIndicator"] = {
							["fontSize"] = 11,
							["size"] = 10,
						},
						["roleIcon"] = {
							["heal"] = true,
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["yOffset"] = 0,
							["size"] = 10,
						},
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 3,
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "NONE",
								["xOffset"] = 0,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["groupBy"] = "ROLE",
						["groupsPerRowCol"] = 4,
						["infoPanel"] = {
							["height"] = 13,
							["transparent"] = true,
						},
						["health"] = {
							["text_format"] = "",
							["bgUseBarTexture"] = true,
						},
						["name"] = {
							["text_format"] = "",
						},
						["buffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 16,
							["useBlacklist"] = false,
							["useWhitelist"] = true,
							["xOffset"] = 3,
							["playerOnly"] = false,
							["yOffset"] = -20,
							["anchorPoint"] = "TOPLEFT",
							["countFont"] = "Expressway",
							["noDuration"] = false,
							["clickThrough"] = true,
							["perrow"] = 1,
							["priority"] = "MER_RaidCDs",
							["useFilter"] = "MER_RaidCDs",
							["noConsolidated"] = false,
						},
						["height"] = 25,
						["verticalSpacing"] = 2,
						["visibility"] = "[@raid6,noexists] hide;show",
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["yOffset"] = 0,
							["size"] = 15,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["anchorPoint"] = "LEFT",
							["sizeOverride"] = 36,
							["maxDuration"] = 0,
							["clickThrough"] = true,
							["xOffset"] = -1,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 3,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["size"] = 11,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "BOTTOM",
							["name"] = {
								["text_format"] = "[name:short]",
							},
							["height"] = 16,
							["xOffset"] = 0,
							["width"] = 79,
						},
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["height"] = 4,
							["yOffset"] = 2,
							["text_format"] = "",
							["position"] = "BOTTOMRIGHT",
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["buffIndicator"] = {
							["fontSize"] = 11,
							["size"] = 10,
						},
						["width"] = 125,
						["name"] = {
							["attachTextTo"] = "Frame",
							["text_format"] = "",
							["position"] = "BOTTOMLEFT",
						},
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 36,
							["useBlacklist"] = false,
							["useWhitelist"] = true,
							["xOffset"] = 1,
							["playerOnly"] = false,
							["perrow"] = 3,
							["anchorPoint"] = "RIGHT",
							["clickThrough"] = true,
							["countFont"] = "默认",
							["noDuration"] = false,
							["useFilter"] = "MER_RaidCDs",
							["enable"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "CENTER",
							["xOffset"] = 0,
							["bgUseBarTexture"] = true,
							["text_format"] = "",
							["yOffset"] = 2,
						},
						["height"] = 38,
						["orientation"] = "MIDDLE",
						["verticalSpacing"] = 1,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 16,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["raidicon"] = {
							["attachTo"] = "RIGHT",
							["yOffset"] = 0,
							["xOffset"] = -2,
							["size"] = 16,
						},
					},
					["raid40"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 15,
							["useBlacklist"] = false,
							["enable"] = true,
							["yOffset"] = -8,
							["anchorPoint"] = "TOPRIGHT",
							["countFont"] = "Expressway",
							["clickThrough"] = true,
							["perrow"] = 5,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["maxDuration"] = 0,
							["useFilter"] = "Whitlist (Strict)",
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["buffIndicator"] = {
							["fontSize"] = 11,
							["size"] = 10,
						},
						["classHover"] = true,
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["heal"] = true,
							["position"] = "TOPLEFT",
							["enable"] = true,
							["yOffset"] = -1,
							["xOffset"] = 1,
							["size"] = 10,
						},
						["raidWideSorting"] = false,
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["attachTextTo"] = "Health",
							["height"] = 4,
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["name"] = {
							["text_format"] = "",
						},
						["width"] = 83,
						["infoPanel"] = {
							["height"] = 13,
							["transparent"] = true,
						},
						["buffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 20,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["perrow"] = 1,
							["anchorPoint"] = "CENTER",
							["countFont"] = "Expressway",
							["clickThrough"] = true,
							["noDuration"] = false,
							["priority"] = "MER_RaidCDs",
							["useFilter"] = "MER_RaidCDs",
							["noConsolidated"] = false,
						},
						["health"] = {
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
							["text_format"] = "",
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["height"] = 35,
						["verticalSpacing"] = 2,
						["visibility"] = "[@raid21,noexists] hide;show",
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["yOffset"] = 0,
							["size"] = 15,
						},
					},
					["focus"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["bgUseBarTexture"] = true,
							["xOffset"] = 0,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["insideInfoPanel"] = false,
							["width"] = 75,
							["latency"] = true,
						},
						["height"] = 30,
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["enable"] = false,
							["height"] = 4,
							["xOffset"] = 0,
						},
						["width"] = 75,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 30,
							["fontSize"] = 12,
							["countFont"] = "Expressway",
							["perrow"] = 7,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "BUFFS",
						},
						["middleClickFocus"] = false,
						["threatStyle"] = "ICONTOPLEFT",
						["power"] = {
							["powerPrediction"] = true,
							["strataAndLevel"] = {
								["frameLevel"] = 27,
							},
							["xOffset"] = 0,
							["height"] = 3,
							["text_format"] = "",
							["enable"] = false,
						},
						["customTexts"] = {
							["Percent"] = {
								["attachTextTo"] = "Health",
								["enable"] = false,
								["text_format"] = "[perhp<]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
							["Life"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:smart-left]",
								["yOffset"] = 0,
								["font"] = "默认",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["MERPower"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[power:smart]",
								["yOffset"] = -10,
								["font"] = "YYW",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 3,
								["size"] = 9,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:abbrev]",
								["yOffset"] = 22,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 3,
								["size"] = 12,
							},
						},
						["cft"] = {
							["text"] = {
								["enable"] = false,
							},
						},
						["pvpIcon"] = {
							["anchorPoint"] = "TOPLEFT",
							["scale"] = 0.5,
							["xOffset"] = -7,
							["yOffset"] = 7,
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 24,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = true,
							["text_format"] = "",
							["xOffset"] = 0,
						},
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -32,
						},
						["orientation"] = "LEFT",
						["height"] = 30,
						["buffs"] = {
							["countFontSize"] = 10,
							["sizeOverride"] = 24,
							["fontSize"] = 10,
							["numrows"] = 2,
							["countFont"] = "Expressway",
							["priority"] = "Personal,Boss,Whitelist,Blacklist,PlayerBuffs,nonPersonal",
							["attachTo"] = "Health",
							["yOffset"] = 15,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 200,
							["latency"] = true,
						},
						["raidicon"] = {
							["position"] = "TOP",
							["yOffset"] = 15,
						},
					},
					["arena"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 30,
							["yOffset"] = 0,
							["xOffset"] = -2,
							["countFont"] = "Expressway",
							["maxDuration"] = 0,
							["perrow"] = 6,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
							["width"] = 35,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["position"] = "CENTER",
							["xOffset"] = 0,
							["height"] = 4,
							["text_format"] = "[power:smart]",
							["width"] = "inset",
						},
						["customTexts"] = {
							["JJC name"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 24,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 13,
							},
							["JJC 百分比"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<]",
								["yOffset"] = 2,
								["font"] = "OW1",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 15,
							},
							["JJC Life"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current]",
								["yOffset"] = 2,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 13,
							},
						},
						["width"] = 180,
						["infoPanel"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "Frame",
							["xOffset"] = 6,
							["text_format"] = "",
							["yOffset"] = 16,
						},
						["spacing"] = 30,
						["height"] = 35,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 32,
							["xOffset"] = 2,
							["maxDuration"] = 0,
							["countFont"] = "Expressway",
							["yOffset"] = 0,
						},
						["castbar"] = {
							["height"] = 16,
							["insideInfoPanel"] = false,
							["timeToHold"] = 0.5,
							["width"] = 180,
						},
						["health"] = {
							["xOffset"] = 0,
							["frequentUpdates"] = true,
							["text_format"] = "",
							["yOffset"] = 13,
						},
					},
					["pet"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 0,
							["anchorPoint"] = "TOPLEFT",
							["countFont"] = "Expressway",
							["fontSize"] = 10,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Health",
							["position"] = "RIGHT",
							["enable"] = false,
							["height"] = 4,
							["xOffset"] = 0,
						},
						["width"] = 75,
						["infoPanel"] = {
							["height"] = 14,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["bgUseBarTexture"] = true,
							["xOffset"] = 0,
						},
						["height"] = 30,
						["castbar"] = {
							["enable"] = false,
							["width"] = 75,
							["height"] = 10,
							["latency"] = true,
						},
						["name"] = {
							["attachTextTo"] = "Health",
							["text_format"] = "[name:short]",
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["health"] = {
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 4,
							["position"] = "CENTER",
						},
						["height"] = 30,
						["width"] = 75,
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["raidicon"] = {
							["position"] = "TOP",
							["yOffset"] = 15,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 10,
				["minimapBottom"] = true,
				["goldFormat"] = "CONDENSED",
				["panelTransparency"] = true,
				["actionbar5"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Time",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Durability",
						["left"] = "Friends",
						["middle"] = "",
					},
					["BottomLeftMiniPanel"] = "System",
					["DTB2_数据1"] = {
						["middle"] = "Guild",
						["left"] = "Friends",
					},
					["DTB2_1"] = {
						["left"] = "Durability",
						["farleft"] = "Guild",
						["right"] = "ElvUI Config",
						["middle"] = "System",
						["farright"] = "Friends",
					},
				},
				["rightChatPanel"] = false,
				["panelBackdrop"] = false,
				["font"] = "默认",
				["goldCoins"] = true,
				["actionbar3"] = false,
				["leftChatPanel"] = false,
				["fontOutline"] = "OUTLINE",
				["wordWrap"] = true,
				["battleground"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 1,
					["buttonsize"] = 26,
				},
				["bar6"] = {
					["buttons"] = 8,
					["buttonspacing"] = 3,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 3,
					["visibility"] = "[vehicleui][overridebar][petbattle][possessbar] hide; show",
				},
				["extraActionButton"] = {
					["scale"] = 0.75,
				},
				["bar2"] = {
					["buttonspacing"] = 3,
					["heightMult"] = 2,
					["backdropSpacing"] = 3,
					["visibility"] = "[vehicleui][overridebar][petbattle][possessbar] hide; show",
				},
				["hotkeytext"] = false,
				["barPet"] = {
					["backdrop"] = false,
					["point"] = "BOTTOMLEFT",
					["buttons"] = 9,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 9,
					["backdropSpacing"] = 0,
					["buttonsize"] = 22,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttons"] = 4,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 26,
				},
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttonSize"] = 15,
				},
				["bar1"] = {
					["buttonspacing"] = 1,
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["buttonsize"] = 26,
				},
				["font"] = "Expressway",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "OUTLINE",
				["showGrid"] = false,
				["stanceBar"] = {
					["buttonspacing"] = 3,
					["buttonsPerRow"] = 6,
					["point"] = "BOTTOMLEFT",
					["buttonsize"] = 24,
				},
				["cooldown"] = {
					["fonts"] = {
						["fontSize"] = 20,
						["font"] = "Expressway",
					},
					["override"] = true,
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["bar4"] = {
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["buttons"] = 4,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 2,
					["backdrop"] = false,
					["buttonsize"] = 26,
				},
			},
			["dtbars"] = {
				["DTB2_数据1"] = {
					["enable"] = true,
					["growth"] = "VERTICAL",
					["transparent"] = true,
					["height"] = 49,
					["pethide"] = true,
					["border"] = true,
					["width"] = 50,
				},
				["DTB2_1"] = {
					["enable"] = true,
					["growth"] = "HORIZONTAL",
					["transparent"] = true,
					["height"] = 12,
					["pethide"] = true,
					["border"] = false,
					["width"] = 460,
				},
			},
			["nameplates"] = {
				["threat"] = {
					["badScale"] = 1.1,
					["useThreatColor"] = false,
				},
				["fontSize"] = 12,
				["visibility"] = {
					["enemy"] = {
						["totems"] = true,
						["pets"] = true,
					},
				},
				["lowHealthThreshold"] = 0,
				["stackFont"] = "Expressway",
				["smoothbars"] = true,
				["plateSize"] = {
					["enemyWidth"] = 160,
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["yOffset"] = 10,
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["yOffset"] = -16,
							["height"] = 10,
							["width"] = 160,
						},
						["questIcon"] = {
							["xOffset"] = 1,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["position"] = "RIGHT",
							["size"] = 16,
						},
						["eliteIcon"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["yOffset"] = -21,
							["enable"] = true,
							["size"] = 12,
						},
						["name"] = {
							["fontSize"] = 13,
							["yOffset"] = -6,
						},
						["level"] = {
							["yOffset"] = -6,
						},
						["buffs"] = {
							["yOffset"] = 39,
							["size"] = 26,
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "默认",
								["format"] = "[health:smart-right]",
							},
							["width"] = 168,
						},
					},
					["TARGET"] = {
						["classpower"] = {
							["yOffset"] = 23,
							["width"] = 144,
						},
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["yOffset"] = 10,
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["yOffset"] = -16,
							["height"] = 10,
							["width"] = 160,
						},
						["questIcon"] = {
							["xOffset"] = 1,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["position"] = "RIGHT",
							["size"] = 16,
						},
						["eliteIcon"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["yOffset"] = -21,
							["enable"] = true,
							["size"] = 12,
						},
						["name"] = {
							["fontSize"] = 13,
							["yOffset"] = -6,
						},
						["level"] = {
							["yOffset"] = -6,
						},
						["buffs"] = {
							["yOffset"] = 39,
							["filters"] = {
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["size"] = 26,
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "默认",
								["format"] = "[health:smart-right]",
							},
							["width"] = 168,
						},
					},
					["PLAYER"] = {
						["debuffs"] = {
							["size"] = 24,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["numAuras"] = 8,
						},
						["name"] = {
							["font"] = "Expressway",
							["format"] = "[name:abbrev]",
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["fontSize"] = 10,
							["font"] = "Expressway",
						},
						["power"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
							},
						},
						["level"] = {
							["font"] = "Expressway",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
								["format"] = "[perhp<%]",
							},
						},
						["buffs"] = {
							["yOffset"] = 2,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["size"] = 20,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["yOffset"] = 10,
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["yOffset"] = -16,
							["height"] = 10,
							["width"] = 160,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["position"] = "RIGHT",
							["size"] = 16,
						},
						["title"] = {
							["format"] = "[npctitle]",
						},
						["power"] = {
							["displayAltPower"] = true,
						},
						["level"] = {
							["yOffset"] = -6,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["yOffset"] = 39,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["size"] = 26,
						},
						["name"] = {
							["fontSize"] = 13,
							["format"] = "[name]",
							["yOffset"] = -6,
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "默认",
								["format"] = "[health:smart-right]",
							},
							["width"] = 168,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["yOffset"] = 10,
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["yOffset"] = -16,
							["height"] = 10,
							["width"] = 160,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["position"] = "RIGHT",
							["size"] = 16,
						},
						["title"] = {
							["format"] = "[npctitle]",
						},
						["power"] = {
							["displayAltPower"] = true,
						},
						["level"] = {
							["yOffset"] = -6,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["yOffset"] = 39,
							["filters"] = {
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["size"] = 26,
						},
						["name"] = {
							["fontSize"] = 13,
							["format"] = "[name]",
							["yOffset"] = -6,
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "默认",
								["format"] = "[health:smart-right]",
							},
						},
					},
				},
				["stackFontSize"] = 9,
				["statusbar"] = "001",
				["colors"] = {
					["selection"] = {
						[0] = {
							["g"] = 0,
							["b"] = 0.305882352941177,
						},
					},
				},
				["font"] = "Expressway",
				["clampToScreen"] = true,
				["nonTargetTransparency"] = 0.6,
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
					},
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["filters"] = {
					["爆炸物"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
				},
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "默认",
					["fontSize"] = 16,
				},
			},
			["mui"] = {
				["raidmarkers"] = {
					["buttonSize"] = 20,
					["enable"] = false,
					["modifier"] = "alt-",
					["visibility"] = "ALWAYS",
					["reverse"] = true,
				},
				["general"] = {
					["LoginMsg"] = false,
					["splashScreen"] = false,
					["panels"] = false,
					["shadowOverlay"] = false,
				},
				["media"] = {
					["fonts"] = {
						["objective"] = {
							["size"] = 13,
						},
						["objectiveHeader"] = {
							["outline"] = "NONE",
							["size"] = 12,
						},
					},
				},
				["armory"] = {
					["gradient"] = {
						["color"] = {
							["g"] = 0.956862745098039,
							["b"] = 0.407843137254902,
						},
						["colorStyle"] = "CUSTOM",
					},
					["stats"] = {
						["List"] = {
							["ATTACK_AP"] = true,
							["MOVESPEED"] = true,
							["POWER"] = true,
							["ATTACK_DAMAGE"] = true,
						},
					},
				},
				["raidBuffs"] = {
					["enable"] = false,
				},
				["chat"] = {
					["isExpanded"] = false,
					["hideChat"] = true,
					["emotes"] = false,
				},
				["cooldownFlash"] = {
					["enable"] = false,
				},
				["reminder"] = {
					["enable"] = false,
				},
				["tooltip"] = {
					["progressInfo"] = {
						["enable"] = false,
					},
				},
				["nameHover"] = {
					["enable"] = false,
				},
				["actionbars"] = {
					["autoButtons"] = {
						["soltAutoButtons"] = {
							["enable"] = false,
						},
					},
					["specBar"] = {
						["enable"] = false,
					},
					["equipBar"] = {
						["enable"] = false,
					},
				},
				["installed"] = true,
				["locPanel"] = {
					["colorType_Coords"] = "CLASS",
					["colorType"] = "DEFAULT",
					["template"] = "NoBackdrop",
					["enable"] = false,
					["height"] = 20,
					["width"] = 330,
				},
				["datatexts"] = {
					["rightChatTabDatatextPanel"] = {
						["enable"] = false,
					},
					["middle"] = {
						["height"] = 15,
						["width"] = 408,
					},
					["panels"] = {
						["ChatTab_Datatext_Panel"] = {
							["right"] = "Friends",
							["left"] = "System",
							["middle"] = "Durability",
						},
						["mUIMiddleDTPanel"] = {
							["middle"] = "System",
						},
					},
					["threatBar"] = {
						["enable"] = false,
					},
				},
				["nsct"] = {
					["enable"] = false,
				},
				["nameplates"] = {
					["castbarTarget"] = false,
				},
				["microBar"] = {
					["scale"] = 0.8,
					["text"] = {
						["position"] = "TOP",
					},
					["hideInCombat"] = false,
				},
				["misc"] = {
					["cursor"] = true,
					["raidInfo"] = false,
				},
				["bags"] = {
					["equipOverlay"] = false,
				},
			},
		},
		["烟亦舞 - 血色十字军"] = {
			["currentTutorial"] = 2,
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["v11NamePlateReset"] = true,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1080",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,196",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
			},
			["dtbars"] = {
				["DTB2_1"] = {
					["border"] = true,
					["transparent"] = false,
					["enable"] = true,
					["pethide"] = true,
					["growth"] = "HORIZONTAL",
					["width"] = 300,
				},
			},
			["mui"] = {
				["chat"] = {
					["isExpanded"] = false,
				},
			},
			["hideTutorial"] = true,
			["chat"] = {
				["panelHeight"] = 146,
				["panelColorConverted"] = true,
			},
		},
		["Midnightsun - 安苏"] = {
			["databars"] = {
				["reputation"] = {
					["height"] = 146,
					["hideInVehicle"] = true,
					["textSize"] = 10,
					["width"] = 8,
				},
				["azerite"] = {
					["height"] = 8,
					["orientation"] = "HORIZONTAL",
					["mouseover"] = true,
					["width"] = 162,
				},
				["experience"] = {
					["orientation"] = "HORIZONTAL",
					["height"] = 5,
					["textSize"] = 10,
					["width"] = 196,
				},
				["honor"] = {
					["enable"] = false,
					["hideOutsidePvP"] = true,
					["height"] = 155,
				},
			},
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["size"] = 36,
				},
				["fontSize"] = 11,
				["interruptAnnounce"] = "EMOTE",
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Expressway",
					["locationFontSize"] = 10,
					["resetZoom"] = {
						["enable"] = true,
						["time"] = 5,
					},
					["icons"] = {
						["difficulty"] = {
							["scale"] = 0.8,
						},
						["ticket"] = {
							["scale"] = 0.75,
							["position"] = "TOP",
						},
						["mail"] = {
							["xOffset"] = 0,
							["yOffset"] = -5,
							["position"] = "BOTTOMLEFT",
						},
						["classHall"] = {
							["scale"] = 0.5,
							["position"] = "TOPRIGHT",
						},
						["lfgEye"] = {
							["xOffset"] = 0,
						},
					},
					["size"] = 160,
				},
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.350796043872833,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0.584313725490196,
					["g"] = 0.992156862745098,
					["r"] = 0,
				},
				["loginmessage"] = false,
				["threat"] = {
					["enable"] = false,
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Expressway",
				},
				["decimalLenght"] = 0,
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["numberPrefixStyle"] = "CHINESE",
				["displayInspectInfo"] = true,
				["displayCharacterInfo"] = true,
				["font"] = "Expressway",
				["altPowerBar"] = {
					["statusBar"] = "Duffed",
					["textFormat"] = "NAMECURMAXPERC",
					["statusBarColorGradient"] = true,
					["enable"] = false,
					["font"] = "Expressway",
					["fontSize"] = 11,
				},
				["backdropcolor"] = {
					["a"] = 1,
					["b"] = 0.149019607843137,
					["g"] = 0.145098039215686,
					["r"] = 0.145098039215686,
				},
				["talkingHeadFrameScale"] = 0.7,
				["bonusObjectivePosition"] = "AUTO",
				["stickyFrames"] = false,
				["vehicleSeatIndicatorSize"] = 76,
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["shortChannels"] = false,
				["tabFontOutline"] = "OUTLINE",
				["keywordSound"] = "Whisper Alert",
				["tabFont"] = "Expressway",
				["panelColorConverted"] = true,
				["panelTabTransparency"] = true,
				["panelWidthRight"] = 250,
				["panelBackdrop"] = "HIDEBOTH",
				["chatHistory"] = false,
				["customTimeColor"] = {
					["b"] = 0.98,
					["g"] = 0.75,
					["r"] = 0,
				},
				["keywords"] = "%MYNAME%, ElvUI, MerathilisUI",
				["fadeUndockedTabs"] = false,
				["font"] = "Expressway",
				["panelHeightRight"] = 146,
				["copyChatLines"] = true,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelColor"] = {
					["a"] = 0,
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["hideVoiceButtons"] = true,
				["panelWidth"] = 300,
			},
			["movers"] = {
				["LUI_SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-170",
				["MER_RaidBuffReminderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,188,-2",
				["ElvUF_FocusTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-513,277",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,245,90",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,262,-518",
				["MER_ReminderMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,543,314",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,0,808",
				["AutoButtonAnchor2Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-200,225",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,542,269",
				["VehicleSeatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-112,330",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,281",
				["SpecializationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-28,17",
				["LUI_RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,241,236",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,-189,14",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-23",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-422,27",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-55,-201",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,200",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,744,69",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-19,-276",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-241,281",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,2",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,571",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-22",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,68",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,1078",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,2",
				["GMMover"] = "TOP,ElvUIParent,TOP,-271,-2",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,336",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,374",
				["mUIMiddleDTPanelMover"] = "TOP,ElvUIParent,TOP,0,0",
				["AutoButtonAnchorMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-200,183",
				["ClassBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,184,-2",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ExperienceBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,379,0",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,241,281",
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,355",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-163",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-159",
				["mUI_RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,241,236",
				["DTB2_数据1_Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,252",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,14",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,247",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-170,-119",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,241,261",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,281",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,542,281",
				["MER_SquareMinimapButtonBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,175",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,41",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,189,14",
				["DTB2_1_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["LuiRaidUtility_Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-494,2",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-241,261",
				["LuiMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-173",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,10,198",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,265",
				["Notification Mover"] = "TOP,ElvUIParent,TOP,0,-37",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-531,21",
				["ElvAB_6"] = "TOPLEFT,ElvUIParent,TOPLEFT,299,-253",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-269,301",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,626",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-264,-316",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,503,12",
				["MER_MicroBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,361",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-74",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,183,-2",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-1",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["itemCount"] = "NONE",
				["healthBar"] = {
					["statusPosition"] = "TOP",
					["fontSize"] = 11,
					["height"] = 6,
					["font"] = "Expressway",
				},
				["font"] = "Expressway",
				["alwaysShowRealm"] = true,
				["style"] = "inset",
				["smallTextFontSize"] = 11,
			},
			["bags"] = {
				["countFontSize"] = 11,
				["itemLevelFont"] = "Expressway",
				["split"] = {
					["player"] = true,
				},
				["bagSize"] = 36,
				["itemLevelFontSize"] = 12,
				["alignToChat"] = false,
				["junkIcon"] = true,
				["countFont"] = "Expressway",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 36,
				["bankWidth"] = 426,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["showBindType"] = true,
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
						["fontSize"] = 20,
					},
					["override"] = true,
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["bagWidth"] = 408,
			},
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 16,
					["size"] = 36,
					["countFontsize"] = 16,
					["wrapAfter"] = 16,
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 12,
					["size"] = 30,
					["verticalSpacing"] = 15,
					["countFontsize"] = 12,
					["wrapAfter"] = 16,
				},
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "默认",
						["fontSize"] = 12,
					},
				},
				["font"] = "Merathilis Gothom Narrow",
			},
			["nameplates"] = {
				["fontSize"] = 12,
				["threat"] = {
					["badScale"] = 1.1,
					["useThreatColor"] = false,
				},
				["visibility"] = {
					["enemy"] = {
						["totems"] = true,
						["pets"] = true,
					},
				},
				["stackFont"] = "Expressway",
				["nonTargetTransparency"] = 0.6,
				["lowHealthThreshold"] = 0,
				["plateSize"] = {
					["enemyWidth"] = 160,
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["yOffset"] = 10,
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["yOffset"] = -16,
							["height"] = 10,
							["width"] = 160,
						},
						["questIcon"] = {
							["xOffset"] = 1,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["position"] = "RIGHT",
							["size"] = 16,
						},
						["eliteIcon"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["yOffset"] = -21,
							["enable"] = true,
							["size"] = 12,
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "默认",
								["format"] = "[health:smart-right]",
							},
							["width"] = 168,
						},
						["level"] = {
							["yOffset"] = -6,
						},
						["buffs"] = {
							["yOffset"] = 39,
							["size"] = 26,
						},
						["name"] = {
							["fontSize"] = 13,
							["yOffset"] = -6,
						},
					},
					["TARGET"] = {
						["classpower"] = {
							["yOffset"] = 23,
							["width"] = 144,
						},
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["yOffset"] = 10,
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["yOffset"] = -16,
							["height"] = 10,
							["width"] = 160,
						},
						["questIcon"] = {
							["xOffset"] = 1,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["position"] = "RIGHT",
							["size"] = 16,
						},
						["eliteIcon"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["yOffset"] = -21,
							["enable"] = true,
							["size"] = 12,
						},
						["name"] = {
							["fontSize"] = 13,
							["yOffset"] = -6,
						},
						["level"] = {
							["yOffset"] = -6,
						},
						["buffs"] = {
							["yOffset"] = 39,
							["size"] = 26,
							["filters"] = {
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "默认",
								["format"] = "[health:smart-right]",
							},
							["width"] = 168,
						},
					},
					["PLAYER"] = {
						["debuffs"] = {
							["size"] = 24,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["numAuras"] = 8,
						},
						["name"] = {
							["font"] = "Expressway",
							["format"] = "[name:abbrev]",
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["fontSize"] = 10,
							["font"] = "Expressway",
						},
						["power"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
							},
						},
						["buffs"] = {
							["yOffset"] = 2,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["size"] = 20,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
								["format"] = "[perhp<%]",
							},
						},
						["level"] = {
							["font"] = "Expressway",
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["yOffset"] = 10,
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["power"] = {
							["displayAltPower"] = true,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["position"] = "RIGHT",
							["size"] = 16,
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "默认",
								["format"] = "[health:smart-right]",
							},
							["width"] = 168,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["yOffset"] = -16,
							["height"] = 10,
							["width"] = 160,
						},
						["level"] = {
							["yOffset"] = -6,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["yOffset"] = 39,
							["size"] = 26,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
						["title"] = {
							["format"] = "[npctitle]",
						},
						["name"] = {
							["fontSize"] = 13,
							["format"] = "[name]",
							["yOffset"] = -6,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["yOffset"] = 10,
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["power"] = {
							["displayAltPower"] = true,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["position"] = "RIGHT",
							["size"] = 16,
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "默认",
								["format"] = "[health:smart-right]",
							},
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["yOffset"] = -16,
							["height"] = 10,
							["width"] = 160,
						},
						["level"] = {
							["yOffset"] = -6,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["yOffset"] = 39,
							["size"] = 26,
							["filters"] = {
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
						["title"] = {
							["format"] = "[npctitle]",
						},
						["name"] = {
							["fontSize"] = 13,
							["format"] = "[name]",
							["yOffset"] = -6,
						},
					},
				},
				["stackFontSize"] = 9,
				["font"] = "Expressway",
				["colors"] = {
					["selection"] = {
						[0] = {
							["g"] = 0,
							["b"] = 0.305882352941177,
						},
					},
				},
				["clampToScreen"] = true,
				["statusbar"] = "001",
				["smoothbars"] = true,
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
					},
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["filters"] = {
					["爆炸物"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
				},
			},
			["unitframe"] = {
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "001",
				["colors"] = {
					["power"] = {
						["ENERGY"] = {
							["b"] = 0.349019607843137,
							["g"] = 0.631372549019608,
							["r"] = 0.650980392156863,
						},
						["RAGE"] = {
							["b"] = 0.254901960784314,
							["g"] = 0.250980392156863,
							["r"] = 0.780392156862745,
						},
					},
					["castColor"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["transparentCastbar"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["castNoInterrupt"] = {
						["b"] = 0.250980392156863,
						["g"] = 0.250980392156863,
						["r"] = 0.780392156862745,
					},
					["health_backdrop"] = {
						["g"] = 0.0117647058823529,
						["b"] = 0.0117647058823529,
					},
					["health"] = {
						["b"] = 0.309803921568627,
						["g"] = 0.309803921568627,
						["r"] = 0.309803921568627,
					},
					["transparentAurabars"] = true,
					["frameGlow"] = {
						["targetGlow"] = {
							["enable"] = false,
						},
						["mainGlow"] = {
							["class"] = true,
						},
						["mouseoverGlow"] = {
							["color"] = {
								["a"] = 0.5,
								["b"] = 0,
								["g"] = 0,
								["r"] = 0,
							},
							["class"] = true,
						},
					},
					["health_backdrop_dead"] = {
						["g"] = 0.0117647058823529,
						["b"] = 0.0117647058823529,
					},
				},
				["smartRaidFilter"] = false,
				["font"] = "Expressway",
				["smoothbars"] = true,
				["cooldown"] = {
					["fonts"] = {
						["font"] = "默认",
						["fontSize"] = 16,
					},
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["countFontSize"] = 10,
							["sizeOverride"] = 30,
							["yOffset"] = 15,
							["countFont"] = "Expressway",
							["fontSize"] = 12,
							["perrow"] = 3,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["CombatIcon"] = {
							["anchorPoint"] = "LEFT",
							["customTexture"] = "",
							["xOffset"] = 9,
							["texture"] = "COMBAT",
							["size"] = 12,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["RestIcon"] = {
							["anchorPoint"] = "LEFT",
							["xOffset"] = 11,
							["size"] = 18,
							["texture"] = "RESTING1",
							["yOffset"] = 0,
						},
						["threatStyle"] = "ICONTOPRIGHT",
						["pvpIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
							["xOffset"] = 7,
							["scale"] = 0.5,
							["yOffset"] = 7,
						},
						["customTexts"] = {
							["Life"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[health:smart-right]",
								["yOffset"] = 0,
								["font"] = "默认",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["MERPower"] = {
								["attachTextTo"] = "Power",
								["enable"] = false,
								["text_format"] = "[power:smart]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 16,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 22,
								["font"] = "默认",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -1,
								["size"] = 12,
							},
							["Group"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[group]",
								["yOffset"] = -24,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Percent"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[perhp<]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
							["Resting"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[resting]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
						},
						["cft"] = {
							["text"] = {
								["enable"] = false,
							},
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["height"] = 15,
							["detachedWidth"] = 278,
							["fill"] = "filled",
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 24,
							["transparent"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["powerPrediction"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["position"] = "CENTER",
							["height"] = 3,
							["hideonnpc"] = true,
							["enable"] = false,
							["detachedWidth"] = 278,
						},
						["health"] = {
							["bgUseBarTexture"] = true,
							["xOffset"] = 0,
							["frequentUpdates"] = true,
							["text_format"] = "",
						},
						["orientation"] = "RIGHT",
						["height"] = 30,
						["buffs"] = {
							["countFontSize"] = 9,
							["fontSize"] = 12,
							["sizeOverride"] = 24,
							["countFont"] = "Expressway",
							["anchorPoint"] = "TOPRIGHT",
							["priority"] = "Blacklist,MER_RaidCDs",
							["attachTo"] = "FRAME",
							["perrow"] = 4,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 200,
						},
						["raidicon"] = {
							["position"] = "TOP",
							["yOffset"] = 15,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 30,
							["yOffset"] = 0,
							["xOffset"] = -2,
							["numrows"] = 1,
							["countFont"] = "Expressway",
							["perrow"] = 6,
						},
						["threatStyle"] = "HEALTHBORDER",
						["power"] = {
							["attachTextTo"] = "Power",
							["position"] = "CENTER",
							["xOffset"] = 0,
							["text_format"] = "[power:smart]",
							["height"] = 9,
						},
						["customTexts"] = {
							["Life"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Percent"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<]",
								["yOffset"] = -11,
								["font"] = "伤害数字",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 18,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 18,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
						},
						["width"] = 156,
						["infoPanel"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "RIGHT",
							["bgUseBarTexture"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["yOffset"] = 13,
						},
						["spacing"] = 30,
						["height"] = 35,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 32,
							["xOffset"] = 2,
							["countFont"] = "Expressway",
							["yOffset"] = 0,
						},
						["name"] = {
							["attachTextTo"] = "Frame",
							["position"] = "RIGHT",
							["xOffset"] = 6,
							["text_format"] = "",
							["yOffset"] = 16,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["timeToHold"] = 0.5,
							["width"] = 156,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 2,
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 20,
							["maxDuration"] = 0,
							["clickThrough"] = true,
							["xOffset"] = -42,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 2,
						},
						["rdebuffs"] = {
							["yOffset"] = 1,
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["size"] = 22,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["heal"] = true,
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["yOffset"] = 0,
							["size"] = 10,
						},
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 3,
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "NONE",
								["xOffset"] = 0,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["buffIndicator"] = {
							["fontSize"] = 11,
							["size"] = 10,
						},
						["groupsPerRowCol"] = 4,
						["infoPanel"] = {
							["height"] = 13,
							["transparent"] = true,
						},
						["health"] = {
							["text_format"] = "",
							["bgUseBarTexture"] = true,
						},
						["name"] = {
							["text_format"] = "",
						},
						["verticalSpacing"] = 2,
						["height"] = 25,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 16,
							["useBlacklist"] = false,
							["useWhitelist"] = true,
							["noDuration"] = false,
							["playerOnly"] = false,
							["yOffset"] = -20,
							["anchorPoint"] = "TOPLEFT",
							["countFont"] = "Expressway",
							["perrow"] = 1,
							["clickThrough"] = true,
							["useFilter"] = "MER_RaidCDs",
							["priority"] = "MER_RaidCDs",
							["countFontSize"] = 9,
							["xOffset"] = 3,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["yOffset"] = 0,
							["size"] = 15,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["anchorPoint"] = "LEFT",
							["sizeOverride"] = 36,
							["maxDuration"] = 0,
							["clickThrough"] = true,
							["xOffset"] = -1,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 3,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["groupBy"] = "ROLE",
						["buffIndicator"] = {
							["fontSize"] = 11,
							["size"] = 10,
						},
						["roleIcon"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["size"] = 11,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "BOTTOM",
							["name"] = {
								["text_format"] = "[name:short]",
							},
							["height"] = 16,
							["xOffset"] = 0,
							["width"] = 79,
						},
						["threatStyle"] = "BORDERS",
						["power"] = {
							["height"] = 3,
							["yOffset"] = 2,
							["text_format"] = "",
							["position"] = "BOTTOMRIGHT",
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["width"] = 125,
						["verticalSpacing"] = 1,
						["height"] = 38,
						["name"] = {
							["attachTextTo"] = "Frame",
							["text_format"] = "",
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "CENTER",
							["xOffset"] = 0,
							["bgUseBarTexture"] = true,
							["text_format"] = "",
							["yOffset"] = 2,
						},
						["orientation"] = "MIDDLE",
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 36,
							["useBlacklist"] = false,
							["useWhitelist"] = true,
							["enable"] = true,
							["playerOnly"] = false,
							["perrow"] = 3,
							["anchorPoint"] = "RIGHT",
							["clickThrough"] = true,
							["countFont"] = "默认",
							["noDuration"] = false,
							["useFilter"] = "MER_RaidCDs",
							["xOffset"] = 1,
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 16,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["raidicon"] = {
							["attachTo"] = "RIGHT",
							["yOffset"] = 0,
							["xOffset"] = -2,
							["size"] = 16,
						},
					},
					["raid40"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 15,
							["useBlacklist"] = false,
							["enable"] = true,
							["yOffset"] = -8,
							["anchorPoint"] = "TOPRIGHT",
							["countFont"] = "Expressway",
							["clickThrough"] = true,
							["perrow"] = 5,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["maxDuration"] = 0,
							["useFilter"] = "Whitlist (Strict)",
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["buffIndicator"] = {
							["fontSize"] = 11,
							["size"] = 10,
						},
						["classHover"] = true,
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["heal"] = true,
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["yOffset"] = -1,
							["enable"] = true,
							["size"] = 10,
						},
						["raidWideSorting"] = false,
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["height"] = 4,
							["attachTextTo"] = "Health",
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["name"] = {
							["text_format"] = "",
						},
						["width"] = 83,
						["infoPanel"] = {
							["height"] = 13,
							["transparent"] = true,
						},
						["verticalSpacing"] = 2,
						["health"] = {
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
							["text_format"] = "",
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["height"] = 35,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 20,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["perrow"] = 1,
							["anchorPoint"] = "CENTER",
							["countFont"] = "Expressway",
							["clickThrough"] = true,
							["noDuration"] = false,
							["priority"] = "MER_RaidCDs",
							["useFilter"] = "MER_RaidCDs",
							["countFontSize"] = 9,
						},
						["visibility"] = "[@raid21,noexists] hide;show",
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["yOffset"] = 0,
							["size"] = 15,
						},
					},
					["focus"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["height"] = 4,
							["enable"] = false,
						},
						["height"] = 30,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 0,
							["bgUseBarTexture"] = true,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["insideInfoPanel"] = false,
							["width"] = 75,
							["latency"] = true,
						},
						["width"] = 75,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 30,
							["fontSize"] = 12,
							["countFont"] = "Expressway",
							["perrow"] = 7,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "BUFFS",
						},
						["middleClickFocus"] = false,
						["threatStyle"] = "ICONTOPLEFT",
						["power"] = {
							["powerPrediction"] = true,
							["strataAndLevel"] = {
								["frameLevel"] = 27,
							},
							["enable"] = false,
							["height"] = 3,
							["text_format"] = "",
							["xOffset"] = 0,
						},
						["customTexts"] = {
							["Percent"] = {
								["attachTextTo"] = "Health",
								["enable"] = false,
								["text_format"] = "[perhp<]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
							["Life"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:smart-left]",
								["yOffset"] = 0,
								["font"] = "默认",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["MERPower"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[power:smart]",
								["yOffset"] = -10,
								["font"] = "YYW",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 3,
								["size"] = 9,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:abbrev]",
								["yOffset"] = 22,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 3,
								["size"] = 12,
							},
						},
						["cft"] = {
							["text"] = {
								["enable"] = false,
							},
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 200,
							["latency"] = true,
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 24,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["bgUseBarTexture"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -32,
						},
						["orientation"] = "LEFT",
						["height"] = 30,
						["buffs"] = {
							["countFontSize"] = 10,
							["sizeOverride"] = 24,
							["fontSize"] = 10,
							["numrows"] = 2,
							["countFont"] = "Expressway",
							["priority"] = "Personal,Boss,Whitelist,Blacklist,PlayerBuffs,nonPersonal",
							["attachTo"] = "Health",
							["yOffset"] = 15,
						},
						["pvpIcon"] = {
							["anchorPoint"] = "TOPLEFT",
							["xOffset"] = -7,
							["scale"] = 0.5,
							["yOffset"] = 7,
						},
						["raidicon"] = {
							["position"] = "TOP",
							["yOffset"] = 15,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["text_format"] = "[powercolor][power:smart]",
							["width"] = "inset",
						},
					},
					["pet"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 0,
							["anchorPoint"] = "TOPLEFT",
							["countFont"] = "Expressway",
							["fontSize"] = 10,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["width"] = 75,
							["height"] = 10,
							["latency"] = true,
						},
						["width"] = 75,
						["infoPanel"] = {
							["height"] = 14,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 0,
							["bgUseBarTexture"] = true,
						},
						["height"] = 30,
						["power"] = {
							["attachTextTo"] = "Health",
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["height"] = 4,
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "Health",
							["text_format"] = "[name:short]",
						},
					},
					["targettarget"] = {
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["power"] = {
							["enable"] = false,
							["height"] = 4,
							["position"] = "CENTER",
						},
						["height"] = 30,
						["width"] = 75,
						["health"] = {
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
						},
						["raidicon"] = {
							["position"] = "TOP",
							["yOffset"] = 15,
						},
					},
				},
			},
			["lui"] = {
				["skins"] = {
					["shadowOverlay"] = {
						["enable"] = false,
					},
				},
				["modules"] = {
					["misc"] = {
						["loot"] = {
							["lootSpecManager"] = {
								["enable"] = false,
							},
						},
						["general"] = {
							["raidUtilityPlus"] = {
								["ruMouseover"] = true,
							},
							["autoScreenShoot"] = {
								["enable"] = false,
								["enableBtn"] = false,
							},
							["setPoi"] = {
								["enable"] = true,
								["poiTextSize"] = 20,
								["enableBtn"] = true,
							},
							["autoRelease"] = false,
						},
					},
					["combat"] = {
						["announceSystem"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["combatNotification"] = {
							["enableBtn"] = false,
						},
						["raidMarkers"] = {
							["mouseover"] = true,
							["backdrop"] = false,
						},
					},
					["blizzard"] = {
						["general"] = {
							["minimapWheel"] = false,
							["castbarTime"] = false,
						},
						["blizzardMoveFrames"] = {
							["remember"] = false,
							["points"] = {
								["FriendsFrame"] = {
									"TOPLEFT", -- [1]
									"UIParent", -- [2]
									"TOPLEFT", -- [3]
									16, -- [4]
									-116.000022888184, -- [5]
								},
								["GameMenuFrame"] = {
									"CENTER", -- [1]
									"UIParent", -- [2]
									"CENTER", -- [3]
									0, -- [4]
									0, -- [5]
								},
								["CommunitiesFrame"] = {
									"TOPLEFT", -- [1]
									"UIParent", -- [2]
									"TOPLEFT", -- [3]
									16, -- [4]
									-116.000007629395, -- [5]
								},
							},
						},
					},
					["armory"] = {
						["general"] = {
							["backdrop"] = {
								["selectedBG"] = "Space",
								["alpha"] = 0.6,
							},
							["gradient"] = {
								["colorStyle"] = "VALUE",
							},
						},
					},
					["actionbars"] = {
						["microBar"] = {
							["scale"] = 0.8,
							["text"] = {
								["friends"] = false,
								["guild"] = false,
								["textColor"] = {
									["r"] = 0,
									["g"] = 0.992156862745098,
									["b"] = 0.584313725490196,
								},
							},
						},
						["general"] = {
							["finishingMoveHighlight"] = false,
						},
						["autoButtons"] = {
							["soltAutoButtons"] = {
								["enable"] = false,
							},
							["whiteList"] = {
								[86534] = false,
								[116268] = false,
								[116276] = false,
								[116411] = false,
								[133897] = false,
								[63359] = false,
								[109220] = false,
								[133882] = false,
								[76097] = false,
								[49040] = false,
								[133756] = false,
								[140916] = false,
								[131931] = false,
								[109221] = false,
								[76090] = false,
								[76098] = false,
								[127295] = false,
								[86536] = false,
								[127843] = false,
								[81901] = false,
								[18606] = false,
								[109222] = false,
								[137299] = false,
								[64400] = false,
								[122454] = false,
								[118922] = false,
								[129725] = false,
								[116271] = false,
								[86569] = false,
								[90006] = false,
								[109223] = false,
								[133999] = false,
								[86125] = false,
								[122455] = false,
								[76093] = false,
								[122456] = false,
								[136605] = false,
								[138146] = false,
								[109217] = false,
								[76094] = false,
								[128772] = false,
								[163223] = false,
								[122100] = false,
								[36799] = false,
								[163222] = false,
								[163224] = false,
								[118269] = false,
								[118711] = false,
								[133925] = false,
								[122453] = false,
								[18607] = false,
								[109218] = false,
								[142117] = false,
								[64398] = false,
								[76095] = false,
								[127030] = false,
								[5512] = false,
								[129161] = false,
								[128651] = false,
								[118330] = false,
								[76089] = false,
								[122452] = false,
								[118704] = false,
								[132514] = false,
								[64402] = false,
								[109076] = false,
								[153023] = false,
								[109219] = false,
								[147707] = false,
								[116266] = false,
								[122451] = false,
								[64401] = false,
								[64399] = false,
							},
						},
					},
					["maps"] = {
						["minimapIcons"] = {
							["square"] = {
								["enable"] = false,
							},
							["buttons"] = {
								["barMouseOver"] = true,
								["buttonsPerRow"] = 6,
								["buttonSpacing"] = 1,
								["iconSize"] = 26,
							},
						},
						["squareMinimap"] = {
							["enableBtn"] = false,
						},
						["enhancedWorldMap"] = {
							["useReveal"] = true,
						},
					},
					["cvar"] = {
						["general"] = {
							["breakUpLargeNumbers"] = false,
							["alwaysCompareItems"] = true,
						},
						["combatText"] = {
							["playerCombatText"] = {
								["floatingCombatTextCombatHealingAbsorbSelf"] = false,
								["floatingCombatTextReactives"] = false,
								["floatingCombatTextLowManaHealth"] = false,
								["floatingCombatTextCombatState"] = true,
							},
							["worldTextScale"] = 1.6,
							["WorldTextScale"] = 1.6,
							["targetCombatText"] = {
								["floatingCombatTextCombatDamageDirectionalScale"] = 0,
							},
						},
						["nameplates"] = {
							["nameplateLargeTopInset"] = 0.085,
							["nameplateOccludedAlphaMult"] = 1,
							["nameplateMinScale"] = 1,
							["nameplateMaxDistance"] = 100,
							["nameplateOtherTopInset"] = 0.085,
							["nameplateMotionSpeed"] = 0.05,
						},
						["chat"] = {
							["removeChatDelay"] = true,
							["profanityFilter"] = false,
						},
						["combat"] = {
							["SpellQueueWindow"] = 250,
						},
						["interface"] = {
							["cameraDistanceMaxZoomFactor"] = 2.6,
							["xpBarText"] = false,
							["weatherDensity"] = 0,
						},
					},
					["tooltip"] = {
						["flashingCursor"] = {
							["cursorSize"] = 512,
						},
						["raidProg"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["nameHover"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["atlasLootReverse"] = false,
						["daisyCosp"] = false,
					},
					["nameplates"] = {
						["castbarTarget"] = false,
					},
					["chat"] = {
						["chatBub"] = {
							["enable"] = false,
						},
						["chatBar"] = {
							["barMouseOver"] = true,
							["fontSize"] = 13,
						},
						["chatShortChannel"] = {
							["hideChannelNum"] = true,
						},
					},
					["quest"] = {
						["questAutomation"] = {
							["autoChoices"] = true,
						},
						["questAnnouncment"] = {
							["enableBtn"] = false,
						},
					},
					["unitframes"] = {
						["targetframe"] = {
							["rangeText"] = {
								["rangePoi"] = "TOPLEFT",
								["rangePoiY"] = 11,
								["rangeFontSize"] = 9,
							},
						},
						["focusframe"] = {
							["rangeText"] = {
								["enable"] = false,
								["enableBtn"] = false,
							},
						},
						["icons"] = {
							["role"] = "ElvUI",
						},
						["playerframe"] = {
							["swingBar"] = {
								["enable"] = false,
							},
						},
					},
				},
				["general"] = {
					["loginMsg"] = false,
					["splashScreen"] = false,
					["gamemenu"] = false,
				},
				["media"] = {
					["miscTexts"] = {
						["questTracker"] = {
							["enable"] = false,
							["fontSize"] = 13,
							["fontcolor"] = {
								["g"] = 0.956862745098039,
								["b"] = 0.407843137254902,
							},
							["enableBtn"] = false,
						},
						["mailText"] = {
							["enableBtn"] = false,
						},
						["questGossip"] = {
							["enableBtn"] = false,
						},
						["questFontSuperHuge"] = {
							["enableBtn"] = false,
						},
						["questTrackerTitle"] = {
							["fontcolor"] = {
								["b"] = 0.584313725490196,
								["g"] = 0.992156862745098,
								["r"] = 0,
							},
							["fontSize"] = 13,
						},
						["questHeader"] = {
							["fontcolor"] = {
								["g"] = 0.819607843137255,
							},
							["enableBtn"] = false,
						},
						["editboxText"] = {
							["enableBtn"] = false,
						},
					},
					["zoneTexts"] = {
						["enableBtn"] = false,
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 1,
					["buttonsize"] = 26,
				},
				["bar6"] = {
					["buttons"] = 8,
					["buttonspacing"] = 3,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 3,
					["visibility"] = "[vehicleui][overridebar][petbattle][possessbar] hide; show",
				},
				["extraActionButton"] = {
					["scale"] = 0.75,
				},
				["bar2"] = {
					["buttonspacing"] = 3,
					["heightMult"] = 2,
					["backdropSpacing"] = 3,
					["visibility"] = "[vehicleui][overridebar][petbattle][possessbar] hide; show",
				},
				["hotkeytext"] = false,
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttons"] = 4,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 26,
				},
				["bar1"] = {
					["buttonspacing"] = 1,
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["buttonsize"] = 26,
				},
				["barPet"] = {
					["backdropSpacing"] = 0,
					["point"] = "BOTTOMLEFT",
					["buttons"] = 9,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 9,
					["backdrop"] = false,
					["buttonsize"] = 22,
				},
				["font"] = "Expressway",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "OUTLINE",
				["showGrid"] = false,
				["stanceBar"] = {
					["buttonspacing"] = 3,
					["buttonsPerRow"] = 6,
					["point"] = "BOTTOMLEFT",
					["buttonsize"] = 24,
				},
				["cooldown"] = {
					["fonts"] = {
						["font"] = "Expressway",
						["fontSize"] = 20,
					},
					["override"] = true,
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["bar4"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 26,
					["buttons"] = 4,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["backdrop"] = false,
				},
			},
			["dtbars"] = {
				["DTB2_数据1"] = {
					["enable"] = true,
					["growth"] = "VERTICAL",
					["transparent"] = true,
					["height"] = 49,
					["pethide"] = true,
					["border"] = true,
					["width"] = 50,
				},
				["DTB2_1"] = {
					["enable"] = true,
					["growth"] = "HORIZONTAL",
					["transparent"] = true,
					["height"] = 12,
					["pethide"] = true,
					["border"] = false,
					["width"] = 460,
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 10,
				["goldFormat"] = "CONDENSED",
				["panelTransparency"] = true,
				["actionbar5"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "System",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Durability",
						["left"] = "Friends",
						["middle"] = "",
					},
					["BottomLeftMiniPanel"] = "System",
					["DTB2_数据1"] = {
						["middle"] = "Guild",
						["left"] = "Friends",
					},
					["DTB2_1"] = {
						["left"] = "Durability",
						["farleft"] = "Guild",
						["right"] = "ElvUI Config",
						["middle"] = "System",
						["farright"] = "Friends",
					},
				},
				["rightChatPanel"] = false,
				["panelBackdrop"] = false,
				["font"] = "默认",
				["goldCoins"] = true,
				["fontOutline"] = "OUTLINE",
				["leftChatPanel"] = false,
				["actionbar3"] = false,
				["wordWrap"] = true,
				["battleground"] = false,
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "默认",
					["fontSize"] = 16,
				},
			},
			["mui"] = {
				["raidmarkers"] = {
					["buttonSize"] = 20,
					["enable"] = false,
					["modifier"] = "alt-",
					["visibility"] = "ALWAYS",
					["reverse"] = true,
				},
				["general"] = {
					["LoginMsg"] = false,
					["splashScreen"] = false,
					["panels"] = false,
					["shadowOverlay"] = false,
				},
				["media"] = {
					["fonts"] = {
						["objective"] = {
							["size"] = 13,
						},
						["objectiveHeader"] = {
							["outline"] = "NONE",
							["size"] = 12,
						},
					},
				},
				["armory"] = {
					["gradient"] = {
						["color"] = {
							["g"] = 0.956862745098039,
							["b"] = 0.407843137254902,
						},
						["colorStyle"] = "CUSTOM",
					},
					["stats"] = {
						["List"] = {
							["ATTACK_AP"] = true,
							["MOVESPEED"] = true,
							["POWER"] = true,
							["ATTACK_DAMAGE"] = true,
						},
					},
				},
				["raidBuffs"] = {
					["enable"] = false,
				},
				["chat"] = {
					["isExpanded"] = false,
					["hideChat"] = true,
					["emotes"] = false,
				},
				["cooldownFlash"] = {
					["enable"] = false,
				},
				["reminder"] = {
					["enable"] = false,
				},
				["tooltip"] = {
					["progressInfo"] = {
						["enable"] = false,
					},
				},
				["nameHover"] = {
					["enable"] = false,
				},
				["actionbars"] = {
					["autoButtons"] = {
						["soltAutoButtons"] = {
							["enable"] = false,
						},
					},
					["specBar"] = {
						["enable"] = false,
					},
					["equipBar"] = {
						["enable"] = false,
					},
				},
				["installed"] = true,
				["locPanel"] = {
					["colorType_Coords"] = "CLASS",
					["colorType"] = "DEFAULT",
					["template"] = "NoBackdrop",
					["enable"] = false,
					["height"] = 20,
					["width"] = 330,
				},
				["datatexts"] = {
					["rightChatTabDatatextPanel"] = {
						["enable"] = false,
					},
					["middle"] = {
						["height"] = 15,
						["width"] = 408,
					},
					["panels"] = {
						["ChatTab_Datatext_Panel"] = {
							["right"] = "Friends",
							["left"] = "System",
							["middle"] = "Durability",
						},
						["mUIMiddleDTPanel"] = {
							["middle"] = "System",
						},
					},
					["threatBar"] = {
						["enable"] = false,
					},
				},
				["nsct"] = {
					["enable"] = false,
				},
				["nameplates"] = {
					["castbarTarget"] = false,
				},
				["microBar"] = {
					["scale"] = 0.8,
					["text"] = {
						["position"] = "TOP",
					},
					["hideInCombat"] = false,
				},
				["misc"] = {
					["cursor"] = true,
					["raidInfo"] = false,
				},
				["bags"] = {
					["equipOverlay"] = false,
				},
			},
		},
		["Midnightsun - 白银之手"] = {
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["lui"] = {
				["modules"] = {
					["blizzard"] = {
						["blizzardMoveFrames"] = {
							["points"] = {
								["GameMenuFrame"] = {
									"CENTER", -- [1]
									"UIParent", -- [2]
									"CENTER", -- [3]
									0, -- [4]
									0, -- [5]
								},
								["StaticPopup1"] = {
									"TOP", -- [1]
									"UIParent", -- [2]
									"TOP", -- [3]
									0, -- [4]
									-100.000152587891, -- [5]
								},
							},
						},
					},
					["maps"] = {
						["minimapIcons"] = {
							["square"] = {
								["enable"] = false,
							},
						},
					},
					["cvar"] = {
						["general"] = {
							["breakUpLargeNumbers"] = false,
							["alwaysCompareItems"] = true,
						},
						["combatText"] = {
							["targetCombatText"] = {
								["floatingCombatTextCombatDamageDirectionalScale"] = 0,
							},
							["WorldTextScale"] = 1.6,
							["playerCombatText"] = {
								["floatingCombatTextCombatHealingAbsorbSelf"] = false,
								["floatingCombatTextLowManaHealth"] = false,
								["floatingCombatTextReactives"] = false,
								["floatingCombatTextCombatState"] = true,
							},
						},
						["nameplates"] = {
							["nameplateMinScale"] = 1,
							["nameplateMaxDistance"] = 40,
							["nameplateOtherTopInset"] = -1,
						},
						["interface"] = {
							["xpBarText"] = false,
							["weatherDensity"] = 0,
							["cameraDistanceMaxZoomFactor"] = 2.6,
						},
						["combat"] = {
							["SpellQueueWindow"] = 250,
						},
						["chat"] = {
							["profanityFilter"] = false,
							["removeChatDelay"] = true,
						},
					},
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["dtbars"] = {
				["DTB2_1"] = {
					["enable"] = true,
					["pethide"] = true,
					["growth"] = "HORIZONTAL",
					["width"] = 300,
					["combatHide"] = false,
					["transparent"] = false,
					["height"] = 22,
					["mouseover"] = false,
					["vehicleHide"] = false,
					["border"] = true,
				},
			},
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Minimalistic"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["bordercolor"] = {
					["r"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["b"] = 0.30588235294118,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["fontSize"] = 11,
			},
			["movers"] = {
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-428",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,51,120",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,50",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-50",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-117,-298",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,249,-216",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,827",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-52",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,51,-87",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,143",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,392,1073",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-394",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,305,50",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-305,50",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1150",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,133",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
			},
			["bags"] = {
				["itemLevelFontSize"] = 9,
				["countFontSize"] = 9,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["font"] = "Expressway",
				["buffs"] = {
					["countFontSize"] = 11,
					["maxWraps"] = 2,
					["durationFontSize"] = 11,
				},
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
			},
			["nameplates"] = {
				["filters"] = {
				},
			},
			["unitframe"] = {
				["statusbar"] = "ElvUI Blank",
				["fontOutline"] = "THICKOUTLINE",
				["smoothbars"] = true,
				["font"] = "Expressway",
				["fontSize"] = 9,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -2,
							["position"] = "TOP",
						},
						["height"] = 50,
						["width"] = 122,
					},
					["pet"] = {
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 14,
						},
						["debuffs"] = {
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["width"] = 122,
						},
						["height"] = 50,
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["width"] = 122,
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["numrows"] = 4,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 1,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["growthDirection"] = "RIGHT_DOWN",
						["infoPanel"] = {
							["enable"] = true,
						},
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
						["healPrediction"] = true,
						["height"] = 59,
						["verticalSpacing"] = 0,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["width"] = 110,
					},
					["player"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["perrow"] = 7,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["height"] = 80,
						["castbar"] = {
							["iconAttached"] = false,
							["iconSize"] = 54,
							["height"] = 35,
							["width"] = 478,
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["width"] = 189,
					},
					["target"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["hideonnpc"] = false,
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["enable"] = true,
							["sizeOverride"] = 27,
							["perrow"] = 4,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Expressway",
						},
						["growthDirection"] = "UP_RIGHT",
						["health"] = {
							["yOffset"] = -6,
						},
						["width"] = 140,
						["height"] = 28,
						["name"] = {
							["position"] = "LEFT",
						},
						["visibility"] = "[nogroup] hide;show",
						["groupsPerRowCol"] = 5,
					},
					["arena"] = {
						["castbar"] = {
							["width"] = 246,
						},
						["spacing"] = 26,
					},
					["assist"] = {
						["enable"] = false,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["leftChatPanel"] = false,
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["font"] = "Expressway",
				["panels"] = {
					["BottomMiniPanel"] = "Time",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftMiniPanel"] = "",
					["LeftChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["fontSize"] = 9,
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["globalFadeAlpha"] = 0.87,
				["stanceBar"] = {
					["inheritGlobalFade"] = true,
				},
				["bar6"] = {
					["buttonsize"] = 38,
				},
				["bar4"] = {
					["enabled"] = false,
					["backdrop"] = false,
					["buttonsize"] = 38,
				},
			},
			["dtbars"] = {
				["DTB2_1"] = {
					["border"] = true,
					["transparent"] = false,
					["enable"] = true,
					["pethide"] = true,
					["growth"] = "HORIZONTAL",
					["width"] = 300,
				},
			},
			["chat"] = {
				["chatHistory"] = false,
				["fontSize"] = 11,
				["tabFont"] = "Expressway",
				["tabFontSize"] = 11,
				["fadeUndockedTabs"] = false,
				["editBoxPosition"] = "ABOVE_CHAT",
				["fadeTabsNoBackdrop"] = false,
				["font"] = "Expressway",
				["panelBackdrop"] = "HIDEBOTH",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["fontSize"] = 11,
				["headerFontSize"] = 11,
			},
			["layoutSet"] = "dpsMelee",
		},
		["Minuitsun - 血色十字军"] = {
			["databars"] = {
				["reputation"] = {
					["height"] = 146,
					["textSize"] = 10,
					["hideInVehicle"] = true,
					["width"] = 8,
				},
				["azerite"] = {
					["height"] = 8,
					["orientation"] = "HORIZONTAL",
					["mouseover"] = true,
					["width"] = 162,
				},
				["experience"] = {
					["orientation"] = "HORIZONTAL",
					["height"] = 5,
					["textSize"] = 10,
					["width"] = 196,
				},
				["honor"] = {
					["enable"] = false,
					["hideOutsidePvP"] = true,
					["height"] = 155,
				},
			},
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["size"] = 36,
				},
				["fontSize"] = 11,
				["interruptAnnounce"] = "EMOTE",
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Expressway",
					["locationFontSize"] = 10,
					["resetZoom"] = {
						["enable"] = true,
						["time"] = 5,
					},
					["icons"] = {
						["difficulty"] = {
							["scale"] = 0.8,
						},
						["ticket"] = {
							["scale"] = 0.75,
							["position"] = "TOP",
						},
						["mail"] = {
							["xOffset"] = 0,
							["yOffset"] = -5,
							["position"] = "BOTTOMLEFT",
						},
						["classHall"] = {
							["scale"] = 0.5,
							["position"] = "TOPRIGHT",
						},
						["lfgEye"] = {
							["xOffset"] = 0,
						},
					},
					["size"] = 160,
				},
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.350796043872833,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0.584313725490196,
					["g"] = 0.992156862745098,
					["r"] = 0,
				},
				["loginmessage"] = false,
				["threat"] = {
					["enable"] = false,
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Expressway",
				},
				["decimalLenght"] = 0,
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["vehicleSeatIndicatorSize"] = 76,
				["stickyFrames"] = false,
				["altPowerBar"] = {
					["statusBar"] = "Duffed",
					["textFormat"] = "NAMECURMAXPERC",
					["statusBarColorGradient"] = true,
					["enable"] = false,
					["fontSize"] = 11,
					["font"] = "Expressway",
				},
				["font"] = "Expressway",
				["bonusObjectivePosition"] = "AUTO",
				["talkingHeadFrameScale"] = 0.7,
				["backdropcolor"] = {
					["a"] = 1,
					["b"] = 0.149019607843137,
					["g"] = 0.145098039215686,
					["r"] = 0.145098039215686,
				},
				["displayCharacterInfo"] = true,
				["displayInspectInfo"] = true,
				["numberPrefixStyle"] = "CHINESE",
			},
			["bags"] = {
				["countFontSize"] = 11,
				["itemLevelFont"] = "Expressway",
				["split"] = {
					["player"] = true,
				},
				["bagSize"] = 36,
				["itemLevelFontSize"] = 12,
				["alignToChat"] = false,
				["junkIcon"] = true,
				["countFont"] = "Expressway",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 36,
				["bankWidth"] = 426,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["showBindType"] = true,
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
						["fontSize"] = 20,
					},
					["override"] = true,
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["bagWidth"] = 408,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["shortChannels"] = false,
				["tabFontOutline"] = "OUTLINE",
				["keywordSound"] = "Whisper Alert",
				["tabFont"] = "Expressway",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelTabTransparency"] = true,
				["panelWidthRight"] = 250,
				["panelBackdrop"] = "HIDEBOTH",
				["chatHistory"] = false,
				["customTimeColor"] = {
					["b"] = 0.98,
					["g"] = 0.75,
					["r"] = 0,
				},
				["keywords"] = "%MYNAME%, ElvUI, MerathilisUI",
				["fadeUndockedTabs"] = false,
				["font"] = "Expressway",
				["panelHeightRight"] = 146,
				["copyChatLines"] = true,
				["panelColor"] = {
					["a"] = 0,
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["panelColorConverted"] = true,
				["hideVoiceButtons"] = true,
				["panelWidth"] = 300,
			},
			["movers"] = {
				["LUI_SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-170",
				["MER_RaidBuffReminderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,188,-2",
				["ElvUF_FocusTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-513,277",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,245,90",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,262,-518",
				["MER_ReminderMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,543,314",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,0,808",
				["AutoButtonAnchor2Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-200,225",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,542,269",
				["VehicleSeatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-112,330",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,281",
				["SpecializationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-28,17",
				["LUI_RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,241,236",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,-189,14",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-23",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-422,27",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-55,-201",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,200",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,737,82",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-19,-276",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-241,281",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,2",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,571",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-22",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,68",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,1078",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,2",
				["GMMover"] = "TOP,ElvUIParent,TOP,-271,-2",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,336",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,374",
				["mUIMiddleDTPanelMover"] = "TOP,ElvUIParent,TOP,0,0",
				["AutoButtonAnchorMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-200,183",
				["ClassBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,184,-2",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ExperienceBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,379,0",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,241,281",
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,355",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-163",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,10,198",
				["mUI_RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,241,236",
				["DTB2_数据1_Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,252",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,14",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,247",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-170,-119",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,241,261",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,281",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,542,281",
				["MER_SquareMinimapButtonBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,175",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,41",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,189,14",
				["DTB2_1_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["LuiRaidUtility_Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-494,2",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-241,261",
				["LuiMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-173",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-159",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,265",
				["Notification Mover"] = "TOP,ElvUIParent,TOP,0,-37",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-531,21",
				["ElvAB_6"] = "TOPLEFT,ElvUIParent,TOPLEFT,299,-253",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-269,301",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,626",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-264,-316",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,503,12",
				["MER_MicroBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,361",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-74",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,183,-2",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-1",
			},
			["mui"] = {
				["raidmarkers"] = {
					["buttonSize"] = 20,
					["enable"] = false,
					["modifier"] = "alt-",
					["visibility"] = "ALWAYS",
					["reverse"] = true,
				},
				["general"] = {
					["LoginMsg"] = false,
					["splashScreen"] = false,
					["panels"] = false,
					["shadowOverlay"] = false,
				},
				["media"] = {
					["fonts"] = {
						["objective"] = {
							["size"] = 13,
						},
						["objectiveHeader"] = {
							["outline"] = "NONE",
							["size"] = 12,
						},
					},
				},
				["armory"] = {
					["gradient"] = {
						["color"] = {
							["g"] = 0.956862745098039,
							["b"] = 0.407843137254902,
						},
						["colorStyle"] = "CUSTOM",
					},
					["stats"] = {
						["List"] = {
							["ATTACK_AP"] = true,
							["MOVESPEED"] = true,
							["POWER"] = true,
							["ATTACK_DAMAGE"] = true,
						},
					},
				},
				["raidBuffs"] = {
					["enable"] = false,
				},
				["chat"] = {
					["isExpanded"] = false,
					["hideChat"] = true,
					["emotes"] = false,
				},
				["cooldownFlash"] = {
					["enable"] = false,
				},
				["reminder"] = {
					["enable"] = false,
				},
				["tooltip"] = {
					["progressInfo"] = {
						["enable"] = false,
					},
				},
				["nameHover"] = {
					["enable"] = false,
				},
				["actionbars"] = {
					["autoButtons"] = {
						["soltAutoButtons"] = {
							["enable"] = false,
						},
					},
					["specBar"] = {
						["enable"] = false,
					},
					["equipBar"] = {
						["enable"] = false,
					},
				},
				["installed"] = true,
				["locPanel"] = {
					["colorType_Coords"] = "CLASS",
					["colorType"] = "DEFAULT",
					["template"] = "NoBackdrop",
					["enable"] = false,
					["height"] = 20,
					["width"] = 330,
				},
				["datatexts"] = {
					["rightChatTabDatatextPanel"] = {
						["enable"] = false,
					},
					["middle"] = {
						["height"] = 15,
						["width"] = 408,
					},
					["panels"] = {
						["ChatTab_Datatext_Panel"] = {
							["right"] = "Friends",
							["left"] = "System",
							["middle"] = "Durability",
						},
						["mUIMiddleDTPanel"] = {
							["middle"] = "System",
						},
					},
					["threatBar"] = {
						["enable"] = false,
					},
				},
				["nsct"] = {
					["enable"] = false,
				},
				["nameplates"] = {
					["castbarTarget"] = false,
				},
				["microBar"] = {
					["scale"] = 0.8,
					["text"] = {
						["position"] = "TOP",
					},
					["hideInCombat"] = false,
				},
				["misc"] = {
					["cursor"] = true,
					["raidInfo"] = false,
				},
				["bags"] = {
					["equipOverlay"] = false,
				},
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["itemCount"] = "NONE",
				["healthBar"] = {
					["statusPosition"] = "TOP",
					["fontSize"] = 11,
					["font"] = "Expressway",
					["height"] = 6,
				},
				["font"] = "Expressway",
				["alwaysShowRealm"] = true,
				["style"] = "inset",
				["smallTextFontSize"] = 11,
			},
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 16,
					["size"] = 36,
					["countFontsize"] = 16,
					["wrapAfter"] = 16,
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 12,
					["size"] = 30,
					["verticalSpacing"] = 15,
					["countFontsize"] = 12,
					["wrapAfter"] = 16,
				},
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "默认",
						["fontSize"] = 12,
					},
				},
				["font"] = "Merathilis Gothom Narrow",
			},
			["dtbars"] = {
				["DTB2_数据1"] = {
					["enable"] = true,
					["growth"] = "VERTICAL",
					["transparent"] = true,
					["height"] = 49,
					["pethide"] = true,
					["border"] = true,
					["width"] = 50,
				},
				["DTB2_1"] = {
					["enable"] = true,
					["growth"] = "HORIZONTAL",
					["transparent"] = true,
					["height"] = 12,
					["pethide"] = true,
					["border"] = false,
					["width"] = 460,
				},
			},
			["unitframe"] = {
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "001",
				["colors"] = {
					["power"] = {
						["ENERGY"] = {
							["b"] = 0.349019607843137,
							["g"] = 0.631372549019608,
							["r"] = 0.650980392156863,
						},
						["RAGE"] = {
							["b"] = 0.254901960784314,
							["g"] = 0.250980392156863,
							["r"] = 0.780392156862745,
						},
					},
					["castColor"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["transparentCastbar"] = true,
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["castNoInterrupt"] = {
						["b"] = 0.250980392156863,
						["g"] = 0.250980392156863,
						["r"] = 0.780392156862745,
					},
					["health_backdrop"] = {
						["g"] = 0.0117647058823529,
						["b"] = 0.0117647058823529,
					},
					["health"] = {
						["b"] = 0.309803921568627,
						["g"] = 0.309803921568627,
						["r"] = 0.309803921568627,
					},
					["transparentAurabars"] = true,
					["frameGlow"] = {
						["targetGlow"] = {
							["enable"] = false,
						},
						["mainGlow"] = {
							["class"] = true,
						},
						["mouseoverGlow"] = {
							["color"] = {
								["a"] = 0.5,
								["b"] = 0,
								["g"] = 0,
								["r"] = 0,
							},
							["class"] = true,
						},
					},
					["health_backdrop_dead"] = {
						["g"] = 0.0117647058823529,
						["b"] = 0.0117647058823529,
					},
				},
				["smartRaidFilter"] = false,
				["font"] = "Expressway",
				["smoothbars"] = true,
				["cooldown"] = {
					["fonts"] = {
						["font"] = "默认",
						["fontSize"] = 16,
					},
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["anchorPoint"] = "LEFT",
							["sizeOverride"] = 36,
							["clickThrough"] = true,
							["maxDuration"] = 0,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 3,
						},
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["colorOverride"] = "FORCE_ON",
						["groupBy"] = "ROLE",
						["buffIndicator"] = {
							["size"] = 10,
							["fontSize"] = 11,
						},
						["roleIcon"] = {
							["xOffset"] = 2,
							["size"] = 11,
							["position"] = "LEFT",
						},
						["targetsGroup"] = {
							["anchorPoint"] = "BOTTOM",
							["name"] = {
								["text_format"] = "[name:short]",
							},
							["height"] = 16,
							["xOffset"] = 0,
							["width"] = 79,
						},
						["threatStyle"] = "BORDERS",
						["power"] = {
							["height"] = 3,
							["position"] = "BOTTOMRIGHT",
							["text_format"] = "",
							["yOffset"] = 2,
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["width"] = 125,
						["verticalSpacing"] = 1,
						["orientation"] = "MIDDLE",
						["name"] = {
							["attachTextTo"] = "Frame",
							["text_format"] = "",
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "CENTER",
							["xOffset"] = 0,
							["bgUseBarTexture"] = true,
							["text_format"] = "",
							["yOffset"] = 2,
						},
						["height"] = 38,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 20,
							["useBlacklist"] = false,
							["useWhitelist"] = true,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -20,
							["anchorPoint"] = "TOPRIGHT",
							["xOffset"] = -1,
							["countFontSize"] = 10,
							["clickThrough"] = true,
							["useFilter"] = "MER_RaidCDs",
							["perrow"] = 3,
							["noDuration"] = false,
							["countFont"] = "默认",
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 16,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["raidicon"] = {
							["attachTo"] = "RIGHT",
							["yOffset"] = 0,
							["xOffset"] = -2,
							["size"] = 16,
						},
					},
					["player"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 30,
							["perrow"] = 3,
							["fontSize"] = 12,
							["countFont"] = "Expressway",
							["yOffset"] = 15,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["height"] = 15,
							["detachedWidth"] = 278,
							["fill"] = "filled",
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["RestIcon"] = {
							["anchorPoint"] = "LEFT",
							["xOffset"] = 11,
							["yOffset"] = 0,
							["size"] = 18,
							["texture"] = "RESTING1",
						},
						["threatStyle"] = "ICONTOPRIGHT",
						["castbar"] = {
							["width"] = 200,
							["insideInfoPanel"] = false,
						},
						["customTexts"] = {
							["Life"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[health:smart-right]",
								["yOffset"] = 0,
								["font"] = "默认",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["MERPower"] = {
								["attachTextTo"] = "Power",
								["enable"] = false,
								["text_format"] = "[power:smart]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 16,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 22,
								["font"] = "默认",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -1,
								["size"] = 12,
							},
							["Group"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[group]",
								["yOffset"] = -24,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Percent"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[perhp<]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
							["Resting"] = {
								["attachTextTo"] = "Frame",
								["enable"] = false,
								["text_format"] = "[resting]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
						},
						["cft"] = {
							["text"] = {
								["enable"] = false,
							},
						},
						["CombatIcon"] = {
							["anchorPoint"] = "LEFT",
							["customTexture"] = "",
							["xOffset"] = 9,
							["texture"] = "COMBAT",
							["size"] = 12,
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 24,
							["transparent"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["powerPrediction"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["position"] = "CENTER",
							["height"] = 3,
							["hideonnpc"] = true,
							["enable"] = false,
							["detachedWidth"] = 278,
						},
						["health"] = {
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
							["text_format"] = "",
							["xOffset"] = 0,
						},
						["orientation"] = "RIGHT",
						["height"] = 30,
						["buffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 24,
							["fontSize"] = 12,
							["attachTo"] = "FRAME",
							["anchorPoint"] = "TOPRIGHT",
							["priority"] = "Blacklist,MER_RaidCDs",
							["countFont"] = "Expressway",
							["perrow"] = 4,
						},
						["pvpIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
							["xOffset"] = 7,
							["scale"] = 0.5,
							["yOffset"] = 7,
						},
						["raidicon"] = {
							["yOffset"] = 15,
							["position"] = "TOP",
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 0,
							["fontSize"] = 10,
							["countFont"] = "Expressway",
							["anchorPoint"] = "TOPLEFT",
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["latency"] = true,
							["height"] = 10,
							["width"] = 75,
						},
						["width"] = 75,
						["infoPanel"] = {
							["height"] = 14,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "Health",
							["text_format"] = "[name:short]",
						},
						["height"] = 30,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 0,
							["bgUseBarTexture"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Health",
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["enable"] = false,
							["height"] = 4,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 2,
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 20,
							["maxDuration"] = 0,
							["clickThrough"] = true,
							["xOffset"] = -42,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 2,
						},
						["rdebuffs"] = {
							["size"] = 22,
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 1,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["heal"] = true,
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["size"] = 10,
							["yOffset"] = 0,
						},
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 3,
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "NONE",
								["xOffset"] = 0,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["buffIndicator"] = {
							["size"] = 10,
							["fontSize"] = 11,
						},
						["groupsPerRowCol"] = 4,
						["infoPanel"] = {
							["height"] = 13,
							["transparent"] = true,
						},
						["name"] = {
							["text_format"] = "",
						},
						["health"] = {
							["text_format"] = "",
							["bgUseBarTexture"] = true,
						},
						["verticalSpacing"] = 2,
						["height"] = 25,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 16,
							["useBlacklist"] = false,
							["useWhitelist"] = true,
							["noDuration"] = false,
							["playerOnly"] = false,
							["yOffset"] = -20,
							["anchorPoint"] = "TOPLEFT",
							["xOffset"] = 3,
							["countFontSize"] = 9,
							["clickThrough"] = true,
							["useFilter"] = "MER_RaidCDs",
							["priority"] = "MER_RaidCDs",
							["perrow"] = 1,
							["countFont"] = "Expressway",
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["yOffset"] = 0,
							["size"] = 15,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["boss"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 30,
							["perrow"] = 6,
							["xOffset"] = -2,
							["countFont"] = "Expressway",
							["numrows"] = 1,
							["yOffset"] = 0,
						},
						["threatStyle"] = "HEALTHBORDER",
						["power"] = {
							["attachTextTo"] = "Power",
							["position"] = "CENTER",
							["xOffset"] = 0,
							["text_format"] = "[power:smart]",
							["height"] = 9,
						},
						["customTexts"] = {
							["Life"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Percent"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<]",
								["yOffset"] = -11,
								["font"] = "伤害数字",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 18,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 18,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
						},
						["width"] = 156,
						["infoPanel"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "RIGHT",
							["bgUseBarTexture"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["yOffset"] = 13,
						},
						["spacing"] = 30,
						["height"] = 35,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 32,
							["xOffset"] = 2,
							["countFont"] = "Expressway",
							["yOffset"] = 0,
						},
						["castbar"] = {
							["width"] = 156,
							["timeToHold"] = 0.5,
							["insideInfoPanel"] = false,
						},
						["name"] = {
							["attachTextTo"] = "Frame",
							["position"] = "RIGHT",
							["xOffset"] = 6,
							["text_format"] = "",
							["yOffset"] = 16,
						},
					},
					["raid40"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 15,
							["useBlacklist"] = false,
							["enable"] = true,
							["yOffset"] = -8,
							["anchorPoint"] = "TOPRIGHT",
							["clickThrough"] = true,
							["useFilter"] = "Whitlist (Strict)",
							["maxDuration"] = 0,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["perrow"] = 5,
							["countFont"] = "Expressway",
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Expressway",
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["buffIndicator"] = {
							["size"] = 10,
							["fontSize"] = 11,
						},
						["classHover"] = true,
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["heal"] = true,
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["size"] = 10,
							["enable"] = true,
							["yOffset"] = -1,
						},
						["raidWideSorting"] = false,
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["height"] = 4,
							["attachTextTo"] = "Health",
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["health"] = {
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
							["text_format"] = "",
						},
						["width"] = 83,
						["infoPanel"] = {
							["height"] = 13,
							["transparent"] = true,
						},
						["verticalSpacing"] = 2,
						["name"] = {
							["text_format"] = "",
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["height"] = 35,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 20,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["perrow"] = 1,
							["anchorPoint"] = "CENTER",
							["countFontSize"] = 9,
							["clickThrough"] = true,
							["useFilter"] = "MER_RaidCDs",
							["priority"] = "MER_RaidCDs",
							["noDuration"] = false,
							["countFont"] = "Expressway",
						},
						["visibility"] = "[@raid21,noexists] hide;show",
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["yOffset"] = 0,
							["size"] = 15,
						},
					},
					["focus"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = 0,
							["enable"] = false,
							["height"] = 4,
						},
						["height"] = 30,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 0,
							["bgUseBarTexture"] = true,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["latency"] = true,
							["width"] = 75,
							["insideInfoPanel"] = false,
						},
						["width"] = 75,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 30,
							["fontSize"] = 12,
							["countFont"] = "Expressway",
							["perrow"] = 7,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "BUFFS",
						},
						["middleClickFocus"] = false,
						["threatStyle"] = "ICONTOPLEFT",
						["castbar"] = {
							["latency"] = true,
							["width"] = 200,
							["insideInfoPanel"] = false,
						},
						["customTexts"] = {
							["Percent"] = {
								["attachTextTo"] = "Health",
								["enable"] = false,
								["text_format"] = "[perhp<]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 11,
							},
							["Life"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:smart-left]",
								["yOffset"] = 0,
								["font"] = "默认",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["MERPower"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[power:smart]",
								["yOffset"] = -10,
								["font"] = "YYW",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 3,
								["size"] = 9,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:abbrev]",
								["yOffset"] = 22,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 3,
								["size"] = 12,
							},
						},
						["cft"] = {
							["text"] = {
								["enable"] = false,
							},
						},
						["pvpIcon"] = {
							["anchorPoint"] = "TOPLEFT",
							["xOffset"] = -7,
							["scale"] = 0.5,
							["yOffset"] = 7,
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 24,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["bgUseBarTexture"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -32,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["orientation"] = "LEFT",
						["height"] = 30,
						["buffs"] = {
							["countFontSize"] = 10,
							["sizeOverride"] = 24,
							["fontSize"] = 10,
							["attachTo"] = "Health",
							["countFont"] = "Expressway",
							["priority"] = "Personal,Boss,Whitelist,Blacklist,PlayerBuffs,nonPersonal",
							["numrows"] = 2,
							["yOffset"] = 15,
						},
						["power"] = {
							["powerPrediction"] = true,
							["strataAndLevel"] = {
								["frameLevel"] = 27,
							},
							["enable"] = false,
							["xOffset"] = 0,
							["text_format"] = "",
							["height"] = 3,
						},
						["raidicon"] = {
							["yOffset"] = 15,
							["position"] = "TOP",
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["text_format"] = "[powercolor][power:smart]",
							["width"] = "inset",
						},
					},
					["targettarget"] = {
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["power"] = {
							["enable"] = false,
							["height"] = 4,
							["position"] = "CENTER",
						},
						["height"] = 30,
						["raidicon"] = {
							["yOffset"] = 15,
							["position"] = "TOP",
						},
						["health"] = {
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
						},
						["width"] = 75,
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 10,
				["goldFormat"] = "CONDENSED",
				["panelTransparency"] = true,
				["actionbar5"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "System",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["DTB2_1"] = {
						["left"] = "Durability",
						["farleft"] = "Guild",
						["right"] = "ElvUI Config",
						["middle"] = "System",
						["farright"] = "Friends",
					},
					["BottomLeftMiniPanel"] = "System",
					["DTB2_数据1"] = {
						["middle"] = "Guild",
						["left"] = "Friends",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Durability",
						["left"] = "Friends",
						["middle"] = "",
					},
				},
				["battleground"] = false,
				["wordWrap"] = true,
				["font"] = "默认",
				["actionbar3"] = false,
				["fontOutline"] = "OUTLINE",
				["leftChatPanel"] = false,
				["goldCoins"] = true,
				["rightChatPanel"] = false,
				["panelBackdrop"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 1,
					["buttonsize"] = 26,
				},
				["bar6"] = {
					["buttons"] = 8,
					["buttonspacing"] = 3,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 3,
					["visibility"] = "[vehicleui][overridebar][petbattle][possessbar] hide; show",
				},
				["extraActionButton"] = {
					["scale"] = 0.75,
				},
				["bar2"] = {
					["buttonspacing"] = 3,
					["backdropSpacing"] = 3,
					["visibility"] = "[vehicleui][overridebar][petbattle][possessbar] hide; show",
					["heightMult"] = 2,
				},
				["hotkeytext"] = false,
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttons"] = 4,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 26,
				},
				["bar1"] = {
					["buttonspacing"] = 1,
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["buttonsize"] = 26,
				},
				["cooldown"] = {
					["fonts"] = {
						["font"] = "Expressway",
						["fontSize"] = 20,
					},
					["override"] = true,
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["font"] = "Expressway",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "OUTLINE",
				["showGrid"] = false,
				["stanceBar"] = {
					["enabled"] = false,
					["point"] = "BOTTOMLEFT",
					["buttonspacing"] = 3,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdropSpacing"] = 0,
					["point"] = "BOTTOMLEFT",
					["buttons"] = 9,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 9,
					["buttonsize"] = 22,
					["backdrop"] = false,
				},
				["bar4"] = {
					["inheritGlobalFade"] = true,
					["backdrop"] = false,
					["buttons"] = 4,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 2,
					["buttonsize"] = 26,
					["backdropSpacing"] = 0,
				},
			},
			["nameplates"] = {
				["fontSize"] = 12,
				["threat"] = {
					["badScale"] = 1.1,
					["useThreatColor"] = false,
				},
				["visibility"] = {
					["enemy"] = {
						["totems"] = true,
						["pets"] = true,
					},
				},
				["stackFont"] = "Expressway",
				["nonTargetTransparency"] = 0.6,
				["statusbar"] = "001",
				["plateSize"] = {
					["enemyWidth"] = 160,
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["yOffset"] = 10,
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["width"] = 160,
							["height"] = 10,
							["yOffset"] = -16,
						},
						["questIcon"] = {
							["xOffset"] = 1,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["size"] = 16,
							["position"] = "RIGHT",
						},
						["eliteIcon"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["yOffset"] = -21,
							["enable"] = true,
							["size"] = 12,
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[health:smart-right]",
								["font"] = "默认",
							},
							["width"] = 168,
						},
						["level"] = {
							["yOffset"] = -6,
						},
						["name"] = {
							["yOffset"] = -6,
							["fontSize"] = 13,
						},
						["buffs"] = {
							["size"] = 26,
							["yOffset"] = 39,
						},
					},
					["TARGET"] = {
						["classpower"] = {
							["yOffset"] = 23,
							["width"] = 144,
						},
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
							["yOffset"] = 10,
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["width"] = 160,
							["height"] = 10,
							["yOffset"] = -16,
						},
						["questIcon"] = {
							["xOffset"] = 1,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["size"] = 16,
							["position"] = "RIGHT",
						},
						["eliteIcon"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["yOffset"] = -21,
							["enable"] = true,
							["size"] = 12,
						},
						["name"] = {
							["yOffset"] = -6,
							["fontSize"] = 13,
						},
						["level"] = {
							["yOffset"] = -6,
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[health:smart-right]",
								["font"] = "默认",
							},
							["width"] = 168,
						},
						["buffs"] = {
							["size"] = 26,
							["filters"] = {
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["yOffset"] = 39,
						},
					},
					["PLAYER"] = {
						["debuffs"] = {
							["numAuras"] = 8,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["size"] = 24,
						},
						["name"] = {
							["format"] = "[name:abbrev]",
							["font"] = "Expressway",
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["fontSize"] = 10,
							["font"] = "Expressway",
						},
						["level"] = {
							["font"] = "Expressway",
						},
						["buffs"] = {
							["size"] = 20,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["yOffset"] = 2,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[perhp<%]",
								["font"] = "Expressway",
							},
						},
						["power"] = {
							["text"] = {
								["font"] = "Expressway",
								["fontSize"] = 10,
							},
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
							["yOffset"] = 10,
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["power"] = {
							["displayAltPower"] = true,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["size"] = 16,
							["position"] = "RIGHT",
						},
						["name"] = {
							["fontSize"] = 13,
							["format"] = "[name]",
							["yOffset"] = -6,
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[health:smart-right]",
								["font"] = "默认",
							},
							["width"] = 168,
						},
						["title"] = {
							["format"] = "[npctitle]",
						},
						["buffs"] = {
							["size"] = 26,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["yOffset"] = 39,
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
							["yOffset"] = -6,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["width"] = 160,
							["height"] = 10,
							["yOffset"] = -16,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
							["yOffset"] = 10,
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["power"] = {
							["displayAltPower"] = true,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -16,
							["size"] = 16,
							["position"] = "RIGHT",
						},
						["name"] = {
							["fontSize"] = 13,
							["format"] = "[name]",
							["yOffset"] = -6,
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[health:smart-right]",
								["font"] = "默认",
							},
						},
						["title"] = {
							["format"] = "[npctitle]",
						},
						["buffs"] = {
							["size"] = 26,
							["filters"] = {
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["yOffset"] = 39,
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
							["yOffset"] = -6,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["width"] = 160,
							["height"] = 10,
							["yOffset"] = -16,
						},
					},
				},
				["stackFontSize"] = 9,
				["clampToScreen"] = true,
				["colors"] = {
					["selection"] = {
						[0] = {
							["g"] = 0,
							["b"] = 0.305882352941177,
						},
					},
				},
				["font"] = "Expressway",
				["smoothbars"] = true,
				["lowHealthThreshold"] = 0,
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
					},
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["filters"] = {
					["爆炸物"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
				},
			},
			["lui"] = {
				["skins"] = {
					["shadowOverlay"] = {
						["enable"] = false,
					},
				},
				["modules"] = {
					["misc"] = {
						["loot"] = {
							["lootSpecManager"] = {
								["enable"] = false,
							},
						},
						["general"] = {
							["autoRelease"] = false,
							["autoScreenShoot"] = {
								["enable"] = false,
								["enableBtn"] = false,
							},
							["setPoi"] = {
								["enable"] = true,
								["poiTextSize"] = 20,
								["enableBtn"] = true,
							},
							["raidUtilityPlus"] = {
								["ruMouseover"] = true,
							},
						},
					},
					["combat"] = {
						["announceSystem"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["combatNotification"] = {
							["enableBtn"] = false,
						},
						["raidMarkers"] = {
							["backdrop"] = false,
							["mouseover"] = true,
							["autoMarkers"] = {
								["enable"] = false,
							},
						},
					},
					["blizzard"] = {
						["general"] = {
							["minimapWheel"] = false,
							["castbarTime"] = false,
						},
						["blizzardMoveFrames"] = {
							["remember"] = false,
							["points"] = {
								["FriendsFrame"] = {
									"TOPLEFT", -- [1]
									"UIParent", -- [2]
									"TOPLEFT", -- [3]
									16, -- [4]
									-116.000022888184, -- [5]
								},
								["GameMenuFrame"] = {
									"CENTER", -- [1]
									"UIParent", -- [2]
									"CENTER", -- [3]
									0, -- [4]
									0, -- [5]
								},
								["CommunitiesFrame"] = {
									"TOPLEFT", -- [1]
									"UIParent", -- [2]
									"TOPLEFT", -- [3]
									16, -- [4]
									-116.000007629395, -- [5]
								},
							},
						},
					},
					["armory"] = {
						["general"] = {
							["backdrop"] = {
								["selectedBG"] = "Space",
								["alpha"] = 0.6,
							},
							["gradient"] = {
								["colorStyle"] = "VALUE",
							},
						},
					},
					["actionbars"] = {
						["microBar"] = {
							["scale"] = 0.8,
							["text"] = {
								["friends"] = false,
								["guild"] = false,
								["textColor"] = {
									["r"] = 0,
									["g"] = 0.992156862745098,
									["b"] = 0.584313725490196,
								},
							},
						},
						["general"] = {
							["finishingMoveHighlight"] = false,
						},
						["autoButtons"] = {
							["soltAutoButtons"] = {
								["enable"] = false,
							},
							["whiteList"] = {
								[86534] = false,
								[116268] = false,
								[116276] = false,
								[116411] = false,
								[133897] = false,
								[63359] = false,
								[109220] = false,
								[133882] = false,
								[76097] = false,
								[49040] = false,
								[133756] = false,
								[140916] = false,
								[131931] = false,
								[109221] = false,
								[76090] = false,
								[76098] = false,
								[127295] = false,
								[86536] = false,
								[127843] = false,
								[81901] = false,
								[18606] = false,
								[109222] = false,
								[137299] = false,
								[64400] = false,
								[122454] = false,
								[118922] = false,
								[129725] = false,
								[116271] = false,
								[86569] = false,
								[90006] = false,
								[109223] = false,
								[133999] = false,
								[86125] = false,
								[122455] = false,
								[76093] = false,
								[122456] = false,
								[136605] = false,
								[138146] = false,
								[109217] = false,
								[76094] = false,
								[128772] = false,
								[163223] = false,
								[122100] = false,
								[36799] = false,
								[163222] = false,
								[163224] = false,
								[118269] = false,
								[118711] = false,
								[133925] = false,
								[122453] = false,
								[153023] = false,
								[18607] = false,
								[142117] = false,
								[64398] = false,
								[76095] = false,
								[127030] = false,
								[5512] = false,
								[129161] = false,
								[128651] = false,
								[118330] = false,
								[76089] = false,
								[122452] = false,
								[118704] = false,
								[132514] = false,
								[64402] = false,
								[109076] = false,
								[109218] = false,
								[109219] = false,
								[147707] = false,
								[116266] = false,
								[122451] = false,
								[64401] = false,
								[64399] = false,
							},
						},
					},
					["maps"] = {
						["minimapIcons"] = {
							["buttons"] = {
								["barMouseOver"] = true,
								["buttonsPerRow"] = 6,
								["buttonSpacing"] = 1,
								["iconSize"] = 26,
							},
							["square"] = {
								["enable"] = false,
							},
						},
						["squareMinimap"] = {
							["enableBtn"] = false,
						},
						["enhancedWorldMap"] = {
							["useReveal"] = true,
						},
					},
					["cvar"] = {
						["unitframes"] = {
							["noBuffDebuffFilterOnTarget"] = true,
						},
						["general"] = {
							["breakUpLargeNumbers"] = false,
							["alwaysCompareItems"] = true,
						},
						["combatText"] = {
							["playerCombatText"] = {
								["floatingCombatTextCombatHealingAbsorbSelf"] = false,
								["floatingCombatTextReactives"] = false,
								["floatingCombatTextLowManaHealth"] = false,
								["floatingCombatTextCombatState"] = true,
							},
							["worldTextScale"] = 1.6,
							["WorldTextScale"] = 1.6,
							["targetCombatText"] = {
								["floatingCombatTextCombatDamageDirectionalScale"] = 0,
							},
						},
						["nameplates"] = {
							["nameplateMinScale"] = 1,
							["nameplateMotionSpeed"] = 0.05,
							["nameplateOverlapV"] = 1.5,
							["nameplateOccludedAlphaMult"] = 1,
							["ShowClassColorInFriendlyNameplate"] = false,
							["nameplateMaxDistance"] = 40,
							["nameplateOtherTopInset"] = 0.085,
							["nameplateLargeTopInset"] = 0.085,
						},
						["combat"] = {
							["SpellQueueWindow"] = 250,
						},
						["chat"] = {
							["profanityFilter"] = false,
							["removeChatDelay"] = true,
						},
						["interface"] = {
							["xpBarText"] = false,
							["weatherDensity"] = 0,
							["cameraDistanceMaxZoomFactor"] = 2.6,
						},
					},
					["unitframes"] = {
						["targetframe"] = {
							["rangeText"] = {
								["rangePoi"] = "TOPLEFT",
								["rangePoiY"] = 11,
								["rangeFontSize"] = 9,
							},
						},
						["focusframe"] = {
							["rangeText"] = {
								["enable"] = false,
								["enableBtn"] = false,
							},
						},
						["icons"] = {
							["role"] = "ElvUI",
						},
						["playerframe"] = {
							["swingBar"] = {
								["enable"] = false,
							},
						},
					},
					["nameplates"] = {
						["castbarTarget"] = false,
					},
					["chat"] = {
						["chatBub"] = {
							["enable"] = false,
						},
						["chatBar"] = {
							["barMouseOver"] = true,
							["fontSize"] = 13,
						},
						["chatShortChannel"] = {
							["hideChannelNum"] = true,
						},
					},
					["quest"] = {
						["questAutomation"] = {
							["syncBtn"] = true,
							["autoChoices"] = true,
						},
						["questAnnouncment"] = {
							["enableBtn"] = false,
						},
					},
					["tooltip"] = {
						["flashingCursor"] = {
							["cursorSize"] = 512,
						},
						["raidProg"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["nameHover"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["atlasLootReverse"] = false,
						["daisyCosp"] = false,
					},
				},
				["general"] = {
					["loginMsg"] = false,
					["splashScreen"] = false,
					["gamemenu"] = false,
				},
				["media"] = {
					["miscTexts"] = {
						["questTracker"] = {
							["enable"] = false,
							["fontSize"] = 13,
							["fontcolor"] = {
								["g"] = 0.956862745098039,
								["b"] = 0.407843137254902,
							},
							["enableBtn"] = false,
						},
						["mailText"] = {
							["enableBtn"] = false,
						},
						["questGossip"] = {
							["enableBtn"] = false,
						},
						["questFontSuperHuge"] = {
							["enableBtn"] = false,
						},
						["questTrackerTitle"] = {
							["fontcolor"] = {
								["b"] = 0.584313725490196,
								["g"] = 0.992156862745098,
								["r"] = 0,
							},
							["fontSize"] = 13,
						},
						["questHeader"] = {
							["fontcolor"] = {
								["g"] = 0.819607843137255,
							},
							["enableBtn"] = false,
						},
						["editboxText"] = {
							["enableBtn"] = false,
						},
					},
					["zoneTexts"] = {
						["enableBtn"] = false,
					},
				},
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "默认",
					["fontSize"] = 16,
				},
			},
			["v11NamePlateReset"] = true,
		},
		["Ceshiy - 血色十字军"] = {
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["lui"] = {
				["modules"] = {
					["blizzard"] = {
						["blizzardMoveFrames"] = {
							["points"] = {
								["GameMenuFrame"] = {
									"CENTER", -- [1]
									"UIParent", -- [2]
									"CENTER", -- [3]
									0, -- [4]
									0, -- [5]
								},
								["StaticPopup1"] = {
									"TOP", -- [1]
									"UIParent", -- [2]
									"TOP", -- [3]
									0, -- [4]
									-100.000152587891, -- [5]
								},
							},
						},
					},
					["maps"] = {
						["minimapIcons"] = {
							["square"] = {
								["enable"] = false,
							},
						},
					},
					["cvar"] = {
						["general"] = {
							["breakUpLargeNumbers"] = false,
							["alwaysCompareItems"] = true,
						},
						["combatText"] = {
							["targetCombatText"] = {
								["floatingCombatTextCombatDamageDirectionalScale"] = 0,
							},
							["WorldTextScale"] = 1.6,
							["playerCombatText"] = {
								["floatingCombatTextCombatHealingAbsorbSelf"] = false,
								["floatingCombatTextLowManaHealth"] = false,
								["floatingCombatTextReactives"] = false,
								["floatingCombatTextCombatState"] = true,
							},
						},
						["nameplates"] = {
							["nameplateMinScale"] = 1,
							["nameplateMaxDistance"] = 40,
							["nameplateOtherTopInset"] = -1,
						},
						["interface"] = {
							["xpBarText"] = false,
							["weatherDensity"] = 0,
							["cameraDistanceMaxZoomFactor"] = 2.6,
						},
						["combat"] = {
							["SpellQueueWindow"] = 250,
						},
						["chat"] = {
							["profanityFilter"] = false,
							["removeChatDelay"] = true,
						},
					},
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["dtbars"] = {
				["DTB2_1"] = {
					["enable"] = true,
					["pethide"] = true,
					["growth"] = "HORIZONTAL",
					["width"] = 300,
					["combatHide"] = false,
					["transparent"] = false,
					["height"] = 22,
					["mouseover"] = false,
					["vehicleHide"] = false,
					["border"] = true,
				},
			},
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["烟亦舞UI"] = {
			["databars"] = {
				["reputation"] = {
					["width"] = 8,
					["hideInVehicle"] = true,
					["height"] = 146,
					["textSize"] = 10,
				},
				["azerite"] = {
					["width"] = 162,
					["orientation"] = "HORIZONTAL",
					["height"] = 8,
				},
				["experience"] = {
					["width"] = 196,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["height"] = 5,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 155,
					["hideOutsidePvP"] = true,
				},
			},
			["general"] = {
				["interruptAnnounce"] = "EMOTE",
				["backdropfadecolor"] = {
					["a"] = 0.350796043872833,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 0,
					["g"] = 0.992156862745098,
					["b"] = 0.584313725490196,
				},
				["loginmessage"] = false,
				["threat"] = {
					["enable"] = false,
				},
				["stickyFrames"] = false,
				["decimalLenght"] = 0,
				["vehicleSeatIndicatorSize"] = 76,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["font"] = "Expressway",
				["altPowerBar"] = {
					["statusBar"] = "Duffed",
					["textFormat"] = "NAMECURMAXPERC",
					["enable"] = false,
					["font"] = "Expressway",
					["statusBarColorGradient"] = true,
					["fontSize"] = 11,
				},
				["fontSize"] = 11,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Expressway",
					["locationFontSize"] = 10,
					["resetZoom"] = {
						["enable"] = true,
						["time"] = 5,
					},
					["icons"] = {
						["difficulty"] = {
							["scale"] = 0.8,
						},
						["ticket"] = {
							["scale"] = 0.75,
							["position"] = "TOP",
						},
						["lfgEye"] = {
							["xOffset"] = 0,
						},
						["mail"] = {
							["xOffset"] = 0,
							["yOffset"] = -5,
							["position"] = "BOTTOMLEFT",
						},
						["classHall"] = {
							["position"] = "TOPRIGHT",
							["scale"] = 0.5,
						},
					},
					["size"] = 160,
				},
				["bottomPanel"] = false,
				["numberPrefixStyle"] = "CHINESE",
				["displayInspectInfo"] = true,
				["displayCharacterInfo"] = true,
				["backdropcolor"] = {
					["a"] = 1,
					["b"] = 0.149019607843137,
					["g"] = 0.145098039215686,
					["r"] = 0.145098039215686,
				},
				["talkingHeadFrameScale"] = 0.7,
				["bonusObjectivePosition"] = "AUTO",
				["totems"] = {
					["enable"] = false,
					["size"] = 36,
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Expressway",
				},
				["topPanel"] = false,
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["shortChannels"] = false,
				["tabFontOutline"] = "OUTLINE",
				["keywordSound"] = "Whisper Alert",
				["panelTabTransparency"] = true,
				["chatHistory"] = false,
				["customTimeColor"] = {
					["r"] = 0,
					["g"] = 0.75,
					["b"] = 0.98,
				},
				["panelHeightRight"] = 146,
				["font"] = "Expressway",
				["panelWidth"] = 300,
				["keywords"] = "%MYNAME%, ElvUI, MerathilisUI",
				["editBoxPosition"] = "ABOVE_CHAT",
				["fadeUndockedTabs"] = false,
				["panelColorConverted"] = true,
				["panelWidthRight"] = 250,
				["tabFont"] = "Expressway",
				["panelBackdrop"] = "HIDEBOTH",
				["panelColor"] = {
					["a"] = 0,
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["copyChatLines"] = true,
				["hideVoiceButtons"] = true,
			},
			["movers"] = {
				["LUI_SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-170",
				["MER_RaidBuffReminderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,188,-2",
				["ElvUF_FocusTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-513,277",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,245,90",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,262,-518",
				["MER_ReminderMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,543,314",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,0,808",
				["AutoButtonAnchor2Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-200,225",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,542,269",
				["VehicleSeatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-112,330",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,281",
				["SpecializationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-28,17",
				["LUI_RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,241,236",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,-189,14",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-23",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-422,27",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-56,-222",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,200",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,737,82",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-106,-316",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-241,281",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,2",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,571",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,5,-37",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-241,261",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,1078",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,2",
				["GMMover"] = "TOP,ElvUIParent,TOP,-271,-2",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,336",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,374",
				["mUIMiddleDTPanelMover"] = "TOP,ElvUIParent,TOP,0,0",
				["AutoButtonAnchorMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-200,183",
				["ClassBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,184,-2",
				["MicrobarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-310,2",
				["ExperienceBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,379,0",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,241,281",
				["LuiMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-173",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,183,-2",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-159",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,68",
				["DTB2_数据1_Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,252",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,14",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,247",
				["BelowMinimapContainerMover"] = "TOP,ElvUIParent,TOP,1,-99",
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-542,355",
				["MER_MicroBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,503,12",
				["MER_SquareMinimapButtonBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,175",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,41",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,189,14",
				["DTB2_1_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["LuiRaidUtility_Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-519,2",
				["mUI_RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,241,236",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,241,261",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,281",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,265",
				["Notification Mover"] = "TOP,ElvUIParent,TOP,0,-37",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-531,21",
				["ElvAB_6"] = "TOPLEFT,ElvUIParent,TOPLEFT,299,-253",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-269,301",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,626",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-295,-316",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,542,281",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-163",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,361",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-74",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,10,198",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-1",
			},
			["tooltip"] = {
				["healthBar"] = {
					["statusPosition"] = "TOP",
					["fontSize"] = 11,
					["height"] = 6,
					["font"] = "Expressway",
				},
				["alwaysShowRealm"] = true,
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["style"] = "inset",
				["itemCount"] = "NONE",
				["smallTextFontSize"] = 11,
			},
			["mui"] = {
				["raidmarkers"] = {
					["buttonSize"] = 20,
					["enable"] = false,
					["reverse"] = true,
					["visibility"] = "ALWAYS",
					["modifier"] = "alt-",
				},
				["general"] = {
					["LoginMsg"] = false,
					["splashScreen"] = false,
					["panels"] = false,
					["shadowOverlay"] = false,
				},
				["media"] = {
					["fonts"] = {
						["objective"] = {
							["size"] = 13,
						},
						["objectiveHeader"] = {
							["outline"] = "NONE",
							["size"] = 12,
						},
					},
				},
				["nameHover"] = {
					["enable"] = false,
				},
				["raidBuffs"] = {
					["enable"] = false,
				},
				["chat"] = {
					["isExpanded"] = false,
					["hideChat"] = true,
					["emotes"] = false,
				},
				["cooldownFlash"] = {
					["enable"] = false,
				},
				["reminder"] = {
					["enable"] = false,
				},
				["tooltip"] = {
					["progressInfo"] = {
						["enable"] = false,
					},
				},
				["bags"] = {
					["equipOverlay"] = false,
				},
				["actionbars"] = {
					["autoButtons"] = {
						["soltAutoButtons"] = {
							["enable"] = false,
						},
					},
					["specBar"] = {
						["enable"] = false,
					},
					["equipBar"] = {
						["enable"] = false,
					},
				},
				["installed"] = true,
				["locPanel"] = {
					["colorType_Coords"] = "CLASS",
					["colorType"] = "DEFAULT",
					["template"] = "NoBackdrop",
					["enable"] = false,
					["height"] = 20,
					["width"] = 330,
				},
				["datatexts"] = {
					["rightChatTabDatatextPanel"] = {
						["enable"] = false,
					},
					["threatBar"] = {
						["enable"] = false,
					},
					["panels"] = {
						["ChatTab_Datatext_Panel"] = {
							["right"] = "Friends",
							["left"] = "System",
							["middle"] = "Durability",
						},
						["mUIMiddleDTPanel"] = {
							["middle"] = "System",
						},
					},
					["middle"] = {
						["height"] = 15,
						["width"] = 408,
					},
				},
				["misc"] = {
					["cursor"] = true,
					["raidInfo"] = false,
				},
				["nameplates"] = {
					["castbarTarget"] = false,
				},
				["microBar"] = {
					["scale"] = 0.8,
					["text"] = {
						["position"] = "TOP",
					},
					["hideInCombat"] = false,
				},
				["nsct"] = {
					["enable"] = false,
				},
				["armory"] = {
					["stats"] = {
						["List"] = {
							["ATTACK_DAMAGE"] = true,
							["MOVESPEED"] = true,
							["POWER"] = true,
							["ATTACK_AP"] = true,
						},
					},
					["gradient"] = {
						["color"] = {
							["g"] = 0.956862745098039,
							["b"] = 0.407843137254902,
						},
						["colorStyle"] = "CUSTOM",
					},
				},
			},
			["bags"] = {
				["itemLevelFont"] = "Expressway",
				["bagSize"] = 36,
				["junkIcon"] = true,
				["bankSize"] = 36,
				["itemLevelFontOutline"] = "OUTLINE",
				["countFontSize"] = 11,
				["split"] = {
					["player"] = true,
				},
				["itemLevelFontSize"] = 12,
				["bagWidth"] = 408,
				["alignToChat"] = false,
				["scrapIcon"] = true,
				["countFont"] = "Expressway",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["countFontOutline"] = "OUTLINE",
				["bankWidth"] = 426,
				["showBindType"] = true,
				["cooldown"] = {
					["override"] = true,
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
						["fontSize"] = 20,
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
			},
			["lui"] = {
				["modules"] = {
					["misc"] = {
						["general"] = {
							["autoScreenShoot"] = {
								["enableBtn"] = false,
								["enable"] = false,
							},
							["raidUtilityPlus"] = {
								["ruMouseover"] = true,
							},
							["setPoi"] = {
								["poiTextSize"] = 20,
								["enableBtn"] = true,
							},
							["autoRelease"] = false,
						},
						["loot"] = {
							["lootSpecManager"] = {
								["enable"] = false,
							},
						},
					},
					["maps"] = {
						["enhancedWorldMap"] = {
							["useReveal"] = true,
						},
						["minimapIcons"] = {
							["square"] = {
								["enable"] = false,
							},
							["buttons"] = {
								["buttonSpacing"] = 1,
								["barMouseOver"] = true,
								["iconSize"] = 26,
								["buttonsPerRow"] = 6,
							},
						},
						["squareMinimap"] = {
							["enableBtn"] = false,
						},
					},
					["blizzard"] = {
						["general"] = {
							["minimapWheel"] = false,
							["castbarTime"] = false,
						},
						["blizzardMoveFrames"] = {
							["points"] = {
								["FriendsFrame"] = {
									"TOPLEFT", -- [1]
									"UIParent", -- [2]
									"TOPLEFT", -- [3]
									16, -- [4]
									-116.000022888184, -- [5]
								},
								["GameMenuFrame"] = {
									"CENTER", -- [1]
									"UIParent", -- [2]
									"CENTER", -- [3]
									0, -- [4]
									0, -- [5]
								},
								["CommunitiesFrame"] = {
									"TOPLEFT", -- [1]
									"UIParent", -- [2]
									"TOPLEFT", -- [3]
									16, -- [4]
									-116.000007629395, -- [5]
								},
							},
							["remember"] = false,
						},
					},
					["tooltip"] = {
						["flashingCursor"] = {
							["cursorSize"] = 512,
							["enable"] = false,
						},
						["raidProg"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["nameHover"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["atlasLootReverse"] = false,
						["daisyCosp"] = false,
					},
					["unitframes"] = {
						["playerframe"] = {
							["swingBar"] = {
								["enable"] = false,
							},
						},
						["focusframe"] = {
							["rangeText"] = {
								["enable"] = false,
								["enableBtn"] = false,
							},
						},
						["targetframe"] = {
							["rangeText"] = {
								["rangePoi"] = "TOPLEFT",
								["rangeFontSize"] = 9,
								["rangePoiY"] = 11,
							},
						},
						["icons"] = {
							["role"] = "ElvUI",
						},
					},
					["actionbars"] = {
						["microBar"] = {
							["scale"] = 0.8,
							["text"] = {
								["friends"] = false,
								["guild"] = false,
								["textColor"] = {
									["b"] = 0.584313725490196,
									["g"] = 0.992156862745098,
									["r"] = 0,
								},
							},
						},
						["general"] = {
							["finishingMoveHighlight"] = false,
						},
						["autoButtons"] = {
							["soltAutoButtons"] = {
								["enable"] = false,
							},
							["whiteList"] = {
								[86534] = false,
								[116268] = false,
								[116276] = false,
								[116411] = false,
								[133897] = false,
								[63359] = false,
								[109220] = false,
								[133882] = false,
								[76097] = false,
								[49040] = false,
								[133756] = false,
								[140916] = false,
								[131931] = false,
								[109221] = false,
								[76090] = false,
								[76098] = false,
								[127295] = false,
								[86536] = false,
								[127843] = false,
								[81901] = false,
								[18606] = false,
								[109222] = false,
								[137299] = false,
								[64400] = false,
								[122454] = false,
								[118922] = false,
								[129725] = false,
								[116271] = false,
								[86569] = false,
								[90006] = false,
								[109223] = false,
								[133999] = false,
								[86125] = false,
								[122455] = false,
								[76093] = false,
								[122456] = false,
								[136605] = false,
								[138146] = false,
								[109217] = false,
								[76094] = false,
								[64399] = false,
								[64401] = false,
								[122100] = false,
								[36799] = false,
								[163222] = false,
								[116266] = false,
								[118269] = false,
								[118711] = false,
								[133925] = false,
								[122453] = false,
								[18607] = false,
								[109218] = false,
								[142117] = false,
								[64398] = false,
								[76095] = false,
								[127030] = false,
								[5512] = false,
								[129161] = false,
								[64402] = false,
								[118330] = false,
								[76089] = false,
								[122452] = false,
								[118704] = false,
								[132514] = false,
								[128651] = false,
								[109076] = false,
								[153023] = false,
								[109219] = false,
								[147707] = false,
								[163224] = false,
								[122451] = false,
								[163223] = false,
								[128772] = false,
							},
						},
					},
					["chat"] = {
						["chatBub"] = {
							["enable"] = false,
						},
						["chatBar"] = {
							["fontSize"] = 13,
							["barMouseOver"] = true,
						},
						["chatShortChannel"] = {
							["hideChannelNum"] = true,
						},
					},
					["cvar"] = {
						["chat"] = {
							["removeChatDelay"] = true,
							["profanityFilter"] = false,
						},
						["combat"] = {
							["SpellQueueWindow"] = 250,
						},
						["combatText"] = {
							["targetCombatText"] = {
								["floatingCombatTextCombatDamageDirectionalScale"] = 0,
							},
							["WorldTextScale"] = 1.6,
							["worldTextScale"] = 1.6,
							["playerCombatText"] = {
								["floatingCombatTextCombatState"] = true,
								["floatingCombatTextReactives"] = false,
								["floatingCombatTextLowManaHealth"] = false,
								["floatingCombatTextCombatHealingAbsorbSelf"] = false,
							},
						},
						["nameplates"] = {
							["nameplateOverlapV"] = 1.5,
							["nameplateLargeTopInset"] = 0.085,
							["nameplateMinScale"] = 1,
							["nameplateMaxDistance"] = 40,
							["nameplateOtherTopInset"] = 0.085,
							["nameplateOccludedAlphaMult"] = 1,
							["nameplateMotionSpeed"] = 0.05,
						},
						["general"] = {
							["breakUpLargeNumbers"] = false,
							["alwaysCompareItems"] = true,
						},
						["interface"] = {
							["weatherDensity"] = 0,
							["xpBarText"] = false,
							["cameraDistanceMaxZoomFactor"] = 2.6,
						},
						["unitframes"] = {
							["noBuffDebuffFilterOnTarget"] = true,
						},
					},
					["armory"] = {
						["general"] = {
							["gradient"] = {
								["colorStyle"] = "VALUE",
							},
							["backdrop"] = {
								["selectedBG"] = "Space",
								["alpha"] = 0.6,
							},
						},
					},
					["nameplates"] = {
						["castbarTarget"] = false,
					},
					["quest"] = {
						["questAutomation"] = {
							["autoChoices"] = true,
						},
						["questAnnouncment"] = {
							["enableBtn"] = false,
						},
					},
					["combat"] = {
						["announceSystem"] = {
							["enable"] = false,
							["enableBtn"] = false,
						},
						["combatNotification"] = {
							["enableBtn"] = false,
						},
						["raidMarkers"] = {
							["backdrop"] = false,
							["mouseover"] = true,
						},
					},
				},
				["skins"] = {
					["shadowOverlay"] = {
						["enable"] = false,
					},
				},
				["general"] = {
					["loginMsg"] = false,
					["splashScreen"] = false,
					["gamemenu"] = false,
				},
				["media"] = {
					["miscTexts"] = {
						["questTracker"] = {
							["enable"] = false,
							["fontSize"] = 13,
							["fontcolor"] = {
								["g"] = 0.956862745098039,
								["b"] = 0.407843137254902,
							},
							["enableBtn"] = false,
						},
						["mailText"] = {
							["enableBtn"] = false,
						},
						["questGossip"] = {
							["enableBtn"] = false,
						},
						["editboxText"] = {
							["enableBtn"] = false,
						},
						["questTrackerTitle"] = {
							["fontSize"] = 13,
							["fontcolor"] = {
								["r"] = 0,
								["g"] = 0.992156862745098,
								["b"] = 0.584313725490196,
							},
						},
						["questHeader"] = {
							["fontcolor"] = {
								["g"] = 0.819607843137255,
							},
							["enableBtn"] = false,
						},
						["questFontSuperHuge"] = {
							["enableBtn"] = false,
						},
					},
					["zoneTexts"] = {
						["enableBtn"] = false,
					},
				},
			},
			["unitframe"] = {
				["statusbar"] = "001",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["debuffs"] = {
							["sizeOverride"] = 36,
							["anchorPoint"] = "LEFT",
							["clickThrough"] = true,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 3,
							["maxDuration"] = 0,
							["xOffset"] = -1,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "BOTTOM",
							["name"] = {
								["text_format"] = "[name:short]",
							},
							["xOffset"] = 0,
							["height"] = 16,
							["width"] = 79,
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Frame",
								["xOffset"] = 0,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Frame",
								["xOffset"] = 0,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 11,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "Frame",
							["position"] = "BOTTOMLEFT",
							["text_format"] = "",
						},
						["height"] = 38,
						["buffs"] = {
							["sizeOverride"] = 36,
							["useWhitelist"] = true,
							["enable"] = true,
							["anchorPoint"] = "RIGHT",
							["clickThrough"] = true,
							["countFont"] = "默认",
							["useBlacklist"] = false,
							["noDuration"] = false,
							["playerOnly"] = false,
							["perrow"] = 3,
							["useFilter"] = "MER_RaidCDs",
							["noConsolidated"] = false,
							["xOffset"] = 1,
						},
						["raidicon"] = {
							["attachTo"] = "RIGHT",
							["yOffset"] = 0,
							["xOffset"] = -2,
							["size"] = 16,
						},
						["horizontalSpacing"] = 1,
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["size"] = 24,
						},
						["colorOverride"] = "FORCE_ON",
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["position"] = "LEFT",
							["xOffset"] = 2,
							["size"] = 11,
						},
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["text_format"] = "",
							["yOffset"] = 2,
							["position"] = "BOTTOMRIGHT",
							["height"] = 4,
						},
						["width"] = 125,
						["health"] = {
							["frequentUpdates"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["yOffset"] = 2,
							["position"] = "CENTER",
							["bgUseBarTexture"] = true,
						},
						["orientation"] = "MIDDLE",
						["buffIndicator"] = {
							["fontSize"] = 11,
							["size"] = 10,
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["xOffset"] = 0,
							["yOffset"] = -1,
							["height"] = 16,
							["width"] = 60,
						},
						["verticalSpacing"] = 1,
					},
					["player"] = {
						["debuffs"] = {
							["countFontSize"] = 10,
							["fontSize"] = 12,
							["yOffset"] = 15,
							["countFont"] = "Expressway",
							["perrow"] = 3,
							["sizeOverride"] = 30,
						},
						["cft"] = {
							["text"] = {
								["enable"] = false,
							},
						},
						["pvpIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
							["scale"] = 0.5,
							["xOffset"] = 7,
							["yOffset"] = 7,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["height"] = 15,
							["detachedWidth"] = 278,
							["fill"] = "filled",
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["RestIcon"] = {
							["anchorPoint"] = "LEFT",
							["size"] = 18,
							["xOffset"] = 11,
							["texture"] = "RESTING1",
							["yOffset"] = 0,
						},
						["threatStyle"] = "ICONTOPRIGHT",
						["power"] = {
							["attachTextTo"] = "Power",
							["powerPrediction"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["position"] = "CENTER",
							["detachedWidth"] = 278,
							["hideonnpc"] = true,
							["enable"] = false,
							["height"] = 3,
						},
						["customTexts"] = {
							["Life"] = {
								["attachTextTo"] = "Frame",
								["xOffset"] = 0,
								["text_format"] = "[health:smart-right]",
								["yOffset"] = 0,
								["font"] = "默认",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 12,
							},
							["MERPower"] = {
								["attachTextTo"] = "Power",
								["xOffset"] = 0,
								["text_format"] = "[power:smart]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = false,
								["size"] = 16,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["xOffset"] = -1,
								["text_format"] = "[name:medium]",
								["yOffset"] = 22,
								["font"] = "默认",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 12,
							},
							["Group"] = {
								["attachTextTo"] = "Frame",
								["xOffset"] = 0,
								["text_format"] = "[group]",
								["yOffset"] = -24,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = false,
								["size"] = 12,
							},
							["Percent"] = {
								["attachTextTo"] = "Frame",
								["xOffset"] = 0,
								["text_format"] = "[perhp<]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = false,
								["size"] = 11,
							},
							["Resting"] = {
								["attachTextTo"] = "Frame",
								["xOffset"] = 0,
								["text_format"] = "[resting]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = false,
								["size"] = 10,
							},
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 24,
							["transparent"] = true,
						},
						["CombatIcon"] = {
							["anchorPoint"] = "LEFT",
							["texture"] = "COMBAT",
							["customTexture"] = "",
							["xOffset"] = 9,
							["size"] = 12,
						},
						["health"] = {
							["xOffset"] = 0,
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = true,
							["text_format"] = "",
						},
						["orientation"] = "RIGHT",
						["height"] = 30,
						["buffs"] = {
							["countFontSize"] = 9,
							["fontSize"] = 12,
							["anchorPoint"] = "TOPRIGHT",
							["priority"] = "Blacklist,MER_RaidCDs",
							["countFont"] = "Expressway",
							["perrow"] = 4,
							["attachTo"] = "FRAME",
							["sizeOverride"] = 24,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 200,
						},
						["raidicon"] = {
							["position"] = "TOP",
							["yOffset"] = 15,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 0,
							["anchorPoint"] = "TOPLEFT",
							["countFont"] = "Expressway",
							["fontSize"] = 10,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["height"] = 4,
							["attachTextTo"] = "Health",
							["enable"] = false,
						},
						["width"] = 75,
						["infoPanel"] = {
							["height"] = 14,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 0,
						},
						["height"] = 30,
						["castbar"] = {
							["enable"] = false,
							["width"] = 75,
							["height"] = 10,
							["latency"] = true,
						},
						["name"] = {
							["attachTextTo"] = "Health",
							["text_format"] = "[name:short]",
						},
					},
					["raid"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 20,
							["clickThrough"] = true,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 2,
							["maxDuration"] = 0,
							["xOffset"] = -42,
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "NONE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["infoPanel"] = {
							["height"] = 13,
							["transparent"] = true,
						},
						["name"] = {
							["text_format"] = "",
						},
						["height"] = 25,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 16,
							["useWhitelist"] = true,
							["xOffset"] = 3,
							["yOffset"] = -20,
							["anchorPoint"] = "TOPLEFT",
							["clickThrough"] = true,
							["priority"] = "MER_RaidCDs",
							["countFont"] = "Expressway",
							["useBlacklist"] = false,
							["noDuration"] = false,
							["playerOnly"] = false,
							["perrow"] = 1,
							["useFilter"] = "MER_RaidCDs",
							["countFontSize"] = 9,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["yOffset"] = 0,
							["size"] = 15,
						},
						["horizontalSpacing"] = 2,
						["rdebuffs"] = {
							["yOffset"] = 1,
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["size"] = 22,
						},
						["growthDirection"] = "DOWN_RIGHT",
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["xOffset"] = 0,
							["yOffset"] = 0,
							["heal"] = true,
							["position"] = "RIGHT",
							["size"] = 10,
						},
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 3,
						},
						["groupsPerRowCol"] = 4,
						["health"] = {
							["text_format"] = "",
							["bgUseBarTexture"] = true,
						},
						["numGroups"] = 8,
						["buffIndicator"] = {
							["fontSize"] = 11,
							["size"] = 10,
						},
						["verticalSpacing"] = 2,
					},
					["assist"] = {
						["enable"] = false,
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 30,
							["yOffset"] = 0,
							["numrows"] = 1,
							["countFont"] = "Expressway",
							["perrow"] = 5,
							["xOffset"] = -2,
						},
						["spacing"] = 30,
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "RIGHT",
							["bgUseBarTexture"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["yOffset"] = 13,
						},
						["threatStyle"] = "HEALTHBORDER",
						["power"] = {
							["xOffset"] = 0,
							["text_format"] = "[power:smart]",
							["width"] = "inset",
							["position"] = "CENTER",
							["height"] = 5,
							["attachTextTo"] = "Power",
						},
						["customTexts"] = {
							["Life"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:current]",
								["yOffset"] = 2,
								["font"] = "默认",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 13,
							},
							["Percent"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[perhp<]",
								["yOffset"] = 2,
								["font"] = "OW1",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 15,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["xOffset"] = 0,
								["text_format"] = "[name:medium]",
								["yOffset"] = 24,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 13,
							},
						},
						["width"] = 156,
						["infoPanel"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "Frame",
							["position"] = "RIGHT",
							["xOffset"] = 6,
							["text_format"] = "",
							["yOffset"] = 16,
						},
						["height"] = 35,
						["buffs"] = {
							["sizeOverride"] = 32,
							["yOffset"] = 0,
							["anchorPoint"] = "RIGHT",
							["countFont"] = "Expressway",
							["xOffset"] = 2,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 156,
							["height"] = 16,
							["timeToHold"] = 0.5,
						},
					},
					["raid40"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 15,
							["enable"] = true,
							["yOffset"] = -8,
							["anchorPoint"] = "TOPRIGHT",
							["clickThrough"] = true,
							["priority"] = "Blacklist,Boss,RaidDebuffs,nonPersonal,CastByUnit,CCDebuffs,CastByNPC,Dispellable",
							["countFont"] = "Expressway",
							["useBlacklist"] = false,
							["perrow"] = 5,
							["maxDuration"] = 0,
							["useFilter"] = "Whitlist (Strict)",
						},
						["customTexts"] = {
							["Status"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[statustimer]",
								["yOffset"] = -12,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 9,
							},
							["name1"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["infoPanel"] = {
							["height"] = 13,
							["transparent"] = true,
						},
						["name"] = {
							["text_format"] = "",
						},
						["height"] = 35,
						["buffs"] = {
							["noConsolidated"] = false,
							["sizeOverride"] = 20,
							["enable"] = true,
							["anchorPoint"] = "CENTER",
							["clickThrough"] = true,
							["priority"] = "MER_RaidCDs",
							["countFont"] = "Expressway",
							["useBlacklist"] = false,
							["noDuration"] = false,
							["playerOnly"] = false,
							["perrow"] = 1,
							["useFilter"] = "MER_RaidCDs",
							["countFontSize"] = 9,
						},
						["visibility"] = "[@raid21,noexists] hide;show",
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["yOffset"] = 0,
							["size"] = 15,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["buffIndicator"] = {
							["fontSize"] = 11,
							["size"] = 10,
						},
						["classHover"] = true,
						["roleIcon"] = {
							["xOffset"] = 1,
							["yOffset"] = -1,
							["heal"] = true,
							["position"] = "TOPLEFT",
							["enable"] = true,
							["size"] = 10,
						},
						["raidWideSorting"] = false,
						["readycheckIcon"] = {
							["size"] = 20,
						},
						["power"] = {
							["attachTextTo"] = "Health",
							["height"] = 4,
						},
						["positionOverride"] = "BOTTOMRIGHT",
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["width"] = 83,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "",
							["bgUseBarTexture"] = true,
						},
						["groupBy"] = "ROLE",
						["verticalSpacing"] = 2,
					},
					["focus"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 0,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 75,
							["iconSize"] = 20,
							["latency"] = true,
						},
						["power"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["height"] = 4,
							["attachTextTo"] = "InfoPanel",
							["enable"] = false,
						},
						["width"] = 75,
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["height"] = 30,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 30,
							["countFont"] = "Expressway",
							["perrow"] = 7,
							["fontSize"] = 12,
						},
						["cft"] = {
							["text"] = {
								["enable"] = false,
							},
						},
						["pvpIcon"] = {
							["anchorPoint"] = "TOPLEFT",
							["scale"] = 0.5,
							["xOffset"] = -7,
							["yOffset"] = 7,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "BUFFS",
						},
						["middleClickFocus"] = false,
						["threatStyle"] = "ICONTOPLEFT",
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 200,
							["latency"] = true,
						},
						["customTexts"] = {
							["MERPower"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 3,
								["text_format"] = "[power:smart]",
								["yOffset"] = -10,
								["font"] = "YYW",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 9,
							},
							["Life"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:smart-left]",
								["yOffset"] = 0,
								["font"] = "默认",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 12,
							},
							["Percent"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[perhp<]",
								["yOffset"] = 0,
								["font"] = "伤害数字",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = false,
								["size"] = 11,
							},
							["BigName"] = {
								["attachTextTo"] = "Frame",
								["xOffset"] = 3,
								["text_format"] = "[name:abbrev]",
								["yOffset"] = 22,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 12,
							},
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 24,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["xOffset"] = 0,
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = true,
							["text_format"] = "",
						},
						["name"] = {
							["position"] = "RIGHT",
							["xOffset"] = 8,
							["text_format"] = "",
							["yOffset"] = -32,
						},
						["height"] = 30,
						["orientation"] = "LEFT",
						["buffs"] = {
							["countFontSize"] = 10,
							["sizeOverride"] = 24,
							["yOffset"] = 15,
							["priority"] = "Personal,Boss,Whitelist,Blacklist,PlayerBuffs,nonPersonal",
							["numrows"] = 2,
							["countFont"] = "Expressway",
							["attachTo"] = "Health",
							["fontSize"] = 10,
						},
						["power"] = {
							["powerPrediction"] = true,
							["enable"] = false,
							["text_format"] = "",
							["strataAndLevel"] = {
								["frameLevel"] = 27,
							},
							["height"] = 3,
							["xOffset"] = 0,
						},
						["raidicon"] = {
							["position"] = "TOP",
							["yOffset"] = 15,
						},
					},
					["arena"] = {
						["debuffs"] = {
							["countFontSize"] = 9,
							["sizeOverride"] = 30,
							["yOffset"] = 0,
							["countFont"] = "Expressway",
							["perrow"] = 6,
							["maxDuration"] = 0,
							["xOffset"] = -2,
						},
						["spacing"] = 30,
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 180,
							["height"] = 16,
							["timeToHold"] = 0.5,
						},
						["customTexts"] = {
							["JJC name"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[name:medium]",
								["yOffset"] = 24,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 13,
							},
							["JJC 百分比"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[perhp<]",
								["yOffset"] = 2,
								["font"] = "OW1",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 15,
							},
							["JJC Life"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:current]",
								["yOffset"] = 2,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 13,
							},
						},
						["width"] = 180,
						["infoPanel"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "Frame",
							["xOffset"] = 6,
							["text_format"] = "",
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
							["width"] = 35,
						},
						["height"] = 35,
						["buffs"] = {
							["sizeOverride"] = 32,
							["yOffset"] = 0,
							["anchorPoint"] = "RIGHT",
							["countFont"] = "Expressway",
							["maxDuration"] = 0,
							["xOffset"] = 2,
						},
						["power"] = {
							["xOffset"] = 0,
							["text_format"] = "[power:smart]",
							["width"] = "inset",
							["position"] = "CENTER",
							["height"] = 4,
							["attachTextTo"] = "Power",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["xOffset"] = 0,
							["text_format"] = "",
							["yOffset"] = 13,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "CENTER",
							["height"] = 4,
						},
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["width"] = 75,
						["health"] = {
							["bgUseBarTexture"] = true,
							["frequentUpdates"] = true,
						},
						["height"] = 30,
						["raidicon"] = {
							["position"] = "TOP",
							["yOffset"] = 15,
						},
					},
				},
				["smoothbars"] = true,
				["colors"] = {
					["healthclass"] = true,
					["colorhealthbyvalue"] = false,
					["health_backdrop"] = {
						["g"] = 0.0117647058823529,
						["b"] = 0.0117647058823529,
					},
					["health_backdrop_dead"] = {
						["g"] = 0.0117647058823529,
						["b"] = 0.0117647058823529,
					},
					["power"] = {
						["ENERGY"] = {
							["b"] = 0.349019607843137,
							["g"] = 0.631372549019608,
							["r"] = 0.650980392156863,
						},
						["RAGE"] = {
							["b"] = 0.254901960784314,
							["g"] = 0.250980392156863,
							["r"] = 0.780392156862745,
						},
					},
					["castColor"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["transparentCastbar"] = true,
					["frameGlow"] = {
						["targetGlow"] = {
							["enable"] = false,
						},
						["mainGlow"] = {
							["class"] = true,
						},
						["mouseoverGlow"] = {
							["color"] = {
								["a"] = 0.5,
								["b"] = 0,
								["g"] = 0,
								["r"] = 0,
							},
							["class"] = true,
						},
					},
					["castNoInterrupt"] = {
						["b"] = 0.250980392156863,
						["g"] = 0.250980392156863,
						["r"] = 0.780392156862745,
					},
					["transparentAurabars"] = true,
					["health"] = {
						["b"] = 0.309803921568627,
						["g"] = 0.309803921568627,
						["r"] = 0.309803921568627,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smartRaidFilter"] = false,
				["font"] = "Expressway",
				["cooldown"] = {
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["fonts"] = {
						["fontSize"] = 16,
						["font"] = "默认",
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 10,
				["goldFormat"] = "CONDENSED",
				["panelTransparency"] = true,
				["actionbar5"] = false,
				["panels"] = {
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Durability",
						["left"] = "Friends",
						["middle"] = "",
					},
					["BottomMiniPanel"] = "Time",
					["BottomLeftMiniPanel"] = "System",
					["DTB2_数据1"] = {
						["middle"] = "Guild",
						["left"] = "Friends",
					},
					["DTB2_1"] = {
						["middle"] = "System",
						["farleft"] = "Guild",
						["right"] = "ElvUI Config",
						["left"] = "Durability",
						["farright"] = "Friends",
					},
				},
				["actionbar3"] = false,
				["leftChatPanel"] = false,
				["panelBackdrop"] = false,
				["rightChatPanel"] = false,
				["goldCoins"] = true,
				["minimapBottom"] = true,
				["wordWrap"] = true,
				["font"] = "默认",
				["fontOutline"] = "OUTLINE",
				["battleground"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonspacing"] = 1,
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 1,
					["buttons"] = 12,
					["point"] = "TOPLEFT",
					["buttonsPerRow"] = 12,
					["buttonsize"] = 26,
				},
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "OUTLINE",
				["font"] = "Expressway",
				["barPet"] = {
					["point"] = "BOTTOMLEFT",
					["buttons"] = 9,
					["buttonspacing"] = 1,
					["backdrop"] = false,
					["buttonsPerRow"] = 9,
					["buttonsize"] = 22,
					["backdropSpacing"] = 0,
				},
				["microbar"] = {
					["enabled"] = true,
					["buttonSize"] = 15,
					["mouseover"] = true,
				},
				["bar2"] = {
					["buttonspacing"] = 3,
					["heightMult"] = 2,
					["backdropSpacing"] = 3,
					["visibility"] = "[vehicleui][overridebar][petbattle][possessbar] hide; show",
				},
				["hotkeytext"] = false,
				["bar5"] = {
					["buttonspacing"] = 1,
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["buttons"] = 4,
					["buttonsPerRow"] = 2,
					["buttonsize"] = 26,
				},
				["bar6"] = {
					["buttonspacing"] = 3,
					["backdropSpacing"] = 3,
					["buttons"] = 8,
					["buttonsPerRow"] = 8,
					["visibility"] = "[vehicleui][overridebar][petbattle][possessbar] hide; show",
				},
				["extraActionButton"] = {
					["scale"] = 0.75,
				},
				["bar1"] = {
					["buttonspacing"] = 1,
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["buttonsize"] = 26,
				},
				["showGrid"] = false,
				["stanceBar"] = {
					["point"] = "BOTTOMLEFT",
					["buttonspacing"] = 3,
					["enabled"] = false,
					["buttonsize"] = 24,
					["buttonsPerRow"] = 6,
				},
				["cooldown"] = {
					["override"] = true,
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["fonts"] = {
						["fontSize"] = 20,
						["font"] = "Expressway",
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["bar4"] = {
					["buttonspacing"] = 1,
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["buttons"] = 4,
					["backdrop"] = false,
					["buttonsPerRow"] = 2,
					["buttonsize"] = 26,
				},
			},
			["nameplates"] = {
				["fontSize"] = 12,
				["stackFont"] = "Expressway",
				["plateSize"] = {
					["enemyWidth"] = 160,
				},
				["lowHealthThreshold"] = 0,
				["statusbar"] = "001",
				["filters"] = {
					["爆炸物"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
				},
				["threat"] = {
					["badScale"] = 1.1,
					["useThreatColor"] = false,
				},
				["cooldown"] = {
					["hhmmColor"] = {
						["b"] = 0.431372549019608,
						["g"] = 0.431372549019608,
						["r"] = 0.431372549019608,
					},
					["mmssColor"] = {
						["b"] = 0.56078431372549,
						["g"] = 0.56078431372549,
						["r"] = 0.56078431372549,
					},
					["secondsColor"] = {
						["b"] = 0,
					},
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
					},
					["hoursColor"] = {
						["r"] = 0.4,
					},
					["daysColor"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["yOffset"] = 10,
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["raidTargetIndicator"] = {
							["position"] = "RIGHT",
							["xOffset"] = -16,
							["size"] = 16,
						},
						["level"] = {
							["yOffset"] = -6,
						},
						["name"] = {
							["fontSize"] = 13,
							["yOffset"] = -6,
						},
						["castbar"] = {
							["yOffset"] = -16,
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["width"] = 160,
							["height"] = 10,
						},
						["questIcon"] = {
							["xOffset"] = 1,
						},
						["buffs"] = {
							["yOffset"] = 39,
							["size"] = 26,
						},
						["eliteIcon"] = {
							["position"] = "TOPLEFT",
							["enable"] = true,
							["yOffset"] = -21,
							["xOffset"] = 1,
							["size"] = 12,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "默认",
								["format"] = "[health:smart-right]",
							},
							["height"] = 16,
							["width"] = 168,
						},
					},
					["TARGET"] = {
						["classpower"] = {
							["yOffset"] = 23,
							["width"] = 144,
						},
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["yOffset"] = 10,
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["raidTargetIndicator"] = {
							["position"] = "RIGHT",
							["xOffset"] = -16,
							["size"] = 16,
						},
						["level"] = {
							["yOffset"] = -6,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "默认",
								["format"] = "[health:smart-right]",
							},
							["height"] = 16,
							["width"] = 168,
						},
						["castbar"] = {
							["yOffset"] = -16,
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["width"] = 160,
							["height"] = 10,
						},
						["questIcon"] = {
							["xOffset"] = 1,
						},
						["buffs"] = {
							["yOffset"] = 39,
							["size"] = 26,
							["filters"] = {
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
						["eliteIcon"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 1,
							["size"] = 12,
							["enable"] = true,
							["yOffset"] = -21,
						},
						["name"] = {
							["fontSize"] = 13,
							["yOffset"] = -6,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["yOffset"] = 10,
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["raidTargetIndicator"] = {
							["position"] = "RIGHT",
							["xOffset"] = -16,
							["size"] = 16,
						},
						["level"] = {
							["yOffset"] = -6,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["castbar"] = {
							["yOffset"] = -16,
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["width"] = 160,
							["height"] = 10,
						},
						["title"] = {
							["format"] = "[npctitle]",
						},
						["power"] = {
							["displayAltPower"] = true,
						},
						["buffs"] = {
							["yOffset"] = 39,
							["size"] = 26,
							["filters"] = {
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "默认",
								["format"] = "[health:smart-right]",
							},
						},
						["name"] = {
							["fontSize"] = 13,
							["yOffset"] = -6,
							["format"] = "[name]",
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["yOffset"] = 10,
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["portrait"] = {
							["xOffset"] = 0,
						},
						["raidTargetIndicator"] = {
							["position"] = "RIGHT",
							["xOffset"] = -16,
							["size"] = 16,
						},
						["level"] = {
							["yOffset"] = -6,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["castbar"] = {
							["yOffset"] = -16,
							["iconPosition"] = "LEFT",
							["iconSize"] = 30,
							["width"] = 160,
							["height"] = 10,
						},
						["title"] = {
							["format"] = "[npctitle]",
						},
						["power"] = {
							["displayAltPower"] = true,
						},
						["buffs"] = {
							["yOffset"] = 39,
							["size"] = 26,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
						["health"] = {
							["height"] = 16,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "默认",
								["format"] = "[health:smart-right]",
							},
							["width"] = 168,
						},
						["name"] = {
							["fontSize"] = 13,
							["yOffset"] = -6,
							["format"] = "[name]",
						},
					},
					["PLAYER"] = {
						["power"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
							},
						},
						["castbar"] = {
							["fontSize"] = 10,
							["iconPosition"] = "LEFT",
							["font"] = "Expressway",
						},
						["name"] = {
							["font"] = "Expressway",
							["format"] = "[name:abbrev]",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Expressway",
								["format"] = "[perhp<%]",
							},
						},
						["debuffs"] = {
							["size"] = 24,
							["font"] = "Expressway",
							["numAuras"] = 8,
							["countFont"] = "Expressway",
						},
						["buffs"] = {
							["yOffset"] = 2,
							["size"] = 20,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
						},
						["level"] = {
							["font"] = "Expressway",
						},
					},
				},
				["stackFontSize"] = 9,
				["clampToScreen"] = true,
				["colors"] = {
					["selection"] = {
						[0] = {
							["g"] = 0,
							["b"] = 0.305882352941177,
						},
					},
				},
				["font"] = "Expressway",
				["nonTargetTransparency"] = 0.6,
				["visibility"] = {
					["enemy"] = {
						["totems"] = true,
						["pets"] = true,
					},
				},
				["smoothbars"] = true,
			},
			["dtbars"] = {
				["DTB2_数据1"] = {
					["enable"] = true,
					["border"] = true,
					["transparent"] = true,
					["height"] = 49,
					["pethide"] = true,
					["growth"] = "VERTICAL",
					["width"] = 50,
				},
				["DTB2_1"] = {
					["enable"] = true,
					["border"] = false,
					["transparent"] = true,
					["height"] = 12,
					["pethide"] = true,
					["growth"] = "HORIZONTAL",
					["width"] = 460,
				},
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "默认",
					["fontSize"] = 16,
				},
			},
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 16,
					["size"] = 36,
					["countFontsize"] = 16,
					["wrapAfter"] = 16,
				},
				["fadeThreshold"] = 10,
				["font"] = "Merathilis Gothom Narrow",
				["fontOutline"] = "OUTLINE",
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 12,
					["wrapAfter"] = 16,
					["verticalSpacing"] = 15,
					["countFontsize"] = 12,
					["size"] = 30,
				},
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["fontSize"] = 12,
						["font"] = "默认",
					},
				},
			},
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Midnightsun - 安苏"] = "Midnightsun - 安苏",
		["提取职业色 - 血色十字军"] = "提取职业色 - 血色十字军",
		["Eternalsun - 血色十字军"] = "Eternalsun - 血色十字军",
		["Eternalyg - 血色十字军"] = "Eternalyg - 血色十字军",
		["烟亦舞 - 血色十字军"] = "烟亦舞 - 血色十字军",
		["Midnightsun - 白银之手"] = "Midnightsun - 白银之手",
		["無剣道 - 血色十字军"] = "無剣道 - 血色十字军",
		["Minuitsun - 血色十字军"] = "Minuitsun - 血色十字军",
		["Ceshiy - 血色十字军"] = "Ceshiy - 血色十字军",
	},
	["profiles"] = {
		["Midnightsun - 安苏"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["lui"] = {
				["session"] = {
					["day"] = 4,
				},
			},
			["install_complete"] = "11.12",
		},
		["提取职业色 - 血色十字军"] = {
			["lui"] = {
				["session"] = {
					["day"] = 3,
				},
			},
		},
		["Eternalsun - 血色十字军"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["muiMisc"] = {
				["session"] = {
					["day"] = 0,
				},
			},
			["lui"] = {
				["session"] = {
					["day"] = 1,
				},
			},
			["install_complete"] = "11.11",
		},
		["Eternalyg - 血色十字军"] = {
			["unitframe"] = {
				["disabledBlizzardFrames"] = {
					["raid"] = false,
				},
			},
			["general"] = {
				["dmgfont"] = "伤害数字",
			},
			["muiMisc"] = {
				["session"] = {
					["day"] = 3,
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["actionbar"] = {
				["masque"] = {
					["stanceBar"] = true,
					["petBar"] = true,
					["actionbars"] = true,
				},
			},
			["install_complete"] = "11.10",
		},
		["烟亦舞 - 血色十字军"] = {
			["general"] = {
				["normTex"] = "ElvUI Blank",
				["dmgfont"] = "伤害数字",
				["chatBubbleFontSize"] = 12,
				["chatBubbleName"] = true,
				["glossTex"] = "ElvUI Blank",
			},
			["muiMisc"] = {
				["session"] = {
					["day"] = 6,
				},
			},
			["lui"] = {
				["Pskins"] = {
					["addonSkins"] = {
						["dbm"] = false,
					},
				},
			},
			["actionbar"] = {
				["masque"] = {
					["stanceBar"] = true,
					["petBar"] = true,
					["actionbars"] = true,
				},
			},
			["skins"] = {
				["blizzard"] = {
					["collections"] = false,
					["losscontrol"] = false,
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = "11.10",
		},
		["Midnightsun - 白银之手"] = {
			["lui"] = {
				["session"] = {
					["day"] = 1,
				},
			},
		},
		["無剣道 - 血色十字军"] = {
			["lui"] = {
				["session"] = {
					["day"] = 7,
				},
			},
			["actionbar"] = {
				["masque"] = {
					["stanceBar"] = true,
					["petBar"] = true,
					["actionbars"] = true,
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = "11.10",
			["auras"] = {
				["masque"] = {
					["debuffs"] = true,
					["buffs"] = true,
				},
			},
		},
		["Minuitsun - 血色十字军"] = {
			["general"] = {
				["dmgfont"] = "伤害数字",
			},
			["muiMisc"] = {
				["session"] = {
					["day"] = 0,
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = "11.10",
			["actionbar"] = {
				["masque"] = {
					["stanceBar"] = true,
					["petBar"] = true,
					["actionbars"] = true,
				},
			},
			["auras"] = {
				["masque"] = {
					["debuffs"] = true,
					["buffs"] = true,
				},
			},
		},
		["Ceshiy - 血色十字军"] = {
			["lui"] = {
				["session"] = {
					["day"] = 3,
				},
			},
		},
	},
}
