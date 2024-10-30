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

---\\VALS
PumpknFarm = false
TilesFarm = false
--\\Notifactions
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = " VERNUM Injected ",
	Text =  "Welcome to the dark side  "..game.Players.LocalPlayer.Name.."!  ",
	Icon = "rbxassetid://70626207721408"
})
print(" VERNUM Injected ")
----------\\NOTIFACTIONS
----
local BotControlTab = Window:NewTab("Bot-Control")
local  BotControlSection = BotControlTab:NewSection("Control-Your-Own-Bots")
BotControlSection:NewLabel("Control Ur Bots")
BotControlSection:NewButton("Control-Me", "Gives Dev Access To Control Your Bot", function()
	
end)
------
local SCAMTab = Window:NewTab("Bot-Control")
local  SCAMSection = SCAMTab:NewSection("Scam People")
SCAMSection:NewLabel("Scam TF OUTTA People")
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
			JoinHouse:Play()
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = " | VIP | Player Join House",
				Text = "USER:"..vitum.Name,
				Icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..vitum.UserId.."&width=420&height=420&format=png"
			})
		else
			JoinHouse:Play()
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Player Join House",
				Text = "USER:"..vitum.Name,
				Icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..vitum.UserId.."&width=420&height=420&format=png"
			})
		end
	end)
end)
SCAMSection:NewButton("INF-YILD", "Used For WalkFling - Make A Keybind", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
--[[
THINGS TO ADD
---
Change Ui Color


]]--
