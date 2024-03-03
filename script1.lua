-- Function to load external scripts with error handling
local function loadScript(url)
    local success, script = pcall(game.HttpGet, game, url)
    if success then
        local loadedScript = loadstring(script)
        if loadedScript then
            local success, errorMsg = pcall(loadedScript)
            if not success then
                warn("Error executing script: " .. errorMsg)
            end
        else
            warn("Error loading script: " .. url)
        end
    else
        warn("Error fetching script from URL: " .. url)
    end
end

-- Load libraries and create UI window
local Library = loadScript("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/cat")

local Window = Library:CreateWindow("nara.cc Whitelisted", Vector2.new(392, 310), Enum.KeyCode.V)

-- Create tabs and UI elements
local AimingTab = Window:CreateTab("main")
local testSection = AimingTab:CreateSector("main", "left")

testSection:AddToggle("Enable", false, function(state)
  
end)

testSection:AddButton("Dot", function()
    loadScript("https://raw.githubusercontent.com/therealzeek/nara.cc-lock/main/lock.md")
end)

testSection:AddButton("rightclick", function()
    loadScript("https://raw.githubusercontent.com/BalligusapoTT/BalligusapoTT/main/Leftclickballi")
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

-- Create MSC tab
local MscTab = Window:CreateTab("msc")
MscTab:CreateConfigSystem("right") -- Config system

-- Ensure that the UI stays when the player dies
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    Window:Show()
end)

-- Load icon and Ctool
loadScript("https://raw.githubusercontent.com/therealzeek/icon/main/iconshow.lua")
loadScript("https://raw.githubusercontent.com/therealzeek/Ctool/main/README.lua")
