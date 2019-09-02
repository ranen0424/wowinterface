-- 来源：EUI
-- 作者：EUI
-- 链接：
-- 修改：L
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "maps", "minimapIcons", "enable") then return end
if LUI:CheckDB("db", "modules", "maps", "minimapIcons", "square", "enable") then return end
local LSM = E:NewModule("LuiSquareMinimap")

LSM.Buttons = {}
LSM.TexCoords = {unpack(E.TexCoords)}
local ignoreButtons = {
	"GameTimeFrame",
	"HelpOpenWebTicketButton",
	"MiniMapVoiceChatFrame",
	"TimeManagerClockButton",
	"BattlefieldMinimap",
	"ButtonCollectFrame",
	"GameTimeFrame",
	"QueueStatusMinimapButton",
	"GarrisonLandingPageMinimapButton",
	"MiniMapMailFrame",
	"MiniMapTracking",
	"TukuiMinimapZone",
    "TukuiMinimapCoord",
    "MinimapZoomIn",
    "MinimapZoomOut",
}

local GenericIgnores = {
	"Archy",
	"GatherMatePin",
	"GatherNote",
	"GuildInstance",
	"HandyNotesPin",
	"MiniMap",
	"Spy_MapNoteList_mini",
	"ZGVMarker",
	"poiMinimap",
	"GuildMap3Mini",
	"LibRockConfig-1.0_MinimapButton",
	"NauticusMiniIcon",
	"WestPointer",
	"Cork",
	"DugisArrowMinimapPoint",
}

local PartialIgnores = { "Node", "Note", "Pin", "POI" }


local BlackList = {
    ["AddOnSkins"] = true,
    ["HelpOpenTicketButton"] = true,
    ["ZygorGuidesViewerMapIcon"] = true,
    ["MiniMapTrackingButton"] = true,
    ["MiniMapTrackingFrame"] = true,
    ["MiniMapMeetingStoneFrame"] = true,
    ["MiniMapMailFrame"] = true,
    ["MiniMapBattlefieldFrame"] = true,
    ["MiniMapWorldMapButton"] = true,
    ["MiniMapPing"] = true,
    ["MinimapBackdrop"] = true,
    ["MinimapZoomIn"] = true,
    ["MinimapZoomOut"] = true,
    ["BookOfTracksFrame"] = true,
    ["GatherNote"] = true,
    ["FishingExtravaganzaMini"] = true,
    ["MiniNotePOI"] = true,
    ["RecipeRadarMinimapIcon"] = true,
    ["FWGMinimapPOI"] = true,
    ["CartographerNotesPOI"] = true,
    ["MBB_MinimapButtonFrame"] = true,
    ["EnhancedFrameMinimapButton"] = true,
    ["GFW_TrackMenuFrame"] = true,
    ["GFW_TrackMenuButton"] = true,
    ["TDial_TrackingIcon"] = true,
    ["TDial_TrackButton"] = true,
    ["MiniMapTracking"] = true,
    ["GatherMatePin"] = true,
    ["HandyNotesPin"] = true,
    ["TimeManagerClockButton"] = true,
    ["GameTimeFrame"] = true,
    ["DA_Minimap"] = true,
    ["ElvConfigToggle"] = true,
    ["MiniMapInstanceDifficulty"] = true,
    ["MinimapZoneTextButton"] = true,
    ["GuildInstanceDifficulty"] = true,
    ["MiniMapVoiceChatFrame"] = true,
    ["MiniMapRecordingButton"] = true,
    ["QueueStatusMinimapButton"] = true,
    ["GatherArchNote"] = true,
    ["ZGVMarker"] = true,
    ["QuestPointerPOI"] = true,
    ["poiMinimap"] = true,
    ["MiniMapLFGFrame"] = true,
    ["PremadeFilter_MinimapButton"] = true,
    ["GarrisonMinimapButton"] = true,
}

local WhiteList = {
    ["BagSync_MinimapButton"] = true,
}

local buttons = {}
local maxbuttonsize = 26
local interval = 2

