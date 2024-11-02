game.Playes.LocalPlayer:Kick("Sorry Not Sorry Sweetheart")
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local PlrName = game.Players.LocalPlayer.Name
local Window = Library.CreateLib("Adopt Me! - 10.22.24 - Kailey <3 | USR:"..PlrName.." |VERNUM = V1.0004|", "BloodTheme")
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
BlockRemote = "GovulrlGWQIKnEvIpIvXMKHDPRPD"
PetPickup = "/dprwEUOGPxvoNnpM"
RestPlr = "SeboDTNFZxjFy"
LootCandy = "Gamnr/jkuIYSKfDwr/fImKzwPfMTSF"
TpDoor ="KodcwmttHXRJdqFZCsrKAHH"
----------
verplaton=false
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
		while PumpknFarm == true   do wait(1)
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
		while BasketFarm == true  do wait(1)
			for i,v in pairs(workspace.HouseExteriors:GetDescendants()) do
				if v.Name == "CandyBowl" then
					if v.Candy.polySurface157.Transparency ~= 1 then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.UseBlock.CFrame
						wait(0.4)
						local args = {
							[1] = game:GetService("Players"):WaitForChild(v.Parent.Doors.MainDoor.WorkingParts.Configuration.house_owner.Value)
						}

						game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(LootCandy):InvokeServer(unpack(args))
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
		while Petfarm == true do wait(0.2)
		for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.AilmentsMonitorApp.Ailments:GetChildren())  do
			if v.Name == "hungry" then
				game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(RestPlr):InvokeServer()
				task.wait(2)
					game.Workspace:WaitForChild("housing!"..game.Players.LocalPlayer.Name)
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
			elseif v.Name == "thirsty" then
				game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(RestPlr):InvokeServer()
				task.wait(2)
					game.Workspace:WaitForChild("housing!"..game.Players.LocalPlayer.Name)
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
			elseif v.Name == "sleepy" then
				game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(RestPlr):InvokeServer()
				task.wait(2)
					game.Workspace:WaitForChild("housing!"..game.Players.LocalPlayer.Name)
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
			elseif v.Name == "sick" then
				local args = {
					[1] = "Hospital"
				}

				game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(TpDoor):FireServer(unpack(args))

				task.wait(1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				local part = Instance.new("Part")
				part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				part.Anchored = true
				part.Size = Vector3.new(5,1,5)
				part.Parent = workspace
				part.Name = "VERNUMPLAT"
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
				verplaton = true
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

				task.wait(1)
				local args = {
					[1] = "f-40",
					[2] = "Seat1",
					[3] = {
						["cframe"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					},
					[4] = workspace:WaitForChild("Pets"):WaitForChild(pet)
				}

					game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(BlockRemote):InvokeServer(unpack(args))

			elseif v.Name == "school" then
				local args = {
					[1] = "School"
				}

				game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(TpDoor):FireServer(unpack(args))

				task.wait(0.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				local part = Instance.new("Part")
				part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				part.Anchored = true
				part.Size = Vector3.new(5,1,5)
				part.Parent = workspace
				part.Name = "VERNUMPLAT"
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
				verplaton = true
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

				task.wait(60)
			elseif v.Name == "salon" then
				local args = {
					[1] = "Salon"
				}

				game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(TpDoor):FireServer(unpack(args))

				task.wait(0.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				local part = Instance.new("Part")
				part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				part.Anchored = true
				part.Size = Vector3.new(5,1,5)
				part.Parent = workspace

				part.Name = "VERNUMPLAT"
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				verplaton = true

				task.wait(60)
			elseif v.Name == "pizza_party" then
				local args = {
					[1] = "PizzaShop"
				}

				game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(TpDoor):FireServer(unpack(args))

				task.wait(0.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				local part = Instance.new("Part")
				part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				part.Anchored = true
				part.Size = Vector3.new(5,1,5)
				part.Parent = workspace

				part.Name = "VERNUMPLAT"
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				verplaton = true
				task.wait(60)
			elseif v.Name == "dirty" then
				game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(RestPlr):InvokeServer()
				task.wait(2)
				game.Workspace:WaitForChild("housing!"..game.Players.LocalPlayer.Name)
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
			elseif v.Name == "camping" then
				game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(RestPlr):InvokeServer()
				task.wait(6)
				workspace.StaticMap.Campsite.MarshmallowTake.TakeMarshmallow.Size = Vector3.new(10,1,10)
				workspace.StaticMap.Campsite.MarshmallowTake.TakeMarshmallow.Transparency = 0
				workspace.StaticMap.Campsite.MarshmallowTake.TakeMarshmallow.CanCollide = true
				task.wait(2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.StaticMap.Campsite.MarshmallowTake.TakeMarshmallow.CFrame
				task.wait(60)
			elseif v.Name == "bored" then
				game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(TpDoor):FireServer(unpack())

				task.wait(0.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				local part = Instance.new("Part")
				part.CFrame = workspace.StaticMap.Park.Roundabout.Base.CFrame
				part.Anchored = true
				part.Size = Vector3.new(5,1,5)
				part.Parent = workspace

				part.Name = "VERNUMPLAT"
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.StaticMap.Park.Roundabout.Base.CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

				task.wait(60)
			elseif v.Name == "beach_party" then
				game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(TpDoor):FireServer(unpack())

				task.wait(0.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				local part = Instance.new("Part")
				part.CFrame = CFrame.new(-371.03894, 40, -1768.91553, -0.308858037, 0.000399903394, 0.951108336, 0.000298414088, 0.999999881, -0.000323555025, -0.951108336, 0.000183891563, -0.308858156)
				part.Anchored = true
				part.Size = Vector3.new(5,1,5)
				part.Parent = workspace

				part.Name = "VERNUMPLAT"
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

				task.wait(60)
			end
			--Waiting For Script To Not Break
			task.wait(2)
			game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(RestPlr):InvokeServer()
			--lil things
			if verplaton == true then
				game.Workspace:FindFirstChild("VERNUMPLAT"):Destroy()
			end
			task.wait(5)
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

