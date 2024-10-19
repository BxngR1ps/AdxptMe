local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local PlrName = game.Players.LocalPlayer.Name
local Window = Library.CreateLib("Adopt Me! - 10.19.24 - Kailey <3 | USR:"..PlrName.." |", "BloodTheme")
---\\VARS
PumpknFarm=false
BasketFarm=false
TileSkipFarm=false
---------------\\MAIN TAB
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main Section")
MainSection:NewSlider("WalkSpeed", "Walkspeed slider", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
MainSection:NewSlider("JumpPower", "Jumppower slider", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
-----------\\AUTO-FARM TAB
local FarmTab = Window:NewTab("Auto-Farm")
local FarmSection = FarmTab:NewSection("Auto-Farm Section")
FarmSection:NewToggle("Pumpkin Collect", "Tp To Pumpkins", function(state)
	if state then
		PumpknFarm = true
		if PumpknFarm == true  then
			for i,v in pairs(workspace.Collectables:GetChildren()) do
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Collider.CFrame
				wait(0.4)
			end
		end
	else
		PumpknFarm = false
	end
end)

FarmSection:NewToggle("Candy Basket Collect", "Tp To Pumpkins", function(state)
	if state then
		BasketFarm = true
		if BasketFarm == true  then
			for i,v in pairs(workspace.HouseExteriors:GetDescendants()) do
				if v.Name == "CandyBowl" then
					if v.Candy.polySurface157.Transparency ~= 1 then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.UseBlock.CFrame
						wait(1)
					end
				end
			end
		end
	else
		BasketFarm = false
	end
end)

FarmSection:NewToggle("TileSkip Farm", "3k Per 10mins", function(state)
	if state then
		TileSkipFarm = true
		if TileSkipFarm == true  then
			while true do wait(0.1)
				if workspace.Interiors.TileSkipMinigame.Minigame.GoalPlatform:FindFirstChild("GoalCollider") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Interiors.TileSkipMinigame.Minigame.GoalPlatform.GoalCollider.CFrame
				end
				
			end
		end
	else
		TileSkipFarm = false
	end
end)


---------------\\Misc TAB
local MiscTab = Window:NewTab("Misc")
local MiscSection = MiscTab:NewSection("Misc Section")
MiscSection:NewButton("Inf Yeild", "Simple Admin", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
MiscSection:NewButton("Dark Dex", "Simple Admin", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)


---------------\\Settings TAB
local Tab = Window:NewTab("Settings")
local SettingsSection = Tab:NewSection("Settings Section")
SettingsSection:NewKeybind("UI Keybind", "Ui Show/Hide", Enum.KeyCode.K, function()
	Library:ToggleUI()
end)
