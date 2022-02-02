SLASH_RELOADUI = "/rl" -- quick reload
SlashCmdList.RELOADUI = ReloadUI

SLASH_FRAMESTK1 = "/fs" -- quick access to frame stack
SlashCmdList.FRAMESTK = function ()
  LoadAddOn('Blizzard_DebugTools')
  FrameStackTooltip_Toggle()
end

--to use arrows without rotationg the character
for i = 1, NUM_CHAT_WINDOWS do
  _G["ChatFrame"..i.."EditBox"]:SetAltArrowKeyMode(false)
end

----------------------------------------------------------

local UIConfig = CreateFrame("Frame", "HelloWorldFrame", UIParent, "BasicFrameTemplateWithInset, MovableTemplate, ResizableTemplate")

UIConfig:SetSize(300, 360)
UIConfig:SetPoint("CENTER", UIParent, "CENTER")