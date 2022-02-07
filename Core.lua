-- TODO: add ReloadUI function
-- SLASH_RELOADUI = "/rl" -- quick reload
-- SlashCmdList.RELOADUI = ReloadUI

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

-- Parent frame: 
local UIConfig = CreateFrame("Frame", "HelloWorldFrame", UIParent, "BasicFrameTemplateWithInset")

UIConfig:SetSize(300, 360)
UIConfig:SetPoint("CENTER", UIParent, "CENTER")

UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY")
UIConfig.title:SetFontObject("GameFontHighlight")
UIConfig.title:SetPoint("LEFT", UIConfig.TitleBg, "LEFT", 5, 0)
UIConfig.title:SetText('Hello World')

-- Child frames and regions:
--BUTTONS
UIConfig.saveButton = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate")
UIConfig.saveButton:SetPoint("CENTER", UIConfig, "BOTTOM", 0, 70)
UIConfig.saveButton.SetSize(140, 40)
UIConfig.saveButton:SetText("Save")
UIConfig.saveButton:SetNormalFontObject("GameFontNormal")
UIConfig.saveButton:SetHighlightFontObject("GameFontHighlight")

-- UIConfig.saveButton:SetPushedFontObject("Pushed")

-- UI Save Button
UIConfig.saveButtonn = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.saveButtonn:SetPoint("CENTER", UIConfig, "TOP", 0, -20);
UIConfig.saveButtonn:SetSize(140,40);
UIConfig.saveButtonn:SetText("Save"); 		-- Dirctly communicates to the button's main FontString object
UIConfig.saveButtonn:SetNormalFontObject("GameFontNormalLarge");
UIConfig.saveButtonn:SetHighlightFontObject("GameFontHighlightLarge");