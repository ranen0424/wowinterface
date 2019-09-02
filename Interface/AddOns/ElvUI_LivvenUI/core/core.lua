local E, L, V, P, G = unpack(ElvUI)
local AddOnName, Engine = ...
local LUI = E:NewModule(AddOnName, "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0")
local EP = LibStub("LibElvUIPlugin-1.0")

local _G = _G
local tonumber = tonumber
local format = string.format

LUI.Title = format("|cff9482c9%s|r", AddOnName)
LUI.Version = format("|cfff960d9%s|r", GetAddOnMetadata(AddOnName, "Version"))
LUI.Header = LUI.Title .. " |cfff960d9v|r" .. LUI.Version
LUI.ElvUIV = tonumber(E.version)
LUI.ElvUIX = tonumber(GetAddOnMetadata(AddOnName, "X-ElvVersion"))
LUI.Configs = {}
LUI["styling"] = {}
LUI.Logo = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\LUILogo.tga]]
LUI.SmallLogo = [[Interface\AddOns\ElvUI_LivvenUI\media\textures\LUISmallLogo.tga]]
_G.BINDING_HEADER_LIVVENUI = GetAddOnMetadata(..., "Title")

local Toolkit = {}
Engine[1] = LUI
Engine[2] = Toolkit
Engine[3] = E
Engine[4] = L
Engine[5] = V
Engine[6] = P
Engine[7] = G
_G[AddOnName] = Engine

local function GetOptions()
    for _, func in pairs(LUI.Configs) do
        func()
    end
end

function LUI:DasOptions()
    E:ToggleOptionsUI()
    LibStub("AceConfigDialog-3.0-ElvUI"):SelectGroup("ElvUI", "lui")
end

function LUI:LoadCommands()
    self:RegisterChatCommand("lui", "DasOptions")
end

function LUI:Initialize()
    if LUI.ElvUIV < LUI.ElvUIX then
        E:StaticPopup_Show("VERSION_MISMATCH")
        return
    end

    self:RegisterMedia()
    self:LoadCommands()

    if E.db.lui.general["splashScreen"] then self:SplashScreen() end
    if E.db.lui.general["gamemenu"] then self:GameMenu() end
    if E.db.lui.general["loginMsg"] then
        LUI:Print(format(L["LUI_LOGIN_MSG"], LUI.Header, LUI:PrintLink("/lui"), LUI:PrintLink("Livven#51778")))
    end

    E:Delay(5, function()
        LUI:CheckVersion()
    end)
    
    EP:RegisterPlugin(AddOnName, GetOptions)
end

local function InitializeCallback()
    LUI:Initialize()
end

E:RegisterModule(LUI:GetName(), InitializeCallback)