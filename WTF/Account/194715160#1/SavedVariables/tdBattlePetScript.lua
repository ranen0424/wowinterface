
TD_DB_BATTLEPETSCRIPT_GLOBAL = {
	["global"] = {
		["version"] = 80200.01,
		["scripts"] = {
			["AllInOne"] = {
			},
			["FirstEnemy"] = {
			},
			["Base"] = {
			},
			["Rematch"] = {
				["6驯宠大师弗鲁莫斯002"] = {
					["name"] = "6驯宠大师弗鲁莫斯2",
					["code"] = "quit [ self.hpp<100  & round=1 ] \nchange(next) [ self.dead ] \nchange(#3) [self(#2).played] \nability(#3) [self(#1).active] \nability(黑爪) [ !enemy.aura(黑爪).exists & self(#3).active ] \nability(#1)",
				},
				[97804] = {
					["code"] = "quit [ self.level<25 & round=1 ] \nchange(next) [self.dead] \nability(烧灼驱魔) [self(#1).aura(恶兆诅咒).exists]\nability(自爆) [enemy(#3).hp.can_explode]\nability(#1)",
				},
				["5诱捕者贾伦002"] = {
					["name"] = "5诱捕者贾伦005",
					["code"] = "quit [ self.level<25  & round=1 ] \nchange(next) [ self.dead ] \nability(#2) [ round =2] \nability(#3) [ round =3] \nability(#2) [ round =6] \nability(#3) [ round =7] \nability(#2) [ self(#1).active &round=11 ] \nability(自爆) [ self(#2).active & enemy.hp<=560] \nability(#1)",
				},
				[104553] = {
					["name"] = "4奥多格001",
					["code"] = "quit [self(#3).active&round=1] \nchange(next) [self.dead] \nstandby [enemy.aura(潜水).exists] \nif [self(#1).active] \nability(#1) [enemy.hp<=427] \nability(#2) \nability(#3) \nendif\nability(自爆) [self(#2).active&enemy(#3).hp<=650] \nability(#1) \nstandby",
				},
				[105250] = {
					["name"] = "6奥利尔",
					["code"] = "quit [self(#2).level<25 &round=1] \nquit [self(#3).active &self(#2).dead] \nchange(#1) [self(#3).played] \nchange(#2) [self(#1).dead & enemy(#2).hp>400]   \nchange(#2) [self(#1).dead &self(#3).played ] \nchange(#3) [enemy(#3).active & enemy.round=2 &!self(#3).played] \n\nif [ self(#1).active & enemy(#1).active  ] \nability(#3) \nability(#2) \nability(#1) \nendif \n\nif [ self(#1).active & enemy(#2).active  ] \nchange(#3) [enemy.hp<=400 &!self(#3).played] \nstandby [enemy.aura(795).exists] \nstandby [enemy.hp<=400 &enemy.ability(794).usable] \nstandby [enemy.hp<=400] \nability(#1)   \nendif \n\n\nif [ self(#2).active & enemy(#2).active  ] \nability(#1) [self.round=1] \nstandby [enemy.aura(795).exists] \nstandby [enemy.hp<=400 &enemy.ability(794).usable] \nability(#2) [enemy.hp<=243] \nability(#1) \nendif \n\nif [ self(#2).active & enemy(#3).active  ] \nability(#3) [self.aura(旋紧发条).exists] \nability(#2) [enemy.hp<=243] \nability(#1) \nendif \nability(#1)",
				},
				["79海难俘虏011"] = {
					["name"] = "79海难俘虏011",
					["code"] = "quit [round = 1 & self.hpp < 100] \nchange(next) [self.dead] \nchange(#3) [enemy.aura(亡灵).exists] \nstandby [self(#3).active & enemy.aura(亡灵).exists] \nchange(next) [enemy.aura(黑爪:918).duration=3] \nchange(next) [enemy.aura(伤口外露:306).duration=5] \nability(#2) [self.round =1&!enemy(#3).active] \nability(#3) \nability(#1)",
				},
				["4奥多格002"] = {
					["name"] = "4奥多格002",
					["code"] = "quit [ self.level<25 & round=1 ]\nchange(next) [self.dead]\nstandby [enemy.aura(潜水).exists]\nstandby [ round=4 ]\nstandby [ round=6 ]\nif [self(#1).active]\nstandby [enemy(#3).hp<=560]\nability(#1) [enemy(#2).hp<=427]\nability(#2) [!enemy(#3).active]\nability(#3) \nability(#1)\nendif \nif [self(#2).active] \nability(自爆) [ enemy(#3).hp<=650 ] \nability(#1) \nendif \nstandby",
				},
				["1加尔维斯顿先生002"] = {
					["name"] = "1加尔维斯顿先生004",
					["code"] = "quit [ self.level<25 & round=1 ]\nability(#3) [round=1]\nability(#1) [round=2]\nchange(#3) [round=6]\nability(嚎叫:362) [round=7]\nability(复仇:997) [round=8]\nability(复仇:997) [round=11]\nchange(#1) [self(#1).hp<952 & enemy.active]\nchange(#3) [self(#2).active]\nchange(next) [self.dead]\nability(#1)\nquit",
				},
				[105455] = {
					["name"] = "5诱捕者贾伦001",
					["code"] = "quit [ self.level<25  & round=1 ] \nchange(next) [ self.dead ] \nability(#1) [ round =3] \nability(#3) [ round =6] \nability(#1) [ round >=7 &round<=9] \nability(#2) [ self(#1).active ] \nability(自爆) [ self(#2).active & enemy.hp<=560] \nability(#1)",
				},
				["74海难俘虏006"] = {
					["name"] = "74海难俘虏006",
					["code"] = "quit [round = 1 & self(#1).hp != 1546] \nchange(next) [self.dead] \nif [self(#1).active] \nchange(#2) [enemy.aura(亡灵).exists] \nability(#3) [round > 1] \nability(#2) [round = 5] \nability(#1) \nendif \nif [self(#2).active] \nstandby [enemy.aura(亡灵).exists] \nability(#3) \nability(#1) \nendif \nif [self(#3).active] \nability(#3) [enemy.aura(躲闪).exists] \nability(#1) \nendif \nquit",
				},
				["78海难俘虏010"] = {
					["name"] = "78海难俘虏010",
					["code"] = "quit [round = 1 & self(#1).hp !=1400 ] \nchange(next) [self.dead] \nchange(#2) [self(#1).active & enemy(#2).hp<=560] \nif [self(#1).active ] \nstandby [round=2] \nability(黑爪) [ !enemy.aura(黑爪).exists& enemy(#1).active ] \nability(群殴) [round=3] \nability(#1) [ enemy.aura(破碎防御).exists ] \nendif \nif [self(#2).active] \nability(自爆) \nendif \nif [self(#3).active] \nability(#1) [enemy.aura(亡灵).exists] \nability(#3) \nability(#1) \nendif \nquit",
				},
				["阿古斯克罗库恩毒光鳐练级队1"] = {
					["name"] = "阿古斯克罗库恩毁灭之蹄练级队2",
					["code"] = "quit [ self.level < 25 ]\nchange(next) [ self.dead ]\nability(进食昏迷)\nchange(#2)\nability(鬼影缠身)\nchange(#3) \nability(#2) [enemy.aura(918).duration < 1]\nability(#3)\nability(黑爪) [enemy.aura(918).duration < 1]\nability(群殴)",
				},
				["1蒂梵妮·尼尔森006"] = {
					["name"] = "1蒂梵妮·尼尔森006",
					["code"] = "quit [ self.level<25 & round=1 ] \nchange(#1) [self(#2).dead] \nchange(#2) [round=3] \nability(#2) [ round=1 ] \nability(#1) [ round=2 ] \nability(自爆) [ enemy(#3).active ] \nif [self(#2).active & enemy(#1).active] \nability(#2) [enemy.hp<=150]\nability(#1) [self.round=1] \nability(#2) \nendif \nif [self(#2).active & enemy(#2).active & enemy.hp>=220] \nability(#3) [enemy.round=1] \nability(#1) \nability(#2) \nendif \nif [self(#2).active & enemy(#2).active & enemy.hp<=220] \nability(#2) \nendif\nif [self(#2).active & enemy(#3).active] \nability(#1) [enemy.round<=2] \nstandby \nendif",
				},
				["1蒂梵妮·尼尔森005"] = {
					["code"] = "quit [ self(#2).level<25  & round=1 ] \nchange(#3) [self(#2).dead &!self(#3).played] \nchange(#1) [self(#3).played] \nchange(#2) [round=3] \nability(#2) [ round=1 ] \nability(飞羽) [ enemy(#1).active & self.round=1 ] \nability(黑爪) [ !enemy.aura(黑爪).exists ] \nability(群殴) \nability(错乱) \nability(#1)",
				},
				["69海难俘虏002"] = {
					["name"] = "69海难俘虏002",
					["code"] = "quit [round = 1 & self.hpp < 100]\nchange(next) [self.dead]\nchange(#3) [enemy.aura(亡灵).exists]\nstandby [self(#3).active & enemy.aura(亡灵).exists]\nability(原始嗥叫) [round = 1]\nability(黑爪) [round = 2]\nchange(#2) [round = 3]\nability(奔踏) [round = 4]\nability(卷土重来) [self(#2).active]\nability(潜行)\nability(狂暴)\nquit",
				},
				["6苏拉玛：维雷尼（新手版）"] = {
					["name"] = "1",
					["code"] = "quit [ self.level<25 & round=1 ] \nquit [self(#3).dead ] \nchange(next) [self.dead] \nchange(#3) [self(#2).played] \nif [ self(#1).active & enemy(#1).active ]\nability(#2) [self.round=2]\nability(#3)\nendif\n\nif [ self(#1).active & enemy(#2).active ]\nability(#1)\nendif\n\nif [ self(#3).active & enemy(#2).active ] \nability(#3)\nendif \nif [ self(#3).active & enemy(#3).active ] \nability(黑爪) [ !enemy.aura(黑爪).exists ] \nability(#1)\nability(#3)\nstandby \nendif\nstandby",
				},
				["1阿玛利亚003"] = {
					["name"] = "1阿玛利亚003",
					["code"] = "quit [ self.level<25  & round=1 ]   \nchange(#2) [ self(#1).dead & !self(#2).played ] \nchange(#3) [self(#2).played] \nif [self(#1).active &enemy(#1).active] \nability(#1) [round=1] \nability(#1) [round=3] \nability(#1) [round=4] \nability(#2) \nendif \nif [self(#1).active &enemy(#2).active] \nability(#1) [self.aura(旋紧发条).exists & !enemy.aura(灵动).exists] \nability(#1) [!self.aura(旋紧发条).exists &enemy.hpp>50] \nability(#2) \nendif \nability(#3) [self(#1).active &enemy(#3).active] \nif [self(#3).active &enemy(#3).active] \nability(抽水) [!enemy.aura(1358).exists &self.aura(抽水).exists] \nability(抽水) [ !self.aura(抽水).exists ] \nstandby [enemy.hp<=1098] \nendif \nability(#1)",
				},
				["4奥多格004"] = {
					["name"] = "4奥多格004",
					["code"] = "quit [self(雪福，雪怒的幼崽:1266).dead] \nchange(#2) [self(#3).dead] \nchange(#3) [enemy(#3).active & enemy.round=3] \nstandby [round=1] \nchange(#2) [round=2] \nif [self(#2).active] \nability(#3) [!enemy(#3).active] \nability(#2) \nability(#1) \nendif \nif [self(#3).active] \nability(#3) [enemy.hp<=501] \nability(#1) [enemy.hp<=501] \nability(#2) [self.round=1] \nability(#3) \nability(#1) \nendif \nstandby",
				},
				["71海难俘虏004"] = {
					["name"] = "71海难俘虏004",
					["code"] = "quit [round = 1 & self.hpp < 100]\nchange(#2) [round = 3]\nchange(#3) [enemy.aura(亡灵).exists]\nability(厚积薄发) [enemy(#2).active]\nability(增压) [enemy.aura(遁地).exists]\nability(诡雷陷阱)\nability(格林奇的礼物) \nability(#1)\nquit",
				},
				["1阿玛利亚002"] = {
					["name"] = "1阿玛利亚002",
					["code"] = "quit [ self.level<25  & round=1 ]   \nchange(#2) [ self(#1).dead & !self(#2).played ] \nchange(#3) [self(#2).played] \nif [self(#1).active &enemy(#1).active] \nability(#1) [round=1] \nability(#1) [round=3] \nability(#1) [round=4] \nability(#2) \nendif \nif [self(#1).active &enemy(#2).active] \nability(#1) [self.aura(旋紧发条).exists & !enemy.aura(灵动).exists] \nability(#1) [!self.aura(旋紧发条).exists &enemy.hpp>50] \nability(#2) \nendif \nability(#3) [self(#1).active &enemy(#3).active] \nif [self(#3).active &enemy(#3).active] \nability(抽水) [!enemy.aura(1358).exists &self.aura(抽水).exists] \nability(抽水) [ !self.aura(抽水).exists ] \nstandby [enemy.hp<=1098] \nendif \nability(#1)",
				},
				["6奥利尔3"] = {
					["name"] = "6奥利尔3",
					["code"] = "quit [self(#2).level<25 &round=1] \nquit [self(#3).active &self(#2).dead] \nchange(#2) [self(#1).dead] \n\nif [ self(#1).active & enemy(#1).active  ] \nability(#3) \nability(#1) \nendif \n\nif [ self(#1).active & enemy(#2).active  ] \nstandby [enemy.hp<=400 & enemy.ability(794).usable] \nstandby [enemy.aura(795).exists] \nstandby [enemy.round=1 & self.hp>=850] \nability(#2) [enemy.round=1 & self.hp<850] \nability(#2) [enemy.round=2] \nability(#1) \nendif \n\n\nif [ self(#2).active & enemy(#2).active  ] \nstandby [enemy.hp<=400 & enemy.ability(794).usable] \nstandby [enemy.aura(795).exists] \nability(#1) \nendif \n\nif [ self(#2).active & enemy(#3).active  ] \nability(#3) [enemy.hp<=560] \nability(#2) [enemy.round=1] \nability(#1) \nendif \n\nability(#1)",
				},
				[98489] = {
					["name"] = "68海难俘虏001",
					["code"] = "quit [round = 1 & self.hpp < 100]\nquit [self.dead & enemy(#1).active]\nchange(next) [self.dead]\nchange(#3) [enemy.aura(亡灵).exists & enemy(#3).hp<794]\nstandby [self(#3).active & enemy.aura(亡灵).exists]\nability(信息素) [round = 1]\nability(抱摔) [round = 2]\nability(穿刺创伤) [round = 3]\nchange(#2) [round = 4]\nability(原始嗥叫) [enemy.aura(减速).duration < 2] \nability(侧击) [enemy(#2).active]\nability(血牙)\nability(抓挠) [enemy(#2).active]\nstandby [self(#3).hpp<50 & !enemy.aura(遁地).exists]\nability(迎头冲撞)\nquit",
				},
				["0瑞迪002"] = {
					["name"] = "0瑞迪尔002",
					["code"] = "quit [ enemy.hp>1500 ]\nquit [ self.level<25 & round=1 ] \nquit [ self(#3).active ] \nability(自爆) [round = 1] \nchange(#2) \nability(毒烟) [round = 2] \nability(自爆) [round = 3]",
				},
				["4奥多格003"] = {
					["name"] = "4奥多格003",
					["code"] = "quit [ self.level<25 & round=1 ]\nchange(next) [self.dead]\nstandby [enemy.aura(潜水).exists]\nif [self(#1).active]\nstandby [enemy(#3).hp<=560]\nability(#1) [enemy(#2).hp<=427]\nability(#2) [!enemy(#3).active]\nability(#3) \nability(#1)\nendif \nif [self(#2).active] \nability(自爆) [ enemy(#3).hp<=560 ] \nability(反射护盾) [ enemy(#3).hp>=950 ]\nability(#1) \nendif \nstandby",
				},
				[99210] = {
					["name"] = "1博迪·日轨001",
					["code"] = "quit [ self.level<25  & round=1 ] \nstandby [self(#1).active & enemy(#3).hp<=560] \nchange(next) [ self.dead ] \nability(#1) [enemy(#1).active] \nif [self(#1).active & enemy(#2).active] \nability(#2) [enemy.round=1] \nability(#1) \nendif \n\nability(自爆) [self(#2).active & enemy(#3).hp<=650] \nability(毒烟) [self(#2).active & self.round=1] \nability(毒烟) [self(#2).active & enemy.round=1&!enemy.aura(毒烟).exists] \nability(#1)",
				},
				["82海难俘虏012"] = {
					["name"] = "82海难俘虏012",
					["code"] = "change(next) [self.dead] \nstandby [self(#3).active & enemy.aura(亡灵).exists] \nchange(next) [enemy.aura(亡灵:242).exists] \nability(#3) [round =4] \nability(#1) [round <3] \nability(#3) [self.round =1& self(#2).active] \nability(#2) \nability(#3) [enemy.aura(嚎叫).exists] \nability(#1) \nquit",
				},
				[98270] = {
					["name"] = "5罗伯特·克雷格001",
					["code"] = "quit [ self.level<25  & round=1 ] \nchange(next) [self.dead] \nif [ self(#1).active  ] \nability(#3) [round=1] \nability(#3) [enemy(#2).active] \nability(#2) \nstandby \nendif \nif [ self(#2).active  ] \nability(#3) [enemy(#3).active & enemy.round=3] \nability(#2) [self.round=2] \nability(#2) [enemy(#3).active & enemy.round=2] \nability(#1) \nendif \nquit",
				},
				["5诱捕者贾伦003"] = {
					["name"] = "1",
					["code"] = "quit [ self.level<25 & round=1 ] \nquit [ self(#3).active ] \nchange(next) [ self.dead ] \nuse(#3) [ round=2 ]\nability(#3) [ self(#1).active & enemy.aura(亡灵).exists ] \nability(#3) [ self(#1).active & enemy(#3).active ] \nability(#2) [ self(#1).active ] \nuse(自爆) [ enemy.aura(湍流旋涡).duration = 1 ]\nability(#1)",
				},
				["76海难俘虏008"] = {
					["name"] = "76海难俘虏008",
					["code"] = "quit [round = 1 & self.hpp < 100]\nchange(#2) [round = 3]\nchange(#1) [round = 7]\nchange(#3) [self.dead]\nchange(#3) [enemy.aura(亡灵).exists] \nstandby [round = 5 & enemy(#1).hp<309]\nstandby [self(#3).active & enemy.aura(亡灵).exists]\nability(末日决战) [round = 6]\nability(能量涌动) [enemy(#3).active]\nability(诡雷陷阱) \nability(格林奇的礼物) \nability(#1) \nquit",
				},
				["1博迪·日轨003"] = {
					["name"] = "1博迪·日轨003",
					["code"] = "standby [round=1]\nchange(next) [round = 2]\nchange(next) [self.dead]\nif [ self(风裔龙宝宝:1721).active ]\nuse(法力澎湃:489) [ weather(奥术之风:590).duration>3 & enemy.type != 机械 ]\nuse(奥术风暴:589)\nuse(#1)\nendif\nif [ self(节点雏龙:1165).active ]\nuse(法力澎湃:489) [ weather(奥术之风:590).duration>3 & enemy.type != 机械 ]\nuse(奥术风暴:589)\nuse(#1)\nendif",
				},
				["4多格002"] = {
					["name"] = "4多格002",
					["code"] = "quit [ self.level<25 & round=1 ]\nchange(next) [self.dead]\nstandby [enemy.aura(潜水).exists]\nif [self(#1).active]\nstandby [enemy(#3).hp<=560]\nability(#1) [enemy(#2).hp<=427]\nability(#2) [!enemy(#3).active]\nability(#3) \nability(#1)\nendif \nif [self(#2).active] \nability(自爆) [ enemy(#3).hp<=560 ] \nability(反射护盾) [ enemy(#3).hp>=950 ]\nability(#1) \nendif \nstandby",
				},
				["1蒂梵妮·尼尔森002"] = {
					["name"] = "1蒂梵妮·尼尔森002",
					["code"] = "quit [self.level<25 &round=1] \nchange(next) [self.dead] \nchange(#3) [self(#2).played] \nability(末日决战) [self.round =3] \nability(奥术风暴) \nability(#2) \nability(#1)",
				},
				["2守夜人梅瑞尔003"] = {
					["name"] = "2守夜人梅瑞尔003",
					["code"] = "quit [ self.level<25  & round=1 ] \nquit [self(#3).dead ] \nchange(next) [self.dead] \nability(黑爪) [ !enemy.aura(黑爪).exists ] \nability(群殴) \nability(自爆) [enemy(#3).hp<=618 ] \nability(#2) [enemy(#3).hpp<80 ] \nability(#1) \nstandby",
				},
				["2守夜人梅瑞尔002"] = {
					["name"] = "2守夜人梅瑞尔002",
					["code"] = "quit [ self.level<25  & round=1 ] \nquit [self(#3).dead ] \nchange(next) [self.dead] \nif [self(#1).active & enemy(#1).active] \nability(#3) [round=1] \nability(#1) \nendif \nif [self(#1).active & enemy(#2).active] \nstandby [enemy.aura(亡灵).exists] \nability(#2) \nability(#1) \nendif \nif [self(#1).active & enemy(#3).active] \nability(#3) \nability(#1) \nendif \nif [self(#2).active & enemy(#3).active] \nability(自爆) [enemy.hp<=650] \nability(#1) \nendif",
				},
				[107489] = {
					["name"] = "1",
					["code"] = "change(next) [ self.dead ]\nability(旋紧发条) [ round = 1 ]\nability(增压) [ round = 2 ]\nability(旋紧发条) [ round = 3 ]\nability(强力球) [ round = 4 ]\nchange(#3) [ round = 5 ]\nchange(#1) [ round = 6 ]\nability(旋紧发条) [ round = 7 ]\nability(增压) [ round = 8 ]\nability(旋紧发条) [ round = 9 ]\nchange(#2) [ round = 10 ]\nability(湍流旋涡) [ round = 11 ]\nability(抽水) [ round = 12 ]\nability(抽水) [ round = 13 ]",
				},
				["阿古斯克罗库恩毁灭之蹄练级队"] = {
					["name"] = "阿古斯克罗库恩毁灭之蹄练级队",
					["code"] = "change(next) [self.dead ]\nability(群殴) [enemy.aura(黑爪).exists]\nability(黑爪)\nchange(#2) [enemy.aura(昏睡).exists]\nability(进食昏迷)\nquit",
				},
				[106552] = {
					["name"] = "2守夜人梅瑞尔001",
					["code"] = "quit [ self.level<25  & round=1 ] \nquit [self(#3).dead ] \nchange(next) [self.dead] \nif [self(#1).active & enemy(#1).active] \nability(#3) [round=1] \nability(#1) \nendif \nif [self(#1).active & enemy(#2).active] \nstandby [enemy.aura(亡灵).exists] \nability(#2) \nability(#1) \nendif \nif [self(#1).active & enemy(#3).active] \nability(#3) \nability(#1) \nendif \nif [self(#2).active & enemy(#3).active] \nability(自爆) [enemy.hp<=560] \nability(#1) \nendif",
				},
				[105386] = {
					["name"] = "0瑞迪尔001",
					["code"] = "quit [ enemy.hp>1500 ]\nquit [ self(1450).active & round=1 ] \nchange(1450) [enemy.aura(嚎叫).exists] \nchange(next) [self.dead] \nability(嚎叫) \nability(离子炮) \nquit",
				},
				["70海难俘虏003"] = {
					["name"] = "70海难俘虏003",
					["code"] = "quit [round = 1 & self.hpp < 100] \nchange(next) [self.dead] \nchange(#3) [enemy.aura(亡灵).exists] \nstandby [self(#3).active & enemy.aura(亡灵).exists] \nability(原始嗥叫) [round = 1] \nability(黑爪) [round = 2] \nchange(#2) [round = 3] \nability(奔踏) [round = 4] \nability(卷土重来) [self(#2).active] \nability(掷桶) \nquit",
				},
				["1博迪·日轨002"] = {
					["name"] = "1博迪·日轨002",
					["code"] = "quit [ self.level<25  & round=1 ] \nchange(next) [ self.dead ] \nif [self(#1).active & enemy(#1).active] \nstandby [ enemy(#1).hp<=492&enemy(#3).dead&enemy(#2).dead] \nability(#3) [enemy.hp>328] \nability(#1)   \nendif \n\nif [self(#1).active & enemy(#2).active] \nstandby [ enemy(#2).hp<=492&enemy(#3).dead&enemy(#1).dead] \nability(#2) \nability(#3) [enemy.hp>492] \nability(#1) \nendif \n\nif [self(#1).active & enemy(#3).active] \nstandby [ enemy(#3).hp<=492&enemy(#2).dead&enemy(#1).dead] \nability(#3) [enemy.hp>829] \nability(#3) [!enemy(#2).dead] \nability(#3) [!enemy(#1).dead] \nability(#1) \nendif \n\nif [self(#2).active & enemy(#3).active] \nability(自爆) [ enemy(#3).hp<=560&enemy(#2).dead&enemy(#1).dead] \nability(雷霆之箭) [ !enemy(#1).dead&enemy(#3).hp>366] \nability(雷霆之箭) [ !enemy(#2).dead&enemy(#3).hp>366] \nability(雷霆之箭) [ enemy(#3).hp>732] \nability(#1) \nendif \nif [self(#2).active & enemy(#2).active] \nability(自爆) [ enemy(#2).hp<=560&enemy(#3).dead&enemy(#1).dead] \nability(雷霆之箭) [ !enemy(#1).dead] \nability(雷霆之箭) [ !enemy(#3).dead] \nability(雷霆之箭) [ enemy(#2).hp>732] \nability(#1) \nendif \nif [self(#2).active & enemy(#1).active] \nability(自爆) [ enemy(#1).hp<=560&enemy(#2).dead&enemy(#3).dead] \nendif \nability(#1)",
				},
				["1蒂梵妮·尼尔森004"] = {
					["code"] = "quit [ self(#2).level<25 & round=1 ] \nchange(#1) [self(#2).dead] \nchange(#2) [self(#3).played] \nchange(#3) [round=4] \nability(#3) [ round=1 ] \nability(错乱) [enemy(#1).active] \nability(清扫) [enemy(#2).active] \nability(错乱) [enemy(#3).active]\nability(灵魂奔袭) [enemy.round=1 & enemy(#3).active] \nability(#1) \nstandby",
				},
				["6奥利尔2"] = {
					["name"] = "6奥利尔2",
					["code"] = "quit [self(#2).level<25 &round=1] \nquit [self(#3).active &self(#2).dead] \nchange(#1) [self(#3).played] \nchange(#2) [self(#1).dead & enemy(#2).hp>400]   \nchange(#2) [self(#1).dead &self(#3).played ] \nchange(#3) [enemy(#3).active & enemy.round=2 &!self(#3).played] \n\nif [ self(#1).active & enemy(#1).active  ] \nability(#3) \nability(#2) \nability(#1) \nendif \n\nif [ self(#1).active & enemy(#2).active  ] \nchange(#3) [enemy.hp<=400 &!self(#3).played] \nstandby [enemy.aura(795).exists] \nstandby [enemy.hp<=400 &enemy.ability(794).usable] \nstandby [enemy.hp<=400] \nability(#1) \nendif \n\nif [ self(#2).active & enemy(#2).active  ] \nstandby [enemy.aura(795).exists] \nstandby [enemy.hp<=400 &enemy.ability(794).usable] \nability(#2) \nability(#1) \nendif \n\nif [ self(#2).active & enemy(#3).active  ] \nability(#2) \nability(#3) \nability(#1) \nendif \nability(#1)",
				},
				["5罗伯特·克雷格003"] = {
					["name"] = "5罗伯特·克雷格003",
					["code"] = "quit [ self.level<25  & round=1 ] \nchange(next) [self.dead] \nif [ self(#1).active  ] \nability(#3) [round=1] \nability(#3) [enemy(#2).active] \nability(#2) \nstandby \nendif \nif [ self(#2).active  ] \nability(#3) [enemy(#3).active & enemy.round=3] \nability(#2) [self.round=2] \nability(#2) [enemy(#3).active & enemy.round<=2] \nability(#1) \nendif \nquit",
				},
				["5罗伯特·克雷格002"] = {
					["name"] = "5罗伯特·克雷格002",
					["code"] = "quit [ self.level<25  & round=1 ] \nchange(next) [self.dead] \nif [ self(#1).active  ] \nability(#3) [round=1] \nability(#3) [enemy(#2).active] \nability(#2) \nstandby \nendif \nif [ self(#2).active  ] \nability(#3) [enemy(#3).active & enemy.round=3] \nability(#2) [self.round=2] \nability(#2) [enemy(#3).active & enemy.round<=2] \nability(#1) \nendif \nquit",
				},
				["5罗伯特·克雷格004"] = {
					["name"] = "5罗伯特·克雷格004",
					["code"] = "quit [ self.level<25 & self.hpp<100 &round=1 ] \nchange(next) [self.dead] \nability(自爆) [ self(#1).active & enemy(#2).active ]\nchange(#3) [self(#2).active & enemy(#2).active]\nif [self(#3).active & enemy(#2).active] \nability(#1)\nendif\nif [self(#3).active & enemy(#3).active] \nability(#3) [enemy.round=1]\nability(#2) [enemy.round=2]\nability(#1) \nendif\nability(#2) \nability(#1)",
				},
				["1博迪·日轨004"] = {
					["name"] = "1博迪·日轨004",
					["code"] = "ability(吞噬魔法) [self(#1).active & enemy(#2).active]\nability(自爆) [self(#2).active & enemy(#3).hp<=560] \nability(能量涌动) [self(#1).active & enemy(#2).hp<=1000]\nquit [ self.level<25 ] \nquit [ self(#3).active ] \nchange(next) [ self.dead ] \nability(奥术冲击)\nability(猛击)",
				},
				[97709] = {
					["name"] = "6驯宠大师弗鲁莫斯",
					["code"] = "quit [ self.level<25  & round=1 ] \nchange(next) [ self.dead ] \nability(黑爪) [ !enemy.aura(黑爪).exists & self(#2).active ] \nability(#2) [self(#1).active] \nability(#1) [round=2] \nability(#3)",
				},
				["1蒂梵妮·尼尔森003"] = {
					["code"] = "quit [ self.level<25  & round=1 ] \nchange(#1) [self(#2).dead] \nchange(#2) [round=3] \nability(#2) [ round=1 ] \nability(#1) [ round=2 ] \nability(自爆) [ enemy(#3).active ] \nif [self(#2).active & enemy(#1).active] \nability(#1) [self.round=1] \nability(#2) \nendif \nif [self(#2).active & enemy(#2).active] \nability(#3) [enemy.round=1] \nability(#1) \nendif \nif [self(#2).active & enemy(#3).active] \nability(#1) [enemy.round<=2] \nstandby \nendif",
				},
				["4奥多格005"] = {
					["name"] = "4奥多格005",
					["code"] = "quit [ self.level<25  & round=1 ] \nchange(next) [ self.dead ] \nif [self(#1).active & enemy(#1).active] \nability(#3) [self.aura(旋紧发条).exists] \nability(#2) [enemy.hp<=288] \nability(#1) \nendif \nif [self(#1).active & enemy(#2).active] \nability(#3) [self.aura(旋紧发条).exists] \nability(#2) [enemy.hp<=288] \nability(#1) \nendif \nif [self(#1).active & enemy(#3).active] \nability(#2) [enemy.round>2 & !self.aura(旋紧发条).exists] \nability(#1) [enemy.hpp>70] \nendif \nif [self(#2).active ] \nability(自爆) [  enemy.hp<=560 & !enemy.aura(潜水).exists] \nability(#1) \nendif \nstandby",
				},
				["1加尔维斯顿先生003"] = {
					["name"] = "1",
					["code"] = "quit [ self.level<25 & round=1 ]\nchange(next) [self.dead]\nchange(#3) [self(#2).played]\nability(#3) [enemy(#2).active]\nability(#2) [enemy(#1).active&!enemy.aura(昏迷).exists &!enemy.hp.full ]\nability(复仇) [enemy(#3).active]\nability(重殴) [enemy(#1).active]\nability(#1)\nquit",
				},
				["75海难俘虏007"] = {
					["name"] = "75海难俘虏007",
					["code"] = "quit [round = 1 & self(#2).hpp < 100] \nchange(next) [self.dead] \nchange(#3) [enemy.aura(亡灵).exists] \nstandby [self(#3).active & enemy.aura(亡灵).exists] \nability(黑爪) [round = 1] \nchange(#2) [round = 2] \nability(奔踏) [round = 3] \nability(卷土重来) [round = 6] \nability(抓挠) [round = 7]   \nability(增压) [enemy.aura(遁地).exists] \nability(突袭) \nquit",
				},
				["77海难俘虏009"] = {
					["name"] = "77海难俘虏009",
					["code"] = "quit [round = 1 & self(#1).hp != 1627] \nchange(next) [self.dead] \nif [self(#1).active] \nability(#2) \nability(#1) [round = 2]  \nability(#3) \nendif \nif [self(#2).active] \nability(#1) [enemy(#1).active] \nability(#2) \nability(#3) \nendif \nif [self(#3).active] \nability(#1) [enemy.aura(亡灵).exists] \nability(#3) \nability(#1) \nendif \nquit",
				},
				[99182] = {
					["name"] = "1加尔维斯顿先生002",
					["code"] = "quit [ self.level<25  & round=1 ] \nquit [self(#3).active & enemy(#3).active] \nchange(#2) [self(#1).dead] \nability(#3) [round=6] \nability(#3) [self(#2).active] \nability(#2) [self(#2).active] \nability(#1)",
				},
				["72海难俘虏005"] = {
					["name"] = "72海难俘虏005",
					["code"] = "quit [round = 1 & self.hpp < 100] \nchange(next) [self.dead] \nchange(#3) [enemy.aura(亡灵).exists] \nstandby [self(#3).active & enemy.aura(亡灵).exists] \nability(原始嗥叫) [round = 1] \nability(黑爪) [round = 2] \nchange(#2) [round = 3] \nability(蜂拥) [round = 4] \nability(抓挠) [round = 7] \nability(抓挠) [round = 8] \nability(潜行) \nability(喂食) \nquit",
				},
			},
		},
	},
	["profileKeys"] = {
		["我和你老公 - 克尔苏加德"] = "Default",
		["橘子裁缝 - 影之哀伤"] = "Default",
		["梦里梦到醒来 - 迅捷微风"] = "Default",
		["Kimhaiya - 影之哀伤"] = "Default",
		["香香的奈儿 - 影之哀伤"] = "Default",
		["梦里梦到醒来 - 贫瘠之地"] = "Default",
		["橘子杂物 - 影之哀伤"] = "Default",
		["酴醾 - 影之哀伤"] = "Default",
		["香奈 - 影之哀伤"] = "Default",
		["绿色橙子 - 影之哀伤"] = "Default",
		["小猩猩爱好者 - 影之哀伤"] = "Default",
		["长裙绿衣 - 燃烧之刃"] = "Default",
		["小白开水 - 影之哀伤"] = "Default",
		["冰布林 - 影之哀伤"] = "Default",
		["绿色橘子 - 影之哀伤"] = "Default",
		["暗影斗篷 - 织亡者"] = "Default",
		["血腥奈奈 - 影之哀伤"] = "Default",
		["蔡花花 - 影之哀伤"] = "Default",
		["茶茶苦凉凉 - 安苏"] = "Default",
		["叶莎莎 - 影之哀伤"] = "Default",
		["天生呆丶 - 血色十字军"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["settings"] = {
				["hideMinimap"] = true,
			},
			["position"] = {
				["y"] = -47.9999618530273,
				["x"] = -154.999877929688,
				["point"] = "RIGHT",
				["scale"] = 1,
			},
			["pluginOrders"] = {
				"Rematch", -- [1]
				"Base", -- [2]
				"FirstEnemy", -- [3]
				"AllInOne", -- [4]
			},
			["minimap"] = {
				["hide"] = true,
			},
		},
	},
}
