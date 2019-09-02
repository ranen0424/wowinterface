local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

local _G = _G
local hooksecurefunc = hooksecurefunc

if not LUI:IsAddOnEnabled("AddOnSkins") then return end
local AS = unpack(AddOnSkins)

local function DbmDecor(event)
	if E.private.lui.luiSkins.addonSkins.dbm ~= true then return end

	local function StyleRangeFrame(self, range, filter, forceshow, redCircleNumPlayers)
		if DBM.Options.DontShowRangeFrame and not forceshow then return end

		if not _G.DBMRangeCheckRadar.IsStyled then
			_G.DBMRangeCheckRadar:Styling()

			_G.DBMRangeCheckRadar.IsStyled = true
		end

		if not _G.DBMRangeCheck.IsStyled then
			_G.DBMRangeCheck:SetTemplate('Transparent')
			_G.DBMRangeCheck:Styling()

			_G.DBMRangeCheck.IsStyled = true
		end
	end

	local function StyleInfoFrame(self, maxLines, event, ...)
		if DBM.Options.DontShowInfoFrame and (event or 0) ~= "test" then return end

		if not _G.DBMInfoFrame.IsStyled then
			_G.DBMInfoFrame:Styling()

			_G.DBMInfoFrame.IsStyled = true
		end
	end

	hooksecurefunc(DBM.RangeCheck, 'Show', StyleRangeFrame)
	hooksecurefunc(DBM.InfoFrame, 'Show', StyleInfoFrame)
end

if AS:CheckAddOn('DBM-Core') then AS:RegisterSkin('DBM', DbmDecor, 'ADDON_LOADED') end
