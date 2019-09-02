--来源：LivvenUI
--作者：L
--修改：
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "general", "disableTalking") then return end

local LMI = E:GetModule("LuiMisc")

LMI.ToggleTalkingFrame = ToggleTalkingFrame
local TalkingHooked = false

local function ToggleTalkingFrame()
    if (TalkingHeadFrame and TalkingHeadFrame:IsVisible()) then
        TalkingHeadFrame.MainFrame.CloseButton:GetScript("OnClick")()
    end
end

function LMI:ToggleTalkingHead()
    if not TalkingHooked and TalkingHeadFrame then
        TalkingHeadFrame:HookScript("OnShow", ToggleTalkingFrame)
        TalkingHooked = true
    end
end

function LMI:LoadTalkingHead()
    self:RegisterEvent("TALKINGHEAD_REQUESTED", "ToggleTalkingHead")
end
