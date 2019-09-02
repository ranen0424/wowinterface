local LUI, T, E, L, V, P, G = unpack(select(2, ...))

G.lui = {
	modules = {
		filters = {
			infoFilter = {
				enable = true,
				debugFilter = false,
				noPMSticky = false,
				repeatFilter = 45,
				keywordMatchNum = 1,
				emoticonMatchNum = 3,
				keywordFilter = {},
			},
			pmFilter = {
				enable = true,
				demoLevel = true,
				levelFilter = 2,
				DKLevelFilter = 57,
				DHLevelFilter = 99,
			},
			playerFilter = {
				enable = true,
				nameFilter = {},
			},
		}
	}
}