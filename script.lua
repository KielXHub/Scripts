local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/KielXHub/Scripts/main/function.lua"))()

local Player = game.Players.LocalPlayer

local Window = Fluent:CreateWindow({
    Title = "Kiel X Hub "
    SubTitle = "by kiel",
    TabWidth = 150,
    Size = UDim2.fromOffset(480, 360),
    Acrylic = true,
    Theme = "Dark",

local Tabs = {
    Discord = Window:AddTab({ Title = "DISCORD", Icon = "" }),
    Main = Window:AddTab({ Title = "MAIN", Icon = "" }),
    Stats = Window:AddTab({ Title = "STATS", Icon = "" }),
    Teleport = Window:AddTab({ Title = "TELEPORT", Icon = "" }),
    ESP_Raid = Window:AddTab({ Title = "ESP/RAID", Icon = "" }),
    SeaEvent = Window:AddTab({ Title = "SEAEVENT", Icon = "" }),
    Fruit = Window:AddTab({ Title = "FRUIT", Icon = "" }),
    Shop = Window:AddTab({ Title = "SHOP", Icon = "" }),
    Setting = Window:AddTab({ Title = "SETTING", Icon = "" })
}

Tabs.Discord:AddButton({
    Title = "Join Discord",
    Description = "Click to copy the Discord link",
    Callback = function()
        Functions.copyToClipboard(Functions.discordLink)
    end

-- Idagdag ang Auto Farm tab sa iyong Main tab window
local AutoFarmTab = Tabs.Main:AddTab({ Title = "Auto Farm", Icon = "" })

-- Magdagdag ng mga setting sa Auto Farm tab
local AutoFarmEnabled = false -- Default value for Auto Farm is disabled

local AutoFarmToggle = AutoFarmTab:AddToggle({
    Title = "Auto Farm Level",
    Description = "Automatically farms enemies based on your level.",
    Callback = function(enabled)
        _G.AutoFarm = enabled -- Set global variable for auto farm
        AutoFarmEnabled = enabled
    end,
    Enabled = AutoFarmEnabled
})

Window:SelectTab(1)

Fluent:Notify({
    Title = "Kiel X Hub",
    Content = "The script has been loaded.",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()
