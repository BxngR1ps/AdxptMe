local folder = game.CoreGui
local itemName = "VERNUM"

local currentTime = os.time()
local item = folder:FindFirstChild(itemName)
if not item then
	item = Instance.new("Folder") 
	item.Name = itemName
	item.Parent = folder
	print("Vernum Loaded:",currentTime)
	task.wait(0.5)
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

	local colors = {
		SchemeColor = Color3.fromRGB(85, 19, 102),
		Background = Color3.fromRGB(0, 0, 0),
		Header = Color3.fromRGB(11, 11, 11),
		TextColor = Color3.fromRGB(255, 255, 255),
		ElementColor = Color3.fromRGB(20, 20, 20)
	}

	local Window = Library.CreateLib(" - VERNUM - | Adopt Me! | By Kailey <3 |", colors)
	---
	DEV="KaileyXwx"
	Princess ="princessmiley1001"
	PrincessAlt = "MRSBXNGR1PS"

	----
	BlockRemote = "GovulrlGWQIKnEvIpIvXMKHDPRPD"
	PetPickup = "/dprwEUOGPxvoNnpM"
	RestPlr = "SeboDTNFZxjFy"
	LootCandy = "Gamnr/jkuIYSKfDwr/fImKzwPfMTSF"
	TpDoor ="KodcwmttHXRJdqFZCsrKAHH"
	---\\VALS
	PumpknFarm=true
	BasketFarm=false
	TilesFarm=false
	Petfarm=false
	Locos={}
	Petz = {}
	SecretCode={"ant", "bat", "bear", "bee", "bird", "cow", "crab", "deer", "dodo", "dog", "dove", "duck", "egg", "emu", "fawn", "fish", "flea", "fly", "fox", "frog", "goat", "hawk", "lamb", "lark", "lion", "lynx", "mice", "ox", "pet", "pig", "puma", "rat", "seal", "swan", "wasp", "wolf", "yeti"}
	pet = ""
	shower = ""
	watr = ""
	food = ""
	crib = ""
	Fling = false
	StarPetBotName =""
	--\\Notifactions
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = " VERNUM Injected ",
		Text =  "Welcome to the dark side  "..game.Players.LocalPlayer.Name.."!  ",
		Icon = "rbxassetid://70626207721408"
	})
	print(" VERNUM Injected ")
	----------\\NOTIFACTIONS


	-- Monstrum's Gui to Lua\n-- Version: 3.2

	-- Instances:

	local VERNUMTOGGLES = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local Flingx = Instance.new("TextLabel")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local Title = Instance.new("TextLabel")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
	local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")

	--Properties:

	VERNUMTOGGLES.Name = "VERNUMTOGGLES"
	VERNUMTOGGLES.Parent = game.CoreGui
	VERNUMTOGGLES.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = VERNUMTOGGLES
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0, 0, 0, 418)
	Frame.Size = UDim2.new(0.297063917, 0, 0.0968523026, 0)

	Flingx.Name = "Fling"
	Flingx.Parent = Frame
	Flingx.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Flingx.BackgroundTransparency = 1.000
	Flingx.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Flingx.BorderSizePixel = 0
	Flingx.Position = UDim2.new(0, 0, 0, 19)
	Flingx.Size = UDim2.new(1, 0, 0.25, 0)
	Flingx.Font = Enum.Font.Creepster
	Flingx.Text = "Fling"
	Flingx.TextColor3 = Color3.fromRGB(0, 0, 0)
	Flingx.TextScaled = true
	Flingx.TextSize = 14.000
	Flingx.TextWrapped = true

	UIAspectRatioConstraint.Parent = Flingx
	UIAspectRatioConstraint.AspectRatio = 8.600

	UITextSizeConstraint.Parent = Flingx
	UITextSizeConstraint.MaxTextSize = 21

	UIAspectRatioConstraint_2.Parent = Flingx
	UIAspectRatioConstraint_2.AspectRatio = 8.600

	Title.Name = "Title"
	Title.Parent = Frame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0.99999994, 0, 0.25, 0)
	Title.Font = Enum.Font.Creepster
	Title.Text = "VERNUM TOGGLES"
	Title.TextColor3 = Color3.fromRGB(0, 0, 0)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true

	UIAspectRatioConstraint_3.Parent = Title
	UIAspectRatioConstraint_3.AspectRatio = 8.600

	UITextSizeConstraint_2.Parent = Title
	UITextSizeConstraint_2.MaxTextSize = 21

	UIAspectRatioConstraint_4.Parent = Title
	UIAspectRatioConstraint_4.AspectRatio = 8.600

	UIAspectRatioConstraint_5.Parent = Frame
	UIAspectRatioConstraint_5.AspectRatio = 2.150

	UIAspectRatioConstraint_6.Parent = Frame
	UIAspectRatioConstraint_6.AspectRatio = 2.150
	------

	local MainTab = Window:NewTab("Main")
	local  MainSection = MainTab:NewSection("Main_Tab")
	--
	MainSection:NewSlider("WalkSpeed", "Walkspeed slider", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
	MainSection:NewSlider("JumpPower", "Jumppower slider", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end)
	----
	local TpsTab = Window:NewTab("Teleports")
	local  TpsSection = TpsTab:NewSection("Teleports_Tab")
	----
	TpsSection:NewButton("Tp To Main", "Simple Tp", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Interiors["Neighborhood!Fall"].Doors.MainDoor.WorkingParts.TouchToEnter.CFrame
	end)
	TpsSection:NewButton("Tp To Nebrhood", "Simple Tp", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Interiors["MainMap!Fall"].Doors["Neighborhood/MainDoor"].WorkingParts.TouchToEnter.CFrame
	end)
	TpsSection:NewButton("Tp To Home", "Simple Tp", function()
		for i,v in pairs(workspace.HouseExteriors:GetDescendants()) do
			if v.Name == "house_owner" then
				if v.Value == game.Players.LocalPlayer.Name then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.TouchToEnter.CFrame
				end
			end
		end
	end)
	TpsSection:NewButton("Tp To Park", "Simple Tp", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.StaticMap.TeleportLocations.Park.CFrame
	end)
	TpsSection:NewButton("Tp To Sky Castle", "Simple Tp", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.StaticMap.TeleportLocations.exterior_sky_castle.CFrame
	end)
	TpsSection:NewButton("Tp To Beach", "Simple Tp", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.StaticMap.TeleportLocations.exterior_beach.CFrame
	end)
	TpsSection:NewButton("Tp To Town", "Simple Tp", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.StaticMap.TeleportLocations.Town.CFrame
	end)
	TpsSection:NewButton("Tp To Graveyard", "Simple Tp", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.StaticMap.TeleportLocations.halloween_2024_graveyard.CFrame
	end)
	---------------------------
	local AutoTab = Window:NewTab("Auto-Farm")
	local  AutoSection = AutoTab:NewSection("Auto-Farm_Tab")
	--
	AutoSection:NewToggle("Pumpkin-Collect", "Auto Farms All The Pumpkins", function(state)
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
	AutoSection:NewToggle("Tile-Frenzy-Farm", "Farms For Candy In The Halloween Update", function(state)
		if state then
			TilesFarm = true
			while true do wait(0.1)
				if workspace.Interiors:FindFirstChild("TileSkipMinigame") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Interiors.TileSkipMinigame.Minigame.GoalPlatform.GoalCollider.CFrame
				end

			end
		else
			TilesFarm = false
		end
	end)

	AutoSection:NewToggle("Candy Basket Collect", "Tp To Pumpkins", function(state)
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


	AutoSection:NewButton("1 | House Data-Grab", "Grabs House Data", function()
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
	AutoSection:NewButton("1 | Princess. Data-Grab", "Grabs House Data", function()
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
	local SelPet = AutoSection:NewDropdown("3 | Select Pet","Select Your Pet To Auto-Farm With", Petz, function(currentOption)
		pet = currentOption
	end)
	AutoSection:NewButton("2 | Click Me To Grab Pets ", "Grabs Tp Locations", function()
		table.clear(Petz)
		for i,v in pairs(workspace.Pets:GetChildren()) do
			table.insert(Petz,v.Name)
		end
		SelPet:Refresh(Petz)
	end)


	AutoSection:NewTextBox("BlockRemote", "Aka Feed/Sleep/Eat/Drink", function(txt)
		BlockRemote = txt
	end)
	AutoSection:NewTextBox("PetPickup", "Aka Pet Pickup", function(txt)
		PetPickup = txt
	end)
	AutoSection:NewTextBox("RestPlr", "Aka Resets Player", function(txt)
		RestPlr = txt
	end)
	AutoSection:NewTextBox("LootCandy", "Aka Loot-Candy-Basket", function(txt)
		LootCandy = txt
	end)
	AutoSection:NewTextBox("TpDoor", "Aka Tp-Though-Door", function(txt)
		TpDoor = txt
	end)
	----------
	local SCAMTab = Window:NewTab("Scam")
	local  SCAMSection = SCAMTab:NewSection("Scam-Tab")
	--
	SCAMSection:NewTextBox("Bot Username", "Put Bots Username", function(txt)
		StarPetBotName = txt
	end)

	SCAMSection:NewKeybind("FlingKeybind", "Fling Key", Enum.KeyCode.KeypadTwo, function()
		if Fling == false  then
			Fling = true
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = " VERNUM FUNCTION ",
				Text =  " FLING ON ",
				Icon = "rbxassetid://70626207721408"
			})
			Flingx.TextColor = BrickColor.Green()
		elseif Fling == true then
			Fling = false
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = " VERNUM FUNCTION ",
				Text =  " FLING OFF ",
				Icon = "rbxassetid://70626207721408"
			})
			Flingx.TextColor = BrickColor.Black()
		end
	end)

	SCAMSection:NewKeybind("Tp To Bot Keybind", "Tp To Bot", Enum.KeyCode.KeypadOne, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[StarPetBotName].Character.HumanoidRootPart.CFrame
	end)

	SCAMSection:NewButton("TP TO BOT", "Teleport To Bot", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[StarPetBotName].Character.HumanoidRootPart.CFrame
	end)
	SCAMSection:NewButton("Notifications", "Notifications For Help For Scamming", function()
		
		
		local Joined = Instance.new("Sound") -- Discord Join
		local Leave = Instance.new("Sound") -- Discord Leave
		local JoinHouse = Instance.new("Sound") --Nock Nock
		local JoinFolder = game.workspace.PlayerCharacters
		------------------------

		Joined.Parent = workspace
		Leave.Parent = workspace
		JoinHouse.Parent = workspace

		Joined.Name = "Joined"
		Leave.Name = "Leave"
		JoinHouse.Name = "JoinHouse"

		Joined.SoundId = "rbxassetid://2927319759"
		Leave.SoundId = "rbxassetid://5606947971"
		JoinHouse.SoundId = "rbxassetid://4545514554"

		---\\Sounds

		game.Players.PlayerAdded:Connect(function(plr)
			if plr:GetAttribute("forced_chat_tags") then
				Joined:Play()
				task.wait(0.2)
				game:GetService("StarterGui"):SetCore("SendNotification",{
					Title = " | VIP | Player Joined",
					Text = "USER:"..plr.Name,
					Icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..plr.UserId.."&width=420&height=420&format=png"
				})
			else
				Joined:Play()
				task.wait(0.2)
				game:GetService("StarterGui"):SetCore("SendNotification",{
					Title = "Player Joined",
					Text = "USER:"..plr.Name,
					Icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..plr.UserId.."&width=420&height=420&format=png"
				})
			end

		end)
		---__--
		game.Players.PlayerRemoving:Connect(function(plr)
			if plr:GetAttribute("forced_chat_tags") then
				Leave:Play()
				task.wait(0.2)
				game:GetService("StarterGui"):SetCore("SendNotification",{
					Title = " | VIP | Player Left",
					Text = "USER:"..plr.Name,
					Icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..plr.UserId.."&width=420&height=420&format=png"
				})
			else
				Leave:Play()
				task.wait(0.2)
				game:GetService("StarterGui"):SetCore("SendNotification",{
					Title = "Player Left",
					Text = "USER:"..plr.Name,
					Icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..plr.UserId.."&width=420&height=420&format=png"
				})
			end
		end)
		---__--
		JoinFolder.ChildAdded:Connect(function(plr)
			local vitum = game.Players[plr.Name]
			if plr:GetAttribute("forced_chat_tags") then
				if plr.Name ~= game.Lighting.HiddenCharacters:FindFirstChild(plr.Name) then
					JoinHouse:Play()
					game:GetService("StarterGui"):SetCore("SendNotification",{
						Title = " | VIP | Player Join House",
						Text = "USER:"..vitum.Name,
						Icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..vitum.UserId.."&width=420&height=420&format=png"
					})
				end
			else
				if plr.Name ~= game.Lighting.HiddenCharacters:FindFirstChild(plr.Name) then
				JoinHouse:Play()
				game:GetService("StarterGui"):SetCore("SendNotification",{
					Title = "Player Join House",
					Text = "USER:"..vitum.Name,
					Icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..vitum.UserId.."&width=420&height=420&format=png"
				})
				end
			end
		end)
	end)
	SCAMSection:NewButton("INF-YILD", "Used For WalkFling - Make A Keybind", function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)

	SCAMSection:NewButton("Generate Secret-Code", "Genrates Random Secret Code", function()
		local randomIndex = math.random(1, #SecretCode)
		local randomIndex2 = math.random(1, #SecretCode)
		setclipboard(SecretCode[randomIndex].." "..SecretCode[randomIndex2])
	end)
	
	----
	local SettingsTab = Window:NewTab("Settings")
	local SettingsSection = SettingsTab:NewSection("Settings_Tab")
	---
	SettingsSection:NewKeybind("Ui Toggle", "Toggles Ui ON/OFF", Enum.KeyCode.K, function()
		Library:ToggleUI()
	end)
	local BotControlTab = Window:NewTab("Bot-Control")
	local  BotControlSection = BotControlTab:NewSection("Control-Your-Own-Bots")
	----
	BotControlSection:NewTextBox("User Who Controls You", "Changes Who Can Control Your Bots", function(txt)
		DEV=txt
	end)

	BotControlSection:NewButton("Control-Me", "Gives Dev Access To Control Your Bot", function()

		DEV="KaileyXwx"
		Princess ="princessmiley1001"
		PrincessAlt = "MRSBXNGR1PS"
		print(DEV.." IS MY DADDY <3 🥰😍❤")
		print(Princess.." IS MY Princess <3 🥰😍❤")
		print(PrincessAlt.." Is My Princess Alt <3 🥰😍❤")


		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = " VERNUM Injected ",
			Text =  "Welcome to the dark side  "..game.Players.LocalPlayer.Name.."!  ",
			Icon = "rbxassetid://12518480304"
		})
		print(" VERNUM Injected ")
		PumpknFarm = false
		for i,v in pairs(game.Players:GetChildren()) do
			v.Chatted:Connect(function(message)
				if v.Name == DEV or v.Name == Princess or v.Name == PrincessAlt then
					if message == "!STATUS" then
						print("I Love You Mommas <3 .")
					elseif message == "!PUMPKNFRM" then
						if PumpknFarm == false then
							PumpknFarm = true
							while PumpknFarm == true   do wait(1)
								for i,v in pairs(workspace.Collectables:GetChildren()) do
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Collider.CFrame
									wait(0.4)
								end
								task.wait(1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Interiors:WaitForChild("Neighborhood!Fall").Doors.MainDoor.WorkingParts.TouchToEnter.CFrame
								task.wait(4)	
								for i,v in pairs(workspace.Collectables:GetChildren()) do
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Collider.CFrame
									wait(0.4)
								end
								game:GetService("StarterGui"):SetCore("SendNotification",{
									Title = " PUMPKIN FARM FINISHED ",
									Text = " Pumpkin Farm Made By Kailey <3 ",
									Icon = "rbxassetid:/32729955"
								})
								print("PUMPKINS FARMED")
							end
						elseif PumpknFarm == true then
							PumpknFarm = false
						end
					elseif message == "!TPDEV" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[DEV].Character.HumanoidRootPart.CFrame
					elseif message == "!TP Grave" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.StaticMap.TeleportLocations.halloween_2024_graveyard.CFrame
					end
				end
			end)
		end

		game.Players.PlayerAdded:Connect(function(v)
			v.Chatted:Connect(function(message)
				if v.Name == DEV or v.Name == Princess or v.Name == PrincessAlt then
					if message == "!STATUS" then
						print("I Love You Mommas <3 .")
					elseif message == "!PUMPKNFRM" then
						if PumpknFarm == false then
							PumpknFarm = true
							while PumpknFarm == true   do wait(1)
								for i,v in pairs(workspace.Collectables:GetChildren()) do
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Collider.CFrame
									wait(0.4)
								end
								task.wait(1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Interiors:WaitForChild("Neighborhood!Fall").Doors.MainDoor.WorkingParts.TouchToEnter.CFrame
								task.wait(4)	
								for i,v in pairs(workspace.Collectables:GetChildren()) do
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Collider.CFrame
									wait(0.4)
								end
								game:GetService("StarterGui"):SetCore("SendNotification",{
									Title = " PUMPKIN FARM FINISHED ",
									Text = " Pumpkin Farm Made By Kailey <3 ",
									Icon = "rbxassetid:/32729955"
								})
								print("PUMPKINS FARMED")
							end
						elseif PumpknFarm == true then
							PumpknFarm = false
						end
					elseif message == "!TPDEV" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[DEV].Character.HumanoidRootPart.CFrame
					elseif message == "!TP Grave" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.StaticMap.TeleportLocations.halloween_2024_graveyard.CFrame
					end
				end
			end)
		end)
	end)



	------

--[[

THINGS TO CHANGE 
--------------------

---
-\\\\\\\-\\\\\\\\\\\-\\\\\\\\
-------------
THINGS TO ADD
----------------
Change Ui Color
Anti Afk
---
]]--
end
