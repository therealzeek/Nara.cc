local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/cat"))()

local Window = Library:CreateWindow("nara.cc Whitelisted", Vector2.new(392, 310), Enum.KeyCode.V)

local AimingTab = Window:CreateTab("main")

local testSection = AimingTab:CreateSector("main", "left")

testSection:AddToggle("Enable", false, function(state)
  
end)

testSection:AddButton("Dot", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/therealzeek/nara.cc-lock/main/lock.md", true))()
end)

testSection:AddButton("rightclick",
function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/BalligusapoTT/BalligusapoTT/main/Leftclickballi'))()
end)

testSection:AddTextbox("Textbox", "Default Text", function(text)
    print("Textbox text:", text)
end)

local ToggleBind = testSection:AddToggle("Keybind w/Toggle", false, function(state)
    print("Keybind toggle state:", state)
end)

-- Adding a keybind with the key "Y" for example
ToggleBind:AddKeybind(Enum.KeyCode.Y, function()
    print("Keybind pressed!")
end)

local MscTab = Window:CreateTab("msc")

MscTab:CreateConfigSystem("right") -- Config system

MscTab:AddButton("soon", function()
   print("soon Bucko")
end)

MscTab:AddButton("soon", function()
   print("soon Bucko")
end)

MscTab:AddButton("soon", function()
   print("soon Bucko")
end)

-- Ensure that the UI stays when the player dies
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    Window:Show()
end)
loadstring(game:HttpGet(('https://raw.githubusercontent.com/therealzeek/icon/main/iconshow.lua')))()
