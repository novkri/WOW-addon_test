local soundType = {
  SOUND = 1,
  GAME_MUSIC = 2,
  CUSTOM = 3
}

local sounds = {
  ["murloc"] = {
      ["sound"] = 416,
      ["description"] = "Mglrlrlrlrlrl!",
      ["type"] = soundType.SOUND
  },
  ["ding"] = {
      ["sound"] = 888,
      ["description"] = "Grats!",
      ["type"] = soundType.SOUND
  },
  ["main theme"] = {
      ["sound"] = "Sound\\Music\\GlueScreenMusic\\wow_main_theme.mp3",
      ["description"] = "DUN DUNNN... DUNNNNNNNNNN",
      ["type"] = soundType.GAME_MUSIC
  },
  ["custom"] = {
      ["sound"] = "Interface\\AddOns\\HelloWorld\\Sounds\\mototsikl.mp3",
      ["description"] = "Mototsikl sound!",
      ["type"] = soundType.CUSTOM
  }
}


SLASH_SOUND1 = '/playsound'
SLASH_STOPSOUND1 = '/stopsound'

local customSoundId

local function displaySoundList()
  print("------------------------")
  for command in pairs(sounds) do
    local description = sounds[command].description
    print("Command: /playsound " .. command .. " - Description: " .. description)
  end
  print("------------------------")
end

local function stopSoundHandler()
  StopMusic()

  --TODO not stopping custom sound (because od the Patch?)
  if (customSoundId ~= nil) then
    print('here')
    StopSound(customSoundId)
    customSoundId = nil
  end
end

local function playTrack(track)
  if (track.type == soundType.GAME_MUSIC) then
    PlayMusic(track.sound)
    print("To stop the music, type /stopsound")
  elseif (track.type == soundType.SOUND) then
    PlaySound(track.sound)
  elseif (track.type == soundType.CUSTOM) then
    stopSoundHandler()
    customSoundId = PlaySoundFile(track.sound)
  end
end

local function playSoundHandler(trackId)
  if (string.len(trackId) > 0) then
    local isSoundExists = sounds[trackId] ~= nil
    if (isSoundExists) then
      local track = sounds[trackId]
      playTrack(track)
    else
      displaySoundList()
      print(trackId .. " - Doesn't match a known track.")
    end
  else
    displaySoundList()
  end
end



SlashCmdList['SOUND'] = playSoundHandler
SlashCmdList['STOPSOUND'] = stopSoundHandler