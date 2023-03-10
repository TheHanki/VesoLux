
--[[

      __      ________  _____  ____      _     _    _ __   __   
      \ \    / /  ____|/ ____|/ __ \    | |   | |  |  \ \ / /   
       \ \  / /| |__  | (___ | |  | |   | |   | |  | | \ V /    
        \ \/ / |  __|  \___ \| |  | |   | |   | |  | | |  |     
         \  /  | |____ ____) | |__| |   | |___| |__| | /   \    
          \/   |______|_____/ \____/    |______\____/ /_/ \_\   

]]--


-- Destroy UI Already Exist
if game:service'CoreGui':FindFirstChild("Veso Lux") then game:service'CoreGui':FindFirstChild("Veso Lux"):Destroy() end

-- Anti Afk
local a=game:GetService'VirtualUser'game:service"Players".LocalPlayer.Idled:connect(function()a:CaptureController()a:ClickButton2(Vector2.new())wait(2)end)

-- Bypass
function bypass()

	game.RunService.Stepped:Connect(
		function()
			pcall(
				function()
					for i, v in pairs(game.StarterGui:GetDescendants()) do
						if v.Name == "Extra" then
							v:Destroy()
						end
					end
					for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
						if v.Name == "Extra" then
							v:Destroy()
						end
					end
					for i, v in pairs(game.Workspace.Lobby:GetDescendants()) do
						if v.Name == "KillPlates" then
							v:Destroy()
						end
					end
					for i, v in pairs(game.Workspace.Borders:GetDescendants()) do
						if v.Name == "InvisibleBorder" then
							v:Destroy()
						end
					end
				end
			)
		end
	)
end
bypass()


-- Library

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Veso Lux", 5013109572)


-- Bypass Notify
venyx:Notify("Bypass", "Bypassed")


-- Themes

local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}

-- Pages

local page = venyx:addPage("Scripts")
local page2 = venyx:addPage("Player")
local page3 = venyx:addPage("Staff")
local page5 = venyx:addPage("Visuals")
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
local discord = page4:addSection("Discord")
local build = page3:addSection("Build")
local colors = theme:addSection("Colors")
local Sky = page3:addSection("Sky")
local other = page3:addSection("Others")
local PEsp = page5:addSection("Player Visuals")
local CuEsp = page5:addSection("Other Visuals")

-- Theme

for theme, color in pairs(themes) do
	colors:addColorPicker(theme, color, function(color3)
		venyx:setTheme(theme, color3)
	end)
end


--// Credits / Section 4

section4:addButton("Hanki#9045", function()
	setclipboard("Hanki#9045")
end)
section4:addButton("Tameria#8990", function()
	setclipboard("Tameria#8990")
end)
section4:addButton("Egw#3660", function()
	setclipboard("Egw#3660")
end)
section4:addButton("Puuror#1000", function()
	setclipboard("Puuror#1000")
end)
section4:addButton("Pablo.#0001", function()
	setclipboard("Pablo.#0001")
end) 
section4:addButton("Alex's#6187", function()
	setclipboard("Alex's#6187")
end) 

discord:addButton("Copy Discord Link", function()
	setclipboard("https://discord.gg/3j5BH5wuYy")
end)

--// Scripts / Section 1

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

