local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "skins", "enable") then return end
local LS = E:GetModule("LuiSkins")
local S = E:GetModule("Skins")

local _G = _G
local hooksecurefunc = hooksecurefunc

local function styleChatFrame()
	if E.private.chat.enable ~= true then return end

	local VoiceChatPromptActivateChannel = _G["VoiceChatPromptActivateChannel"]
	LS:CreateBD(VoiceChatPromptActivateChannel)
	VoiceChatPromptActivateChannel:Styling()
	LS:CreateBD(_G.VoiceChatChannelActivatedNotification)
	_G.VoiceChatChannelActivatedNotification:Styling()

	if E.db.chat.pinVoiceButtons and not E.db.chat.hideVoiceButtons then
		if _G.ChatFrameChannelButton then
			_G.ChatFrameChannelButton:StripTextures()
			_G.ChatFrameChannelButton.glow:Hide()
		end

		if _G.ChatFrameToggleVoiceDeafenButton then
			_G.ChatFrameToggleVoiceDeafenButton:StripTextures()
			_G.ChatFrameToggleVoiceDeafenButton.glow:Hide()
		end

		if _G.ChatFrameToggleVoiceMuteButton then
			_G.ChatFrameToggleVoiceMuteButton:StripTextures()
			_G.ChatFrameToggleVoiceMuteButton.glow:Hide()
		end
	else
		--ElvUI ChatButtonHolder
		if _G.ChatButtonHolder then
			_G.ChatButtonHolder:Styling()
		end
	end
end

S:AddCallback("LuiChat", styleChatFrame)
