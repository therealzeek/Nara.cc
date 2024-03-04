local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/cat"))() --you can go into the github link and copy all of it and modify it for yourself.
local Window = Library:CreateWindow("Nara.cc [BETA]", Vector2.new(398, 310), Enum.KeyCode.P)

local AimingTab = Window:CreateTab("main")


local testSection = AimingTab:CreateSector("main", "left")  --you can  change the section code, for example "testsection" can be changed to "FunnyCoolSection" etc.

testSection:AddTextbox("Prediction", nil, function(State)
end)

testSection:AddButton("Enable", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/therealzeek/nara.cc-lock/main/lock.md", true))()
end)

local ddhSection = AimingTab:CreateSector("da downhill", "left") 

ddhSection:AddTextbox("Prediction", nil, function(State)
end)

ddhSection:AddButton("Enable", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/tezprivlock/Script/main/thescript", true))()
end)

local miscTab = Window:CreateTab("msc")

local miscSection = miscTab:CreateSector("misc", "left")

miscSection:AddButton("rightclick", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/BalligusapoTT/BalligusapoTT/main/Leftclickballi'))()
end)

miscSection:AddButton("TrashTalk (T)", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/therealzeek/Trash-talk/main/trashtalkbumassboa.lua'))()
end)

local ToggleBind = miscSection:AddToggle("Keybind w/Toggle", false, function(e)

end)

ToggleBind:AddKeybind()

AimingTab:CreateConfigSystem("right") --this is the config system

loadstring(game:HttpGet("https://raw.githubusercontent.com/therealzeek/icon/main/iconshow.lua", true))()