section1:addToggle("Stairs", nil, function(value)
	if value == true then
		game:GetObjects("rbxassetid://9684449644")[1].Parent = game.Workspace

		local b = Instance.new("Part")
		b.Parent = game.Workspace.Model1212121331312
		b.Position = Vector3.new(116.075, 153.975, -77.968)
		b.Size = Vector3.new(1, 24, 13)
		b.Anchored = true
		b.CanCollide = true
		b.Name = "Stair2"
		b.Rotation = Vector3.new(-45, 90, 0)

		local c = Instance.new("Part")
		c.Parent = game.Workspace.Model1212121331312
		c.Position = Vector3.new(116.075, 153.975, -13.968)
		c.Size = Vector3.new(1, 24, 13)
		c.Anchored = true
		c.CanCollide = true
		c.Name = "Stair3"
		c.Rotation = Vector3.new(45, 90, 0)

		local d = Instance.new("Part")
		d.Parent = game.Workspace.Model1212121331312
		d.Position = Vector3.new(86.0749, 153.975, 0.0319977)
		d.Size = Vector3.new(1, 24, 13)
		d.Anchored = true
		d.CanCollide = true
		d.Name = "Stair4"
		d.Rotation = Vector3.new(0, 0, -45)

		local e = Instance.new("Part")
		e.Parent = game.Workspace.Model1212121331312
		e.Position = Vector3.new(86.0749, 153.975, -107.968)
		e.Size = Vector3.new(1, 24, 13)
		e.Anchored = true
		e.CanCollide = true
		e.Name = "Stair5"
		e.Rotation = Vector3.new(0, 0, -45)

		local f = Instance.new("Part")
		f.Parent = game.Workspace.Model1212121331312
		f.Position = Vector3.new(116.075, 153.975, 30.032)
		f.Size = Vector3.new(1, 24, 13)
		f.Anchored = true
		f.CanCollide = true
		f.Name = "Stair6"
		f.Rotation = Vector3.new(-45, -90, 0)

		local a = Instance.new("Part")
		a.Parent = game.Workspace.Model1212121331312
		a.Position = Vector3.new(116.075, 153.975, 94.032)
		a.Size = Vector3.new(1, 24, 13)
		a.Anchored = true
		a.CanCollide = true
		a.Name = "Stair1"
		a.Rotation = Vector3.new(45, 90, 0)

		local g = Instance.new("Part")
		g.Parent = game.Workspace.Model1212121331312
		g.Position = Vector3.new(86.0749, 153.975, 124.032)
		g.Size = Vector3.new(1, 24, 13)
		g.Anchored = true
		g.CanCollide = true
		g.Name = "Stair7"
		g.Rotation = Vector3.new(0, 0, -45)

		local h = Instance.new("Part")
		h.Parent = game.Workspace.Model1212121331312
		h.Position = Vector3.new(22.0749, 153.975, 124.032)
		h.Size = Vector3.new(1, 24, 13)
		h.Anchored = true
		h.CanCollide = true
		h.Name = "Stair8"
		h.Rotation = Vector3.new(180, 0, 135)

		local i = Instance.new("Part")
		i.Parent = game.Workspace.Model1212121331312
		i.Position = Vector3.new(8.075, 153.975, 94.032)
		i.Size = Vector3.new(1, 24, 13)
		i.Anchored = true
		i.CanCollide = true
		i.Name = "Stair9"
		i.Rotation = Vector3.new(45, 90, 0)

		local j = Instance.new("Part")
		j.Parent = game.Workspace.Model1212121331312
		j.Position = Vector3.new(-21.9251, 153.975, 124.032)
		j.Size = Vector3.new(1, 24, 13)
		j.Anchored = true
		j.CanCollide = true
		j.Name = "Stair10"
		j.Rotation = Vector3.new(0, 0, -45)

		local k = Instance.new("Part")
		k.Parent = game.Workspace.Model1212121331312
		k.Position = Vector3.new(-85.9251, 153.975, 124.032)
		k.Size = Vector3.new(1, 24, 13)
		k.Anchored = true
		k.CanCollide = true
		k.Name = "Stair11"
		k.Rotation = Vector3.new(180, 0, 135)

		local l = Instance.new("Part")
		l.Parent = game.Workspace.Model1212121331312
		l.Position = Vector3.new(-115.925, 153.975, 94.032)
		l.Size = Vector3.new(1, 24, 13)
		l.Anchored = true
		l.CanCollide = true
		l.Name = "Stair12"
		l.Rotation = Vector3.new(45, -90, 0)

		local m = Instance.new("Part")
		m.Parent = game.Workspace.Model1212121331312
		m.Position = Vector3.new(-115.925, 153.975, 30.032)
		m.Size = Vector3.new(1, 24, 13)
		m.Anchored = true
		m.CanCollide = true
		m.Name = "Stair13"
		m.Rotation = Vector3.new(-45, 90, 0)

		local n = Instance.new("Part")
		n.Parent = game.Workspace.Model1212121331312
		n.Position = Vector3.new(-85.9251, 153.975, 16.032)
		n.Size = Vector3.new(1, 24, 13)
		n.Anchored = true
		n.CanCollide = true
		n.Name = "Stair14"
		n.Rotation = Vector3.new(180, 0, 135)

		local aw = Instance.new("Part")
		aw.Parent = game.Workspace.Model1212121331312
		aw.Position = Vector3.new(-115.925, 153.975, -14.968)
		aw.Size = Vector3.new(1, 24, 13)
		aw.Anchored = true
		aw.CanCollide = true
		aw.Name = "Stair15"
		aw.Rotation = Vector3.new(45, -90, 0)

		local qwe = Instance.new("Part")
		qwe.Parent = game.Workspace.Model1212121331312
		qwe.Position = Vector3.new(-115.925, 153.975, -77.968)
		qwe.Size = Vector3.new(1, 24, 13)
		qwe.Anchored = true
		qwe.CanCollide = true
		qwe.Name = "Stair16"
		qwe.Rotation = Vector3.new(-45, 90, 0)

		local ew = Instance.new("Part")
		ew.Parent = game.Workspace.Model1212121331312
		ew.Position = Vector3.new(-85.9251, 153.975, -107.968)
		ew.Size = Vector3.new(1, 24, 13)
		ew.Anchored = true
		ew.CanCollide = true
		ew.Name = "Stair17"
		ew.Rotation = Vector3.new(180, 0, 135)

		local we = Instance.new("Part")
		we.Parent = game.Workspace.Model1212121331312
		we.Position = Vector3.new(-21.9251, 153.975, -107.968)
		we.Size = Vector3.new(1, 24, 13)
		we.Anchored = true
		we.CanCollide = true
		we.Name = "Stair18"
		we.Rotation = Vector3.new(0, 0, -45)

		local be = Instance.new("Part")
		be.Parent = game.Workspace.Model1212121331312
		be.Position = Vector3.new(-7.925, 153.975, -77.968)
		be.Size = Vector3.new(1, 24, 13)
		be.Anchored = true
		be.CanCollide = true
		be.Name = "Stair19"
		be.Rotation = Vector3.new(-45, 90, 0)

		local sj = Instance.new("Part")
		sj.Parent = game.Workspace.Model1212121331312
		sj.Position = Vector3.new(22.0749, 153.975, -107.968)
		sj.Size = Vector3.new(1, 24, 13)
		sj.Anchored = true
		sj.CanCollide = true
		sj.Name = "Stair20"
		sj.Rotation = Vector3.new(180, 0, 135)

		local q = Instance.new("Part")
		q.Parent = game.Workspace.Model1212121331312
		q.Position = Vector3.new(0.000262141, 154.381, -27.2855)
		q.Size = Vector3.new(1, 24, 36)
		q.Anchored = true
		q.CanCollide = true
		q.Name = "Stair22"
		q.Rotation = Vector3.new(45, 90, 0)

		local w = Instance.new("Part")
		w.Parent = game.Workspace.Model1212121331312
		w.Position = Vector3.new(26, 154, -0.5)
		w.Size = Vector3.new(1, 24, 36)
		w.Anchored = true
		w.CanCollide = true
		w.Name = "Stair23"
		w.Rotation = Vector3.new(0, 0, 45)

		local r = Instance.new("Part")
		r.Parent = game.Workspace.Model1212121331312
		r.Position = Vector3.new(0.000260472, 154.381, 25.7145)
		r.Size = Vector3.new(1, 24, 36)
		r.Anchored = true
		r.CanCollide = true
		r.Name = "Stair23"
		r.Rotation = Vector3.new(-45, -90, 0)

		local p = Instance.new("Part")
		p.Parent = game.Workspace.Model1212121331312
		p.Position = Vector3.new(-26, 154, -0.5)
		p.Size = Vector3.new(1, 24, 36)
		p.Anchored = true
		p.CanCollide = true
		p.Name = "Stair24"
		p.Rotation = Vector3.new(-180, 0, -135)
	end
	if value == false then
		game.Workspace.Model1212121331312:Destroy()
	end
end)

