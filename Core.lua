-- Namespaces
local _, core = ...
core.Config = {}

local Config = core.Config
local UIConfig

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
function Config:Toggle()
  local menu = UIConfig or Config:CreateMenu()
  menu:SetShown(not menu:IsShown())
end

function Config:CreateButton(point, relativeFrame, relativePoint, yOffset, xOffset, text)
  local btn = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate")
  btn:SetPoint(point, relativeFrame, relativePoint, yOffset, xOffset)
  btn:SetSize(140, 40)
  btn:SetText(text)
  btn:SetNormalFontObject("GameFontNormalLarge")
  btn:SetHighlightFontObject("GameFontHighlightLarge")
end

function Config:CreateMenu()
  -- Parent frame:
  local UIConfig = CreateFrame("Frame", "HelloWorldFrame", UIParent, "BasicFrameTemplateWithInset")

  UIConfig:SetSize(300, 360)
  UIConfig:SetPoint("CENTER", UIParent, "CENTER")

  UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY")
  UIConfig.title:SetFontObject("GameFontHighlight")
  UIConfig.title:SetPoint("LEFT", UIConfig.TitleBg, "LEFT", 5, 0)
  UIConfig.title:SetText("Hello World")

  --BUTTONS
  UIConfig.saveBtn = self:CreateButton("CENTER", UIConfig, "TOP", -70, "Save")
  UIConfig.resetBtn = self:CreateButton("TOP", UIConfig.saveBtn, "BOTTOM", -10, "Reset")
  UIConfig.loadBtn = self:CreateButton("TOP", UIConfig.resetBtn, "BOTTOM", -10, "Load")

  UIConfig:Hide()
  return UIConfig
end
