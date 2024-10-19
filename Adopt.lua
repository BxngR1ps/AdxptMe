local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local PlrName = game.Players.LocalPlayer.Name
local Window = Library.CreateLib("Adopt Me! - 10.19.24 - Kailey <3 | USR:"..PlrName.." |", "BloodTheme")
------\\Sound-TROLL
local s = Instance.new("Sound")
s.SoundId = "rbxassetid://6410047369"
s.Parent = game.Workspace
s:Play()

---\\VARS
PumpknFarm=false
BasketFarm=false
TileSkipFarm=false
Petfarm=false
Locos={}
Petz = {}

pet = ""
shower = ""
watr = ""
food = ""
crib = ""
---------------\\MAIN TAB
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main Section")
MainSection:NewSlider("WalkSpeed", "Walkspeed slider", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
MainSection:NewSlider("JumpPower", "Jumppower slider", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

----\Tp TAB
local TPTab = Window:NewTab("Teleports")
local TPSection = TPTab:NewSection("Main Section")


TPSection:NewButton("Tp To Main", "Simple Tp", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Interiors["Neighborhood!Fall"].Doors.MainDoor.WorkingParts.TouchToEnter.CFrame
end)
TPSection:NewButton("Tp To Nebrhood", "Simple Tp", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Interiors["MainMap!Fall"].Doors["Neighborhood/MainDoor"].WorkingParts.TouchToEnter.CFrame
end)
TPSection:NewButton("Tp To Home", "Simple Tp", function()

	for i,v in pairs(workspace.HouseExteriors:GetDescendants()) do
		if v.Name == "house_owner" then
			if v.Value == game.Players.LocalPlayer.Name then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.TouchToEnter.CFrame
			end
		end
	end
end)

local TPSECX = TPSection:NewDropdown("Tp To?","Locations", Locos, function(currentOption)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Interiors["MainMap!Fall"].Doors[currentOption].VehicleBlocker.CFrame
end)
TPSection:NewButton("Click Me First <3", "Grabs Tp Locations", function()
	table.clear(Locos)
	for i,v in pairs(workspace.Interiors["MainMap!Fall"].Doors:GetChildren()) do
		table.insert(Locos,v.Name)
	end
	TPSECX:Refresh(Locos)
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
						wait(0.4)
						local args = {
							[1] = game:GetService("Players"):WaitForChild(v.Parent.Doors.MainDoor.WorkingParts.Configuration.house_owner.Value)
						}

						game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild("Gamnr/jkuIYSKfDwr/fImKzwPfMTSF"):InvokeServer(unpack(args))
						wait(0.2)
					end
				end
			end
		end
	else
		BasketFarm = false
	end
end)

FarmSection:NewToggle("TileSkip Auto-Farm", "3k Per 10mins", function(state)
	if state then
		TileSkipFarm = true
		if TileSkipFarm == true  then
			while true do wait(0.1)
				if workspace.Interiors:FindFirstChild("TileSkipMinigame") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Interiors.TileSkipMinigame.Minigame.GoalPlatform.GoalCollider.CFrame
				end

			end
		end
	else
		TileSkipFarm = false
	end
end)


FarmSection:NewButton("House Data-Grab", "Grabs House Data", function()
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "ModernShower" then
			shower = string.sub(v.Parent.Name,22,10000)
		elseif v.Name == "PetWaterBowl" then
			watr = string.sub(v.Parent.Name,22,10000)
		elseif v.Name == "PetFoodBowl" then
			food = string.sub(v.Parent.Name,22,10000)
		elseif v.Name == "BasicCrib" then
			crib = string.sub(v.Parent.Name,22,10000)
		end
	end
end)


local SelPet = FarmSection:NewDropdown("Select Pet","Select Your Pet To Auto-Farm With", Petz, function(currentOption)
	pet = currentOption
end)
FarmSection:NewButton("Click Me First <3", "Grabs Tp Locations", function()
	table.clear(Petz)
	for i,v in pairs(workspace.Pets:GetChildren()) do
		table.insert(Petz,v.Name)
	end
	SelPet:Refresh(Petz)
end)

FarmSection:NewToggle("Pet Auto-Farm", "Simple Auto Farm", function(state)
	if state then
		Petfarm = true
		if Petfarm == true  then
			while true do wait(0.1)
				game:GetService("Players").LocalPlayer.PlayerGui.AilmentsMonitorApp:WaitForChild("Ailments")
				for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.AilmentsMonitorApp.Ailments:GetChildren()) do
					if v:IsA("Frame") then
						if v.Name == "sleepy" then
							local args = {
								[1] = game:GetService("Players").LocalPlayer,
								[2] = crib,
								[3] = "UseBlock",
								[4] = {
									["cframe"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
								},
								[5] = workspace:WaitForChild("Pets"):WaitForChild(pet)
							}

							game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild("JryxouoJZTLNqHyLsLyaPNKGSUSG"):InvokeServer(unpack(args))
						elseif v.Name == "dirty" then
							local args = {
								[1] = game:GetService("Players").LocalPlayer,
								[2] = shower,
								[3] = "UseBlock",
								[4] = {
									["cframe"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
								},
								[5] = workspace:WaitForChild("Pets"):WaitForChild(pet)
							}

							game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild("JryxouoJZTLNqHyLsLyaPNKGSUSG"):InvokeServer(unpack(args))
						elseif v.Name == "hungry" then
							local args = {
								[1] = game:GetService("Players").LocalPlayer,
								[2] = food,
								[3] = "UseBlock",
								[4] = {
									["cframe"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
								},
								[5] = workspace:WaitForChild("Pets"):WaitForChild(pet)
							}

							game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild("JryxouoJZTLNqHyLsLyaPNKGSUSG"):InvokeServer(unpack(args))
						elseif v.Name == "bored" then

						elseif v.Name == "thirsty" then
							local args = {
								[1] = game:GetService("Players").LocalPlayer,
								[2] = watr,
								[3] = "UseBlock",
								[4] = {
									["cframe"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
								},
								[5] = workspace:WaitForChild("Pets"):WaitForChild(pet)
							}

							game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild("JryxouoJZTLNqHyLsLyaPNKGSUSG"):InvokeServer(unpack(args))
						elseif v.Name == "sick" then

						elseif v.Name == "school" then

						elseif v.Name == "salon" then

						elseif v.Name == "pizza_party" then

						elseif v.Name == "camping" then

						elseif v.Name == "beach_party" then


						end		


					end
				end
			end
		end
	else
		Petfarm = false
	end
end)
---------------\\Settings TAB
local Tab = Window:NewTab("Settings")
local SettingsSection = Tab:NewSection("Settings Section")
SettingsSection:NewKeybind("UI Keybind", "Ui Show/Hide", Enum.KeyCode.K, function()
	Library:ToggleUI()
end)
SettingsSection:NewButton("Anti-AFK", "Simple Admin", function()
	while true do
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			game:FindService("VirtualUser"):Button2Down(Vector2.new(0,0),game:GetService("Workspace").CurrentCamera.CFrame)
			task.wait(1)
			game:FindService("VirtualUser"):Button2Up(Vector2.new(0,0),game:GetService("Workspace").CurrentCamera.CFrame)
		end)
		wait(600)
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