--AutoBow
_G.AutoBow = false
section1:addToggle("Bow Trigger-Bot", nil, function(value)
	if value == true then
		venyx:Notify("Script", "Bow Trigger-Bot Enabled")
		if game.Players.LocalPlayer.Backpack:FindFirstChild("Bow") then
			game.Players.LocalPlayer.Backpack:FindFirstChild("Bow").Parent = game.Players.LocalPlayer.Character
		else
			print(".")
		end
		_G.AutoBow = true
		if _G.AutoBow == true then
			local i = game.Players.LocalPlayer:GetMouse()
			local a0 = game.Players.LocalPlayer.Character:FindFirstChild("Bow")
			local V = game.Players.LocalPlayer.Character

			repeat
				wait()
				if i.Target ~= nil and i.Target.Parent:FindFirstChild("Humanoid") and i.Target.Parent ~= game.Players.LocalPlayer.Character then
					mouse1press()
					wait()
					mouse1release()
				end
			until _G.AutoBow == false
		end
	end
	if value == false then
		_G.AutoBow = false
		venyx:Notify("Script", "Bow Trigger-Bot Disabled")
	end
end)

--Auto Heal
_G.AutoHeal = false
section1:addToggle("Auto Heal (Needs Heal)", nil, function(value)
	if value == true then
		venyx:Notify("Script", "Auto Heal Enabled")
		_G.AutoHeal = true
		if _G.AutoHeal == true then
			repeat
				wait()
				if game.Players.LocalPlayer.Character.Humanoid.Health <= 25 and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Heal") then
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Heal"))
					end
					local yarra = game.Players.LocalPlayer.Character:WaitForChild("Heal", 10)
					if yarra then
						yarra:Activate()
						wait(0.5)
						venyx:Notify("Script", "Attempted to heal you back to 100% health")
					end
				end
			until _G.AutoHeal == false
		end
	end
	if value == false then
		_G.AutoHeal = false
		venyx:Notify("Script", "Auto Heal Disabled")
	end
end)

