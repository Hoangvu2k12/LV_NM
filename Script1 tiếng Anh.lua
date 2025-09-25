loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/main/UiREDzV2.lua"))()

local allowedUsers = {"LV_NM12","LV_NM7"}
local playerName = game.Players.LocalPlayer.Name
local bypassKey = table.find(allowedUsers, playerName) ~= nil

local Window = MakeWindow({
    Hub = {
        Title = "synthetic LV_NM v1",
        Animation = "LV_NM"
    },
    Key = {
        KeySystem = not bypassKey,
        Title = "Key System",
        Description = "",
        KeyLink = "https://link4sub.com/note/zVuf",
        Keys = {"UzE7AvHp2Oq5Z8nT"},
        Notifi = {
            Notifications = true,
            CorrectKey = "Run the script...",
            Incorrectkey = "Wrong key",
            CopyKeyLink = "Copied to Clipboard"
        }
    }
})

MinimizeButton({
    Image = "http://www.roblox.com/asset/?id=83711217259574",
    Size = {40, 40},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = 1.0, -- hoặc 1.0 để bo tròn toàn bộ
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0)
})
------ Tab     
     local Tab1o = MakeTab({Name = "tools"})
------- BUTTON
-- công cụ
   AddButton(Tab1o, {
     Name = "Infinite yield",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
  end
  })
  
  AddButton(Tab1o, {
     Name = "kill aura(request for sword)",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Rawbr10/test/refs/heads/main/Kill%20All%20Script%20Universal"))()
  end
  })
  
      AddButton(Tab1o, {
     Name = "FlyGuiV3",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
  end
  })
  

    AddButton(Tab1o, {
     Name = "Wallhop v3",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://github.com/codzal/rbxscripts/raw/refs/heads/main/wallhop.lua"))()
  end
  })
  
   AddButton(Tab1o, {
     Name = "hitbox",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://pastefy.app/ItfO0tdg/raw"))()
  end
  })
  
   AddButton(Tab1o, {
     Name = "esp",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet(("https://raw.githubusercontent.com/Hoangvu2k12/m-t/refs/heads/main/esp.lua")))()
  end
  })