getgenv().UnnamedCheat_GameName = "GameName"
getgenv().UnnamedCheat_GameID = "GameID"
getgenv().UnnamedCheat_CheatName = "UnnamedCheat - "..getgenv().UnnamedCheat_GameName

if isfolder and makefolder and not isfolder("Unnamed Cheat/Configs/"..getgenv().UnnamedCheat_GameID) then
	makefolder("Unnamed Cheat/Configs/"..getgenv().UnnamedCheat_GameID)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Unnamed Cheat";
		Text = "F2 Hide/Show";
		Button1 = "Ok";
		Duration = 60;
	})
end

for i,v in pairs(game:GetService("CoreGui"):GetDescendants()) do
	if v.Name == getgenv().UnnamedCheat_CheatName then
		v:Destroy()
	end
end

local UnnamedCheat_Lib = {}

local UnnamedCheat_Gui = Instance.new("ScreenGui")

syn.protect_gui(UnnamedCheat_Gui)
UnnamedCheat_Gui.Name = getgenv().UnnamedCheat_CheatName
UnnamedCheat_Gui.DisplayOrder = math.random(100,1000)
UnnamedCheat_Gui.Enabled = true
UnnamedCheat_Gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
UnnamedCheat_Gui.Parent = game:GetService("CoreGui")
game:GetService("UserInputService").InputBegan:connect(function(input, gameProcessed)
	if input.KeyCode == Enum.KeyCode.F2 or input.KeyCode == Enum.KeyCode.RightShift then
		if not gameProcessed then
			UnnamedCheat_Gui.Enabled = not UnnamedCheat_Gui.Enabled
		end
	end
end)

