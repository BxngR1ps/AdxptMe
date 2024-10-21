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
----\\ Funtions
BlockRemote = "wdkjagawLFy/cukyeykMB/xtEGEt"
PetPickup = "pSegluJDwEmkdCceB"

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

local TPSECX = TPSection:NewDropdown("2 | Tp To?","Locations", Locos, function(currentOption)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Interiors["MainMap!Fall"].Doors[currentOption].VehicleBlocker.CFrame
end)
TPSection:NewButton("1 | Click Me First <3", "Grabs Tp Locations", function()
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

						game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild("LfrswEopzNdXPkIAwEkNrPDAUkRYXK"):InvokeServer(unpack(args))
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


FarmSection:NewButton("1 | House Data-Grab", "Grabs House Data", function()
	for i,v in pairs(workspace.HouseInteriors.furniture:GetDescendants()) do
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
FarmSection:NewButton("1 | Princess. Data-Grab", "Grabs House Data", function()
	for i,v in pairs(workspace.HouseInteriors.furniture:GetDescendants()) do
		if v.Name == "ModernShower" then
			shower = string.sub(v.Parent.Name,21,10000)
		elseif v.Name == "PetWaterBowl" then
			watr = string.sub(v.Parent.Name,21,10000)
		elseif v.Name == "PetFoodBowl" then
			food = string.sub(v.Parent.Name,21,10000)
		elseif v.Name == "BasicCrib" then
			crib = string.sub(v.Parent.Name,21,10000)
		end
	end
end)
local SelPet = FarmSection:NewDropdown("3 | Select Pet","Select Your Pet To Auto-Farm With", Petz, function(currentOption)
	pet = currentOption
end)
FarmSection:NewButton("2 | Click Me To Grab Pets ", "Grabs Tp Locations", function()
	table.clear(Petz)
	for i,v in pairs(workspace.Pets:GetChildren()) do
		table.insert(Petz,v.Name)
	end
	SelPet:Refresh(Petz)
end)

FarmSection:NewToggle("4 | Pet Auto-Farm", "Simple Auto Farm", function(state)
	if state then
		Petfarm = true
		
		while Petfarm == true  do wait(0.4)
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

							game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(BlockRemote):InvokeServer(unpack(args))
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

							game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(BlockRemote):InvokeServer(unpack(args))
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

							game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(BlockRemote):InvokeServer(unpack(args))
						elseif v.Name == "bored" then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.StaticMap.Park.Roundabout.SpinInteraction.CFrame
							task.wait(2)
							local args = {
								[1] = workspace:WaitForChild("Pets"):WaitForChild(pet)
							}

							game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(PetPickup):FireServer(unpack(args))
							
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

							game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(BlockRemote):InvokeServer(unpack(args))
						elseif v.Name == "sick" then
						workspace.HouseInteriors.blueprint[game.Players.LocalPlayer.Name].Doors.MainDoor.WorkingParts.Configuration.NoAutoOpen.Name = "NoAutoOpenB"
						workspace.HouseInteriors.blueprint[game.Players.LocalPlayer.Name].KaileyXwx.Doors.MainDoor.WorkingParts.Configuration.destination_id.Value = "Hospital"
						task.wait(2)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.HouseInteriors.blueprint.KaileyXwx.Doors.MainDoor.WorkingParts.TouchToEnter.CFrame
						wait(2)
						workspace.Interiors:WaitForChild("Hospital")
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3989.63623, 7877.88379, -16107.6396, -0.572989404, -5.37710356e-08, -0.819562793, -8.9868557e-08, 1, -2.77868395e-09, 0.819562793, 7.20607645e-08, -0.572989404)
						local args = {
							[1] = "f-40",
							[2] = "Seat1",
							[3] = {
								["cframe"] = CFrame.new(-3983.97509765625, 7877.548828125, -16107.6787109375, -1, 0, 0, 0, 1, 0, 0, 0, -1)
							},
							[4] = workspace:WaitForChild("Pets"):WaitForChild(pet)
						}

						game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild("wdkjagawLFy/cukyeykPvBoBuAEUJHEAMOMA"):InvokeServer(unpack(args))
						wait(30)
						
						elseif v.Name == "school" then
						workspace.HouseInteriors.blueprint[game.Players.LocalPlayer.Name].Doors.MainDoor.WorkingParts.Configuration.NoAutoOpen.Name = "NoAutoOpenB"
						workspace.HouseInteriors.blueprint[game.Players.LocalPlayer.Name].KaileyXwx.Doors.MainDoor.WorkingParts.Configuration.destination_id.Value = "School"
						task.wait(2)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.HouseInteriors.blueprint.KaileyXwx.Doors.MainDoor.WorkingParts.TouchToEnter.CFrame
						task.wait(2)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7998.58984, 7956.7959, -4020.87305, -0.999099433, -1.01255164e-08, 0.0424300581, -1.13470993e-08, 1, -2.85496675e-08, -0.0424300581, -2.9005415e-08, -0.999099433)
						task.wait(60)
						workspace.Interiors.School.Doors.MainDoor.WorkingParts.Configuration.destination_door_id.Value = "MainDoor"
						workspace.Interiors.School.Doors.MainDoor.WorkingParts.Configuration.destination_id.Value = "housing"
						task.wait(2)
						workspace.Interiors.School.Doors.MainDoor.WorkingParts.TouchToEnter.Size = Vector3.new(100,100,100)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Interiors.School.Doors.MainDoor.WorkingParts.TouchToEnter.CFrame
						wait(5)
						if v.Name == "house_owner" then
							if v.Value == game.Players.LocalPlayer.Name then
								v.Parent.Parent.TouchToEnter.Size = Vector3.new(100,100,100)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.TouchToEnter.CFrame
							end
						end
						elseif v.Name == "salon" then
						workspace.HouseInteriors.blueprint[game.Players.LocalPlayer.Name].Doors.MainDoor.WorkingParts.Configuration.destination_door_id.Value = "Salon/MainDoor"
						workspace.HouseInteriors.blueprint[game.Players.LocalPlayer.Name].Doors.MainDoor.WorkingParts.Configuration.destination_id.Value = "Salon"

						workspace.HouseInteriors.blueprint[game.Players.LocalPlayer.Name].Doors.MainDoor.WorkingParts.Configuration.NoAutoOpen.Name = "NoAutoOpenB"
						
						task.wait(2)
						workspace.HouseInteriors.blueprint.KaileyXwx.Doors.MainDoor.WorkingParts.TouchToEnter.Size = Vector3.new(100,100,100)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.HouseInteriors.blueprint.KaileyXwx.Doors.MainDoor.WorkingParts.TouchToEnter.CFrame
						wait(1)
						task.wait(60)
						workspace.Interiors:WaitForChild("School").Doors.MainDoor.WorkingParts.Configuration.destination_door_id.Value = "MainDoor"
						workspace.Interiors.School.Doors.MainDoor.WorkingParts.Configuration.destination_id.Value = "housing"
						task.wait(2)
						workspace.Interiors.School.Doors.MainDoor.WorkingParts.TouchToEnter.Size = Vector3.new(100,100,100)

						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Interiors.School.Doors.MainDoor.WorkingParts.TouchToEnter.CFrame
						wait(5)

						workspace.Interiors["Neighborhood!Fall"].Doors:WaitForChild("MainDoor") 
						wait(2)
						if v.Name == "house_owner" then
							if v.Value == game.Players.LocalPlayer.Name then
								v.Parent.Parent.TouchToEnter.Size = Vector3.new(100,100,100)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.TouchToEnter.CFrame
							end
						end
						elseif v.Name == "pizza_party" then
						workspace.HouseInteriors.blueprint[game.Players.LocalPlayer.Name].Doors.MainDoor.WorkingParts.Configuration.destination_id.Value = "PizzaShop"
						workspace.HouseInteriors.blueprint[game.Players.LocalPlayer.Name].Doors.MainDoor.WorkingParts.Configuration.NoAutoOpen.Name = "NoAutoOpenB"
							workspace.HouseInteriors.blueprint[game.Players.LocalPlayer.Name].Doors.MainDoor.WorkingParts.TouchToEnter.Size = Vector3.new("100,100,100")
							wait(3)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.HouseInteriors.blueprint[game.Players.LocalPlayer.Name].Doors.MainDoor.WorkingParts.TouchToEnter.CFrame
						
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7991.75781, 7970.06445, -7995.87988, 0.951279819, -3.67718265e-08, 0.308328897, 5.72904035e-08, 1, -5.74950292e-08, -0.308328897, 7.23581479e-08, 0.951279819)
							wait(60) -- Let Pet Cook

							workspace.Interiors:WaitForChild("PizzaShop").Doors.MainDoor.WorkingParts.Configuration.destination_id.Value = "housing"	
							wait(3)
							workspace.Interiors.PizzaShop.Doors.MainDoor.WorkingParts.TouchToEnter.Size = Vector3.new("100,100,100")
							wait(3)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  workspace.Interiors.PizzaShop.Doors.MainDoor.WorkingParts.TouchToEnter.CFrame
							wait(2)
							game.Players.LocalPlayer.Character.Humanoid.Jump = true
							wait(3)
							workspace.Interiors["Neighborhood!Fall"].Doors:WaitForChild("MainDoor") 
							wait(7)
							for i,v in pairs(workspace.HouseExteriors:GetDescendants()) do
								if v.Name == "house_owner" then
									if v.Value == game.Players.LocalPlayer.Name then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.TouchToEnter.CFrame
									end
								end
							end

					elseif v.Name == "camping" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.51281548, 31.1649227, -1044.36804, -0.977003396, -1.74956796e-08, -0.213223621, -3.84748162e-08, 1, 9.42407112e-08, 0.213223621, 1.00277241e-07, -0.977003396)
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
						local args = {
							[1] = workspace:WaitForChild("Pets"):WaitForChild(pet)
						}

						game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(PetPickup):FireServer(unpack(args))
					elseif v.Name == "beach_party" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.StaticMap.Beach.BeachPartyAilmentTarget.CFrame
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
						local args = {
							[1] = workspace:WaitForChild("Pets"):WaitForChild(pet)
						}

						game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(PetPickup):FireServer(unpack(args))
					end	
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
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


