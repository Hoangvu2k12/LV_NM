loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/main/UiREDzV2.lua"))()

local allowedUsers = {"LV_NM12","LV_NM7"}
local playerName = game.Players.LocalPlayer.Name
local bypassKey = table.find(allowedUsers, playerName) ~= nil

local Window = MakeWindow({
    Hub = {
        Title = "tổng hợp LV_NM",
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
            CorrectKey = "Chạy tập lệnh...",
            Incorrectkey = "Chìa khóa không đúng",
            CopyKeyLink = "Đã sao chép vào Bảng tạm"
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
     local Tab1o = MakeTab({Name = "công cụ"})
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
     Name = "kill aura(yêu cầu có kiếm)",
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
     Name = "Nhảy tường v3",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://github.com/codzal/rbxscripts/raw/refs/heads/main/wallhop.lua"))()
  end
  })
  
   AddButton(Tab1o, {
     Name = "hộp va chạm",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://pastefy.app/ItfO0tdg/raw"))()
  end
  })
  
   AddButton(Tab1o, {
     Name = "định vị người chơi",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet(("https://raw.githubusercontent.com/Hoangvu2k12/m-t/refs/heads/main/esp.lua")))()
  end
  })