function UnnamedCheat_Lib:Window()
	local Screen = Instance.new("Frame")
	local ScreenUICorner = Instance.new("UICorner")
	local UnnamedCheatUI = Instance.new("Frame")
	local CheatUI = Instance.new("TextLabel")
	local UnnamedUI = Instance.new("TextLabel")
	local Version = Instance.new("TextLabel")
	local ScreenUIScale = Instance.new("UIScale")
	local MiniSettings = Instance.new("Frame")
	local MiniSettingsUIListLayout = Instance.new("UIListLayout")
	local HideMenuButton = Instance.new("TextButton")
	local DeleteMenuButton = Instance.new("TextButton")
	local InfoFrame = Instance.new("Frame")
	local InfoFrameCorner = Instance.new("UICorner")
	local InfoFrameText = Instance.new("TextBox")

	Screen.Name = "Screen"
	Screen.Active = true
	Screen.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Screen.BorderSizePixel = 0
	Screen.Position = UDim2.new(0.0327103846, 0, 0.460404664, 0)
	Screen.Size = UDim2.new(0, 630, 0, 420)
	Screen.Transparency = 0
	Screen.Draggable = true
	Screen.Visible = false
	Screen.Parent = UnnamedCheat_Gui
	
	ScreenUICorner.CornerRadius = UDim.new(0, 4)
	ScreenUICorner.Name = "Screen UI Corner"
	ScreenUICorner.Parent = Screen

	UnnamedCheatUI.Name = "Unnamed Cheat UI"
	UnnamedCheatUI.Parent = Screen
	UnnamedCheatUI.Active = true
	UnnamedCheatUI.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	UnnamedCheatUI.BackgroundTransparency = 1.000
	UnnamedCheatUI.BorderSizePixel = 0
	UnnamedCheatUI.Position = UDim2.new(0.0121670077, 0, 0.0140103688, 0)
	UnnamedCheatUI.Size = UDim2.new(0, 194, 0, 36)

	CheatUI.Name = "Cheat UI"
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

	UnnamedUI.Name = "Unnamed UI"
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

	Version.Name = "Version"
	Version.Parent = Screen
	Version.Active = true
	Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Version.BackgroundTransparency = 1.000
	Version.Position = UDim2.new(0.297732413, 0, 0.05250936, 0)
	Version.Size = UDim2.new(0, 105, 0, 16)
	Version.Font = Enum.Font.SourceSans
	Version.Text = "12.0" --cbx
	Version.TextColor3 = Color3.fromRGB(255, 255, 255)
	Version.TextScaled = true
	Version.TextSize = 14.000
	Version.TextStrokeTransparency = 0.000
	Version.TextWrapped = true
	Version.TextXAlignment = Enum.TextXAlignment.Left

	ScreenUIScale.Name = "Screen UI Scale"
	ScreenUIScale.Parent = Screen

	MiniSettings.Name = "Mini Settings"
	MiniSettings.Parent = Screen
	MiniSettings.Active = true
	MiniSettings.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
	MiniSettings.BackgroundTransparency = 1.000
	MiniSettings.BorderSizePixel = 0
	MiniSettings.Position = UDim2.new(0.793650746, 0, 0, 0)
	MiniSettings.Size = UDim2.new(0, 130, 0, 22)

	MiniSettingsUIListLayout.Name = "Mini Settings UI List Layout"
	MiniSettingsUIListLayout.Parent = MiniSettings
	MiniSettingsUIListLayout.FillDirection = Enum.FillDirection.Horizontal
	MiniSettingsUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	MiniSettingsUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	MiniSettingsUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

	HideMenuButton.Name = "Hide Menu Button"
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

	DeleteMenuButton.Name = "Delete Menu Button"
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

	InfoFrame.Name = "Info Frame"
	InfoFrame.Parent = Screen
	InfoFrame.Active = true
	InfoFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	InfoFrame.BorderSizePixel = 0
	InfoFrame.Position = UDim2.new(1.01002097, 0, -0.00188538432, 0)
	InfoFrame.Size = UDim2.new(0, 334, 0, 245)
	InfoFrame.Visible = false

	InfoFrameCorner.CornerRadius = UDim.new(0, 4)
	InfoFrameCorner.Name = "Info Frame Corner"
	InfoFrameCorner.Parent = InfoFrame

	InfoFrameText.Name = "Info Frame Text"
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
	
	local TabList = Instance.new("Frame")
	local TabListUICorner = Instance.new("UICorner")
	local TabListUIListLayout = Instance.new("UIListLayout")

	TabList.Name = "Tab List"
	TabList.Parent = Screen
	TabList.Active = true
	TabList.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
	TabList.BorderSizePixel = 0
	TabList.Position = UDim2.new(0.0190476198, 0, 0.119047619, 0)
	TabList.Size = UDim2.new(0, 130, 0, 363)

	TabListUICorner.CornerRadius = UDim.new(0, 4)
	TabListUICorner.Name = "Tab List UI Corner"
	TabListUICorner.Parent = TabList

	TabListUIListLayout.Name = "Tab List UI List Layout"
	TabListUIListLayout.Parent = TabList
	TabListUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	
	local Tabs = {}
	
	function Tabs:Tab(name)
		local NameTabButtonUI = Instance.new("Frame")
		local NameTabButton = Instance.new("TextButton")

		NameTabButtonUI.Name = "Name Tab Button UI"
		NameTabButtonUI.Parent = TabList
		NameTabButtonUI.Active = true
		NameTabButtonUI.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
		NameTabButtonUI.BorderSizePixel = 0
		NameTabButtonUI.Size = UDim2.new(0, 130, 0, 22)

		NameTabButton.Name = "Name Tab Button"
		NameTabButton.Parent = NameTabButtonUI
		NameTabButton.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
		NameTabButton.BorderSizePixel = 0
		NameTabButton.Size = UDim2.new(0, 130, 0, 22)
		NameTabButton.AutoButtonColor = false
		NameTabButton.Font = Enum.Font.Gotham
		NameTabButton.Text = " "..name
		NameTabButton.TextColor3 = Color3.fromRGB(127, 127, 127)
		NameTabButton.TextSize = 12.000
		NameTabButton.TextWrapped = true
		NameTabButton.TextXAlignment = Enum.TextXAlignment.Left
		NameTabButton.MouseButton1Down:connect(function()
			for i,v in pairs(NameTabButton.Parent.Parent:GetDescendants()) do
				if v.ClassName == "TextButton" then
					v.TextColor3 = Color3.fromRGB(127, 127, 127)
				end
			end
			NameTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		end)
		
		local NameTab = Instance.new("Frame")
		local NameTabUICorner = Instance.new("UICorner")

		local NameTabFrame1 = Instance.new("Frame")
		local NameTabFrame1UICorner = Instance.new("UICorner")
		local NameTabFrame1UIListLayout = Instance.new("UIListLayout")

		NameTab.Name = "Name Tab"
		NameTab.Parent = Screen
		NameTab.Active = true
		NameTab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		NameTab.BorderSizePixel = 0
		NameTab.Position = UDim2.new(0.236507937, 0, 0.119047619, 0)
		NameTab.Size = UDim2.new(0, 474, 0, 363)

		NameTabUICorner.CornerRadius = UDim.new(0, 4)
		NameTabUICorner.Name = "Name Tab UI Corner"
		NameTabUICorner.Parent = NameTab

		NameTabFrame1.Name = "Name Tab Frame 1"
		NameTabFrame1.Parent = NameTab
		NameTabFrame1.Active = true
		NameTabFrame1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		NameTabFrame1.BorderSizePixel = 0
		NameTabFrame1.Position = UDim2.new(0.0149889607, 0, 0.0253837314, 0)
		NameTabFrame1.Size = UDim2.new(0, 226, 0, 343)

		NameTabFrame1UICorner.CornerRadius = UDim.new(0, 4)
		NameTabFrame1UICorner.Name = "Name Tab Frame 1 UI Corner"
		NameTabFrame1UICorner.Parent = NameTabFrame1

		NameTabFrame1UIListLayout.Name = "Name Tab Frame 1 UI List Layout"
		NameTabFrame1UIListLayout.Parent = NameTabFrame1
		NameTabFrame1UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		
		local Buttons_Tab_1 = {}

		function Buttons_Tab_1:Button(text,callback)
			local NameTabFrame1Button = Instance.new("TextButton")

			NameTabFrame1Button.Name = "Name Tab Frame 1 Button"
			NameTabFrame1Button.Parent = NameTabFrame1
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
		
		local Label_Tab_1 = {}
		
		function Label_Tab_1:Label(text)
			local NameTabFrame1Label = Instance.new("TextLabel")

			NameTabFrame1Label.Name = "Name Tab Frame 1 Label"
			NameTabFrame1Label.Parent = NameTabFrame1
			NameTabFrame1Label.Active = true
			NameTabFrame1Label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame1Label.BorderSizePixel = 0
			NameTabFrame1Label.Size = UDim2.new(0, 226, 0, 19)
			NameTabFrame1Label.Font = Enum.Font.SourceSans
			NameTabFrame1Label.Text = "  "..text
			NameTabFrame1Label.TextColor3 = Color3.fromRGB(255, 255, 255)
			NameTabFrame1Label.TextSize = 14.000
			NameTabFrame1Label.TextWrapped = true
			NameTabFrame1Label.TextXAlignment = Enum.TextXAlignment.Left
		end
		
		local Toggle_Tab_1 = {}
		
		function Toggle_Tab_1:Toggle(text,callback,Toggled)
			local Toggled = Toggled or false
			local NameTabFrame1ToggleButton = Instance.new("TextButton")
			local NameTabFrame1ToggleLabel = Instance.new("TextLabel")

			NameTabFrame1ToggleButton.Name = "Name Tab Frame 1 Toggle Button"
			NameTabFrame1ToggleButton.Parent = NameTabFrame1
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
				if Toggled == false then
					Toggled = true
					NameTabFrame1ToggleLabel.Text = "ON"
					NameTabFrame1ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame1ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					pcall(callback, Toggled)
				else
					NameTabFrame1ToggleLabel.Text = "OFF"
					NameTabFrame1ToggleLabel.TextColor3 = Color3.fromRGB(127, 127, 127)
					NameTabFrame1ToggleButton.TextColor3 = Color3.fromRGB(127, 127, 127)
					pcall(callback, Toggled)
				end
			end)
			NameTabFrame1ToggleButton.MouseEnter:Connect(function()
				if Toggled == false then
					game:GetService("TweenService"):Create(NameTabFrame1ToggleButton,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
					game:GetService("TweenService"):Create(NameTabFrame1ToggleLabel,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				else
					NameTabFrame1ToggleLabel.Text = "ON"
					NameTabFrame1ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame1ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				end
			end)
			NameTabFrame1ToggleButton.MouseLeave:Connect(function()
				if Toggled == false then
					game:GetService("TweenService"):Create(NameTabFrame1ToggleButton,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
					game:GetService("TweenService"):Create(NameTabFrame1ToggleLabel,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
				else
					NameTabFrame1ToggleLabel.Text = "ON"
					NameTabFrame1ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame1ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				end
			end)

			NameTabFrame1ToggleLabel.Name = "Name Tab Frame 1 Toggle Label"
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
		
		local Default_Slider_Tab_1 = {}
		
		function Default_Slider_Tab_1:Slider(text,max,callback)
			local NameTabFrame1SliderFrame = Instance.new("Frame")
			local NameTabFrame1SliderLabel = Instance.new("TextLabel")
			local NameTabFrame1SliderValue = Instance.new("TextBox")
			local NameTabFrame1SliderOutBar = Instance.new("TextButton")
			local NameTabFrame1SliderBar = Instance.new("Frame")
			local NameTabFrame1SliderUIListLayout = Instance.new("UIListLayout")

			NameTabFrame1SliderFrame.Name = "Name Tab Frame 1 Slider Frame"
			NameTabFrame1SliderFrame.Parent = NameTabFrame1
			NameTabFrame1SliderFrame.Active = true
			NameTabFrame1SliderFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame1SliderFrame.BorderColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame1SliderFrame.BorderSizePixel = 0
			NameTabFrame1SliderFrame.Position = UDim2.new(0, 0, 0.110787176, 0)
			NameTabFrame1SliderFrame.Size = UDim2.new(0, 226, 0, 38)

			NameTabFrame1SliderLabel.Name = "Name Tab Frame 1 Slider Label"
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

			NameTabFrame1SliderValue.Name = "Name Tab Frame 1 Slider Value"
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

			NameTabFrame1SliderOutBar.Name = "Name Tab Frame 1 Slider OutBar"
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

			NameTabFrame1SliderBar.Name = "Name Tab Frame 1 Slider Bar"
			NameTabFrame1SliderBar.Parent = NameTabFrame1SliderOutBar
			NameTabFrame1SliderBar.Active = true
			NameTabFrame1SliderBar.BackgroundColor3 = Color3.fromRGB(5, 197, 255)
			NameTabFrame1SliderBar.BorderSizePixel = 0
			NameTabFrame1SliderBar.Position = UDim2.new(0, 0, 0.0909999982, 0)
			NameTabFrame1SliderBar.Size = UDim2.new(0, 0, 0, 9)
			NameTabFrame1SliderBar.ZIndex = 2

			NameTabFrame1SliderUIListLayout.Name = "Name Tab Frame 1  Slider UI List Layout"
			NameTabFrame1SliderUIListLayout.Parent = NameTabFrame1SliderOutBar
			NameTabFrame1SliderUIListLayout.FillDirection = Enum.FillDirection.Horizontal
			NameTabFrame1SliderUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			NameTabFrame1SliderUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

			local NameSliderMaxValue = max
			local NameSlider_IsMoving = false

			NameTabFrame1SliderOutBar.MouseButton1Down:Connect(function()
				NameSlider_IsMoving = true
				NameTabFrame1SliderBar.Size = UDim2.new(math.clamp((game.Players.LocalPlayer:GetMouse().X - NameTabFrame1SliderOutBar.AbsolutePosition.X)/NameTabFrame1SliderOutBar.AbsoluteSize.X,0,1),0,1,0)
				NameTabFrame1SliderValue.Text = math.floor(NameTabFrame1SliderBar.Size.X.Scale * NameSliderMaxValue)
				pcall(callback)
			end)

			game:GetService("UserInputService").InputEnded:Connect(function(input, gp)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					NameSlider_IsMoving = false
				end
			end)

			game.Players.LocalPlayer:GetMouse().Move:Connect(function()
				if NameSlider_IsMoving then
					NameTabFrame1SliderBar.Size = UDim2.new(math.clamp((game.Players.LocalPlayer:GetMouse().X - NameTabFrame1SliderOutBar.AbsolutePosition.X)/NameTabFrame1SliderOutBar.AbsoluteSize.X,0,1),0,1,0)
					NameTabFrame1SliderValue.Text = math.floor(NameTabFrame1SliderBar.Size.X.Scale * NameSliderMaxValue)
					pcall(callback)
				end
			end)

			NameTabFrame1SliderValue.FocusLost:Connect(function()
				if typeof(tonumber(NameTabFrame1SliderValue.Text)) == "number" then
					local num = math.clamp(tonumber(NameTabFrame1SliderValue.Text), 0, NameSliderMaxValue)
					NameTabFrame1SliderBar.Size = UDim2.new(num/NameSliderMaxValue, 0, 1, 0)
					NameTabFrame1SliderValue.Text = tostring(num)
					pcall(callback)
				else
					delay(0.5,function()
						NameTabFrame1SliderValue.Text = math.floor(NameTabFrame1SliderBar.Size.X.Scale * NameSliderMaxValue)
					end)
				end
			end)
		end
		
		local Slider_Tab_1 = {}

		function Slider_Tab_1:Slider(text,max,callback)
			local NameTabFrame1SliderFrame = Instance.new("Frame")
			local NameTabFrame1SliderLabel = Instance.new("TextLabel")
			local NameTabFrame1SliderValue = Instance.new("TextBox")
			local NameTabFrame1SliderOutBar = Instance.new("TextButton")
			local NameTabFrame1SliderBar = Instance.new("Frame")
			local NameTabFrame1SliderUIListLayout = Instance.new("UIListLayout")

			NameTabFrame1SliderFrame.Name = "Name Tab Frame 1 Slider Frame"
			NameTabFrame1SliderFrame.Parent = NameTabFrame1
			NameTabFrame1SliderFrame.Active = true
			NameTabFrame1SliderFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame1SliderFrame.BorderColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame1SliderFrame.BorderSizePixel = 0
			NameTabFrame1SliderFrame.Position = UDim2.new(0, 0, 0.110787176, 0)
			NameTabFrame1SliderFrame.Size = UDim2.new(0, 226, 0, 38)

			NameTabFrame1SliderLabel.Name = "Name Tab Frame 1 Slider Label"
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

			NameTabFrame1SliderValue.Name = "Name Tab Frame 1 Slider Value"
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

			NameTabFrame1SliderOutBar.Name = "Name Tab Frame 1 Slider OutBar"
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

			NameTabFrame1SliderBar.Name = "Name Tab Frame 1 Slider Bar"
			NameTabFrame1SliderBar.Parent = NameTabFrame1SliderOutBar
			NameTabFrame1SliderBar.Active = true
			NameTabFrame1SliderBar.BackgroundColor3 = Color3.fromRGB(5, 197, 255)
			NameTabFrame1SliderBar.BorderSizePixel = 0
			NameTabFrame1SliderBar.Position = UDim2.new(0, 0, 0.0909999982, 0)
			NameTabFrame1SliderBar.Size = UDim2.new(0, 0, 0, 9)
			NameTabFrame1SliderBar.ZIndex = 2

			NameTabFrame1SliderUIListLayout.Name = "Name Tab Frame 1  Slider UI List Layout"
			NameTabFrame1SliderUIListLayout.Parent = NameTabFrame1SliderOutBar
			NameTabFrame1SliderUIListLayout.FillDirection = Enum.FillDirection.Horizontal
			NameTabFrame1SliderUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			NameTabFrame1SliderUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

			local NameSliderMaxValue = max
			local NameSlider_IsMoving = false

			NameTabFrame1SliderOutBar.MouseButton1Down:Connect(function()
				NameSlider_IsMoving = true
				NameTabFrame1SliderBar.Size = UDim2.new(math.clamp((game.Players.LocalPlayer:GetMouse().X - NameTabFrame1SliderOutBar.AbsolutePosition.X)/NameTabFrame1SliderOutBar.AbsoluteSize.X,0,1),0,1,0)
				NameTabFrame1SliderValue.Text = NameTabFrame1SliderBar.Size.X.Scale * NameSliderMaxValue
				pcall(callback)
			end)

			game:GetService("UserInputService").InputEnded:Connect(function(input, gp)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					NameSlider_IsMoving = false
				end
			end)

			game.Players.LocalPlayer:GetMouse().Move:Connect(function()
				if NameSlider_IsMoving then
					NameTabFrame1SliderBar.Size = UDim2.new(math.clamp((game.Players.LocalPlayer:GetMouse().X - NameTabFrame1SliderOutBar.AbsolutePosition.X)/NameTabFrame1SliderOutBar.AbsoluteSize.X,0,1),0,1,0)
					NameTabFrame1SliderValue.Text = NameTabFrame1SliderBar.Size.X.Scale * NameSliderMaxValue
					pcall(callback)
				end
			end)

			NameTabFrame1SliderValue.FocusLost:Connect(function()
				if typeof(tonumber(NameTabFrame1SliderValue.Text)) == "number" then
					local num = math.clamp(tonumber(NameTabFrame1SliderValue.Text), 0, NameSliderMaxValue)
					NameTabFrame1SliderBar.Size = UDim2.new(num/NameSliderMaxValue, 0, 1, 0)
					NameTabFrame1SliderValue.Text = tostring(num)
					pcall(callback)
				else
					delay(0.5,function()
						NameTabFrame1SliderValue.Text = NameTabFrame1SliderBar.Size.X.Scale * NameSliderMaxValue
					end)
				end
			end)
		end
		
		local DropDown_Tab_1 = {}
		
		function DropDown_Tab_1:DropDown(text,DropToggled)
			local NameTabFrame1DropDown = Instance.new("Frame")
			local NameTabFrame1UIListLayout = Instance.new("UIListLayout")
			local NameTabFrame1DropDownButton = Instance.new("TextButton")
			local NameTabFrame1DropDownLabel = Instance.new("TextLabel")

			NameTabFrame1DropDown.Name = "Name Tab Frame 1 Drop Down"
			NameTabFrame1DropDown.Parent = NameTabFrame1
			NameTabFrame1DropDown.Active = true
			NameTabFrame1DropDown.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
			NameTabFrame1DropDown.BorderColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame1DropDown.Position = UDim2.new(0, 0, 0.720116615, 0)
			NameTabFrame1DropDown.Size = UDim2.new(0, 226, 0, 58)
			NameTabFrame1DropDown.Visible = false
			NameTabFrame1DropDown.ZIndex = 2

			NameTabFrame1UIListLayout.Name = "Name Tab Frame 1 UI List Layout"
			NameTabFrame1UIListLayout.Parent = NameTabFrame1DropDown
			NameTabFrame1UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			NameTabFrame1UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

			NameTabFrame1DropDownButton.Name = "Name Tab Frame 1 Drop Down Button"
			NameTabFrame1DropDownButton.Parent = NameTabFrame1
			NameTabFrame1DropDownButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame1DropDownButton.BorderSizePixel = 0
			NameTabFrame1DropDownButton.Size = UDim2.new(0, 226, 0, 19)
			NameTabFrame1DropDownButton.AutoButtonColor = false
			NameTabFrame1DropDownButton.Font = Enum.Font.Gotham
			NameTabFrame1DropDownButton.Text = " "..text
			NameTabFrame1DropDownButton.TextColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame1DropDownButton.TextSize = 12.000
			NameTabFrame1DropDownButton.TextWrapped = true
			NameTabFrame1DropDownButton.TextXAlignment = Enum.TextXAlignment.Left
			NameTabFrame1DropDownButton.MouseButton1Down:connect(function()
				if DropToggled == false then
					DropToggled = true
					NameTabFrame1DropDownLabel.Text = "Close"
					NameTabFrame1DropDownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame1DropDownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame1DropDown.Visible = false
				else
					DropToggled = false
					NameTabFrame1DropDownLabel.Text = "Open"
					NameTabFrame1DropDownLabel.TextColor3 = Color3.fromRGB(127, 127, 127)
					NameTabFrame1DropDownButton.TextColor3 = Color3.fromRGB(127, 127, 127)
					NameTabFrame1DropDown.Visible = true
				end
			end)
			NameTabFrame1DropDownButton.MouseEnter:Connect(function()
				if DropToggled == false then
					game:GetService("TweenService"):Create(NameTabFrame1DropDownButton,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
					game:GetService("TweenService"):Create(NameTabFrame1DropDownLabel,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				else
					NameTabFrame1DropDownLabel.Text = "Close"
					NameTabFrame1DropDownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame1DropDownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				end
			end)
			NameTabFrame1DropDownButton.MouseLeave:Connect(function()
				if DropToggled == false then
					game:GetService("TweenService"):Create(NameTabFrame1DropDownButton,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
					game:GetService("TweenService"):Create(NameTabFrame1DropDownLabel,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
				else
					NameTabFrame1DropDownLabel.Text = "Close"
					NameTabFrame1DropDownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame1DropDownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				end
			end)

			NameTabFrame1DropDownLabel.Name = "Name Tab Frame 1 Drop Down Label"
			NameTabFrame1DropDownLabel.Parent = NameTabFrame1DropDownButton
			NameTabFrame1DropDownLabel.Active = true
			NameTabFrame1DropDownLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame1DropDownLabel.BorderSizePixel = 0
			NameTabFrame1DropDownLabel.Position = UDim2.new(0.818584085, 0, 0, 0)
			NameTabFrame1DropDownLabel.Size = UDim2.new(0, 34, 0, 19)
			NameTabFrame1DropDownLabel.Font = Enum.Font.SourceSans
			NameTabFrame1DropDownLabel.Text = "Open"
			NameTabFrame1DropDownLabel.TextColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame1DropDownLabel.TextSize = 14.000
			NameTabFrame1DropDownLabel.TextWrapped = true
			NameTabFrame1DropDownLabel.TextXAlignment = Enum.TextXAlignment.Right
			
			local DropDown_Button_Tab_1 = {}
			
			function DropDown_Button_Tab_1:DropDown_Button_Tab_1(text,callback)
				local NameTabFrame1Button = Instance.new("TextButton")

				NameTabFrame1Button.Name = "Name Tab Frame 1 Button"
				NameTabFrame1Button.Parent = NameTabFrame1DropDown
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
					for i,v in pairs(NameTabFrame1Button.Parent:GetDescendants()) do
						if v.ClassName == "TextButton" then
							v.TextColor3 = Color3.fromRGB(127, 127, 127)
						end
					end
					NameTabFrame1Button.TextColor3 = Color3.fromRGB(255, 255, 255)
				end)
			end
		end
		
		local KeyButton_Tab_1 = {}
		
		function KeyButton_Tab_1:KeyButton(text,key,callback)
			local NameTabFrame1KeyToggleButton = Instance.new("TextButton")
			local NameTabFrame1KeyToggleLabel = Instance.new("TextLabel")

			NameTabFrame1KeyToggleButton.Name = "Name Tab Frame 1 Key Toggle Button"
			NameTabFrame1KeyToggleButton.Parent = NameTabFrame1
			NameTabFrame1KeyToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame1KeyToggleButton.BorderSizePixel = 0
			NameTabFrame1KeyToggleButton.Size = UDim2.new(0, 226, 0, 19)
			NameTabFrame1KeyToggleButton.AutoButtonColor = false
			NameTabFrame1KeyToggleButton.Font = Enum.Font.Gotham
			NameTabFrame1KeyToggleButton.Text = " "..text
			NameTabFrame1KeyToggleButton.TextColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame1KeyToggleButton.TextSize = 12.000
			NameTabFrame1KeyToggleButton.TextWrapped = true
			NameTabFrame1KeyToggleButton.TextXAlignment = Enum.TextXAlignment.Left
			NameTabFrame1KeyToggleButton.MouseButton1Click:connect(function()
				NameTabFrame1KeyToggleLabel.Text = "..."
				if game:GetService("UserInputService").InputBegan:wait().KeyCode.Name ~= "Unknown" then
					NameTabFrame1KeyToggleLabel.Text = game:GetService("UserInputService").InputBegan:wait().KeyCode.Name
				
				else
				
				end
				game:GetService("UserInputService").InputBegan:Connect(function(input)
					if input.KeyCode == Enum.KeyCode[NameTabFrame1KeyToggleLabel.Text] then
						pcall(callback)
					end
				end)
			end)
			NameTabFrame1KeyToggleButton.MouseEnter:Connect(function()
				game:GetService("TweenService"):Create(NameTabFrame1KeyToggleButton,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				game:GetService("TweenService"):Create(NameTabFrame1KeyToggleLabel,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
			end)
			NameTabFrame1KeyToggleButton.MouseLeave:Connect(function()
				game:GetService("TweenService"):Create(NameTabFrame1KeyToggleButton,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
				game:GetService("TweenService"):Create(NameTabFrame1KeyToggleLabel,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
			end)

			NameTabFrame1KeyToggleLabel.Name = "Name Tab Frame 1 Key Toggle Label"
			NameTabFrame1KeyToggleLabel.Parent = NameTabFrame1KeyToggleButton
			NameTabFrame1KeyToggleLabel.Active = true
			NameTabFrame1KeyToggleLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame1KeyToggleLabel.BorderSizePixel = 0
			NameTabFrame1KeyToggleLabel.Position = UDim2.new(0.818584085, 0, 0, 0)
			NameTabFrame1KeyToggleLabel.Size = UDim2.new(0, 34, 0, 19)
			NameTabFrame1KeyToggleLabel.Font = Enum.Font.SourceSans
			NameTabFrame1KeyToggleLabel.Text = "Key"
			NameTabFrame1KeyToggleLabel.TextColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame1KeyToggleLabel.TextSize = 14.000
			NameTabFrame1KeyToggleLabel.TextWrapped = true
			NameTabFrame1KeyToggleLabel.TextXAlignment = Enum.TextXAlignment.Right
		end
		
		local ValueBox_Tab_1 = {}

		function ValueBox_Tab_1:ValueBox(text,message)
			local NameTabFrame1Value = Instance.new("TextLabel")
			local NameTabFrame1ValueBox = Instance.new("TextBox")

			NameTabFrame1Value.Name = "Name Tab Frame 1 Value"
			NameTabFrame1Value.Parent = NameTabFrame1
			NameTabFrame1Value.Active = true
			NameTabFrame1Value.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame1Value.BorderSizePixel = 0
			NameTabFrame1Value.Size = UDim2.new(0, 226, 0, 19)
			NameTabFrame1Value.Font = Enum.Font.SourceSans
			NameTabFrame1Value.Text = "  "..text
			NameTabFrame1Value.TextColor3 = Color3.fromRGB(255, 255, 255)
			NameTabFrame1Value.TextSize = 14.000
			NameTabFrame1Value.TextWrapped = true
			NameTabFrame1Value.TextXAlignment = Enum.TextXAlignment.Left

			NameTabFrame1ValueBox.Name = "Name Tab Frame 1 Value Box"
			NameTabFrame1ValueBox.Parent = NameTabFrame1Value
			NameTabFrame1ValueBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame1ValueBox.BorderSizePixel = 0
			NameTabFrame1ValueBox.Position = UDim2.new(0.707964599, 0, 0, 0)
			NameTabFrame1ValueBox.Size = UDim2.new(0, 59, 0, 19)
			NameTabFrame1ValueBox.ClearTextOnFocus = false
			NameTabFrame1ValueBox.Font = Enum.Font.SourceSans
			NameTabFrame1ValueBox.Text = message
			NameTabFrame1ValueBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			NameTabFrame1ValueBox.TextSize = 14.000
			NameTabFrame1ValueBox.TextWrapped = true
			NameTabFrame1ValueBox.TextXAlignment = Enum.TextXAlignment.Right
		end
		
		local NameTabFrame2 = Instance.new("Frame")
		local NameTabFrame2UICorner = Instance.new("UICorner")
		local NameTabFrame2UIListLayout = Instance.new("UIListLayout")
		
		NameTabFrame2.Name = "Name Tab Frame 2"
		NameTabFrame2.Parent = NameTab
		NameTabFrame2.Active = true
		NameTabFrame2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		NameTabFrame2.BorderSizePixel = 0
		NameTabFrame2.Position = UDim2.new(0.507525563, 0, 0.0253837314, 0)
		NameTabFrame2.Size = UDim2.new(0, 226, 0, 343)

		NameTabFrame2UICorner.CornerRadius = UDim.new(0, 4)
		NameTabFrame2UICorner.Name = "Name Tab Frame 2 UI Corner"
		NameTabFrame2UICorner.Parent = NameTabFrame2

		NameTabFrame2UIListLayout.Name = "Name Tab Frame 2 UI List Layout"
		NameTabFrame2UIListLayout.Parent = NameTabFrame2
		NameTabFrame2UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		
		local ValueBox_Tab_2 = {}
		
		function ValueBox_Tab_2:ValueBox(text,message)
			local NameTabFrame2Value = Instance.new("TextLabel")
			local NameTabFrame2ValueBox = Instance.new("TextBox")

			NameTabFrame2Value.Name = "Name Tab Frame 1 Value"
			NameTabFrame2Value.Parent = NameTabFrame2
			NameTabFrame2Value.Active = true
			NameTabFrame2Value.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2Value.BorderSizePixel = 0
			NameTabFrame2Value.Size = UDim2.new(0, 226, 0, 19)
			NameTabFrame2Value.Font = Enum.Font.SourceSans
			NameTabFrame2Value.Text = "  "..text
			NameTabFrame2Value.TextColor3 = Color3.fromRGB(255, 255, 255)
			NameTabFrame2Value.TextSize = 14.000
			NameTabFrame2Value.TextWrapped = true
			NameTabFrame2Value.TextXAlignment = Enum.TextXAlignment.Left

			NameTabFrame2ValueBox.Name = "Name Tab Frame 1 Value Box"
			NameTabFrame2ValueBox.Parent = NameTabFrame2Value
			NameTabFrame2ValueBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2ValueBox.BorderSizePixel = 0
			NameTabFrame2ValueBox.Position = UDim2.new(0.707964599, 0, 0, 0)
			NameTabFrame2ValueBox.Size = UDim2.new(0, 59, 0, 19)
			NameTabFrame2ValueBox.ClearTextOnFocus = false
			NameTabFrame2ValueBox.Font = Enum.Font.SourceSans
			NameTabFrame2ValueBox.Text = message
			NameTabFrame2ValueBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			NameTabFrame2ValueBox.TextSize = 14.000
			NameTabFrame2ValueBox.TextWrapped = true
			NameTabFrame2ValueBox.TextXAlignment = Enum.TextXAlignment.Right
		end
		
		local Label_Tab_2 = {}

		function Label_Tab_2:Label(text)
			local NameTabFrame2Label = Instance.new("TextLabel")

			NameTabFrame2Label.Name = "Name Tab Frame 2 Label"
			NameTabFrame2Label.Parent = NameTabFrame1
			NameTabFrame2Label.Active = true
			NameTabFrame2Label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2Label.BorderSizePixel = 0
			NameTabFrame2Label.Size = UDim2.new(0, 226, 0, 19)
			NameTabFrame2Label.Font = Enum.Font.SourceSans
			NameTabFrame2Label.Text = "  "..text
			NameTabFrame2Label.TextColor3 = Color3.fromRGB(255, 255, 255)
			NameTabFrame2Label.TextSize = 14.000
			NameTabFrame2Label.TextWrapped = true
			NameTabFrame2Label.TextXAlignment = Enum.TextXAlignment.Left
		end
		
		local Buttons_Tab_2 = {}

		function Buttons_Tab_2:Button(text,callback)
			local NameTabFrame2Button = Instance.new("TextButton")

			NameTabFrame2Button.Name = "Name Tab Frame 2 Button"
			NameTabFrame2Button.Parent = NameTabFrame2
			NameTabFrame2Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2Button.BorderSizePixel = 0
			NameTabFrame2Button.Size = UDim2.new(0, 226, 0, 19)
			NameTabFrame2Button.AutoButtonColor = false
			NameTabFrame2Button.Font = Enum.Font.Gotham
			NameTabFrame2Button.Text = text
			NameTabFrame2Button.TextColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame2Button.TextSize = 12.000
			NameTabFrame2Button.TextWrapped = true
			NameTabFrame2Button.MouseButton1Down:connect(function()
				pcall(callback)
			end)
			NameTabFrame2Button.MouseEnter:Connect(function()
				game:GetService("TweenService"):Create(NameTabFrame2Button,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
			end)
			NameTabFrame2Button.MouseLeave:Connect(function()
				game:GetService("TweenService"):Create(NameTabFrame2Button,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
			end)
		end
		
		local Toggle_Tab_2 = {}

		function Toggle_Tab_2:Toggle(text,callback,Toggled)
			local Toggled = Toggled or false
			local NameTabFrame2ToggleButton = Instance.new("TextButton")
			local NameTabFrame2ToggleLabel = Instance.new("TextLabel")

			NameTabFrame2ToggleButton.Name = "Name Tab Frame 2 Toggle Button"
			NameTabFrame2ToggleButton.Parent = NameTabFrame2
			NameTabFrame2ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2ToggleButton.BorderSizePixel = 0
			NameTabFrame2ToggleButton.Size = UDim2.new(0, 226, 0, 19)
			NameTabFrame2ToggleButton.AutoButtonColor = false
			NameTabFrame2ToggleButton.Font = Enum.Font.Gotham
			NameTabFrame2ToggleButton.Text = " "..text
			NameTabFrame2ToggleButton.TextColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame2ToggleButton.TextSize = 12.000
			NameTabFrame2ToggleButton.TextWrapped = true
			NameTabFrame2ToggleButton.TextXAlignment = Enum.TextXAlignment.Left
			NameTabFrame2ToggleButton.MouseButton1Down:connect(function()
				if Toggled == false then
					Toggled = true
					NameTabFrame2ToggleLabel.Text = "ON"
					NameTabFrame2ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame2ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					pcall(callback, Toggled)
				else
					Toggled = false
					NameTabFrame2ToggleLabel.Text = "OFF"
					NameTabFrame2ToggleLabel.TextColor3 = Color3.fromRGB(127, 127, 127)
					NameTabFrame2ToggleButton.TextColor3 = Color3.fromRGB(127, 127, 127)
					pcall(callback, Toggled)
				end
			end)
			NameTabFrame2ToggleButton.MouseEnter:Connect(function()
				if Toggled == false then
					game:GetService("TweenService"):Create(NameTabFrame2ToggleButton,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
					game:GetService("TweenService"):Create(NameTabFrame2ToggleLabel,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				else
					NameTabFrame2ToggleLabel.Text = "ON"
					NameTabFrame2ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame2ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				end
			end)
			NameTabFrame2ToggleButton.MouseLeave:Connect(function()
				if Toggled == false then
					game:GetService("TweenService"):Create(NameTabFrame2ToggleButton,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
					game:GetService("TweenService"):Create(NameTabFrame2ToggleLabel,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
				else
					NameTabFrame2ToggleLabel.Text = "ON"
					NameTabFrame2ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame2ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				end
			end)

			NameTabFrame2ToggleLabel.Name = "Name Tab Frame 2 Toggle Label"
			NameTabFrame2ToggleLabel.Parent = NameTabFrame2ToggleButton
			NameTabFrame2ToggleLabel.Active = true
			NameTabFrame2ToggleLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2ToggleLabel.BorderSizePixel = 0
			NameTabFrame2ToggleLabel.Position = UDim2.new(0.818584085, 0, 0, 0)
			NameTabFrame2ToggleLabel.Size = UDim2.new(0, 34, 0, 19)
			NameTabFrame2ToggleLabel.Font = Enum.Font.SourceSans
			NameTabFrame2ToggleLabel.Text = "OFF"
			NameTabFrame2ToggleLabel.TextColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame2ToggleLabel.TextSize = 14.000
			NameTabFrame2ToggleLabel.TextWrapped = true
			NameTabFrame2ToggleLabel.TextXAlignment = Enum.TextXAlignment.Right
		end
		local Default_Slider_Tab_2 = {}

		function Default_Slider_Tab_2:Slider(text,max,callback)
			local NameTabFrame2SliderFrame = Instance.new("Frame")
			local NameTabFrame2SliderLabel = Instance.new("TextLabel")
			local NameTabFrame2SliderValue = Instance.new("TextBox")
			local NameTabFrame2SliderOutBar = Instance.new("TextButton")
			local NameTabFrame2SliderBar = Instance.new("Frame")
			local NameTabFrame2SliderUIListLayout = Instance.new("UIListLayout")

			NameTabFrame2SliderFrame.Name = "Name Tab Frame 1 Slider Frame"
			NameTabFrame2SliderFrame.Parent = NameTabFrame1
			NameTabFrame2SliderFrame.Active = true
			NameTabFrame2SliderFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2SliderFrame.BorderColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame2SliderFrame.BorderSizePixel = 0
			NameTabFrame2SliderFrame.Position = UDim2.new(0, 0, 0.110787176, 0)
			NameTabFrame2SliderFrame.Size = UDim2.new(0, 226, 0, 38)

			NameTabFrame2SliderLabel.Name = "Name Tab Frame 1 Slider Label"
			NameTabFrame2SliderLabel.Parent = NameTabFrame2SliderFrame
			NameTabFrame2SliderLabel.Active = true
			NameTabFrame2SliderLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2SliderLabel.BorderSizePixel = 0
			NameTabFrame2SliderLabel.Position = UDim2.new(0.0309734512, 0, 0, 0)
			NameTabFrame2SliderLabel.Size = UDim2.new(0, 153, 0, 19)
			NameTabFrame2SliderLabel.Font = Enum.Font.SourceSans
			NameTabFrame2SliderLabel.Text = text
			NameTabFrame2SliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			NameTabFrame2SliderLabel.TextSize = 14.000
			NameTabFrame2SliderLabel.TextWrapped = true
			NameTabFrame2SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

			NameTabFrame2SliderValue.Name = "Name Tab Frame 1 Slider Value"
			NameTabFrame2SliderValue.Parent = NameTabFrame2SliderFrame
			NameTabFrame2SliderValue.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2SliderValue.BorderSizePixel = 0
			NameTabFrame2SliderValue.Position = UDim2.new(0.707964599, 0, 0, 0)
			NameTabFrame2SliderValue.Size = UDim2.new(0, 59, 0, 19)
			NameTabFrame2SliderValue.ClearTextOnFocus = false
			NameTabFrame2SliderValue.Font = Enum.Font.SourceSans
			NameTabFrame2SliderValue.Text = "0"
			NameTabFrame2SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
			NameTabFrame2SliderValue.TextSize = 14.000
			NameTabFrame2SliderValue.TextWrapped = true
			NameTabFrame2SliderValue.TextXAlignment = Enum.TextXAlignment.Right

			NameTabFrame2SliderOutBar.Name = "Name Tab Frame 1 Slider OutBar"
			NameTabFrame2SliderOutBar.Parent = NameTabFrame2SliderFrame
			NameTabFrame2SliderOutBar.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
			NameTabFrame2SliderOutBar.BorderColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame2SliderOutBar.Position = UDim2.new(0.0309999995, 0, 0.5, 0)
			NameTabFrame2SliderOutBar.Size = UDim2.new(0, 212, 0, 11)
			NameTabFrame2SliderOutBar.ZIndex = 2
			NameTabFrame2SliderOutBar.AutoButtonColor = false
			NameTabFrame2SliderOutBar.Font = Enum.Font.SourceSans
			NameTabFrame2SliderOutBar.Text = ""
			NameTabFrame2SliderOutBar.TextColor3 = Color3.fromRGB(0, 0, 0)
			NameTabFrame2SliderOutBar.TextSize = 14.000

			NameTabFrame2SliderBar.Name = "Name Tab Frame 1 Slider Bar"
			NameTabFrame2SliderBar.Parent = NameTabFrame2SliderOutBar
			NameTabFrame2SliderBar.Active = true
			NameTabFrame2SliderBar.BackgroundColor3 = Color3.fromRGB(5, 197, 255)
			NameTabFrame2SliderBar.BorderSizePixel = 0
			NameTabFrame2SliderBar.Position = UDim2.new(0, 0, 0.0909999982, 0)
			NameTabFrame2SliderBar.Size = UDim2.new(0, 0, 0, 9)
			NameTabFrame2SliderBar.ZIndex = 2

			NameTabFrame2SliderUIListLayout.Name = "Name Tab Frame 1  Slider UI List Layout"
			NameTabFrame2SliderUIListLayout.Parent = NameTabFrame2SliderOutBar
			NameTabFrame2SliderUIListLayout.FillDirection = Enum.FillDirection.Horizontal
			NameTabFrame2SliderUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			NameTabFrame2SliderUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

			local NameSliderMaxValue = max
			local NameSlider_IsMoving = false

			NameTabFrame2SliderOutBar.MouseButton1Down:Connect(function()
				NameSlider_IsMoving = true
				NameTabFrame2SliderBar.Size = UDim2.new(math.clamp((game.Players.LocalPlayer:GetMouse().X - NameTabFrame2SliderOutBar.AbsolutePosition.X)/NameTabFrame2SliderOutBar.AbsoluteSize.X,0,1),0,1,0)
				NameTabFrame2SliderValue.Text = math.floor(NameTabFrame2SliderBar.Size.X.Scale * NameSliderMaxValue)
				pcall(callback)
			end)

			game:GetService("UserInputService").InputEnded:Connect(function(input, gp)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					NameSlider_IsMoving = false
				end
			end)

			game.Players.LocalPlayer:GetMouse().Move:Connect(function()
				if NameSlider_IsMoving then
					NameTabFrame2SliderBar.Size = UDim2.new(math.clamp((game.Players.LocalPlayer:GetMouse().X - NameTabFrame2SliderOutBar.AbsolutePosition.X)/NameTabFrame2SliderOutBar.AbsoluteSize.X,0,1),0,1,0)
					NameTabFrame2SliderValue.Text = math.floor(NameTabFrame2SliderBar.Size.X.Scale * NameSliderMaxValue)
					pcall(callback)
				end
			end)

			NameTabFrame2SliderValue.FocusLost:Connect(function()
				if typeof(tonumber(NameTabFrame2SliderValue.Text)) == "number" then
					local num = math.clamp(tonumber(NameTabFrame2SliderValue.Text), 0, NameSliderMaxValue)
					NameTabFrame2SliderBar.Size = UDim2.new(num/NameSliderMaxValue, 0, 1, 0)
					NameTabFrame2SliderValue.Text = tostring(num)
					pcall(callback)
				else
					delay(0.5,function()
						NameTabFrame2SliderValue.Text = math.floor(NameTabFrame2SliderBar.Size.X.Scale * NameSliderMaxValue)
					end)
				end
			end)
		end

		local Slider_Tab_2 = {}

		function Slider_Tab_2:Slider(text,max,callback)
			local NameTabFrame2SliderFrame = Instance.new("Frame")
			local NameTabFrame2SliderLabel = Instance.new("TextLabel")
			local NameTabFrame2SliderValue = Instance.new("TextBox")
			local NameTabFrame2SliderOutBar = Instance.new("TextButton")
			local NameTabFrame2SliderBar = Instance.new("Frame")
			local NameTabFrame2SliderUIListLayout = Instance.new("UIListLayout")

			NameTabFrame2SliderFrame.Name = "Name Tab Frame 1 Slider Frame"
			NameTabFrame2SliderFrame.Parent = NameTabFrame2
			NameTabFrame2SliderFrame.Active = true
			NameTabFrame2SliderFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2SliderFrame.BorderColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame2SliderFrame.BorderSizePixel = 0
			NameTabFrame2SliderFrame.Position = UDim2.new(0, 0, 0.110787176, 0)
			NameTabFrame2SliderFrame.Size = UDim2.new(0, 226, 0, 38)

			NameTabFrame2SliderLabel.Name = "Name Tab Frame 1 Slider Label"
			NameTabFrame2SliderLabel.Parent = NameTabFrame2SliderFrame
			NameTabFrame2SliderLabel.Active = true
			NameTabFrame2SliderLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2SliderLabel.BorderSizePixel = 0
			NameTabFrame2SliderLabel.Position = UDim2.new(0.0309734512, 0, 0, 0)
			NameTabFrame2SliderLabel.Size = UDim2.new(0, 153, 0, 19)
			NameTabFrame2SliderLabel.Font = Enum.Font.SourceSans
			NameTabFrame2SliderLabel.Text = text
			NameTabFrame2SliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			NameTabFrame2SliderLabel.TextSize = 14.000
			NameTabFrame2SliderLabel.TextWrapped = true
			NameTabFrame2SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

			NameTabFrame2SliderValue.Name = "Name Tab Frame 1 Slider Value"
			NameTabFrame2SliderValue.Parent = NameTabFrame2SliderFrame
			NameTabFrame2SliderValue.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2SliderValue.BorderSizePixel = 0
			NameTabFrame2SliderValue.Position = UDim2.new(0.707964599, 0, 0, 0)
			NameTabFrame2SliderValue.Size = UDim2.new(0, 59, 0, 19)
			NameTabFrame2SliderValue.ClearTextOnFocus = false
			NameTabFrame2SliderValue.Font = Enum.Font.SourceSans
			NameTabFrame2SliderValue.Text = "0"
			NameTabFrame2SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
			NameTabFrame2SliderValue.TextSize = 14.000
			NameTabFrame2SliderValue.TextWrapped = true
			NameTabFrame2SliderValue.TextXAlignment = Enum.TextXAlignment.Right

			NameTabFrame2SliderOutBar.Name = "Name Tab Frame 1 Slider OutBar"
			NameTabFrame2SliderOutBar.Parent = NameTabFrame2SliderFrame
			NameTabFrame2SliderOutBar.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
			NameTabFrame2SliderOutBar.BorderColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame2SliderOutBar.Position = UDim2.new(0.0309999995, 0, 0.5, 0)
			NameTabFrame2SliderOutBar.Size = UDim2.new(0, 212, 0, 11)
			NameTabFrame2SliderOutBar.ZIndex = 2
			NameTabFrame2SliderOutBar.AutoButtonColor = false
			NameTabFrame2SliderOutBar.Font = Enum.Font.SourceSans
			NameTabFrame2SliderOutBar.Text = ""
			NameTabFrame2SliderOutBar.TextColor3 = Color3.fromRGB(0, 0, 0)
			NameTabFrame2SliderOutBar.TextSize = 14.000

			NameTabFrame2SliderBar.Name = "Name Tab Frame 1 Slider Bar"
			NameTabFrame2SliderBar.Parent = NameTabFrame2SliderOutBar
			NameTabFrame2SliderBar.Active = true
			NameTabFrame2SliderBar.BackgroundColor3 = Color3.fromRGB(5, 197, 255)
			NameTabFrame2SliderBar.BorderSizePixel = 0
			NameTabFrame2SliderBar.Position = UDim2.new(0, 0, 0.0909999982, 0)
			NameTabFrame2SliderBar.Size = UDim2.new(0, 0, 0, 9)
			NameTabFrame2SliderBar.ZIndex = 2

			NameTabFrame2SliderUIListLayout.Name = "Name Tab Frame 1  Slider UI List Layout"
			NameTabFrame2SliderUIListLayout.Parent = NameTabFrame2SliderOutBar
			NameTabFrame2SliderUIListLayout.FillDirection = Enum.FillDirection.Horizontal
			NameTabFrame2SliderUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			NameTabFrame2SliderUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

			local NameSliderMaxValue = max
			local NameSlider_IsMoving = false

			NameTabFrame2SliderOutBar.MouseButton1Down:Connect(function()
				NameSlider_IsMoving = true
				NameTabFrame2SliderBar.Size = UDim2.new(math.clamp((game.Players.LocalPlayer:GetMouse().X - NameTabFrame2SliderOutBar.AbsolutePosition.X)/NameTabFrame2SliderOutBar.AbsoluteSize.X,0,1),0,1,0)
				NameTabFrame2SliderValue.Text = NameTabFrame2SliderBar.Size.X.Scale * NameSliderMaxValue
				pcall(callback)
			end)

			game:GetService("UserInputService").InputEnded:Connect(function(input, gp)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					NameSlider_IsMoving = false
				end
			end)

			game.Players.LocalPlayer:GetMouse().Move:Connect(function()
				if NameSlider_IsMoving then
					NameTabFrame2SliderBar.Size = UDim2.new(math.clamp((game.Players.LocalPlayer:GetMouse().X - NameTabFrame2SliderOutBar.AbsolutePosition.X)/NameTabFrame2SliderOutBar.AbsoluteSize.X,0,1),0,1,0)
					NameTabFrame2SliderValue.Text = NameTabFrame2SliderBar.Size.X.Scale * NameSliderMaxValue
					pcall(callback)
				end
			end)

			NameTabFrame2SliderValue.FocusLost:Connect(function()
				if typeof(tonumber(NameTabFrame2SliderValue.Text)) == "number" then
					local num = math.clamp(tonumber(NameTabFrame2SliderValue.Text), 0, NameSliderMaxValue)
					NameTabFrame2SliderBar.Size = UDim2.new(num/NameSliderMaxValue, 0, 1, 0)
					NameTabFrame2SliderValue.Text = tostring(num)
					pcall(callback)
				else
					delay(0.5,function()
						NameTabFrame2SliderValue.Text = NameTabFrame2SliderBar.Size.X.Scale * NameSliderMaxValue
					end)
				end
			end)
		end
		local DropDown_Tab_2 = {}

		function DropDown_Tab_2:DropDown(text,DropToggled)
			local NameTabFrame2DropDown = Instance.new("Frame")
			local NameTabFrame2UIListLayout = Instance.new("UIListLayout")
			local NameTabFrame2DropDownButton = Instance.new("TextButton")
			local NameTabFrame2DropDownLabel = Instance.new("TextLabel")

			NameTabFrame2DropDown.Name = "Name Tab Frame 1 Drop Down"
			NameTabFrame2DropDown.Parent = NameTabFrame2
			NameTabFrame2DropDown.Active = true
			NameTabFrame2DropDown.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
			NameTabFrame2DropDown.BorderColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame2DropDown.Position = UDim2.new(0, 0, 0.720116615, 0)
			NameTabFrame2DropDown.Size = UDim2.new(0, 226, 0, 58)
			NameTabFrame2DropDown.Visible = false
			NameTabFrame2DropDown.ZIndex = 2

			NameTabFrame2UIListLayout.Name = "Name Tab Frame 1 UI List Layout"
			NameTabFrame2UIListLayout.Parent = NameTabFrame2DropDown
			NameTabFrame2UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			NameTabFrame2UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

			NameTabFrame2DropDownButton.Name = "Name Tab Frame 1 Drop Down Button"
			NameTabFrame2DropDownButton.Parent = NameTabFrame2
			NameTabFrame2DropDownButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2DropDownButton.BorderSizePixel = 0
			NameTabFrame2DropDownButton.Size = UDim2.new(0, 226, 0, 19)
			NameTabFrame2DropDownButton.AutoButtonColor = false
			NameTabFrame2DropDownButton.Font = Enum.Font.Gotham
			NameTabFrame2DropDownButton.Text = " "..text
			NameTabFrame2DropDownButton.TextColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame2DropDownButton.TextSize = 12.000
			NameTabFrame2DropDownButton.TextWrapped = true
			NameTabFrame2DropDownButton.TextXAlignment = Enum.TextXAlignment.Left
			NameTabFrame2DropDownButton.MouseButton1Down:connect(function()
				if DropToggled == false then
					DropToggled = true
					NameTabFrame2DropDownLabel.Text = "Close"
					NameTabFrame2DropDownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame2DropDownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame2DropDown.Visible = false
				else
					DropToggled = false
					NameTabFrame2DropDownLabel.Text = "Open"
					NameTabFrame2DropDownLabel.TextColor3 = Color3.fromRGB(127, 127, 127)
					NameTabFrame2DropDownButton.TextColor3 = Color3.fromRGB(127, 127, 127)
					NameTabFrame2DropDown.Visible = true
				end
			end)
			NameTabFrame2DropDownButton.MouseEnter:Connect(function()
				if DropToggled == false then
					game:GetService("TweenService"):Create(NameTabFrame2DropDownButton,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
					game:GetService("TweenService"):Create(NameTabFrame2DropDownLabel,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				else
					NameTabFrame2DropDownLabel.Text = "Close"
					NameTabFrame2DropDownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame2DropDownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				end
			end)
			NameTabFrame2DropDownButton.MouseLeave:Connect(function()
				if DropToggled == false then
					game:GetService("TweenService"):Create(NameTabFrame2DropDownButton,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
					game:GetService("TweenService"):Create(NameTabFrame2DropDownLabel,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(127, 127, 127)}):Play()
				else
					NameTabFrame2DropDownLabel.Text = "Close"
					NameTabFrame2DropDownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					NameTabFrame2DropDownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				end
			end)

			NameTabFrame2DropDownLabel.Name = "Name Tab Frame 1 Drop Down Label"
			NameTabFrame2DropDownLabel.Parent = NameTabFrame2DropDownButton
			NameTabFrame2DropDownLabel.Active = true
			NameTabFrame2DropDownLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NameTabFrame2DropDownLabel.BorderSizePixel = 0
			NameTabFrame2DropDownLabel.Position = UDim2.new(0.818584085, 0, 0, 0)
			NameTabFrame2DropDownLabel.Size = UDim2.new(0, 34, 0, 19)
			NameTabFrame2DropDownLabel.Font = Enum.Font.SourceSans
			NameTabFrame2DropDownLabel.Text = "Open"
			NameTabFrame2DropDownLabel.TextColor3 = Color3.fromRGB(127, 127, 127)
			NameTabFrame2DropDownLabel.TextSize = 14.000
			NameTabFrame2DropDownLabel.TextWrapped = true
			NameTabFrame2DropDownLabel.TextXAlignment = Enum.TextXAlignment.Right

			local DropDown_Button_Tab_2 = {}

			function DropDown_Button_Tab_2:DropDown_Button_Tab_2(text,callback)
				local NameTabFrame2Button = Instance.new("TextButton")

				NameTabFrame2Button.Name = "Name Tab Frame 1 Button"
				NameTabFrame2Button.Parent = NameTabFrame2DropDown
				NameTabFrame2Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				NameTabFrame2Button.BorderSizePixel = 0
				NameTabFrame2Button.Size = UDim2.new(0, 226, 0, 19)
				NameTabFrame2Button.AutoButtonColor = false
				NameTabFrame2Button.Font = Enum.Font.Gotham
				NameTabFrame2Button.Text = text
				NameTabFrame2Button.TextColor3 = Color3.fromRGB(127, 127, 127)
				NameTabFrame2Button.TextSize = 12.000
				NameTabFrame2Button.TextWrapped = true
				NameTabFrame2Button.MouseButton1Down:connect(function()
					pcall(callback)
					for i,v in pairs(NameTabFrame2Button.Parent:GetDescendants()) do
						if v.ClassName == "TextButton" then
							v.TextColor3 = Color3.fromRGB(127, 127, 127)
						end
					end
					NameTabFrame2Button.TextColor3 = Color3.fromRGB(255, 255, 255)
				end)
			end
		end
	end
	return Tabs
end
return UnnamedCheat_Lib
