

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local Command = TextBox
local CommandBar = Instance.new("ScreenGui")
local CMDFRAME = Instance.new("Frame")
local ScrollingBarCmd = Instance.new("ScrollingFrame")
local TexrtLvl = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local Sttting = Instance.new("TextLabel")
local CloseCmd = Instance.new("TextButton")
local Cmddframe22 = Instance.new("Frame")
CommandBar.Name = "Command Bar"
CommandBar.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CommandBar.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CMDFRAME.Name = "CMDFRAME"
CMDFRAME.Parent = CommandBar
CMDFRAME.BackgroundColor3 = Color3.fromRGB(58, 61, 67)
CMDFRAME.BackgroundTransparency = 0.100
CMDFRAME.BorderSizePixel = 0
CMDFRAME.Position = UDim2.new(0.466060609, 0, 0.198773012, 0)
CMDFRAME.Size = UDim2.new(0, 330, 0, 422)
CMDFRAME.Active = true 
CMDFRAME.Draggable = true
CMDFRAME.Visible = false
ScrollingBarCmd.Name = "ScrollingBarCmd"
ScrollingBarCmd.Parent = CMDFRAME
ScrollingBarCmd.Active = true
ScrollingBarCmd.BackgroundColor3 = Color3.fromRGB(64, 68, 73)
ScrollingBarCmd.BackgroundTransparency = 1.000
ScrollingBarCmd.BorderColor3 = Color3.fromRGB(255, 255, 255)
ScrollingBarCmd.Position = UDim2.new(0, 0, 0.0853080601, 0)
ScrollingBarCmd.Size = UDim2.new(0, 330, 0, 386)
ScrollingBarCmd.CanvasSize = UDim2.new(0, 0, 0, 0)
UIListLayout.Parent = ScrollingBarCmd
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
Sttting.Name = "Sttting"
Sttting.Parent = CMDFRAME
Sttting.BackgroundColor3 = Color3.fromRGB(63, 67, 72)
Sttting.BackgroundTransparency = 1.000
Sttting.BorderSizePixel = 0
Sttting.Position = UDim2.new(0.184848487, 0, 0, 0)
Sttting.Size = UDim2.new(0, 207, 0, 28)
Sttting.Font = Enum.Font.GothamSemibold
Sttting.Text = "Command Bar - Command X"
Sttting.TextColor3 = Color3.fromRGB(255, 255, 255)
Sttting.TextSize = 14.000
CloseCmd.Name = "CloseCmd"
CloseCmd.Parent = CMDFRAME
CloseCmd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseCmd.BackgroundTransparency = 1.000
CloseCmd.BorderSizePixel = 0
CloseCmd.Position = UDim2.new(0.930303037, 0, 0, 0)
CloseCmd.Size = UDim2.new(0, 23, 0, 28)
CloseCmd.Font = Enum.Font.ArialBold
CloseCmd.Text = "X"
CloseCmd.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseCmd.TextSize = 14.000
CloseCmd.MouseButton1Click:Connect(function()
 CMDFRAME.Visible = false
end)
Cmddframe22.Name = "C,mddframe22"
Cmddframe22.Parent = CMDFRAME
Cmddframe22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Cmddframe22.BorderSizePixel = 0
Cmddframe22.Position = UDim2.new(0, 0, 0.0663506985, 0)
Cmddframe22.Size = UDim2.new(0, 330, 0, 6)
local function AddHelp(Name, func)
    local TexrtLvl = Instance.new("TextLabel")
    TexrtLvl.Name = "TexrtLvl"
    TexrtLvl.Parent = ScrollingBarCmd
    TexrtLvl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TexrtLvl.BackgroundTransparency = 1.000

    TexrtLvl.Size = UDim2.new(0, 311, 0, 25)
    TexrtLvl.Font = Enum.Font.SourceSans
    TexrtLvl.Text = Name..' - '..func
    TexrtLvl.TextColor3 = Color3.fromRGB(255, 255, 255)
    TexrtLvl.TextSize = 14.000
    TexrtLvl.TextWrapped = true
    TexrtLvl.TextXAlignment = Enum.TextXAlignment.Left
    
end
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.407, 0, -0.2, 0)
Frame.Size = UDim2.new(0, 381, 0, 39)
Frame.Style = Enum.FrameStyle.DropShadow

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.Position = UDim2.new(0.0156085007, 0, -0.120163269, 0)
TextBox.Size = UDim2.new(0, 354, 0, 28)
TextBox.Font = Enum.Font.SourceSansBold
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 16.000
TextBox.TextTransparency = 0.500
TextBox.TextXAlignment = Enum.TextXAlignment.Left

TextBox.FocusLost:Connect(
    function(Penis)
        if Penis == true then --this is if the textbox loses the focus you gave it
            Frame:TweenPosition(UDim2.new(0.407, 0, -0.2, 0), "Out", "Sine", 1, false)
            TextBox.TextTransparency = 0.5
            TextBox.Text = "Command here.."
        end
    end
)

game:GetService("UserInputService").InputBegan:Connect(
    function(Key, Typing)
        if Typing then
            return
        end
        if Key.KeyCode == Enum.KeyCode.Semicolon then
            Frame:TweenPosition(UDim2.new(0.407000005, 0, 0, 0), "In", "Sine", 0.5, false)
            TextBox.Text = ""
            wait()
            TextBox:CaptureFocus()

            TextBox.TextTransparency = 0
            TextBox.Text = ""
        end
    end
)

