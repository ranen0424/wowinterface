
RematchSaved = {
	["1"] = {
		{
			"BattlePet-0-000003D1F660", -- [1]
			210, -- [2]
			218, -- [3]
			652, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-000005BA7A87", -- [1]
			777, -- [2]
			647, -- [3]
			779, -- [4]
			339, -- [5]
		}, -- [2]
		{
			"BattlePet-0-0000056C80D1", -- [1]
			184, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
	},
	["三星"] = {
		{
			"BattlePet-0-0000056C80DC", -- [1]
			459, -- [2]
			566, -- [3]
			282, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-000003D1F665", -- [1]
			459, -- [2]
			566, -- [3]
			282, -- [4]
			1387, -- [5]
		}, -- [2]
		{
			"BattlePet-0-000003D1F62D", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [3]
	},
	[138708] = {
		{
			"BattlePet-0-0000056C80D1", -- [1]
			184, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [1]
		{
			"BattlePet-0-000003D1F651", -- [1]
			184, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-000003D1F640", -- [1]
			184, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [3]
		["teamName"] = "2",
	},
}
RematchSettings = {
	["ScriptFilters"] = {
		{
			"未命名的宠物", -- [1]
			"-- 收集的宠物中，仍然是原始名字的宠物。\n\nreturn owned and not customName", -- [2]
		}, -- [1]
		{
			"未完成升级的宠物", -- [1]
			"-- 在对战中获得过经验，但是没有完成升级的宠物。\n\nreturn xp and xp>0", -- [2]
		}, -- [2]
		{
			"独特技能", -- [1]
			"-- 拥有其它宠物所没有的技能的宠物。\n\nif not count then\n  -- create count of each ability per species\n  count = {}\n  for speciesID in AllSpeciesIDs() do\n    for abilityID in AllAbilities(speciesID) do\n      if not count[abilityID] then\n        count[abilityID] = 0\n      end\n      count[abilityID] = count[abilityID] + 1\n    end\n  end\nend\n\nfor _,abilityID in ipairs(abilityList) do\n  if count[abilityID]==1 then\n    return true\n  end\nend", -- [2]
		}, -- [3]
		{
			"非精良属性", -- [1]
			"-- 收集的宠物中，不是精良属性的宠物。\n\nif not rares then\n  rares = {}\n  for petID in AllPetIDs() do\n    if select(5,C_PetJournal.GetPetStats(petID))==4 then\n      rares[C_PetJournal.GetPetInfoByPetID(petID)]=true\n    end\n  end\nend\n\nif canBattle and owned and not rares[speciesID] then\n  return true\nend", -- [2]
		}, -- [4]
		{
			"混合技能", -- [1]
			"-- 拥有三个或以上非自身宠物类型的攻击型技能的宠物。\n\nlocal count = 0\nfor _,abilityID in ipairs(abilityList) do\n  local abilityType,noHints = select(7, C_PetBattles.GetAbilityInfoByID(abilityID) )\n  if not noHints and abilityType~=petType then\n    count = count + 1\n  end\nend\n\nreturn count>=3\n", -- [2]
		}, -- [5]
	},
	["QueueSortOrder"] = 1,
	["XPos"] = 675.0015258789063,
	["HidePetToast"] = true,
	["FavoriteFilters"] = {
	},
	["Sort"] = {
		["Order"] = 1,
		["FavoritesFirst"] = true,
	},
	["AllowHiddenPetsDefaulted"] = true,
	["BackupCount"] = 0,
	["TeamGroups"] = {
		{
			"综合", -- [1]
			"Interface\\Icons\\PetJournalPortrait", -- [2]
		}, -- [1]
	},
	["loadedTeam"] = 138708,
	["Filters"] = {
		["Other"] = {
		},
		["Script"] = {
		},
		["Moveset"] = {
		},
		["Tough"] = {
		},
		["Level"] = {
		},
		["Similar"] = {
		},
		["Sources"] = {
		},
		["Breed"] = {
		},
		["Rarity"] = {
		},
		["Strong"] = {
		},
		["Collected"] = {
		},
		["Favorite"] = {
		},
		["Types"] = {
		},
	},
	["LevelingQueue"] = {
	},
	["SelectedTab"] = 1,
	["JournalUsed"] = true,
	["CollapsedOptHeaders"] = {
	},
	["QueueSanctuary"] = {
	},
	["PreferredMode"] = 1,
	["ActivePanel"] = 1,
	["Sanctuary"] = {
		["BattlePet-0-0000056C80DC"] = {
			1, -- [1]
			true, -- [2]
			1387, -- [3]
			25, -- [4]
			1400, -- [5]
			305, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000003D1F660"] = {
			1, -- [1]
			true, -- [2]
			1238, -- [3]
			25, -- [4]
			1806, -- [5]
			276, -- [6]
			227, -- [7]
			4, -- [8]
		},
		["BattlePet-0-0000056C80D1"] = {
			2, -- [1]
			true, -- [2]
			1532, -- [3]
			25, -- [4]
			1319, -- [5]
			322, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000003D1F640"] = {
			1, -- [1]
			true, -- [2]
			1532, -- [3]
			25, -- [4]
			1319, -- [5]
			322, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000003D1F62D"] = {
			1, -- [1]
			true, -- [2]
			1387, -- [3]
			25, -- [4]
			1400, -- [5]
			341, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000003D1F665"] = {
			1, -- [1]
			true, -- [2]
			1387, -- [3]
			25, -- [4]
			1546, -- [5]
			305, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000003D1F651"] = {
			1, -- [1]
			true, -- [2]
			1532, -- [3]
			25, -- [4]
			1319, -- [5]
			322, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000005BA7A87"] = {
			1, -- [1]
			true, -- [2]
			339, -- [3]
			1, -- [4]
			158, -- [5]
			11, -- [6]
			11, -- [7]
			4, -- [8]
		},
	},
	["ElvUIToastDefaulted"] = true,
	["CornerPos"] = "BOTTOMLEFT",
	["SpecialSlots"] = {
	},
	["JournalPanel"] = 1,
	["YPos"] = 238.0008392333984,
	["CustomScaleValue"] = 100,
	["PetNotes"] = {
	},
}