--Auto Kill
_G.AutoKill = false
section1:addToggle("Auto Kill", nil, function(value)
	if value == true then
		venyx:Notify("Script", "Auto Kill Players Enabled")
		if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
			game.Players.LocalPlayer.Backpack:FindFirstChild("Sword").Parent = game.Players.LocalPlayer.Character
		else
			print(".")
		end
		_G.AutoKill = true
		if _G.AutoKill == true then
			repeat
				wait()
				for i,v in pairs(game.Players:GetChildren()) do
					if v.Name ~= game.Players.LocalPlayer.Name and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("Role") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame - v.Character.HumanoidRootPart.CFrame.LookVector * 5
						game.Players.LocalPlayer.Character:FindFirstChild("Sword"):Activate()	
						v.Character.HumanoidRootPart.Transparency = 0.7
						v.Character.HumanoidRootPart.Size         = Vector3.new(7,7,7)
						v.Character.HumanoidRootPart.Material     = "Plastic"
						v.Character.HumanoidRootPart.CanCollide   = false		
					end
				end
			until not game.Players.LocalPlayer.Character:findFirstChild("Sword")
		end
	end
	if value == false then
		_G.AutoKill = false
		if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
			game.Players.LocalPlayer.Character:FindFirstChild("Sword").Parent =  game.Players.LocalPlayer.Backpack
		else
			print(".")
		end
		venyx:Notify("Script", "Auto Kill Players Disabled")
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

--// Mine / Section 3

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

--// Scripts / Section 2

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

--Fix Fe Shield
section2:addButton("Fix Fe Shield", function()
	for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
		if v:IsA("ForceField") then
			v:Destroy()
		end
	end
end)

--Lobby Sword
section2:addButton("Lobby Sword", function()
	local xpos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.X
	local ypos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Y
	local zpos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Z

	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116, 165, 108)
	wait(0.1)
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Sword").Parent =
			game.Players.LocalPlayer.Character
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Sword") then
		game.Players.LocalPlayer.Character:FindFirstChild("Sword"):Activate()
	end
	wait(0.2)
	local cu = game:GetService("VirtualUser")
	cu:ClickButton1(Vector2.new(500,0))
	wait(0.1)
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(xpos, ypos, zpos)
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
	venyx:Notify("Free Vips", "Enabled")
end)