local function CreateMinimapButton()
    local button = T.CreateFrame("Button", "LUIMinimapButton", E.UIParent)
    E.FrameLocks["LUIMinimapButton"] = true
    
    button:SetFrameStrata("MEDIUM")
    button:RegisterForClicks("anyUp")
    
    button:SetClampedToScreen(true)
    button:StyleButton()
    button:SetTemplate("Default")
    button:Size(20)
    button:Point("CENTER", Minimap, "TOPLEFT", 0, -E.db.general.minimap.size / 2)
    E:CreateMover(button, "LuiMinimapButtonIconsMover", L["LuiSquareMinimapIcons"], nil, nil, nil, "ALL,SOLO", nil, "livvenui,livvenui_general")
    button.texture = button:CreateTexture(nil, "OVERLAY")
    button.texture:Size(22)
    button.texture:Point("CENTER")
    button.texture:SetTexture("Interface\\AddOns\\ElvUI\\media\\textures\\Minus")
    button:SetScript("OnClick", function(self, button)
        if button == "RightButton" then
            E:ToggleOptionsUI()
        else
            for i = 1, #buttons do
                if buttons[i]:IsShown() then buttons[i]:Hide() else buttons[i]:Show() end
            end
        end
    end)
    return button
end

local function PositionAndStyle(button)
    local squareMinimapDC = E.db.lui.modules.maps.minimapIcons.square["squareMinimapDC"]
    for i = 1, #buttons do
        buttons[i]:ClearAllPoints()
        if squareMinimapDC == "DOWN" then
            if i == 1 then
                buttons[i]:Point("TOP", button, "BOTTOM", 0, -2)
            elseif i > 1 then
                buttons[i]:Point("TOP", button, "BOTTOM", 0, -(maxbuttonsize+interval) * (i - 1) - i)
            end
        elseif squareMinimapDC == "LEFT" then
            if i == 1 then
                buttons[i]:Point("RIGHT", button, "LEFT", -2, 0)
            elseif i > 1 then
                buttons[i]:Point("RIGHT", button, "LEFT", -(maxbuttonsize+interval) * (i - 1) - i, 0)
            end
        elseif squareMinimapDC == "RIGHT" then
            if i == 1 then
                buttons[i]:Point("LEFT", button, "RIGHT", 2, 0)
            elseif i > 1 then
                buttons[i]:Point("LEFT", button, "RIGHT", (maxbuttonsize+interval) * (i - 1) + i, 0)
            end
        else
            if i == 1 then
                buttons[i]:Point("BOTTOM", button, "TOP", 0, 2)
            else
                buttons[i]:Point("BOTTOM", button, "TOP", 0, (maxbuttonsize+interval) * (i - 1) + i)
            end
        end
        buttons[i].ClearAllPoints = E.dummy
        buttons[i].SetPoint = E.dummy
        buttons[i]:Hide()
        if (buttons[i]:HasScript("OnClick")) then
            buttons[i]:HookScript("OnClick", function(self)
                for i = 1, #buttons do
                    if buttons[i]:IsShown() then buttons[i]:Hide() end
                end
            end)
        elseif (buttons[i]:HasScript("OnMouseUp")) then
            buttons[i]:HookScript("OnMouseUp", function(self)
                for i = 1, #buttons do
                    if buttons[i]:IsShown() then buttons[i]:Hide() end
                end
            end)
        end
    end
end

local function MinimapButtonCollect()
    local button = _G["LUIMinimapButton"] or CreateMinimapButton()
    if #buttons > 0 then return end
    
    for i, child in T.ipairs({Minimap:GetChildren()}) do
        local childName = child:GetName()
        if not BlackList[childName] then
            if ((child:IsObjectType("Button") and child:GetNumRegions() >= 3) or WhiteList[childName]) and child:IsShown() then
                T.pcall(child.SetParent, button)
                T.table_insert(buttons, child)
            end
        end
    end
    if #buttons == 0 then
        button:Hide()
    else
        button:Show()
    end
    
    PositionAndStyle(button)
end

