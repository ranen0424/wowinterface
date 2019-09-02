local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

--Cache global variables
--Lua functions
local _G = _G
local pairs, select = pairs, select

--WoW API / Variables
local CreateFrame = CreateFrame
local C_LFGList_GetSearchResultInfo = C_LFGList.GetSearchResultInfo
local hooksecurefunc = hooksecurefunc
--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS: LFGListInviteDialog_Show

local r, g, b = unpack(E["media"].rgbvaluecolor)

local function styleLFGList()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.lfg ~= true or E.private.lui.luiSkins.blizzard.lfg ~= true then return end

	local LFGListFrame = _G.LFGListFrame

	-- Category selection
	local CategorySelection = LFGListFrame.CategorySelection

	CategorySelection.Inset.Bg:Hide()
	CategorySelection.Inset:DisableDrawLayer("BORDER")

	hooksecurefunc("LFGListCategorySelection_AddButton", function(self, btnIndex)
		local bu = self.CategoryButtons[btnIndex]

		if bu and not bu.styled then
			local bg = CreateFrame("Frame", nil, bu)
			bg:SetPoint("TOPLEFT", 2, 0)
			bg:SetPoint("BOTTOMRIGHT", -1, 2)
			LS:CreateBD(bg, 1)
			bg:SetFrameLevel(bu:GetFrameLevel()-1)
		end
	end)

	hooksecurefunc("LFGListSearchEntry_Update", function(self)
		local cancelButton = self.CancelButton
		if not cancelButton.styled then
			LS:Reskin(cancelButton)
			cancelButton.styled = true
		end
	end)

	-- Invite frame
	_G.LFGListInviteDialog:Styling()
	_G.LFGDungeonReadyDialog:Styling()
	_G.LFGDungeonReadyStatus:Styling()

	_G.LFGListInviteDialog.GroupName:ClearAllPoints()
	_G.LFGListInviteDialog.GroupName:SetPoint("TOP", 0, -33)

	_G.LFGListInviteDialog.ActivityName:ClearAllPoints()
	_G.LFGListInviteDialog.ActivityName:SetPoint("TOP", 0, -80)

	-- Nothing available
	local NothingAvailable = LFGListFrame.NothingAvailable
	NothingAvailable.Inset:DisableDrawLayer("BORDER")

	-- [[ Search panel ]]
	local SearchPanel = LFGListFrame.SearchPanel

	SearchPanel.ResultsInset.Bg:Hide()
	SearchPanel.ResultsInset:DisableDrawLayer("BORDER")

	-- Auto complete frame
	SearchPanel.AutoCompleteFrame.BottomLeftBorder:Hide()
	SearchPanel.AutoCompleteFrame.BottomRightBorder:Hide()
	SearchPanel.AutoCompleteFrame.BottomBorder:Hide()
	SearchPanel.AutoCompleteFrame.LeftBorder:Hide()
	SearchPanel.AutoCompleteFrame.RightBorder:Hide()

	local function resultOnEnter(self)
		self.hl:Show()
	end

	local function resultOnLeave(self)
		self.hl:Hide()
	end

	local numResults = 1
	hooksecurefunc("LFGListSearchPanel_UpdateAutoComplete", function(self)
		local AutoCompleteFrame = self.AutoCompleteFrame

		for i = numResults, #AutoCompleteFrame.Results do
			local result = AutoCompleteFrame.Results[i]

			if numResults == 1 then
				result:SetPoint("TOPLEFT", AutoCompleteFrame.LeftBorder, "TOPRIGHT", -8, 1)
				result:SetPoint("TOPRIGHT", AutoCompleteFrame.RightBorder, "TOPLEFT", 5, 1)
			else
				result:SetPoint("TOPLEFT", AutoCompleteFrame.Results[i-1], "BOTTOMLEFT", 0, 1)
				result:SetPoint("TOPRIGHT", AutoCompleteFrame.Results[i-1], "BOTTOMRIGHT", 0, 1)
			end

			result:SetNormalTexture("")
			result:SetPushedTexture("")
			result:SetHighlightTexture("")

			local hl = result:CreateTexture(nil, "BACKGROUND")
			hl:SetAllPoints()
			hl:SetTexture(E["media"].normTex)
			hl:SetVertexColor(r, g, b, .2)
			hl:Hide()
			result.hl = hl

			LS:CreateBD(result, .5)

			result:HookScript("OnEnter", resultOnEnter)
			result:HookScript("OnLeave", resultOnLeave)

			numResults = numResults + 1
		end
	end)

	-- Application viewer
	local ApplicationViewer = LFGListFrame.ApplicationViewer

	ApplicationViewer.InfoBackground:Hide()

	ApplicationViewer.Inset.Bg:Hide()
	ApplicationViewer.Inset:DisableDrawLayer("BORDER")

	local function headerOnEnter(self)
		self.hl:Show()
	end

	local function headerOnLeave(self)
		self.hl:Hide()
	end

	for _, headerName in pairs({"NameColumnHeader", "RoleColumnHeader", "ItemLevelColumnHeader"}) do
		local header = ApplicationViewer[headerName]
		header.Left:Hide()
		header.Middle:Hide()
		header.Right:Hide()

		header:SetHighlightTexture("")

		local hl = header:CreateTexture(nil, "BACKGROUND")
		hl:SetAllPoints()
		hl:SetTexture(E["media"].normTex)
		hl:SetVertexColor(r, g, b, .2)
		hl:Hide()
		header.hl = hl

		LS:CreateBD(header, .25)

		header:HookScript("OnEnter", headerOnEnter)
		header:HookScript("OnLeave", headerOnLeave)
	end

	ApplicationViewer.RoleColumnHeader:SetPoint("LEFT", ApplicationViewer.NameColumnHeader, "RIGHT", 1, 0)
	ApplicationViewer.ItemLevelColumnHeader:SetPoint("LEFT", ApplicationViewer.RoleColumnHeader, "RIGHT", 1, 0)

	-- Entry creation
	local EntryCreation = LFGListFrame.EntryCreation

	EntryCreation.Inset.Bg:Hide()
	EntryCreation.Inset:DisableDrawLayer("BORDER")

	for i = 1, 9 do
		select(i, EntryCreation.Description:GetRegions()):Hide()
	end

	-- Activity finder
	local ActivityFinder = EntryCreation.ActivityFinder

	ActivityFinder.Background:SetTexture("")
	ActivityFinder.Dialog.Bg:Hide()
	for i = 1, 9 do
		select(i, ActivityFinder.Dialog.BorderFrame:GetRegions()):Hide()
	end

	LS:CreateBD(ActivityFinder.Dialog)
	ActivityFinder.Dialog:SetBackdropColor(.2, .2, .2, .9)

	-- Application dialog ]]
	local LFGListApplicationDialog = _G.LFGListApplicationDialog
	LFGListApplicationDialog:Styling()

	for i = 1, 9 do
		select(i, LFGListApplicationDialog.Description:GetRegions()):Hide()
	end

	LS:CreateBD(LFGListApplicationDialog)
	LS:CreateBD(LFGListApplicationDialog.Description, .25)

	-- [[ Invite dialog ]]
	local LFGListInviteDialog = _G.LFGListInviteDialog
	LS:CreateBD(LFGListInviteDialog)
end

S:AddCallback("LuiLFGList", styleLFGList)