--Fling Everyone
section2:addButton("Fling Everyone", function()
	local Adrix        = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.01)
	ZZ = game:GetService('RunService').Stepped:connect(function()
		for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") then 
				v.CanCollide = false
			end
		end
	end)
	local BG = Instance.new('BodyGyro', game:GetService("Players").LocalPlayer.Character.Torso)
	local BV     = Instance.new('BodyVelocity', game:GetService("Players").LocalPlayer.Character.Torso)
	BG.P         = 9e4
	BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	BG.cframe    = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
	BV.velocity  = Vector3.new(0, 3.75, 0)
	BV.maxForce  = Vector3.new(9e9, 9e9, 9e9)
	wait()
	NoLol = game:GetService('RunService').Heartbeat:connect(function()
		for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
			if v:IsA("BasePart") and v.Name ~="Torso" then 
				v.Velocity = Vector3.new(0,-2333333,0)
			end
		end
	end)
	XD = game:GetService("Players").LocalPlayer

	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name ~= XD.Name then
			if v.Character:FindFirstChild('Role') and v.Character:FindFirstChild('Torso') then
				wait(0.1)
				XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,-3.9,0)
				wait(0.1)
				XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,4,0)
				wait(0.1)
			end 
		end    
	end
	wait(0.2)
	ZZ:Disconnect()

	NoLol:Disconnect()
	wait(0.1)
	BG:Destroy()
	BV:Destroy()
	game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = Adrix
	game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = true
	wait()
	game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = false	
end)

--No Collide Blocks
section2:addButton("Glitch Blocks", function()
	local Why = game:GetService("Players").LocalPlayer
	local Char = Why.Character
	local backpack = Why.Backpack

	backpack.Block.Parent =  Why.Character
	Char.Block.Left:Destroy()
	Char.Block.Parent = Why.Backpack
end)

--ArmorInvisibleBody
section2:addButton("Armor Invisible Body", function()
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
			venyx:Notify("Not Work?", "Uh")
		end
	else
		venyx:Notify("Not Work", "Uh")
	end
end)


