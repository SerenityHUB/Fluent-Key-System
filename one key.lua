local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/SerenityHUB/Fluent/master/main.lua"))() -- Modified Fluent
-- local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))() -- Original fluent
local Window = Fluent:CreateWindow({
    Title = "SKS",
    SubTitle = "Serenity Key System",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Darker", -- Set "Dark" theme for dark theme
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Key = Window:AddTab({ Title = "Key", Icon = "key" })
}

Tabs.Key:AddInput("KeyInput", {
    Title = "Key System",
    Placeholder = "Type key here",
    Callback = function(Value)
        if Value == "Fun Key" then -- Set your key here
	    Window:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))() -- Set your script for load
        end
    end
})

Tabs.Key:AddButton({
    Title = "Get Key",
    Description = "No Linkvertise/Lootlabs",
    Callback = function()
        setclipboard("https://discord.gg/gmBxyhkR") -- Set your discord server here
        Fluent:Notify({
            Title = "Copied!",
            Content = "Copied Link to clipboard!",
            Duration = 4 -- Set notify duration here, set nil for notify not disappear
        })
    end
})

Window:SelectTab(1)
