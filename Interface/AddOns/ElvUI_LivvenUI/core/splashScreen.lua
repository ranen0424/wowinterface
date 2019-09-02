local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local function HideSplashScreen()
    LUISplashScreen:Hide()
end

local function FadeSplashScreen()
    E:Delay(2, function()
        E:UIFrameFadeOut(LUISplashScreen, 2, 1, 0)
        LUISplashScreen.fadeInfo.finishedFunc = HideSplashScreen
    end)
end

local function ShowSplashScreen()
    E:UIFrameFadeIn(LUISplashScreen, 4, 0, 1)
    LUISplashScreen.fadeInfo.finishedFunc = FadeSplashScreen
end

local function CreateSplashScreen()
    local f = T.CreateFrame("Frame", "LUISplashScreen", E.UIParent)
    f:Size(300, 150)
    f:SetPoint("CENTER", 0, 300)
    f:SetFrameStrata("TOOLTIP")
    f:SetAlpha(0)
    
    f.bg = f:CreateTexture(nil, "BACKGROUND")
    f.bg:SetTexture([[Interface\LevelUp\LevelUpTex]])
    f.bg:SetPoint("BOTTOM")
    f.bg:Size(400, 240)
    f.bg:SetTexCoord(0.00195313, 0.63867188, 0.03710938, 0.23828125)
    f.bg:SetVertexColor(1, 1, 1, 0.7)
    
    f.lineTop = f:CreateTexture(nil, "BACKGROUND")
    f.lineTop:SetDrawLayer("BACKGROUND", 2)
    f.lineTop:SetTexture([[Interface\LevelUp\LevelUpTex]])
    f.lineTop:SetPoint("TOP")
    f.lineTop:Size(418, 7)
    f.lineTop:SetTexCoord(0.00195313, 0.81835938, 0.01953125, 0.03320313)
    
    f.lineBottom = f:CreateTexture(nil, "BACKGROUND")
    f.lineBottom:SetDrawLayer("BACKGROUND", 2)
    f.lineBottom:SetTexture([[Interface\LevelUp\LevelUpTex]])
    f.lineBottom:SetPoint("BOTTOM")
    f.lineBottom:Size(418, 7)
    f.lineBottom:SetTexCoord(0.00195313, 0.81835938, 0.01953125, 0.03320313)
    
    f.logo = f:CreateTexture(nil, "OVERLAY")
    f.logo:Size(125, 125)
    f.logo:SetTexture(LUI.Logo)
    f.logo:Point("CENTER", f, "CENTER")
    
    f.version = LUI:CreateText(f, "OVERLAY", 14, nil, "CENTER")
    f.version:FontTemplate(nil, 14, nil)
    f.version:Point("TOP", f.logo, "BOTTOM", 0, 10)
    f.version:SetFormattedText(LUI.Header)
end

function LUI:SplashScreen()
    CreateSplashScreen()
    local db = E.private.lui["session"]
    local date = T.C_DateAndTime_GetCurrentCalendarTime()
    local presentWeekday = date.weekday
    if presentWeekday == db.day then return end
    E:Delay(5, function()
        ShowSplashScreen()
    end)
    db.day = presentWeekday
end
