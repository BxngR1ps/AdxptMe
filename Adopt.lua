local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Adopt Me! - 10.19.24 - Kailey <3", "BloodTheme")
---\\VARS
PumpknFarm=false
BasketFarm=false
TileSkipFarm=false
---------------\\MAIN TAB
local Tab = Window:NewTab("Main")
local MainSection = Tab:NewSection("Main Section")
MainSection:NewSlider("WalkSpeed", "Walkspeed slider", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
MainSection:NewSlider("JumpPower", "Jumppower slider", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
-----------\\AUTO-FARM TAB
local Tab = Window:NewTab("Auto-Farm")
local FarmSection = Tab:NewSection("Auto-Farm Section")
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
			while true do wait()
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
local Tab = Window:NewTab("Misc")
local MainSection = Tab:NewSection("Misc Section")
MainSection:NewButton("Inf Yeild", "Simple Admin", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)



---------------\\Settings TAB
local Tab = Window:NewTab("Settings")
local SettingsSection = Tab:NewSection("Settings Section")
SettingsSection:NewKeybind("UI Keybind", "Ui Show/Hide", Enum.KeyCode.K, function()
	Library:ToggleUI()
end)
