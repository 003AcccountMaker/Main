if pcall(function() syn.crypt.encrypt("Unnamed Cheat",1) end) then
	--loadstring(game:HttpGet("https://raw.githubusercontent.com/mrgunz/S/main/Loader"))();
	--loadstring(game:HttpGet("https://raw.githubusercontent.com/mrgunz/S/main/List"))();
	local GameName = "GameName"
	local CheatName = "Unnamed Cheat - "..GameName
	function DeleteMenu()
		for i,v in pairs(game:GetService("CoreGui"):GetDescendants()) do
			if v.Name == CheatName then
				v:Destroy()
			end
		end
	end

	local UnnamedCheat_Library = {}
	
	local UnnamedCheat_Gui = Instance.new("ScreenGui")
	syn.protect_gui(UnnamedCheat_Gui)
	UnnamedCheat_Gui.Name = CheatName
	UnnamedCheat_Gui.DisplayOrder = math.random(100,1000)
	UnnamedCheat_Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	UnnamedCheat_Gui.Parent = game:GetService("CoreGui")
	game:GetService("UserInputService").InputBegan:connect(function(input, gameProcessed)
		if input.KeyCode == Enum.KeyCode.F2 or input.KeyCode == Enum.KeyCode.RightShift then
			if not gameProcessed then
				UnnamedCheat_Gui.Enabled = not UnnamedCheat_Gui.Enabled
			end
		end
	end)
	
	function UnnamedCheat_Library:Window()
		local Screen = Instance.new("Frame")
		local TabList = Instance.new("Frame")
		local TabListUICorner = Instance.new("UICorner")
		local TabListUIListLayout = Instance.new("UIListLayout")
		local ScreenUICorner = Instance.new("UICorner")
		local UnnamedCheatUI = Instance.new("Frame")
		local CheatUI = Instance.new("TextLabel")
		local UnnamedUI = Instance.new("TextLabel")
		local Version = Instance.new("TextLabel")
		local ScreenUIScale = Instance.new("UIScale")
		local MiniSettings = Instance.new("Frame")
		local MiniSettingsUIListLayout = Instance.new("UIListLayout")
		local OverLayMenuButton = Instance.new("TextButton")
		local HideMenuButton = Instance.new("TextButton")
		local DeleteMenuButton = Instance.new("TextButton")
		local InfoFrame = Instance.new("Frame")
		local InfoFrameCorner = Instance.new("UICorner")
		local InfoFrameText = Instance.new("TextBox")
		local StatusScreen = Instance.new("Frame")
		local StatusBar = Instance.new("Frame")
		local StatusInfo = Instance.new("TextLabel")
		local Bin = Instance.new("Folder")
		
		Screen.Name = game:GetService("HttpService"):GenerateGUID(false)
		Screen.Parent = UnnamedCheat_Gui
		Screen.Active = true
		Screen.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Screen.BorderSizePixel = 0
		Screen.Position = UDim2.new(0.278770983, 0, 0.0658873618, 0)
		Screen.Size = UDim2.new(0, 630, 0, 420)
		Screen.Draggable = true
		Screen.Visible = false

		TabList.Name = game:GetService("HttpService"):GenerateGUID(false)
		TabList.Parent = Screen
		TabList.Active = true
		TabList.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
		TabList.BorderSizePixel = 0
		TabList.Position = UDim2.new(0.0190476198, 0, 0.119047619, 0)
		TabList.Size = UDim2.new(0, 130, 0, 363)

		TabListUICorner.CornerRadius = UDim.new(0, 4)
		TabListUICorner.Name = game:GetService("HttpService"):GenerateGUID(false)
		TabListUICorner.Parent = TabList

		TabListUIListLayout.Name = game:GetService("HttpService"):GenerateGUID(false)
		TabListUIListLayout.Parent = TabList
		TabListUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

		ScreenUICorner.CornerRadius = UDim.new(0, 4)
		ScreenUICorner.Name = game:GetService("HttpService"):GenerateGUID(false) 
		ScreenUICorner.Parent = Screen

		UnnamedCheatUI.Name = game:GetService("HttpService"):GenerateGUID(false) 
		UnnamedCheatUI.Parent = Screen
		UnnamedCheatUI.Active = true
		UnnamedCheatUI.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		UnnamedCheatUI.BackgroundTransparency = 1.000
		UnnamedCheatUI.BorderSizePixel = 0
		UnnamedCheatUI.Position = UDim2.new(0.0121670077, 0, 0.0140103688, 0)
		UnnamedCheatUI.Size = UDim2.new(0, 194, 0, 36)

		CheatUI.Name = game:GetService("HttpService"):GenerateGUID(false)
		CheatUI.Parent = UnnamedCheatUI
		CheatUI.Active = true
		CheatUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		CheatUI.BackgroundTransparency = 1.000
		CheatUI.Position = UDim2.new(0.575050294, 0, 0.0234374981, 0)
		CheatUI.Size = UDim2.new(0, 69, 0, 32)
		CheatUI.Font = Enum.Font.SourceSans
		CheatUI.Text = "Cheat"
		CheatUI.TextColor3 = Color3.fromRGB(255, 255, 255)
		CheatUI.TextScaled = true
		CheatUI.TextSize = 14.000
		CheatUI.TextStrokeTransparency = 0.000
		CheatUI.TextWrapped = true
		CheatUI.TextXAlignment = Enum.TextXAlignment.Left

		UnnamedUI.Name = game:GetService("HttpService"):GenerateGUID(false) 
		UnnamedUI.Parent = UnnamedCheatUI
		UnnamedUI.Active = true
		UnnamedUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		UnnamedUI.BackgroundTransparency = 1.000
		UnnamedUI.Position = UDim2.new(0.0333951749, 0, 0.0234375, 0)
		UnnamedUI.Size = UDim2.new(0, 106, 0, 32)
		UnnamedUI.Font = Enum.Font.SourceSans
		UnnamedUI.Text = "Unnamed"
		UnnamedUI.TextColor3 = Color3.fromRGB(0, 0, 0)
		UnnamedUI.TextScaled = true
		UnnamedUI.TextSize = 14.000
		UnnamedUI.TextStrokeTransparency = 0.580
		UnnamedUI.TextWrapped = true
		UnnamedUI.TextXAlignment = Enum.TextXAlignment.Left

		Version.Name = game:GetService("HttpService"):GenerateGUID(false) 
		Version.Parent = Screen
		Version.Active = true
		Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Version.BackgroundTransparency = 1.000
		Version.Position = UDim2.new(0.297732413, 0, 0.05250936, 0)
		Version.Size = UDim2.new(0, 105, 0, 16)
		Version.Font = Enum.Font.SourceSans
		Version.Text = "11.3"
		Version.TextColor3 = Color3.fromRGB(255, 255, 255)
		Version.TextScaled = true
		Version.TextSize = 14.000
		Version.TextStrokeTransparency = 0.000
		Version.TextWrapped = true
		Version.TextXAlignment = Enum.TextXAlignment.Left

		ScreenUIScale.Name = game:GetService("HttpService"):GenerateGUID(false) 
		ScreenUIScale.Parent = Screen

		MiniSettings.Name = game:GetService("HttpService"):GenerateGUID(false) 
		MiniSettings.Parent = Screen
		MiniSettings.Active = true
		MiniSettings.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
		MiniSettings.BackgroundTransparency = 1.000
		MiniSettings.BorderSizePixel = 0
		MiniSettings.Position = UDim2.new(0.793650746, 0, 0, 0)
		MiniSettings.Size = UDim2.new(0, 130, 0, 22)

		MiniSettingsUIListLayout.Name = game:GetService("HttpService"):GenerateGUID(false) 
		MiniSettingsUIListLayout.Parent = MiniSettings
		MiniSettingsUIListLayout.FillDirection = Enum.FillDirection.Horizontal
		MiniSettingsUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
		MiniSettingsUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		MiniSettingsUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

		OverLayMenuButton.Name = game:GetService("HttpService"):GenerateGUID(false) 
		OverLayMenuButton.Parent = MiniSettings
		OverLayMenuButton.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
		OverLayMenuButton.BackgroundTransparency = 1.000
		OverLayMenuButton.BorderSizePixel = 0
		OverLayMenuButton.Position = UDim2.new(0.800000012, 0, 0, 0)
		OverLayMenuButton.Size = UDim2.new(0, 19, 0, 22)
		OverLayMenuButton.AutoButtonColor = false
		OverLayMenuButton.Font = Enum.Font.Gotham
		OverLayMenuButton.Text = "OL"
		OverLayMenuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		OverLayMenuButton.TextSize = 12.000

		HideMenuButton.Name = game:GetService("HttpService"):GenerateGUID(false)
		HideMenuButton.Parent = MiniSettings
		HideMenuButton.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
		HideMenuButton.BackgroundTransparency = 1.000
		HideMenuButton.BorderSizePixel = 0
		HideMenuButton.Position = UDim2.new(0.800000012, 0, 0, 0)
		HideMenuButton.Size = UDim2.new(0, 19, 0, 22)
		HideMenuButton.AutoButtonColor = false
		HideMenuButton.Font = Enum.Font.Gotham
		HideMenuButton.Text = "_"
		HideMenuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		HideMenuButton.TextSize = 12.000

		DeleteMenuButton.Name = game:GetService("HttpService"):GenerateGUID(false) 
		DeleteMenuButton.Parent = MiniSettings
		DeleteMenuButton.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
		DeleteMenuButton.BackgroundTransparency = 1.000
		DeleteMenuButton.BorderSizePixel = 0
		DeleteMenuButton.Position = UDim2.new(0.800000012, 0, 0, 0)
		DeleteMenuButton.Size = UDim2.new(0, 19, 0, 22)
		DeleteMenuButton.AutoButtonColor = false
		DeleteMenuButton.Font = Enum.Font.Gotham
		DeleteMenuButton.Text = "X"
		DeleteMenuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		DeleteMenuButton.TextSize = 12.000

		InfoFrame.Name = game:GetService("HttpService"):GenerateGUID(false) 
		InfoFrame.Parent = Screen
		InfoFrame.Active = true
		InfoFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		InfoFrame.BorderSizePixel = 0
		InfoFrame.Position = UDim2.new(1.01002097, 0, -0.00188538432, 0)
		InfoFrame.Size = UDim2.new(0, 334, 0, 245)
		InfoFrame.Visible = false

		InfoFrameCorner.CornerRadius = UDim.new(0, 4)
		InfoFrameCorner.Name = game:GetService("HttpService"):GenerateGUID(false) 
		InfoFrameCorner.Parent = InfoFrame

		InfoFrameText.Name = game:GetService("HttpService"):GenerateGUID(false) 
		InfoFrameText.Parent = InfoFrame
		InfoFrameText.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		InfoFrameText.BackgroundTransparency = 1.000
		InfoFrameText.BorderSizePixel = 0
		InfoFrameText.Position = UDim2.new(0.0164049342, 0, 0.047869876, 0)
		InfoFrameText.Size = UDim2.new(0, 323, 0, 226)
		InfoFrameText.ClearTextOnFocus = false
		InfoFrameText.Font = Enum.Font.SourceSans
		InfoFrameText.Text = "Unnamed Cheat Test"
		InfoFrameText.TextColor3 = Color3.fromRGB(255, 255, 255)
		InfoFrameText.TextSize = 14.000
		InfoFrameText.TextXAlignment = Enum.TextXAlignment.Left
		InfoFrameText.TextYAlignment = Enum.TextYAlignment.Top

		StatusScreen.Name = game:GetService("HttpService"):GenerateGUID(false) 
		StatusScreen.Parent = UnnamedCheat_Gui
		StatusScreen.Active = true
		StatusScreen.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		StatusScreen.BorderSizePixel = 0
		StatusScreen.Position = UDim2.new(0, -220, 0.136999995, 0)
		StatusScreen.Size = UDim2.new(0, 214, 0, 39)

		StatusBar.Name = game:GetService("HttpService"):GenerateGUID(false) 
		StatusBar.Parent = StatusScreen
		StatusBar.Active = true
		StatusBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		StatusBar.BorderSizePixel = 0
		StatusBar.Size = UDim2.new(0, 6, 0, 39)

		StatusInfo.Name = game:GetService("HttpService"):GenerateGUID(false) 
		StatusInfo.Parent = StatusScreen
		StatusInfo.Active = true
		StatusInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		StatusInfo.BackgroundTransparency = 1.000
		StatusInfo.BorderSizePixel = 0
		StatusInfo.Position = UDim2.new(0.0280373823, 0, 0, 0)
		StatusInfo.Size = UDim2.new(0, 208, 0, 39)
		StatusInfo.Font = Enum.Font.SourceSans
		StatusInfo.Text = "Unnamed Cheat Test"
		StatusInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
		StatusInfo.TextSize = 18.000
		StatusInfo.TextWrapped = true

		Bin.Name = game:GetService("HttpService"):GenerateGUID(false)
		Bin.Parent = UnnamedCheat_Gui
		
		local Tabs = {}
		function Tabs:Tab(text,parent)
			local NameTab = Instance.new("Frame")
			local NameTabUICorner = Instance.new("UICorner")

			NameTab.Name = game:GetService("HttpService"):GenerateGUID(false)
			NameTab.Parent = Screen
			NameTab.Active = true
			NameTab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			NameTab.BorderSizePixel = 0
			NameTab.Position = UDim2.new(0.236507937, 0, 0.119047619, 0)
			NameTab.Size = UDim2.new(0, 474, 0, 363)

			NameTabUICorner.CornerRadius = UDim.new(0, 4)
			NameTabUICorner.Name = game:GetService("HttpService"):GenerateGUID(false)
			NameTabUICorner.Parent = NameTab
			
			
			
			local NameTabFrame1 = Instance.new("Frame")
			local NameTabFrame1UICorner = Instance.new("UICorner")
			local NameTabFrame1UIListLayout = Instance.new("UIListLayout")

			NameTabFrame1.Name = game:GetService("HttpService"):GenerateGUID(false)
			NameTabFrame1.Parent = NameTab
			NameTabFrame1.Active = true
			NameTabFrame1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame1.BorderSizePixel = 0
			NameTabFrame1.Position = UDim2.new(0.0149889607, 0, 0.0253837314, 0)
			NameTabFrame1.Size = UDim2.new(0, 226, 0, 343)

			NameTabFrame1UICorner.CornerRadius = UDim.new(0, 4)
			NameTabFrame1UICorner.Name = game:GetService("HttpService"):GenerateGUID(false)
			NameTabFrame1UICorner.Parent = NameTabFrame1

			NameTabFrame1UIListLayout.Name = game:GetService("HttpService"):GenerateGUID(false)
			NameTabFrame1UIListLayout.Parent = NameTabFrame1
			NameTabFrame1UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			
			
			local NameTabFrame2 = Instance.new("Frame")
			local NameTabFrame2UICorner = Instance.new("UICorner")
			local NameTabFrame2UIListLayout = Instance.new("UIListLayout")

			NameTabFrame2.Name = game:GetService("HttpService"):GenerateGUID(false)
			NameTabFrame2.Parent = NameTab
			NameTabFrame2.Active = true
			NameTabFrame2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2.BorderSizePixel = 0
			NameTabFrame2.Position = UDim2.new(0.507525563, 0, 0.0253837314, 0)
			NameTabFrame2.Size = UDim2.new(0, 226, 0, 343)

			NameTabFrame2UICorner.CornerRadius = UDim.new(0, 4)
			NameTabFrame2UICorner.Name = game:GetService("HttpService"):GenerateGUID(false)
			NameTabFrame2UICorner.Parent = NameTabFrame2

			NameTabFrame2UIListLayout.Name = game:GetService("HttpService"):GenerateGUID(false)
			NameTabFrame2UIListLayout.Parent = NameTabFrame2
			NameTabFrame2UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			
			local Library_Toggle = {}
			function Library_Toggle:Button(text,parent,callback)
				local NameTabFrame1Button = Instance.new("TextButton")

				NameTabFrame1Button.Name = game:GetService("HttpService"):GenerateGUID(false)
				NameTabFrame1Button.Parent = parent
				NameTabFrame1Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				NameTabFrame1Button.BorderSizePixel = 0
				NameTabFrame1Button.Size = UDim2.new(0, 226, 0, 19)
				NameTabFrame1Button.AutoButtonColor = false
				NameTabFrame1Button.Font = Enum.Font.Gotham
				NameTabFrame1Button.Text = text
				NameTabFrame1Button.TextColor3 = Color3.fromRGB(127, 127, 127)
				NameTabFrame1Button.TextSize = 12.000
				NameTabFrame1Button.TextWrapped = true
				NameTabFrame1Button.MouseButton1Down:connect(function()
					pcall(callback)
				end)
				NameTabFrame1Button.MouseEnter:Connect(function()
					game:GetService("TweenService"):Create(NameTabFrame1Button,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				end)
				NameTabFrame1Button.MouseLeave:Connect(function()
					game:GetService("TweenService"):Create(NameTabFrame1Button,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
				end)
			end
			
			function Library_Toggle:Toggle(text,callback,off,toggled,parent)
				local NameTabFrame1ToggleButton = Instance.new("TextButton")
				local NameTabFrame1ToggleLabel = Instance.new("TextLabel")
				
				NameTabFrame1ToggleButton.Name = game:GetService("HttpService"):GenerateGUID(false)
				NameTabFrame1ToggleButton.Parent = parent
				NameTabFrame1ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				NameTabFrame1ToggleButton.BorderSizePixel = 0
				NameTabFrame1ToggleButton.Size = UDim2.new(0, 226, 0, 19)
				NameTabFrame1ToggleButton.AutoButtonColor = false
				NameTabFrame1ToggleButton.Font = Enum.Font.Gotham
				NameTabFrame1ToggleButton.Text = " "..text
				NameTabFrame1ToggleButton.TextColor3 = Color3.fromRGB(127, 127, 127)
				NameTabFrame1ToggleButton.TextSize = 12.000
				NameTabFrame1ToggleButton.TextWrapped = true
				NameTabFrame1ToggleButton.TextXAlignment = Enum.TextXAlignment.Left
				NameTabFrame1ToggleButton.MouseButton1Down:connect(function()
					if toggled == nil then
						toggled = true
						pcall(callback)
						NameTabFrame1ToggleLabel.Text = "ON"
						NameTabFrame1ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
						NameTabFrame1ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					else
						pcall(off)
						toggled = nil
						NameTabFrame1ToggleLabel.Text = "OFF"
						NameTabFrame1ToggleButton.TextColor3 = Color3.fromRGB(127, 127, 127)
						NameTabFrame1ToggleLabel.TextColor3 = Color3.fromRGB(127, 127, 127)
					end
				end)
				NameTabFrame1ToggleButton.MouseEnter:Connect(function()
					if toggled == nil then
						game:GetService("TweenService"):Create(NameTabFrame1ToggleButton,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
						game:GetService("TweenService"):Create(NameTabFrame1ToggleLabel,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
					else
						NameTabFrame1ToggleLabel.Text = "ON"
						NameTabFrame1ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
						NameTabFrame1ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					end
				end)
				NameTabFrame1ToggleButton.MouseLeave:Connect(function()
					if toggled == nil then
						game:GetService("TweenService"):Create(NameTabFrame1ToggleButton,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
						game:GetService("TweenService"):Create(NameTabFrame1ToggleLabel,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
					else
						NameTabFrame1ToggleLabel.Text = "ON"
						NameTabFrame1ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
						NameTabFrame1ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					end
				end)

				NameTabFrame1ToggleLabel.Name = game:GetService("HttpService"):GenerateGUID(false)
				NameTabFrame1ToggleLabel.Parent = NameTabFrame1ToggleButton
				NameTabFrame1ToggleLabel.Active = true
				NameTabFrame1ToggleLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				NameTabFrame1ToggleLabel.BorderSizePixel = 0
				NameTabFrame1ToggleLabel.Position = UDim2.new(0.818584085, 0, 0, 0)
				NameTabFrame1ToggleLabel.Size = UDim2.new(0, 34, 0, 19)
				NameTabFrame1ToggleLabel.Font = Enum.Font.SourceSans
				NameTabFrame1ToggleLabel.Text = "OFF"
				NameTabFrame1ToggleLabel.TextColor3 = Color3.fromRGB(127, 127, 127)
				NameTabFrame1ToggleLabel.TextSize = 14.000
				NameTabFrame1ToggleLabel.TextWrapped = true
				NameTabFrame1ToggleLabel.TextXAlignment = Enum.TextXAlignment.Right
			end
			function Library_Toggle:Slider(text,max,callback,toggled,parent)
				local NameTabFrame1SliderFrame = Instance.new("Frame")
				local NameTabFrame1SliderLabel = Instance.new("TextLabel")
				local NameTabFrame1SliderValue = Instance.new("TextBox")
				local NameTabFrame1SliderOutBar = Instance.new("TextButton")
				local NameTabFrame1SliderBar = Instance.new("Frame")
				local NameTabFrame1SliderUIListLayout = Instance.new("UIListLayout")

				NameTabFrame1SliderFrame.Name = game:GetService("HttpService"):GenerateGUID(false)
				NameTabFrame1SliderFrame.Parent = parent
				NameTabFrame1SliderFrame.Active = true
				NameTabFrame1SliderFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				NameTabFrame1SliderFrame.BorderColor3 = Color3.fromRGB(127, 127, 127)
				NameTabFrame1SliderFrame.BorderSizePixel = 0
				NameTabFrame1SliderFrame.Position = UDim2.new(0, 0, 0.110787176, 0)
				NameTabFrame1SliderFrame.Size = UDim2.new(0, 226, 0, 38)

				NameTabFrame1SliderLabel.Name = game:GetService("HttpService"):GenerateGUID(false)
				NameTabFrame1SliderLabel.Parent = NameTabFrame1SliderFrame
				NameTabFrame1SliderLabel.Active = true
				NameTabFrame1SliderLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				NameTabFrame1SliderLabel.BorderSizePixel = 0
				NameTabFrame1SliderLabel.Position = UDim2.new(0.0309734512, 0, 0, 0)
				NameTabFrame1SliderLabel.Size = UDim2.new(0, 153, 0, 19)
				NameTabFrame1SliderLabel.Font = Enum.Font.SourceSans
				NameTabFrame1SliderLabel.Text = text
				NameTabFrame1SliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				NameTabFrame1SliderLabel.TextSize = 14.000
				NameTabFrame1SliderLabel.TextWrapped = true
				NameTabFrame1SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

				NameTabFrame1SliderValue.Name = game:GetService("HttpService"):GenerateGUID(false)
				NameTabFrame1SliderValue.Parent = NameTabFrame1SliderFrame
				NameTabFrame1SliderValue.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				NameTabFrame1SliderValue.BorderSizePixel = 0
				NameTabFrame1SliderValue.Position = UDim2.new(0.707964599, 0, 0, 0)
				NameTabFrame1SliderValue.Size = UDim2.new(0, 59, 0, 19)
				NameTabFrame1SliderValue.ClearTextOnFocus = false
				NameTabFrame1SliderValue.Font = Enum.Font.SourceSans
				NameTabFrame1SliderValue.Text = "0"
				NameTabFrame1SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				NameTabFrame1SliderValue.TextSize = 14.000
				NameTabFrame1SliderValue.TextWrapped = true
				NameTabFrame1SliderValue.TextXAlignment = Enum.TextXAlignment.Right

				NameTabFrame1SliderOutBar.Name = game:GetService("HttpService"):GenerateGUID(false)
				NameTabFrame1SliderOutBar.Parent = NameTabFrame1SliderFrame
				NameTabFrame1SliderOutBar.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
				NameTabFrame1SliderOutBar.BorderColor3 = Color3.fromRGB(127, 127, 127)
				NameTabFrame1SliderOutBar.Position = UDim2.new(0.0309999995, 0, 0.5, 0)
				NameTabFrame1SliderOutBar.Size = UDim2.new(0, 212, 0, 11)
				NameTabFrame1SliderOutBar.ZIndex = 2
				NameTabFrame1SliderOutBar.AutoButtonColor = false
				NameTabFrame1SliderOutBar.Font = Enum.Font.SourceSans
				NameTabFrame1SliderOutBar.Text = ""
				NameTabFrame1SliderOutBar.TextColor3 = Color3.fromRGB(0, 0, 0)
				NameTabFrame1SliderOutBar.TextSize = 14.000

				NameTabFrame1SliderBar.Name = game:GetService("HttpService"):GenerateGUID(false)
				NameTabFrame1SliderBar.Parent = NameTabFrame1SliderOutBar
				NameTabFrame1SliderBar.Active = true
				NameTabFrame1SliderBar.BackgroundColor3 = Color3.fromRGB(5, 197, 255)
				NameTabFrame1SliderBar.BorderSizePixel = 0
				NameTabFrame1SliderBar.Position = UDim2.new(0, 0, 0.0909999982, 0)
				NameTabFrame1SliderBar.Size = UDim2.new(0, 0, 0, 9)
				NameTabFrame1SliderBar.ZIndex = 2
				
				local NameSliderMaxValue = max
				local NameSliderButton = NameTabFrame1SliderOutBar
				local NameSliderBar = NameTabFrame1SliderBar
				local NameSliderValue = NameTabFrame1SliderValue
				local NameSlider_IsMoving = false

				NameSliderButton.MouseButton1Down:Connect(function()
					NameSlider_IsMoving = true
					NameSliderBar.Size = UDim2.new(math.clamp((game.Players.LocalPlayer:GetMouse().X - NameSliderButton.AbsolutePosition.X)/NameSliderButton.AbsoluteSize.X,0,1),0,1,0)
					NameSliderValue.Text = math.floor(NameSliderBar.Size.X.Scale * NameSliderMaxValue)
					if toggled == nil then
						toggled = true
						pcall(callback)							
					end
				end)

				game:GetService("UserInputService").InputEnded:Connect(function(input, gp)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						NameSlider_IsMoving = false
					end
				end)

				game.Players.LocalPlayer:GetMouse().Move:Connect(function()
					if NameSlider_IsMoving then
						NameSliderBar.Size = UDim2.new(math.clamp((game.Players.LocalPlayer:GetMouse().X - NameSliderButton.AbsolutePosition.X)/NameSliderButton.AbsoluteSize.X,0,1),0,1,0)
						NameSliderValue.Text = math.floor(NameSliderBar.Size.X.Scale * NameSliderMaxValue)
						if toggled == nil then
							toggled = true
							pcall(callback)							
						end
					end
				end)

				NameSliderValue.FocusLost:Connect(function()
					if typeof(tonumber(NameSliderValue.Text)) == "number" then
						local num = math.clamp(tonumber(NameSliderValue.Text), 0, NameSliderMaxValue)
						NameSliderBar.Size = UDim2.new(num/NameSliderMaxValue, 0, 1, 0)
						NameSliderValue.Text = tostring(num)
						if toggled == nil then
							toggled = true
							pcall(callback)							
						end
					else
						delay(0.5,function()
							NameSliderValue.Text = math.floor(NameSliderBar.Size.X.Scale * NameSliderMaxValue)
						end)
					end
				end)
				
				NameTabFrame1SliderUIListLayout.Name = game:GetService("HttpService"):GenerateGUID(false)
				NameTabFrame1SliderUIListLayout.Parent = NameTabFrame1SliderOutBar
				NameTabFrame1SliderUIListLayout.FillDirection = Enum.FillDirection.Horizontal
				NameTabFrame1SliderUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				NameTabFrame1SliderUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
			end
			function Library_Toggle:DropDownButton(text,callback,off,parent,toggled)
				local NameTabFrame1DropDownButton = Instance.new("TextButton")

				NameTabFrame1DropDownButton.Name = game:GetService("HttpService"):GenerateGUID(false)
				NameTabFrame1DropDownButton.Parent = parent
				NameTabFrame1DropDownButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				NameTabFrame1DropDownButton.BorderSizePixel = 0
				NameTabFrame1DropDownButton.Size = UDim2.new(0, 226, 0, 19)
				NameTabFrame1DropDownButton.AutoButtonColor = false
				NameTabFrame1DropDownButton.Font = Enum.Font.Gotham
				NameTabFrame1DropDownButton.Text = text
				NameTabFrame1DropDownButton.TextColor3 = Color3.fromRGB(127, 127, 127)
				NameTabFrame1DropDownButton.TextSize = 12.000
				NameTabFrame1DropDownButton.TextWrapped = true
				NameTabFrame1DropDownButton.MouseButton1Down:connect(function()
					if toggled == nil then
						toggled = true
						pcall(callback)
						for i,v in pairs(NameTabFrame1DropDownButton.Parent:GetChildren()) do
							if v.ClassName == "TextButton" then
								v.TextColor3 = Color3.fromRGB(127, 127, 127)
								NameTabFrame1DropDownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
							end
						end
					else
						pcall(off)
						toggled = nil
						NameTabFrame1DropDownButton.TextColor3 = Color3.fromRGB(127, 127, 127)
					end
				end)
			end
			function Library_Toggle:DropDown(parent)
				local NameTabFrame1DropDown = Instance.new("Frame")
				local NameTabFrame1UIListLayout = Instance.new("UIListLayout")

				NameTabFrame1DropDown.Name = game:GetService("HttpService"):GenerateGUID(false)
				NameTabFrame1DropDown.Parent = parent
				NameTabFrame1DropDown.Active = true
				NameTabFrame1DropDown.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
				NameTabFrame1DropDown.BorderColor3 = Color3.fromRGB(127, 127, 127)
				NameTabFrame1DropDown.Position = UDim2.new(0, 0, 0.720116615, 0)
				NameTabFrame1DropDown.Size = UDim2.new(0, 226, 0, 58)
				NameTabFrame1DropDown.Visible = false
				NameTabFrame1DropDown.ZIndex = 2

				NameTabFrame1UIListLayout.Name = game:GetService("HttpService"):GenerateGUID(false)
				NameTabFrame1UIListLayout.Parent = NameTabFrame1DropDown
				NameTabFrame1UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				NameTabFrame1UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			end
			
			
			local NameTabButtonUI = Instance.new("Frame")
			local NameTabButton = Instance.new("TextButton")

			NameTabButtonUI.Name = game:GetService("HttpService"):GenerateGUID(false)
			NameTabButtonUI.Parent = parent
			NameTabButtonUI.Active = true
			NameTabButtonUI.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
			NameTabButtonUI.BorderSizePixel = 0
			NameTabButtonUI.Size = UDim2.new(0, 130, 0, 22)

			NameTabButton.Name = game:GetService("HttpService"):GenerateGUID(false)
			NameTabButton.Parent = NameTabButtonUI
			NameTabButton.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
			NameTabButton.BorderSizePixel = 0
			NameTabButton.Size = UDim2.new(0, 130, 0, 22)
			NameTabButton.AutoButtonColor = false
			NameTabButton.Font = Enum.Font.Gotham
			NameTabButton.Text = " "..text
			NameTabButton.TextColor3 = Color3.fromRGB(127, 127, 127)
			NameTabButton.TextSize = 12.000
			NameTabButton.TextWrapped = true
			NameTabButton.TextXAlignment = Enum.TextXAlignment.Left
		end
	end
end
