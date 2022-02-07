-- TODO: add ReloadUI function
-- SLASH_RELOADUI = "/rl" -- quick reload
-- SlashCmdList.RELOADUI = ReloadUI

SLASH_FRAMESTK1 = "/fs" -- quick access to frame stack
SlashCmdList.FRAMESTK = function()
  LoadAddOn("Blizzard_DebugTools")
  FrameStackTooltip_Toggle()
end

--to use arrows without rotationg the character
for i = 1, NUM_CHAT_WINDOWS do
  _G["ChatFrame" .. i .. "EditBox"]:SetAltArrowKeyMode(false)
end

----------------------------------------------------------

-- Parent frame:
local UIConfig = CreateFrame("Frame", "HelloWorldFrame", UIParent, "BasicFrameTemplateWithInset")

UIConfig:SetSize(300, 360)
UIConfig:SetPoint("CENTER", UIParent, "CENTER")

UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY")
UIConfig.title:SetFontObject("GameFontHighlight")
UIConfig.title:SetPoint("LEFT", UIConfig.TitleBg, "LEFT", 5, 0)
UIConfig.title:SetText("Hello World")

-- Child frames and regions:
--BUTTONS
UIConfig.saveButton1 = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate")
UIConfig.saveButton1:SetPoint("CENTER", UIConfig, "CENTER", 0, -100)
UIConfig.saveButton1:SetSize(140, 40)
UIConfig.saveButton1:SetText("ljl")
UIConfig.saveButton1:SetNormalFontObject("GameFontNormalLarge")
UIConfig.saveButton1:SetHighlightFontObject("GameFontHighlightLarge")

-- UI Reset Button
UIConfig.resetBtn = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate")
UIConfig.resetBtn:SetPoint("CENTER", UIConfig, "CENTER", 0, 0)
UIConfig.resetBtn:SetSize(140, 40)
UIConfig.resetBtn:SetText("Reset")
UIConfig.resetBtn:SetNormalFontObject("GameFontNormalLarge")
UIConfig.resetBtn:SetHighlightFontObject("GameFontHighlightLarge")

UIConfig.saveButton = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate")
UIConfig.saveButton:SetPoint("CENTER", UIConfig, "CENTER", 0, -50)
UIConfig.saveButton:SetSize(140, 40)
UIConfig.saveButton:SetText("Save")
UIConfig.saveButton:SetNormalFontObject("GameFontNormalLarge")
UIConfig.saveButton:SetHighlightFontObject("GameFontHighlightLarge")
