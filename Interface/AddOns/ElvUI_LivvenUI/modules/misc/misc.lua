local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LMI = E:NewModule("LuiMisc", "AceEvent-3.0", "AceHook-3.0")

function LMI:Initialize()
	if E.db.lui.modules.misc.general["refixStyle"] then self:LoadNumberPrefixStyle() end
	if E.db.lui.modules.misc.general.alreadyKnown["enable"] then self:LoadAlreadyKnown() end
	if E.db.lui.modules.misc.general["autoDelete"] then self:LoadAutoDelete() end
	if E.db.lui.modules.misc.general.autoScreenShoot["enable"] then self:LoadAutoScreenShoot() end
	if E.db.lui.modules.misc.loot.fastLoot["enable"] then self:LoadFastLoot() end
	if E.db.lui.modules.misc.group.inviteGroup["enable"] then self:LoadInviteGroup() end
	if E.db.lui.modules.misc.general.setPoi["enable"] then self:LoadSetPoi() end
	-- if E.db.lui.modules.misc.general.talentProfiles["enable"] then self:LoadTalentProfiles() end
	if E.db.lui.modules.misc.general["disableTalking"] then self:LoadTalkingHead() end
	if E.db.lui.modules.misc.general["autoRelease"] then self:LoadAutoRelease() end
	if E.db.lui.modules.misc.general["autoRepChange"] then self:LoadAutoRepChange() end
	if E.db.lui.modules.misc.general["repPeaksTimes"] then self:LoadRepPeaksTimes() end
	if E.db.lui.modules.misc.general.raidUtilityPlus["enable"] then self:LoadRaidUtility() end
end

local function InitializeCallback()
	LMI:Initialize()
end

E:RegisterModule(LMI:GetName(), InitializeCallback)
