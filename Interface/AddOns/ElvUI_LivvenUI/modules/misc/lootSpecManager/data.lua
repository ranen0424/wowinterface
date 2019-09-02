local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "loot", "lootSpecManager", "enable") then return end

LTSM_DATA_VERSION = 3

LTSM_DATA = {}

LTSM_DATA.SPEC_DONT_CARE = -1

LTSM_DATA.SPEC_CURRENT_SPEC = 0

LTSM_DATA.INSTANCE_BOSSES = (function(...)
	local ret = {}
	for _, v in pairs({...}) do
		tinsert(ret, {
			name = v[1],
			encounters = v[2]
		})
	end
	return ret
end)(
	{"达萨罗之战", (function()
		local encounters = {
			[4] = {name = "丰灵", id = 2271},
			[5] = {name = "神选者教团", id = 2268},
			[6] = {name = "拉斯塔哈大王", id = 2272},
			[7] = {name = "大工匠梅卡托克", id = 2276},
			[8] = {name = "风暴之墙阻击战", id = 2280},
			[9] = {name = "吉安娜·普罗德摩尔", id = 2281}
		}
		if UnitFactionGroup("player") == "Alliance" then
			encounters[1] = {name = "圣光勇士", id = 2265}
			encounters[2] = {name = "玉火大师", id = 2266}
			encounters[3] = {name = "格洛恩，还魂者", id = 2263}
		else
			encounters[1] = {name = "圣光勇士", id = 2265}
			encounters[2] = {name = "丛林之王格洛恩", id = 2263}
			encounters[3] = {name = "玉火大师", id = 2266}
		end
		return encounters
	end)()},
	{"奥迪尔", {
		[1] = {name = "塔罗克", id = 2144},
		[2] = {name = "纯净圣母", id = 2141},
		[3] = {name = "腐臭吞噬者", id = 2128},
		[4] = {name = "泽克沃兹，恩佐斯的传令官", id = 2136},
		[5] = {name = "维克提斯", id = 2134},
		[6] = {name = "重生者祖尔", id = 2145},
		[7] = {name = "拆解者米斯拉克斯", id = 2135},
		[8] = {name = "戈霍恩", id = 2122}
	}},
	{"阿塔达萨", {
		[1] = {name = "女祭司阿伦扎", id = 2084},
		[2] = {name = "沃卡尔", id = 2085},
		[3] = {name = "莱赞", id = 2086},
		[4] = {name = "亚兹玛", id = 2087}
	}},
	{"自由镇", {
		[1] = {name = "天空上尉库拉格", id = 2093},
		[2] = {name = "海盗议会", id = 2094},
		[3] = {name = "藏宝竞技场", id = 2095},
		[4] = {name = "哈兰·斯威提", id = 2096}
	}},
	{"诸王之眠", {
		[1] = {name = "黄金风蛇", id = 2139},
		[2] = {name = "殓尸者姆沁巴", id = 2142},
		[3] = {name = "部族议会", id = 2140},
		[4] = {name = "始皇达萨", id = 2143}
	}},
	{"风暴神殿", {
		[1] = {name = "阿库希尔", id = 2130},
		[2] = {name = "海贤议会", id = 2131},
		[3] = {name = "斯托颂勋爵", id = 2132},
		[4] = {name = "低语者沃尔兹斯", id = 2133}
	}},
	{"围攻伯拉勒斯", (function()
		local encounters = {
			[2] = {name = "恐怖船长洛克伍德", id = 2109},
			[3] = {name = "哈达尔·黑渊", id = 2099},
			[4] = {name = "维克戈斯", id = 2100}
		}
		if UnitFactionGroup("player") == "Alliance" then
			encounters[1] = {name = "“屠夫”血钩", id = 2098}
		else
			encounters[1] = {name = "拜恩比吉中士", id = 2097}
		end
		return encounters
	end)()},
	{"塞塔里斯神庙", {
		[1] = {name = "阿德里斯和阿斯匹克斯", id = 2124},
		[2] = {name = "米利克萨", id = 2125},
		[3] = {name = "加瓦兹特", id = 2126},
		[4] = {name = "塞塔里斯的化身", id = 2127}
	}},
	{"暴富矿区！！", {
		[1] = {name = "投币式群体打击者", id = 2105},
		[2] = {name = "艾泽洛克", id = 2106},
		[3] = {name = "瑞克莎·流火", id = 2107},
		[4] = {name = "商业大亨拉兹敦克", id = 2108},
	}},
	{"地渊孢林", {
		[1] = {name = "长者莉娅克萨", id = 2111},
		[2] = {name = "被感染的岩喉", id = 2118},
		[3] = {name = "孢子召唤者赞查", id = 2112},
		[4] = {name = "不羁畸变怪", id = 2123}
	}},
	{"托尔达戈", {
		[1] = {name = "泥沙女王", id = 2101},
		[2] = {name = "杰斯·豪里斯", id = 2102},
		[3] = {name = "骑士队长瓦莱莉", id = 2103},
		[4] = {name = "科古斯狱长", id = 2104}
	}},
	{"维克雷斯庄园", {
		[1] = {name = "毒心三姝", id = 2113},
		[2] = {name = "魂缚巨像", id = 2114},
		[3] = {name = "贪食的拉尔", id = 2115},
		[4] = {name = "维克雷斯勋爵和夫人", id = 2116},
		[5] = {name = "高莱克·图尔", id = 2117}
	}}
)

LTSM_DATA.DUNGEON_MAPS = (function(...)
	local ret = {}
	for _, v in pairs({...}) do
		ret[v[1]] = v[2]
		ret[v[2]] = v[1]
	end
	return ret
end)(
	{"阿塔达萨", 1763},
	{"自由镇", 1754},
	{"诸王之眠", 1762},
	{"围攻伯拉勒斯", 1822},
	{"风暴神殿", 1864},
	{"塞塔里斯神庙", 1877},
	{"暴富矿区！！", 1594},
	{"地渊孢林", 1841},
	{"托尔达戈", 1771},
	{"维克雷斯庄园", 1862}
)

function LTSM_DATA:check_version()
	local ltsm = LTSM

	if not ltsm.version then
		ltsm.encounters = ltsm.encounters or {}
		ltsm.settings = ltsm.settings or {}
		ltsm.mythicplus = ltsm.mythicplus or {}

		ltsm.encounters[2098] = ltsm.encounters[2098] or ltsm.encounters[2097]

		ltsm.version = 1
	end
	if ltsm.version == 1 then
		local encounters = ltsm.encounters
		ltsm.encounters = {
			mythic = {},
			heroic = {},
			normal = {},
			lfr = {}
		}
		for k, v in pairs(encounters) do
			ltsm.encounters.mythic[k] = v
			ltsm.encounters.heroic[k] = v
			ltsm.encounters.normal[k] = v
			ltsm.encounters.lfr[k] = v
		end
		ltsm.current = "mythic"

		ltsm.version = 2
	end
	if ltsm.version == 2 then
		ltsm.default = LTSM_DATA.SPEC_DONT_CARE

		ltsm.version = LTSM_DATA_VERSION
	end
end