--AntiRoundFinishKill
section2:addButton("Anti Round Finish Kill", function()
	if game:GetService("Workspace").Terrain:FindFirstChild("Seat")==nil then
		ct    = {}
		venyx:Notify("Script", "Script Enabled")  
		sound = Instance.new("Seat", game:GetService("Workspace").Terrain)
		table.insert(ct,game:GetService("RunService").Stepped:Connect(function()
			if game:GetService("Workspace").timer.Value < 1 or game:GetService("Workspace").plrsLeft.Value < 2 then
				venyx:Notify("Script", "Round Finished")   
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
		venyx:Notify("Script", "Really Executed")   
	end
end)

--// Mine / Section 3

--Scaffolding
section3:addKeybind("Scaffolding", Enum.KeyCode.Insert, function()
	local Anan = ""

	local lookvector = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector

	if lookvector.X < 1 and lookvector.Z < -0.5 then
		Anan = "Front"
	elseif lookvector.X < 1 and lookvector.Z > 0.5 then
		Anan = "Back"
	elseif lookvector.X < 0.5 and lookvector.Z  < 1 then
		Anan = "Left"
	elseif lookvector.X > 0.5 and lookvector.Z > -1 then
		Anan = "Right"
	end

	function onTouched(part)       
		local h = part
		if h.Name == "Block" then
			game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(h,Enum.NormalId[Anan])
		end
	end

	Allah              = Instance.new("Part")
	Allah.Parent       = workspace
	Allah.Transparency = 1
	Allah.CanCollide   = false
	Allah.Massless     = true
	Allah.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,51,0)
	Allah.Size         = Vector3.new(2.5,10,2.5)
	Allah.CFrame       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*3.5

	local Yok         = Instance.new("SelectionBox")
	Yok.Adornee       = Allah
	Yok.LineThickness = 0.05
	Yok.Color3        = Color3.fromRGB(255, 0, 0)
	Yok.Parent        = Allah
	Yok.Name          = "SelectBox"

	local yarrak = Allah.Touched:connect(onTouched)
	wait()
	yarrak:Disconnect()
	Allah:Destroy()
end)

--Undermine Aura
section3:addKeybind("Undermine Aura", Enum.KeyCode.Insert, function()
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
	Partz.Size         = Vector3.new(25,25,25)

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
end)

section3:addKeybind("Undermine Ore Aura", Enum.KeyCode.Insert, function()
	function onTouched(part)       
		local h = part
		if h.Name == "Block" and h.Parent.Name == "Ores" then
			game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
		end
	end
	Partz              = Instance.new("Part")
	Partz.Parent       = workspace
	Partz.Transparency = 1
	Partz.CanCollide   = false
	Partz.Massless     = true
	Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
	Partz.Size         = Vector3.new(25,25,25)

	local light         = Instance.new("SelectionBox")
	light.Adornee       = Partz
	light.LineThickness = 0.05
	light.Color3        = Color3.fromRGB(0,183,235)
	light.Parent        = Partz
	light.Name          = "SelectBox"

	local bruh = Partz.Touched:connect(onTouched)

	wait()
	bruh:Disconnect()
	Partz:Destroy()
end)

-- Barrier Key

section3:addKeybind("Barrier", Enum.KeyCode.Insert, function()
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

--// Player Esp / PEsp

-- Player Esp

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/Karrot-Esp"))()

PEsp:addToggle("Player Esp", nil, function(state)
	ESP:Toggle(state)
	ESP.Color = Color3.fromRGB(255,255,255)
end)

PEsp:addToggle("Tracer Esp", nil, function(state)
	ESP.Tracers = state
end)

PEsp:addToggle("Name Esp", nil, function(state)
	ESP.Names = state
end)

PEsp:addToggle("Box Esp", nil, function(state)
	ESP.Boxes = state
end)

--// Other Esp / CuEsp

-- Other Esp

CuEsp:addToggle("Ore Esp", nil, function(value)
	if value == true then
		local CURRENTMAP = ""

		local getmap = workspace:GetChildren()
		for i = 1, #getmap do
			if(getmap[i].Name == "SummerMap") then
				CURRENTMAP = "SummerMap"
				warn("Summer Map Selected")
			elseif(getmap[i].Name == "WinterMap") then
				CURRENTMAP = "WinterMap"
				warn("Winter Map Selected")
			elseif(getmap[i].Name == "SpringMap") then
				CURRENTMAP = "SpringMap"
				warn("Spring Map Selected")
			elseif(getmap[i].Name == "FallMap") then
				CURRENTMAP = "FallMap"
				warn("Fall Map Selected")
			else warn("No Map Found.")
			end
		end

		function CreateESPPart(BodyPart,color)
			local ESPPartparent = BodyPart
			local Box = Instance.new("BoxHandleAdornment")
			Box.Size = BodyPart.Size + Vector3.new(0.1, 0.1, 0.1)
			Box.Name = "ESPPart"
			Box.Adornee = ESPPartparent
			Box.Color3 = color
			Box.AlwaysOnTop = true
			Box.ZIndex = 5
			Box.Transparency = 0.2
			Box.Parent = BodyPart
		end

		for i,v in next, game:GetService("Workspace")[CURRENTMAP].Map:FindFirstChild("Ores"):GetDescendants() do 
			if v:IsA("Part") and v.Name =="Block" then
				CreateESPPart(v, Color3.fromRGB(0,255,255)) 
			end
		end
	end
	if value == false then
		local CURRENTMAP = ""

		local getmap = workspace:GetChildren()
		for i = 1, #getmap do
			if(getmap[i].Name == "SummerMap") then
				CURRENTMAP = "SummerMap"
				warn("Summer Map Selected")
			elseif(getmap[i].Name == "WinterMap") then
				CURRENTMAP = "WinterMap"
				warn("Winter Map Selected")
			elseif(getmap[i].Name == "SpringMap") then
				CURRENTMAP = "SpringMap"
				warn("Spring Map Selected")
			elseif(getmap[i].Name == "FallMap") then
				CURRENTMAP = "FallMap"
				warn("Fall Map Selected")
			else warn("No Map Found.")
			end
		end

		for i,v in next, game:GetService("Workspace")[CURRENTMAP].Map:FindFirstChild("Ores"):GetDescendants() do 
			if v:IsA("Part") and v.Name =="Block" then
				v.ESPPart:Destroy()
			end
		end
	end
end)

--// Player / Sektion

sektion:addSlider("Walkspeed", 16, 16, 100, function(value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
end)

sektion:addSlider("JumpPower", 50, 50, 100, function(value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = (value)
end)

sektion:addSlider("Hitbox", 2, 2, 30, function(value)
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name ~= game.Players.LocalPlayer.Name then
			v.Character.HumanoidRootPart.Transparency = 0.7
			v.Character.HumanoidRootPart.Size         = Vector3.new((value),(value),(value))
			v.Character.HumanoidRootPart.Material     = "Plastic"
			v.Character.HumanoidRootPart.CanCollide   = false
		end
	end
end)



others:addButton("Health Notification", function()
	local z = game.Players.LocalPlayer.Character.Humanoid

	venyx:Notify("Your Health: "..z.Health, "Max Health: "..z.MaxHealth)

end)

others:addButton("Enable Christmas", function()
	local clickdetector = game:GetService("Workspace").EnableChristmas.ClickDetector

	fireclickdetector(clickdetector)
end)

others:addButton("Toggle Night", function()
	local clickdetector = game:GetService("Workspace").ToggleNight.ClickDetector

	fireclickdetector(clickdetector)
end)

others:addButton("Toggle Music", function()
	local clickdetector = game:GetService("Workspace").ToggleMusic.ClickDetector

	fireclickdetector(clickdetector)
end)

others:addButton("Equip Tools", function()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game.Players.LocalPlayer.Character
		end
	end
end)

others:addButton("Delete Role", function()
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("BoolValue") then
			v:Destroy()
		end
	end
end)

others:addButton("Anti Void Kill", function()
	workspace.FallenPartsDestroyHeight = -math.huge
end)

others:addButton("Toxic", function()
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("EZ","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÇerEZ","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("MayonEZ","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Sil Oyunu","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Fukara","All")
end)

colors:addKeybind("Toggle Keybind", Enum.KeyCode.E, function()
	venyx:toggle()
end, function()
end)

--// Teleports / Sektion 2


--Teleports

sektion2:addButton("Lobby", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 268, 1)
end)

sektion2:addButton("Middle İsland", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 189, 0)
end)

sektion2:addButton("Vip", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.324219227, 264, -69.9828949)
end)

sektion2:addButton("Mega vip", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
end)

--// Staff / Sektin

sektin:addButton("Lobby Ores Teleport To You", function()
	for i, v in pairs(game.Workspace.Regen.Ores:GetDescendants()) do
		if v.Name == "LobbyBlock" then
			v.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		end
	end

	for i, v in pairs(game.Workspace.Regen.Ores:GetDescendants()) do
		if v.Name == "Core" then
			v.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		end
	end
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

sektin:addButton("Fake Axe", function()
	local Players       = game:GetService("Players")
	local localPlayer   = Players.LocalPlayer
	local backpack      = localPlayer:WaitForChild("Backpack")
	local tool          = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.CanBeDropped   = true
	tool.Parent         = backpack
	tool.Name           = "Fake Axe"
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

sektin:addButton("Fake Block", function()
	local Players       = game:GetService("Players")
	local localPlayer   = Players.LocalPlayer
	local backpack      = localPlayer:WaitForChild("Backpack")
	local tool          = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.CanBeDropped   = true
	tool.Parent         = backpack
	tool.Name           = "Fake Block"
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

sektin:addButton("Fake Wall", function()
	local Players       = game:GetService("Players")
	local localPlayer   = Players.LocalPlayer
	local backpack      = localPlayer:WaitForChild("Backpack")
	local tool          = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.CanBeDropped   = true
	tool.Parent         = backpack
	tool.Name           = "Fake Wall"
	tool.Equipped:Connect(function(mouse)
		mouse.Button1Down:Connect(function()
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
			light.Transparency = 1
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
	end)
end)

--// Build / Build

build:addButton("Undermine", function()
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
	Partz.Size         = Vector3.new(25,25,25)

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
end)

--// Sky / Sky

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

--Other / Other
other:addTextbox("Kill Player", "Player Name", function(value, focusLost)
	if focusLost then
		local target = game.Players[value]

		if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
			game.Players.LocalPlayer.Backpack:FindFirstChild("Sword").Parent = game.Players.LocalPlayer.Character
		else
			print(".")
		end

		repeat
			wait()
			if target.Character.Humanoid.Health > 0 and target.Character:FindFirstChild("Role") then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame - target.Character.HumanoidRootPart.CFrame.LookVector * 5
				game.Players.LocalPlayer.Character:FindFirstChild("Sword"):Activate()	
				target.Character.HumanoidRootPart.Transparency = 0.7
				target.Character.HumanoidRootPart.Size         = Vector3.new(7,7,7)
				target.Character.HumanoidRootPart.Material     = "Plastic"
				target.Character.HumanoidRootPart.CanCollide   = false		
			else
				venyx:Notify("Script", "Player does not live")				
			end			
		until not game.Players.LocalPlayer.Character:findFirstChild("Sword")		
	end
end)

other:addTextbox("Teleport Player", "Player Name", function(value, focusLost)
	if focusLost then
		local target = value
		game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game.Workspace[target].HumanoidRootPart.CFrame
	end
end)

other:addKeybind("Scaffolding With Parts", Enum.KeyCode.Insert, function()
	local Anan    = Instance.new("Part")
	Anan.Name = "ScafPart"
	Anan.Parent   = game.Workspace
	Anan.Size     = Vector3.new(3,1,3)
	Anan.Anchored = true
	Anan.Position =  game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position + Vector3.new(0,-3.5,0)
	Anan.Material = Enum.Material.SmoothPlastic

	while true do
		for i = 0,1,0.001*1 do
			Anan.Color = Color3.fromHSV(i,1,1)
			wait()
		end
	end
	wait(20)
	Anan:Destroy()
end)

other:addButton("Delete Scaffolding Parts", function()
	local getscaff = game.Workspace:GetChildren()
	for i = 1, #getscaff do
		if(getscaff[i].Name == "ScafPart") then
			getscaff[i]:Destroy()
		else
			print("Yokki")
		end
	end
end)

--// Build / Build
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

-- Load
venyx:SelectPage(venyx.pages[1], true)
