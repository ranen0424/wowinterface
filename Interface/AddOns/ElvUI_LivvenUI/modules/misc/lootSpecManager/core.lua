-- 来源：爱不易
-- 作者：爱不易
-- 链接：
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "loot", "lootSpecManager", "enable") then return end

local ltsm
LTSM_API = {}
LTSM_API.difficulties = {
	[17] = "lfr",
	[1] = "normal",
	[14] = "normal",
	[2] = "heroic",
	[15] = "heroic",
	[23] = "mythic",
	[16] = "mythic",
}

LTSM_API.reverse_difficulties = {
	lfr = 17,
	normal = 1,
	heroic = 2,
	mythic = 23
}

function LTSM_API:get_spec_for_encounter(encounter, difficulty)
	difficulty = self.difficulties[difficulty]
	local table = ltsm.encounters[difficulty]
	if table == nil then
		return LTSM_DATA.SPEC_DONT_CARE
	end
	spec = table[encounter]
	if spec == nil then
		spec = LTSM_DATA.SPEC_DONT_CARE
	end
	return spec
end

function LTSM_API:set_active_settings_difficulty(difficulty)
	if ltsm.encounters[difficulty] == nil then
		error("Difficulty table doesn't exist: " .. difficulty)
	end
	ltsm.current = difficulty
	LTSM_GUI:refresh()
end

function LTSM_API:set_spec_setting(encounter, spec)
	ltsm.encounters[ltsm.current][encounter] = spec
end

function LTSM_API:get_default_spec()
	return ltsm.default
end

function LTSM_API:set_default_spec(spec)
	ltsm.default = spec
end

function LTSM_API:get_mythicplus_spec(map)
	return ltsm.mythicplus[map] or LTSM_DATA.SPEC_DONT_CARE
end

function LTSM_API:set_mythicplus_spec(map, spec)
	ltsm.mythicplus[map] = spec
end

function LTSM_API:copy_settings(from_name, to_name)
	local from = ltsm.encounters[from_name]
	if from == nil then
		error("难度不存在: " .. difficulty)
	end

	if from_name == to_name then
		print(("不需要将设置从 %s 复制到 %s"):format(from_name, to_name))
		return
	end

	print(("将设置从 %s 复制到 %s"):format(from_name, to_name))
	ltsm.encounters[to_name] = {}
	local to = ltsm.encounters[to_name]
	for k, v in pairs(from) do
		to[k] = v
	end
end

local function set_spec(spec)
	if spec == LTSM_DATA.SPEC_DONT_CARE then
		return false
	end
	SetLootSpecialization(spec)
	return true
end

local events = {}

function events:PLAYER_LOGIN()
	LTSM = LTSM or {}
	ltsm = LTSM
	LTSM_DATA:check_version()
	LTSM_GUI:init()
end

function events:ENCOUNTER_START(id, _, difficulty)
	if C_ChallengeMode.GetActiveKeystoneInfo() ~= 0 then
		return
	end
	if set_spec(LTSM_API:get_spec_for_encounter(id, difficulty)) then
		print(("Boss战开启. 拾取专精已更改."):format(id))
	end
end

local next_azerite_is_mp_box = false

function events:CHALLENGE_MODE_COMPLETED()
	local map = C_ChallengeMode.GetCompletionInfo()
	if set_spec(LTSM_API:get_mythicplus_spec(map)) then
		print("大秘境完成. 拾取专精已更改. 拾取这个宝箱后将改回预设拾取专精.")
	end
	next_azerite_is_mp_box = true
end

function events:AZERITE_ITEM_EXPERIENCE_CHANGED()
	if next_azerite_is_mp_box then
		print("宝箱已拾取. 切换到预设专精.")
		next_azerite_is_mp_box = false
		set_spec(LTSM_API:get_default_spec())
	end
end


local frame = CreateFrame("Frame")
frame:SetScript("OnEvent", function(self, event, ...)
	return events[event](self, ...)
end)
for k, _ in pairs(events) do
	frame:RegisterEvent(k)
end

SLASH_LOOTSPECMANAGER1 = "/ltsm"
SlashCmdList["LOOTSPECMANAGER"] = function()
	LTSM_GUI.frame:Show()
end