local function SkinMinimapButton(Button)
	local Name = Button:GetName()
	if not Name then return end

	if T.tContains(ignoreButtons, Name) then return end

	for i = 1, #GenericIgnores do
		if T.string_sub(Name, 1, T.string_len(GenericIgnores[i])) == GenericIgnores[i] then return end
	end

	for i = 1, #PartialIgnores do
		if T.string_find(Name, PartialIgnores[i]) ~= nil then return end
	end

	for i = 1, Button:GetNumRegions() do
		local Region = select(i, Button:GetRegions())
		if Region.IsObjectType and Region:IsObjectType("Texture") then
			local Texture = T.string_lower(T.tostring(Region:GetTexture()))

			if (T.string_find(Texture, "interface\\characterframe") or T.string_find(Texture, "interface\\minimap") or T.string_find(Texture, "border") or T.string_find(Texture, "background") or T.string_find(Texture, "alphamask") or T.string_find(Texture, "highlight")) then
				Region:SetTexture(nil)
				Region:SetAlpha(0)
			else
				if Name == "BagSync_MinimapButton" then
					Region:SetTexture("Interface\\AddOns\\BagSync\\media\\icon")
				elseif Name == "LibDBIcon10_DBM" then
					Region:SetTexture("Interface\\Icons\\INV_Helmet_87")
				elseif Name == "OutfitterMinimapButton" then
					if Texture == "interface\\addons\\outfitter\\textures\\minimapbutton" then
						Region:SetTexture(nil)
					end
				elseif Name == "SmartBuff_MiniMapButton" then
					Region:SetTexture("Interface\\Icons\\Spell_Nature_Purge")
				elseif Name == "VendomaticButtonFrame" then
					Region:SetTexture("Interface\\Icons\\INV_Misc_Rabbit_2")
				end
				Region:ClearAllPoints()
				Region:SetInside()
				Region:SetTexCoord(unpack(LSM.TexCoords))
				Button:HookScript("OnLeave", function() Region:SetTexCoord(unpack(LSM.TexCoords)) end)
				Region:SetDrawLayer("ARTWORK")
				Region.SetPoint = function() return end
			end
		end
	end
	
	Button:SetFrameLevel(Minimap:GetFrameLevel() + 5)
	Button:SetSize(maxbuttonsize, maxbuttonsize)
    Button:SetTemplate()
    Button:HookScript("OnEnter", function(self)
		self:SetBackdropBorderColor(unpack(E["media"].rgbvaluecolor))
	end)
	Button:HookScript("OnLeave", function(self)
		self:SetTemplate()
	end)

	Button.isSkinned = true
	T.table_insert(LSM.Buttons, Button)
end

function LSM:GrabMinimapButtons()
	for _, Frame in T.pairs({ Minimap, MinimapBackdrop }) do
		local NumChildren = Frame:GetNumChildren()
		if NumChildren < (Frame.SMBNumChildren or 0) then return end
		for i = 1, NumChildren do
			local object = select(i, Frame:GetChildren())
			if object then
				local name = object:GetName()
				local width = object:GetWidth()
				if name and width > 15 and width < 40 and (object:IsObjectType("Button") or object:IsObjectType("Frame")) then
					SkinMinimapButton(object)
				end
			end
		end
		Frame.SMBNumChildren = NumChildren
    end
    MinimapButtonCollect()
end

function LSM:Initialize()
    if T.IsAddOnLoaded("MBB") then T.DisableAddOn("MBB") end
    E:Delay(.1, function()
		LSM:GrabMinimapButtons()
	end)
end

local function InitializeCallback()
    if not E.db.lui.modules.maps.minimapIcons["enable"] or E.db.lui.modules.maps.minimapIcons["chooseMinimap"] == "buttons" then return end
    if E.db.lui.modules.maps.minimapIcons.buttons["enable"] ~= false then
		E.db.lui.modules.maps.minimapIcons.buttons["enable"] = false
	end
	LSM:Initialize()
end

E:RegisterModule(LSM:GetName(), InitializeCallback)
