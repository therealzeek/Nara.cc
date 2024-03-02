local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/cat"))()

local Window = Library:CreateWindow("nara.cc Whitelisted", Vector2.new(392, 310), Enum.KeyCode.V)

local AimingTab = Window:CreateTab("Main")

local testSection = AimingTab:CreateSector("First Section", "left")

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

ToggleBind:AddKeybind()

AimingTab:CreateConfigSystem("right") -- Config system

-- Ensure that the UI stays when the player dies
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    Window:Show()
end)

loadstring(game:HttpGet(('https://raw.githubusercontent.com/therealzeek/icon/main/README.md')))()
