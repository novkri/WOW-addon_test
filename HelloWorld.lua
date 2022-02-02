
SLASH_HELLO1 = '/helloworld'


local function showGreeting(name)
  local greeting = 'Hello ' ..name.. "!"
  message(greeting)
end

local function HelloWorldHandler(name)
  local nameExists = string.len(name) > 0

  if(nameExists) then
    showGreeting(name)
  else 
    local playerName = UnitName("player")
    showGreeting(playerName)
  end
  
end

SlashCmdList["HELLO"] = HelloWorldHandler




--/run print((select(4, GetBuildInfo())));