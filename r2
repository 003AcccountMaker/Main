--loadstring(game:HttpGet("https://raw.githubusercontent.com/mrgunz/UnnamedCheat/main/Version"))();
--loadstring(game:HttpGet("https://raw.githubusercontent.com/"..getgenv().UnnamedCheat_Loadstring.."/UnnamedCheat/main/List"))();
--loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/"..getgenv().UnnamedCheat_Loadstring.."/UnnamedCheat/main/Bin/Status"))()
--loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/"..getgenv().UnnamedCheat_Loadstring.."/UnnamedCheat/main/Bin/Console"))()
function Gui()
	local UnnamedCheat_Gui = Instance.new("ScreenGui")
	local Screen = Instance.new("Frame")
	local TabList = Instance.new("Frame")
	local TabListUICorner = Instance.new("UICorner")
	local TabListUIListLayout = Instance.new("UIListLayout")
	local ScreenUICorner = Instance.new("UICorner")
	local ScreenUIScale = Instance.new("UIScale")
	local MiniSettings = Instance.new("Frame")
	local HideMenuButton = Instance.new("TextButton")
	local DeleteMenuButton = Instance.new("TextButton")
	local InfoFrame = Instance.new("Frame")
	local InfoFrameCorner = Instance.new("UICorner")
	local InfoFrameText = Instance.new("TextBox")
	local Logo = Instance.new("Frame")
	local Unnamed = Instance.new("TextLabel")
	local Cheat = Instance.new("TextLabel")
	local Version = Instance.new("TextLabel")
	
	syn.protect_gui(UnnamedCheat_Gui)
	UnnamedCheat_Gui.Name = getgenv().UnnamedCheat_Loadstring.." gui"
	UnnamedCheat_Gui.DisplayOrder = math.random(1000,2000)
	UnnamedCheat_Gui.Enabled = true
	UnnamedCheat_Gui.OnTopOfCoreBlur = true
	UnnamedCheat_Gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	UnnamedCheat_Gui.Parent = game:GetService("CoreGui")
	game:GetService("UserInputService").InputBegan:connect(function(Input, GameProcessed)
		if Input.KeyCode == Enum.KeyCode.F2 or Input.KeyCode == Enum.KeyCode.RightShift then
			if not GameProcessed then
				UnnamedCheat_Gui.Enabled = not UnnamedCheat_Gui.Enabled
			end
		end
	end)

	Screen.Name = "Screen"
	Screen.Parent = UnnamedCheat_Gui
	Screen.Active = true
	Screen.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Screen.BorderSizePixel = 0
	Screen.Position = UDim2.new(0.0327103846, 0, 0.460404664, 0)
	Screen.Size = UDim2.new(0, 630, 0, 420)
	Screen.Draggable = true

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

	ScreenUICorner.CornerRadius = UDim.new(0, 4)
	ScreenUICorner.Name = "Screen UI Corner"
	ScreenUICorner.Parent = Screen

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

	HideMenuButton.Name = "Hide Menu Button"
	HideMenuButton.Parent = MiniSettings
	HideMenuButton.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
	HideMenuButton.BackgroundTransparency = 1.000
	HideMenuButton.BorderSizePixel = 0
	HideMenuButton.Position = UDim2.new(0.684615374, 0, 0, 0)
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
	DeleteMenuButton.Position = UDim2.new(0.853846192, 0, 0, 0)
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

	Logo.Name = "Logo"
	Logo.Parent = Screen
	Logo.Active = true
	Logo.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Logo.BackgroundTransparency = 1.000
	Logo.BorderSizePixel = 0
	Logo.Position = UDim2.new(0.0121670077, 0, 0.0140103688, 0)
	Logo.Size = UDim2.new(0, 194, 0, 36)

	Unnamed.Name = "Unnamed"
	Unnamed.Parent = Logo
	Unnamed.Active = true
	Unnamed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Unnamed.BackgroundTransparency = 1.000
	Unnamed.Position = UDim2.new(0.0333951749, 0, 0.0234375, 0)
	Unnamed.Size = UDim2.new(0, 106, 0, 32)
	Unnamed.Font = Enum.Font.SourceSans
	Unnamed.Text = "Unnamed"
	Unnamed.TextColor3 = Color3.fromRGB(0, 0, 0)
	Unnamed.TextScaled = true
	Unnamed.TextSize = 14.000
	Unnamed.TextStrokeTransparency = 0.580
	Unnamed.TextWrapped = true
	Unnamed.TextXAlignment = Enum.TextXAlignment.Left

	Cheat.Name = "Cheat"
	Cheat.Parent = Logo
	Cheat.Active = true
	Cheat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Cheat.BackgroundTransparency = 1.000
	Cheat.Position = UDim2.new(0.575050294, 0, 0.0234374981, 0)
	Cheat.Size = UDim2.new(0, 69, 0, 32)
	Cheat.Font = Enum.Font.SourceSans
	Cheat.Text = "Cheat"
	Cheat.TextColor3 = Color3.fromRGB(255, 255, 255)
	Cheat.TextScaled = true
	Cheat.TextSize = 14.000
	Cheat.TextStrokeTransparency = 0.000
	Cheat.TextWrapped = true
	Cheat.TextXAlignment = Enum.TextXAlignment.Left

	Version.Name = "Version"
	Version.Parent = Logo
	Version.Active = true
	Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Version.BackgroundTransparency = 1.000
	Version.Position = UDim2.new(0.927964449, 0, 0.444563925, 0)
	Version.Size = UDim2.new(0, 105, 0, 16)
	Version.Font = Enum.Font.SourceSans
	Version.Text = getgenv().UnnamedCheat_Version 
	Version.TextColor3 = Color3.fromRGB(255, 255, 255)
	Version.TextScaled = true
	Version.TextSize = 14.000
	Version.TextStrokeTransparency = 0.000
	Version.TextWrapped = true
	Version.TextXAlignment = Enum.TextXAlignment.Left
	
	local function Tab(TabName)
		local Tabs = Instance.new("Folder")
		local NameTabButtonUI = Instance.new("Frame")
		local NameTabButton = Instance.new("TextButton")
		
		Tabs.Name = "Tabs"
		Tabs.Parent = Screen
		
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
		NameTabButton.Text = " "..TabName
		NameTabButton.TextColor3 = Color3.fromRGB(127, 127, 127)
		NameTabButton.TextSize = 12.000
		NameTabButton.TextWrapped = true
		NameTabButton.TextXAlignment = Enum.TextXAlignment.Left
		NameTabButton.Visible = true
		NameTabButton.MouseButton1Down:connect(function()
			
		end)
		
		local NameTab = Instance.new("Frame")
		local NameTabUICorner = Instance.new("UICorner")

		NameTab.Name = "Name Tab"
		NameTab.Parent = Tabs
		NameTab.Active = true
		NameTab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		NameTab.BorderSizePixel = 0
		NameTab.Position = UDim2.new(0.236507937, 0, 0.119047619, 0)
		NameTab.Size = UDim2.new(0, 474, 0, 363)

		NameTabUICorner.CornerRadius = UDim.new(0, 4)
		NameTabUICorner.Name = "Name Tab UI Corner"
		NameTabUICorner.Parent = NameTab
		
		local NameTabFrame1 = Instance.new("Frame")
		local NameTabFrame1UICorner = Instance.new("UICorner")
		local NameTabFrame1UIListLayout = Instance.new("UIListLayout")
		
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
	end
end
