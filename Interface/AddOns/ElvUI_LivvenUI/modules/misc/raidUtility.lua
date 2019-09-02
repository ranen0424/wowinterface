local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if T.IsAddOnLoaded("ElvUI_SLE") then return end
if LUI:CheckDB("db", "modules", "misc", "general", "raidUtilityPlus", "enable") then return end
local LMI = E:GetModule("LuiMisc")

function LMI:RaidUtility_OnDragStop()
	local point, anchor, point2, x, y = self:GetPoint()
	local frame = _G["RaidUtility_ShowButton"]
	frame:ClearAllPoints()
	if T.string_find(point, "BOTTOM") then
		frame:SetPoint(point, anchor, point2, x, y)
	else
		frame:SetPoint(point, anchor, point2, x, y)
	end
end

function LMI:RaidUtility_SetMouseoverAlpha()
	local temp = E.db.lui.modules.misc.general.raidUtilityPlus.ruMouseover and 0 or 1
	_G["RaidUtility_ShowButton"]:SetAlpha(temp)
end

function LMI:RaidUtility_OnEnter()
	if not E.db.lui.modules.misc.general.raidUtilityPlus.ruMouseover then return end
	self:SetAlpha(1)
end

function LMI:RaidUtility_OnLeave()
	if not E.db.lui.modules.misc.general.raidUtilityPlus.ruMouseover then return end
	self:SetAlpha(0)
end

function LMI:RaidUtility_Hook()
	local frame = _G["RaidUtility_ShowButton"]
	if not frame then return end

	if E.db.lui.modules.misc.general.raidUtilityPlus.buttonNoBackdrop then
		_G.RaidUtility_ShowButton:SetBackdropColor(0, 0, 0, 0)
		_G.RaidUtility_CloseButton:SetBackdropColor(0, 0, 0, 0)
		_G.DisbandRaidButton:SetBackdropColor(0, 0, 0, 0)
		_G.RoleCheckButton:SetBackdropColor(0, 0, 0, 0)
		_G.ReadyCheckButton:SetBackdropColor(0, 0, 0, 0)
		_G.RaidControlButton:SetBackdropColor(0, 0, 0, 0)
		_G.CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton:SetBackdropColor(0, 0, 0, 0)
	end

	if E.db.lui.modules.misc.general.raidUtilityPlus.panelNoBackdrop then 
		_G.RaidUtilityPanel:SetBackdropColor(0, 0, 0, 0)
	end

	if E.db.lui.modules.misc.general.raidUtilityPlus.onoffButtonNoBorder then 
		_G.RaidUtility_ShowButton:SetTemplate("NoBackdrop")
		_G.RaidUtility_CloseButton:SetTemplate("NoBackdrop")
	end

	if E.db.lui.modules.misc.general.raidUtilityPlus.panelNoBorder then 
		_G.RaidUtilityPanel:SetTemplate("NoBackdrop")
	end

    E:CreateMover(frame, "LuiRaidUtility_Mover", RAID_CONTROL, nil, nil, nil, "ALL,LIVVENUI,LIVVENUI MISC")
    
	local mover = _G["LuiRaidUtility_Mover"]

	if E.db.movers == nil then E.db.movers = {} end

	mover:HookScript("OnDragStart", function(self) 
		frame:ClearAllPoints()
		frame:SetPoint("CENTER", self)
	end)

	mover:HookScript("OnDragStop", LMI.RaidUtility_OnDragStop)

	if E.db.movers.LuiRaidUtility_Mover == nil then
		frame:ClearAllPoints()
		frame:SetPoint("TOP", E.UIParent, "TOP", -400, E.Border)
	else
		LMI.RaidUtility_OnDragStop(mover)
	end

	frame:RegisterForDrag("")
	frame:HookScript("OnEnter", LMI.RaidUtility_OnEnter)
	frame:HookScript("OnLeave", LMI.RaidUtility_OnLeave)
	LMI.RaidUtility_OnLeave(frame)
end

function LMI:LoadRaidUtility()
	if T.IsAddOnLoaded("ElvUI_SLE") then return end
    if _G["RaidUtility_ShowButton"] then LMI:RaidUtility_Hook() end
end