local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/SerenityHUB/Fluent/master/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "SKS",
    SubTitle = "Serenity Key System",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Darker", 
    MinimizeKey = Enum.KeyCode.K
})

local Tabs = {
    Key = Window:AddTab({ Title = "Key", Icon = "key" })
}

local Keys = {
    "Funny Key",
    "Vkd0c1NGSXdSVDA9"
}
-- // ^ Set your keys here

Tabs.Key:AddInput("KeyInput", {
    Title = "Key System",
    Placeholder = "Type key here",
    Callback = function(Value)
        if table.find(Keys, Value) then
	    Window:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))()
						-- // ^ Set your script to load
        end
    end
})

Tabs.Key:AddButton({
    Title = "Get Key",
    Description = "No Linkvertise/Lootlabs",
    Callback = function()
        setclipboard("https://discord.gg/gmBxyhkR")
		-- // ^ Set your discord server here
        Fluent:Notify({
            Title = "Copied!",
            Content = "Copied Link to clipboard!",
            Duration = 4
        })
    end
})

Window:SelectTab(1)
