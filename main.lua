local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/SerenityHUB/CustomFluent/main/Fluent"))() -- Set your fluent fork/default fluent
local Window = Fluent:CreateWindow({
    Title = "SKS" ..  0.1,
    SubTitle = "Serenity Key System",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Darker", -- Set "Dark" theme for dark theme, "Stingray" for stingray (ONLY IF YOU USING SERENITYHUB FLUENT)
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Key = Window:AddTab({ Title = "Key", Icon = "key" })
}

Tabs.Key:AddInput("KeyInput", {
    Title = "Key System",
    Placeholder = "Type key here",
    Callback = function(Value)
        if Value == "huesos" then -- Set your key here
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))() -- Set your script for load
            Window:Destroy()
			-- Use "else" if you want to notify when key is invalid
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
            Duration = 4
        })
    end
})

Window:SelectTab(1)
