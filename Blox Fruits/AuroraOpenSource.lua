local data1 = {}
tableConcat = table["concat"]
if not game:IsLoaded() then
        repeat
                game["Loaded"]:Wait()
        until game:IsLoaded()
end;
(getgenv())["Configs"] = {
        ["Quest"] = {
                ["Evo Race V1"] = true,
                ["Evo Race V2"] = true;
                ["RGB Haki"] = true,
                ["Pull Lerver"] = true
        };
        ["Sword"] = {
                "Dual-Headed Blade",
                "Smoke Admiral",
                "Wardens Sword",
                "Cutlass",
                "Katana";
                "Dual Katana";
                "Triple Katana",
                "Iron Mace",
                "Saber";
                "Pole (1st Form)",
                "Gravity Blade",
                "Longsword";
                "Rengoku";
                "Midnight Blade",
                "Soul Cane",
                "Bisento",
                "Yama";
                "Tushita";
                "Cursed Dual Katana"
        };
        ["Gun"] = {
                "Soul Guitar";
                "Kabucha",
                "Venom Bow",
                "Musket";
                "Flintlock",
                "Refined Slingshot",
                "Magma Blaster";
                "Dual Flintlock",
                "Cannon",
                "Bizarre Revolver";
                "Bazooka"
        };
        ["FPS Booster"] = false
}
wait(5)
if game["Players"]["LocalPlayer"]["PlayerGui"]:FindFirstChild("Main (minimal)") then
        if game["Players"]["LocalPlayer"]["PlayerGui"]["Main (minimal)"]:FindFirstChild("ChooseTeam") then
                repeat
                        wait()
                        if (game["Players"]["LocalPlayer"]["PlayerGui"]:FindFirstChild("Main (minimal)"))["ChooseTeam"]["Visible"] then
                                (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("SetTeam", "Pirates")
                        end
                until game["Players"]["LocalPlayer"]["Team"] ~= nil and game:IsLoaded()
        end
end
wait(5)
if game["Players"]["LocalPlayer"]["PlayerGui"]:FindFirstChild("Main (minimal)") then
        if game["Players"]["LocalPlayer"]["PlayerGui"]["Main (minimal)"]:FindFirstChild("ChooseTeam") then
                repeat
                        wait()
                        if (game["Players"]["LocalPlayer"]["PlayerGui"]:FindFirstChild("Main (minimal)"))["ChooseTeam"]["Visible"] then
                                (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("SetTeam", "Pirates")
                        end
                until game["Players"]["LocalPlayer"]["Team"] ~= nil and game:IsLoaded()
        end
end
Players = game:GetService("Players")
LocalPlayer = Players["LocalPlayer"]
PlaceId = game["PlaceId"]
Workspace = game:GetService("Workspace")
Enemies = Workspace:WaitForChild("Enemies")
TeleportService = game:GetService("TeleportService")
ReplicatedStorage = game:GetService("ReplicatedStorage")
Level = (LocalPlayer:WaitForChild("Data")):WaitForChild("Level")
Fragments = (LocalPlayer:WaitForChild("Data")):WaitForChild("Fragments")
Beli = (LocalPlayer:WaitForChild("Data")):WaitForChild("Beli")
Net = require(ReplicatedStorage["Modules"]["Net"])
Lighting = game:GetService("Lighting")
VirtualInputManager = game:service("VirtualInputManager")
VirtualUser = game:service("VirtualUser")
CoreGui = game:GetService("CoreGui")
TempTable = {}
task["spawn"](function()
        if (getgenv())["Configs"] and (getgenv())["Configs"]["FPS Booster"] then
                ReplicatedStorage["Effect"]:Destroy()
                for idx, val in pairs(getconnections(LocalPlayer["PlayerGui"]["Main"]["Settings"]["Buttons"]["FastModeButton"]["Activated"])) do
                        local info1 = {}
                        info1[2], info1[3] = idx, val
                        info1[3]["Function"]()
                end
        end
end)
wait(2)
task["spawn"](function()
        if (getgenv())["Configs"]["FPS Booster"] then
                local vars1 = {}
                vars1[3] = Workspace:WaitForChild("Enemies")
                vars1[2] = (Workspace:WaitForChild("Map")):GetDescendants()
                for idx, val in ipairs(vars1[2]) do
                        local temp1 = {}
                        temp1[2], temp1[1] = idx, val
                        if temp1[1]:IsA("BasePart") then
                                local state1 = {}
                                state1[2] = false
                                for idx = 1, 5, 1 do
                                        local cache1 = {}
                                        cache1[3] = idx
                                        cache1[1] = Workspace["Map"]["Jungle"]["QuestPlates"]:FindFirstChild("Plate" .. cache1[3])
                                        if cache1[1] and (temp1[1]["Name"] == "Button" and temp1[1]:IsDescendantOf(cache1[1])) then
                                                state1[2] = true
                                                break
                                        end
                                end
                                local shouldSkip = state1[2]
                                if not shouldSkip and temp1[1]["Name"] == "Door" and temp1[1]:IsDescendantOf(Workspace["Map"]["Ice"]) then
                                        shouldSkip = true
                                end
                                if not shouldSkip and temp1[1]:IsDescendantOf(Workspace["Map"]["Jungle"]:FindFirstChild("Final")) then
                                        shouldSkip = true
                                end
                                if not shouldSkip and Workspace["Map"]:FindFirstChild("IceCastle") then
                                        if temp1[1]:IsDescendantOf(Workspace["Map"]:FindFirstChild("IceCastle")) then
                                                shouldSkip = true
                                        end
                                end
                                if not shouldSkip then
                                        state1[1] = true
                                        for idx, val in ipairs(vars1[3]:GetChildren()) do
                                                local store1 = {}
                                                store1[3], store1[1] = idx, val
                                                store1[2] = store1[1]:FindFirstChild("HumanoidRootPart")
                                                if store1[2] and (store1[2]["Position"] - temp1[1]["Position"])["Magnitude"] < 10 then
                                                        state1[1] = false
                                                        break
                                                end
                                        end
                                        if state1[1] then
                                                temp1[1]:Destroy()
                                        end
                                end
                        end
                end
                if LocalPlayer["PlayerGui"]:FindFirstChild("Notifications") then
                        LocalPlayer["PlayerGui"]["Notifications"]["Enabled"] = false
                end
                shared = shared or {}
                if shared["BC_1"] == nil then
                        shared["BC_1"] = true
                end
                if shared["BC_1"] and shared["BC_2"] == nil then
                        local tmp2 = {}
                        tmp2[6] = workspace
                        tmp2[4] = Lighting
                        tmp2[3] = tmp2[6]["Terrain"]
                        tmp2[2] = Players
                        tmp2[1] = LocalPlayer["Character"]
                        tmp2[3]["WaterWaveSize"] = 0
                        tmp2[3]["WaterWaveSpeed"] = 0
                        tmp2[3]["WaterReflectance"] = 0
                        tmp2[3]["WaterTransparency"] = 0
                        tmp2[4]["GlobalShadows"] = false
                        tmp2[4]["FogEnd"] = 9000000000
                        tmp2[4]["Brightness"] = 0
                        if settings and (settings())["Rendering"] then
                                (settings())["Rendering"]["QualityLevel"] = "Level01";
                                (settings())["Rendering"]["GraphicsMode"] = "NoGraphics"
                        end
                        for idx, val in pairs(tmp2[6]:GetDescendants()) do
                                local data2 = {}
                                data2[2], data2[3] = idx, val
                                if data2[3]:IsA("BasePart") or data2[3]:IsA("SpawnLocation") or data2[3]:IsA("WedgePart") or data2[3]:IsA("Terrain") or data2[3]:IsA("MeshPart") then
                                        data2[3]["Material"] = Enum["Material"]["Plastic"]
                                        data2[3]["Reflectance"] = 0
                                        data2[3]["CastShadow"] = false
                                elseif data2[3]:IsA("Decal") or data2[3]:IsA("Texture") then
                                        data2[3]["Texture"] = ""
                                        data2[3]["Transparency"] = 1
                                elseif data2[3]:IsA("ParticleEmitter") or data2[3]:IsA("Trail") then
                                        data2[3]["LightInfluence"] = 0
                                        data2[3]["Texture"] = ""
                                        data2[3]["Lifetime"] = NumberRange["new"](0)
                                elseif data2[3]:IsA("Explosion") then
                                        data2[3]["BlastPressure"] = 0
                                        data2[3]["BlastRadius"] = 0
                                elseif data2[3]:IsA("Fire") or data2[3]:IsA("SpotLight") or data2[3]:IsA("Smoke") or data2[3]:IsA("Sparkles") then
                                        data2[3]["Enabled"] = false
                                elseif data2[3]:IsA("MeshPart") then
                                        data2[3]["Material"] = Enum["Material"]["Plastic"]
                                        data2[3]["Reflectance"] = 0
                                        data2[3]["TextureID"] = ""
                                        data2[3]["CastShadow"] = false
                                        data2[3]["RenderFidelity"] = Enum["RenderFidelity"]["Performance"]
                                elseif data2[3]:IsA("SpecialMesh") then
                                        data2[3]["TextureId"] = ""
                                elseif data2[3]:IsA("Shirt") or data2[3]:IsA("Pants") or data2[3]:IsA("Accessory") then
                                        data2[3]:Destroy()
                                end
                        end
                        for idx, val in pairs(tmp2[4]:GetDescendants()) do
                                local info2 = {}
                                info2[1], info2[2] = idx, val
                                if info2[2]:IsA("BlurEffect") or info2[2]:IsA("SunRaysEffect") or info2[2]:IsA(tableConcat({
                                        "ColorCorrectionEffec",
                                        "t"
                                })) or info2[2]:IsA("BloomEffect") or info2[2]:IsA("DepthOfFieldEffect") then
                                        info2[2]["Enabled"] = false
                                end
                        end
                        if tmp2[1] then
                                for idx, val in pairs(tmp2[1]:GetDescendants()) do
                                        local vars2 = {}
                                        vars2[3], vars2[2] = idx, val
                                        if vars2[2]:IsA("Shirt") or vars2[2]:IsA("Pants") or vars2[2]:IsA("Accessory") then
                                                vars2[2]:Destroy()
                                        end
                                end
                        end
                        if PlaceId == 2753915549 or PlaceId == 4442272183 or PlaceId == 7449423635 then
                                local temp2 = {}
                                temp2[1] = ReplicatedStorage:FindFirstChild("Effect") and ReplicatedStorage["Effect"]:FindFirstChild("Container")
                                if temp2[1] then
                                        local state2 = {}
                                        state2[1] = temp2[1]:FindFirstChild("Shared")
                                        state2[3] = temp2[1]:FindFirstChild("Misc")
                                        if state2[1] then
                                                if state2[1]:FindFirstChild("AirDash") then
                                                        state2[1]["AirDash"]:Destroy()
                                                end
                                                if state2[1]:FindFirstChild("LightningTP") then
                                                        state2[1]["LightningTP"]:Destroy()
                                                end
                                        end
                                        if state2[3] then
                                                if state2[3]:FindFirstChild("Damage") then
                                                        state2[3]["Damage"]:Destroy()
                                                end
                                                if state2[3]:FindFirstChild("Confetti") then
                                                        state2[3]["Confetti"]:Destroy()
                                                end
                                        end
                                        if temp2[1]:FindFirstChild("LevelUp") then
                                                temp2[1]["LevelUp"]:Destroy()
                                        end
                                end
                        end
                end
                shared["BC_2"] = true
        end
end)
VoiceChatService = game:GetService("CoreGui")
Character = game:GetService("TweenService")
if VoiceChatService:FindFirstChild("Status_UI") then
        VoiceChatService["Status_UI"]:Destroy()
end
RunService = Instance["new"]("ScreenGui")
RunService["Name"] = "Status_UI"
RunService["ResetOnSpawn"] = false
RunService["Parent"] = VoiceChatService
local STATUS_LOGO = "https://files.catbox.moe/t7arln.jpeg"
SoundService = Instance["new"]("Frame")
SoundService["Size"] = UDim2["new"](0, 280, 0, 55)
SoundService["Position"] = UDim2["new"](.5, 0, .05, 0)
SoundService["AnchorPoint"] = Vector2["new"](.5, 0)
SoundService["BackgroundColor3"] = Color3["fromRGB"](20, 10, 40)
SoundService["BackgroundTransparency"] = 0.2
SoundService["BorderSizePixel"] = 0
SoundService["Parent"] = RunService
Teams = Instance["new"]("UICorner")
Teams["CornerRadius"] = UDim["new"](0, 14)
Teams["Parent"] = SoundService
local StatusGradient = Instance["new"]("UIGradient")
StatusGradient["Color"] = ColorSequence["new"]({
        ColorSequenceKeypoint["new"](0, Color3["fromRGB"](45, 22, 80)),
        ColorSequenceKeypoint["new"](1, Color3["fromRGB"](20, 10, 40))
})
StatusGradient["Rotation"] = 90
StatusGradient["Parent"] = SoundService
TweenService = Instance["new"]("UIStroke")
TweenService["Thickness"] = 1.5
TweenService["Color"] = Color3["fromRGB"](138, 43, 226)
TweenService["Parent"] = SoundService
local StatusLogo = Instance["new"]("ImageLabel")
StatusLogo["Size"] = UDim2["new"](0, 38, 0, 38)
StatusLogo["Position"] = UDim2["new"](0, 10, 0.5, 0)
StatusLogo["AnchorPoint"] = Vector2["new"](0, 0.5)
StatusLogo["BackgroundTransparency"] = 1
StatusLogo["Image"] = STATUS_LOGO
StatusLogo["Parent"] = SoundService
local StatusLogoCorner = Instance["new"]("UICorner")
StatusLogoCorner["CornerRadius"] = UDim["new"](0, 8)
StatusLogoCorner["Parent"] = StatusLogo
RemoteEvent = Instance["new"]("TextLabel")
RemoteEvent["Size"] = UDim2["new"](1, -60, 0, 24)
RemoteEvent["Position"] = UDim2["new"](0, 55, 0, 6)
RemoteEvent["BackgroundTransparency"] = 1
RemoteEvent["Text"] = "AURORA KAITUN"
RemoteEvent["TextColor3"] = Color3["fromRGB"](220, 180, 255)
RemoteEvent["TextSize"] = 16
RemoteEvent["Font"] = Enum["Font"]["GothamBlack"]
RemoteEvent["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
RemoteEvent["TextYAlignment"] = Enum["TextYAlignment"]["Center"]
RemoteEvent["Parent"] = SoundService
Backpack = Instance["new"]("TextLabel")
Backpack["Size"] = UDim2["new"](1, -60, 0, 18)
Backpack["Position"] = UDim2["new"](0, 55, 0, 28)
Backpack["BackgroundTransparency"] = 1
Backpack["Text"] = "by ImPixelatedZ/Pixz/Zee"
Backpack["TextColor3"] = Color3["fromRGB"](150, 110, 200)
Backpack["TextSize"] = 11
Backpack["Font"] = Enum["Font"]["GothamSemibold"]
Backpack["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
Backpack["TextYAlignment"] = Enum["TextYAlignment"]["Center"]
Backpack["Parent"] = SoundService
task["spawn"](function()
        while task["wait"]() do
                local cache2 = {}
                cache2[4] = Character:Create(TweenService, TweenInfo["new"](1.2, Enum["EasingStyle"]["Quad"], Enum["EasingDirection"]["Out"]), {
                        ["Color"] = Color3["fromRGB"](180, 100, 255)
                })
                cache2[5] = Character:Create(TweenService, TweenInfo["new"](1.2, Enum["EasingStyle"]["Quad"], Enum["EasingDirection"]["Out"]), {
                        ["Color"] = Color3["fromRGB"](138, 43, 226)
                })
                cache2[2] = Character:Create(RemoteEvent, TweenInfo["new"](1.2), {
                        ["TextColor3"] = Color3["fromRGB"](220, 180, 255)
                })
                cache2[3] = Character:Create(RemoteEvent, TweenInfo["new"](1.2), {
                        ["TextColor3"] = Color3["fromRGB"](180, 140, 240)
                })
                cache2[1] = Character:Create(Backpack, TweenInfo["new"](1.2), {
                        ["TextColor3"] = Color3["fromRGB"](160, 120, 210)
                })
                cache2[7] = Character:Create(Backpack, TweenInfo["new"](1.2), {
                        ["TextColor3"] = Color3["fromRGB"](130, 90, 180)
                })
                cache2[4]:Play()
                cache2[2]:Play()
                cache2[1]:Play()
                cache2[4]["Completed"]:Wait()
                cache2[5]:Play()
                cache2[3]:Play()
                cache2[7]:Play()
                cache2[5]["Completed"]:Wait()
        end
end)


local AuroraTweenService = game:GetService("TweenService")
local AuroraUserInputService = game:GetService("UserInputService")

local LOGO_URL = "https://files.catbox.moe/t7arln.jpeg"

-- Toast Notification System
local AuroraToastUI = Instance.new("ScreenGui")
AuroraToastUI.Name = "Aurora_Toast_UI"
AuroraToastUI.ResetOnSpawn = false
AuroraToastUI.IgnoreGuiInset = true
AuroraToastUI.DisplayOrder = 9999
AuroraToastUI.Parent = VoiceChatService

local AuroraToastContainer = Instance.new("Frame")
AuroraToastContainer.Name = "Toast_Container"
AuroraToastContainer.Size = UDim2.new(0, 300, 1, 0)
AuroraToastContainer.Position = UDim2.new(1, -320, 0, 0)
AuroraToastContainer.BackgroundTransparency = 1
AuroraToastContainer.Parent = AuroraToastUI

local AuroraToastLayout = Instance.new("UIListLayout")
AuroraToastLayout.SortOrder = Enum.SortOrder.LayoutOrder
AuroraToastLayout.Padding = UDim.new(0, 8)
AuroraToastLayout.Parent = AuroraToastContainer

local AuroraToastQueue = {}
local AuroraActiveToasts = {}

local function CreateToast(title, message, toastType)
    local toastFrame = Instance.new("Frame")
    toastFrame.Size = UDim2.new(1, 0, 0, 70)
    toastFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    toastFrame.BackgroundTransparency = 0.2
    toastFrame.BorderSizePixel = 0
    toastFrame.LayoutOrder = #AuroraActiveToasts
    toastFrame.Parent = AuroraToastContainer
    
    local toastCorner = Instance.new("UICorner")
    toastCorner.CornerRadius = UDim.new(0, 12)
    toastCorner.Parent = toastFrame
    
    local toastStroke = Instance.new("UIStroke")
    toastStroke.Thickness = 2
    local strokeColor = Color3.fromRGB(138, 43, 226)
    if toastType == "success" then
        strokeColor = Color3.fromRGB(80, 200, 120)
    elseif toastType == "warning" then
        strokeColor = Color3.fromRGB(255, 180, 50)
    elseif toastType == "info" then
        strokeColor = Color3.fromRGB(80, 180, 255)
    elseif toastType == "level" then
        strokeColor = Color3.fromRGB(255, 220, 100)
    end
    toastStroke.Color = strokeColor
    toastStroke.Parent = toastFrame
    
    local leftBar = Instance.new("Frame")
    leftBar.Size = UDim2.new(0, 4, 1, 0)
    leftBar.BackgroundColor3 = strokeColor
    leftBar.BorderSizePixel = 0
    leftBar.Parent = toastFrame
    
    local leftBarCorner = Instance.new("UICorner")
    leftBarCorner.CornerRadius = UDim.new(0, 12)
    leftBarCorner.Parent = leftBar
    
    local iconFrame = Instance.new("Frame")
    iconFrame.Size = UDim2.new(0, 40, 0, 40)
    iconFrame.Position = UDim2.new(0, 12, 0.5, 0)
    iconFrame.AnchorPoint = Vector2.new(0, 0.5)
    iconFrame.BackgroundColor3 = strokeColor
    iconFrame.BackgroundTransparency = 0.3
    iconFrame.BorderSizePixel = 0
    iconFrame.Parent = toastFrame
    
    local iconCorner = Instance.new("UICorner")
    iconCorner.CornerRadius = UDim.new(0, 10)
    iconCorner.Parent = iconFrame
    
    local iconLabel = Instance.new("ImageLabel")
    iconLabel.Size = UDim2.new(0.7, 0, 0.7, 0)
    iconLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
    iconLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    iconLabel.BackgroundTransparency = 1
    iconLabel.Image = LOGO_URL
    if toastType == "success" then
        iconLabel.Image = "rbxassetid://7733964719"
    elseif toastType == "warning" then
        iconLabel.Image = "rbxassetid://7733889044"
    elseif toastType == "info" then
        iconLabel.Image = "rbxassetid://7733885158"
    elseif toastType == "level" then
        iconLabel.Image = "rbxassetid://7734055681"
    end
    iconLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
    iconLabel.Parent = iconFrame
    
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, -70, 0, 22)
    titleLabel.Position = UDim2.new(0, 60, 0, 12)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(30, 20, 50)
    titleLabel.TextSize = 14
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = toastFrame
    
    local messageLabel = Instance.new("TextLabel")
    messageLabel.Size = UDim2.new(1, -70, 0, 28)
    messageLabel.Position = UDim2.new(0, 60, 0, 32)
    messageLabel.BackgroundTransparency = 1
    messageLabel.Text = message
    messageLabel.TextColor3 = Color3.fromRGB(60, 50, 80)
    messageLabel.TextSize = 12
    messageLabel.Font = Enum.Font.GothamSemibold
    messageLabel.TextXAlignment = Enum.TextXAlignment.Left
    messageLabel.TextYAlignment = Enum.TextYAlignment.Top
    messageLabel.TextWrapped = true
    messageLabel.Parent = toastFrame
    
    toastFrame.Position = UDim2.new(1, 50, 0, 0)
    toastFrame.BackgroundTransparency = 1
    
    local tweenIn = AuroraTweenService:Create(toastFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 0.2
    })
    tweenIn:Play()
    
    table.insert(AuroraActiveToasts, toastFrame)
    
    task.delay(3.5, function()
        local tweenOut = AuroraTweenService:Create(toastFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
            Position = UDim2.new(1, 50, 0, 0),
            BackgroundTransparency = 1
        })
        tweenOut:Play()
        tweenOut.Completed:Wait()
        toastFrame:Destroy()
        for i, v in ipairs(AuroraActiveToasts) do
            if v == toastFrame then
                table.remove(AuroraActiveToasts, i)
                break
            end
        end
    end)
end

local lastBeli = 0
local lastFragments = 0
local lastLevel = 0
local lastItems = {}
local lastStatusText = ""

-- Aurora Stats UI - Glassmorphism Design
local AuroraStatsUI = Instance.new("ScreenGui")
AuroraStatsUI.Name = "Aurora_Stats_UI"
AuroraStatsUI.ResetOnSpawn = false
AuroraStatsUI.IgnoreGuiInset = true
AuroraStatsUI.Parent = VoiceChatService

-- Toggle Button (Square with Logo)
local AuroraToggleFrame = Instance.new("Frame")
AuroraToggleFrame.Name = "Toggle_Button"
AuroraToggleFrame.Size = UDim2.new(0, 50, 0, 50)
AuroraToggleFrame.Position = UDim2.new(1, -60, 0.4, 0)
AuroraToggleFrame.AnchorPoint = Vector2.new(0, 0.5)
AuroraToggleFrame.BackgroundColor3 = Color3.fromRGB(25, 15, 45)
AuroraToggleFrame.BackgroundTransparency = 0.2
AuroraToggleFrame.BorderSizePixel = 0
AuroraToggleFrame.Parent = AuroraStatsUI

local AuroraToggleCorner = Instance.new("UICorner")
AuroraToggleCorner.CornerRadius = UDim.new(0, 12)
AuroraToggleCorner.Parent = AuroraToggleFrame

local AuroraToggleStroke = Instance.new("UIStroke")
AuroraToggleStroke.Thickness = 1.5
AuroraToggleStroke.Color = Color3.fromRGB(138, 43, 226)
AuroraToggleStroke.Parent = AuroraToggleFrame

local AuroraToggleGlow = Instance.new("ImageLabel")
AuroraToggleGlow.Size = UDim2.new(1.3, 0, 1.3, 0)
AuroraToggleGlow.Position = UDim2.new(0.5, 0, 0.5, 0)
AuroraToggleGlow.AnchorPoint = Vector2.new(0.5, 0.5)
AuroraToggleGlow.BackgroundTransparency = 1
AuroraToggleGlow.Image = "rbxassetid://6014261993"
AuroraToggleGlow.ImageColor3 = Color3.fromRGB(138, 43, 226)
AuroraToggleGlow.ImageTransparency = 0.8
AuroraToggleGlow.ScaleType = Enum.ScaleType.Slice
AuroraToggleGlow.SliceCenter = Rect.new(20, 20, 80, 80)
AuroraToggleGlow.Parent = AuroraToggleFrame

local AuroraToggleLogo = Instance.new("ImageLabel")
AuroraToggleLogo.Size = UDim2.new(0.85, 0, 0.85, 0)
AuroraToggleLogo.Position = UDim2.new(0.5, 0, 0.5, 0)
AuroraToggleLogo.AnchorPoint = Vector2.new(0.5, 0.5)
AuroraToggleLogo.BackgroundTransparency = 1
AuroraToggleLogo.Image = LOGO_URL
AuroraToggleLogo.Parent = AuroraToggleFrame

local AuroraToggleLogoCorner = Instance.new("UICorner")
AuroraToggleLogoCorner.CornerRadius = UDim.new(0, 8)
AuroraToggleLogoCorner.Parent = AuroraToggleLogo

local AuroraToggleHit = Instance.new("TextButton")
AuroraToggleHit.Size = UDim2.new(1, 0, 1, 0)
AuroraToggleHit.BackgroundTransparency = 1
AuroraToggleHit.Text = ""
AuroraToggleHit.Parent = AuroraToggleFrame

-- Main Stats Frame (Glassmorphism)
local AuroraStatsFrame = Instance.new("Frame")
AuroraStatsFrame.Name = "Stats_Frame"
AuroraStatsFrame.Size = UDim2.new(0, 320, 0, 400)
AuroraStatsFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
AuroraStatsFrame.AnchorPoint = Vector2.new(0.5, 0.5)
AuroraStatsFrame.BackgroundColor3 = Color3.fromRGB(18, 10, 35)
AuroraStatsFrame.BackgroundTransparency = 0.1
AuroraStatsFrame.BorderSizePixel = 0
AuroraStatsFrame.Visible = false
AuroraStatsFrame.Parent = AuroraStatsUI

local AuroraStatsCorner = Instance.new("UICorner")
AuroraStatsCorner.CornerRadius = UDim.new(0, 18)
AuroraStatsCorner.Parent = AuroraStatsFrame

local AuroraStatsGradient = Instance.new("UIGradient")
AuroraStatsGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(45, 22, 85)),
    ColorSequenceKeypoint.new(0.4, Color3.fromRGB(28, 14, 55)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 8, 30))
})
AuroraStatsGradient.Rotation = 145
AuroraStatsGradient.Parent = AuroraStatsFrame

local AuroraStatsStroke = Instance.new("UIStroke")
AuroraStatsStroke.Thickness = 1.5
AuroraStatsStroke.Color = Color3.fromRGB(138, 43, 226)
AuroraStatsStroke.Parent = AuroraStatsFrame

local AuroraStatsGlow = Instance.new("ImageLabel")
AuroraStatsGlow.Size = UDim2.new(1.2, 0, 1.2, 0)
AuroraStatsGlow.Position = UDim2.new(0.5, 0, 0.5, 0)
AuroraStatsGlow.AnchorPoint = Vector2.new(0.5, 0.5)
AuroraStatsGlow.BackgroundTransparency = 1
AuroraStatsGlow.Image = "rbxassetid://6014261993"
AuroraStatsGlow.ImageColor3 = Color3.fromRGB(138, 43, 226)
AuroraStatsGlow.ImageTransparency = 0.88
AuroraStatsGlow.ScaleType = Enum.ScaleType.Slice
AuroraStatsGlow.SliceCenter = Rect.new(20, 20, 80, 80)
AuroraStatsGlow.ZIndex = -1
AuroraStatsGlow.Parent = AuroraStatsFrame

-- Header Section with Logo
local AuroraHeader = Instance.new("Frame")
AuroraHeader.Size = UDim2.new(1, 0, 0, 70)
AuroraHeader.BackgroundColor3 = Color3.fromRGB(35, 18, 65)
AuroraHeader.BackgroundTransparency = 0.4
AuroraHeader.BorderSizePixel = 0
AuroraHeader.Parent = AuroraStatsFrame

local AuroraHeaderCorner = Instance.new("UICorner")
AuroraHeaderCorner.CornerRadius = UDim.new(0, 18)
AuroraHeaderCorner.Parent = AuroraHeader

local AuroraHeaderFix = Instance.new("Frame")
AuroraHeaderFix.Size = UDim2.new(1, 0, 0, 25)
AuroraHeaderFix.Position = UDim2.new(0, 0, 1, -25)
AuroraHeaderFix.BackgroundColor3 = Color3.fromRGB(35, 18, 65)
AuroraHeaderFix.BackgroundTransparency = 0.4
AuroraHeaderFix.BorderSizePixel = 0
AuroraHeaderFix.Parent = AuroraHeader

local AuroraHeaderLogo = Instance.new("ImageLabel")
AuroraHeaderLogo.Size = UDim2.new(0, 45, 0, 45)
AuroraHeaderLogo.Position = UDim2.new(0, 15, 0.5, 0)
AuroraHeaderLogo.AnchorPoint = Vector2.new(0, 0.5)
AuroraHeaderLogo.BackgroundTransparency = 1
AuroraHeaderLogo.Image = LOGO_URL
AuroraHeaderLogo.Parent = AuroraHeader

local AuroraHeaderLogoCorner = Instance.new("UICorner")
AuroraHeaderLogoCorner.CornerRadius = UDim.new(0, 10)
AuroraHeaderLogoCorner.Parent = AuroraHeaderLogo

local AuroraTitleLabel = Instance.new("TextLabel")
AuroraTitleLabel.Size = UDim2.new(1, -120, 0, 28)
AuroraTitleLabel.Position = UDim2.new(0, 68, 0, 12)
AuroraTitleLabel.BackgroundTransparency = 1
AuroraTitleLabel.Text = "AURORA KAITUN"
AuroraTitleLabel.TextColor3 = Color3.fromRGB(235, 200, 255)
AuroraTitleLabel.TextSize = 18
AuroraTitleLabel.Font = Enum.Font.GothamBlack
AuroraTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
AuroraTitleLabel.Parent = AuroraHeader

local AuroraDevLabel = Instance.new("TextLabel")
AuroraDevLabel.Size = UDim2.new(1, -120, 0, 18)
AuroraDevLabel.Position = UDim2.new(0, 68, 0, 38)
AuroraDevLabel.BackgroundTransparency = 1
AuroraDevLabel.Text = "by ImPixelatedZ/Pixz/Zee"
AuroraDevLabel.TextColor3 = Color3.fromRGB(150, 110, 200)
AuroraDevLabel.TextSize = 11
AuroraDevLabel.Font = Enum.Font.GothamSemibold
AuroraDevLabel.TextXAlignment = Enum.TextXAlignment.Left
AuroraDevLabel.Parent = AuroraHeader

local AuroraCloseButton = Instance.new("TextButton")
AuroraCloseButton.Size = UDim2.new(0, 32, 0, 32)
AuroraCloseButton.Position = UDim2.new(1, -42, 0, 19)
AuroraCloseButton.BackgroundColor3 = Color3.fromRGB(80, 40, 130)
AuroraCloseButton.BackgroundTransparency = 0.3
AuroraCloseButton.BorderSizePixel = 0
AuroraCloseButton.Text = ""
AuroraCloseButton.Parent = AuroraHeader

local AuroraCloseCorner = Instance.new("UICorner")
AuroraCloseCorner.CornerRadius = UDim.new(0, 10)
AuroraCloseCorner.Parent = AuroraCloseButton

local AuroraCloseIcon = Instance.new("TextLabel")
AuroraCloseIcon.Size = UDim2.new(1, 0, 1, 0)
AuroraCloseIcon.BackgroundTransparency = 1
AuroraCloseIcon.Text = "X"
AuroraCloseIcon.TextColor3 = Color3.fromRGB(255, 200, 255)
AuroraCloseIcon.TextSize = 16
AuroraCloseIcon.Font = Enum.Font.GothamBold
AuroraCloseIcon.Parent = AuroraCloseButton

-- Player Info Card
local AuroraPlayerCard = Instance.new("Frame")
AuroraPlayerCard.Size = UDim2.new(1, -24, 0, 90)
AuroraPlayerCard.Position = UDim2.new(0, 12, 0, 80)
AuroraPlayerCard.BackgroundColor3 = Color3.fromRGB(30, 15, 55)
AuroraPlayerCard.BackgroundTransparency = 0.35
AuroraPlayerCard.BorderSizePixel = 0
AuroraPlayerCard.Parent = AuroraStatsFrame

local AuroraPlayerCardCorner = Instance.new("UICorner")
AuroraPlayerCardCorner.CornerRadius = UDim.new(0, 12)
AuroraPlayerCardCorner.Parent = AuroraPlayerCard

local AuroraPlayerCardStroke = Instance.new("UIStroke")
AuroraPlayerCardStroke.Thickness = 0.5
AuroraPlayerCardStroke.Color = Color3.fromRGB(90, 50, 160)
AuroraPlayerCardStroke.Transparency = 0.5
AuroraPlayerCardStroke.Parent = AuroraPlayerCard

local AuroraUsernameLabel = Instance.new("TextLabel")
AuroraUsernameLabel.Name = "Username_Label"
AuroraUsernameLabel.Size = UDim2.new(1, -16, 0, 22)
AuroraUsernameLabel.Position = UDim2.new(0, 8, 0, 8)
AuroraUsernameLabel.BackgroundColor3 = Color3.fromRGB(25, 12, 48)
AuroraUsernameLabel.BackgroundTransparency = 0.4
AuroraUsernameLabel.BorderSizePixel = 0
AuroraUsernameLabel.Text = "  Player: Loading..."
AuroraUsernameLabel.TextColor3 = Color3.fromRGB(200, 165, 255)
AuroraUsernameLabel.TextSize = 12
AuroraUsernameLabel.Font = Enum.Font.GothamSemibold
AuroraUsernameLabel.TextXAlignment = Enum.TextXAlignment.Left
AuroraUsernameLabel.Parent = AuroraPlayerCard

local AuroraUsernameCorner = Instance.new("UICorner")
AuroraUsernameCorner.CornerRadius = UDim.new(0, 6)
AuroraUsernameCorner.Parent = AuroraUsernameLabel

local AuroraMoneyLabel = Instance.new("TextLabel")
AuroraMoneyLabel.Name = "Money_Label"
AuroraMoneyLabel.Size = UDim2.new(0.48, -6, 0, 22)
AuroraMoneyLabel.Position = UDim2.new(0, 8, 0, 34)
AuroraMoneyLabel.BackgroundColor3 = Color3.fromRGB(25, 12, 48)
AuroraMoneyLabel.BackgroundTransparency = 0.4
AuroraMoneyLabel.BorderSizePixel = 0
AuroraMoneyLabel.Text = "  Beli: 0"
AuroraMoneyLabel.TextColor3 = Color3.fromRGB(255, 215, 80)
AuroraMoneyLabel.TextSize = 11
AuroraMoneyLabel.Font = Enum.Font.GothamSemibold
AuroraMoneyLabel.TextXAlignment = Enum.TextXAlignment.Left
AuroraMoneyLabel.Parent = AuroraPlayerCard

local AuroraMoneyCorner = Instance.new("UICorner")
AuroraMoneyCorner.CornerRadius = UDim.new(0, 6)
AuroraMoneyCorner.Parent = AuroraMoneyLabel

local AuroraFragmentsLabel = Instance.new("TextLabel")
AuroraFragmentsLabel.Name = "Fragments_Label"
AuroraFragmentsLabel.Size = UDim2.new(0.48, -6, 0, 22)
AuroraFragmentsLabel.Position = UDim2.new(0.52, -2, 0, 34)
AuroraFragmentsLabel.BackgroundColor3 = Color3.fromRGB(25, 12, 48)
AuroraFragmentsLabel.BackgroundTransparency = 0.4
AuroraFragmentsLabel.BorderSizePixel = 0
AuroraFragmentsLabel.Text = "  Frag: 0"
AuroraFragmentsLabel.TextColor3 = Color3.fromRGB(80, 190, 255)
AuroraFragmentsLabel.TextSize = 11
AuroraFragmentsLabel.Font = Enum.Font.GothamSemibold
AuroraFragmentsLabel.TextXAlignment = Enum.TextXAlignment.Left
AuroraFragmentsLabel.Parent = AuroraPlayerCard

local AuroraFragmentsCorner = Instance.new("UICorner")
AuroraFragmentsCorner.CornerRadius = UDim.new(0, 6)
AuroraFragmentsCorner.Parent = AuroraFragmentsLabel

local AuroraLevelLabel = Instance.new("TextLabel")
AuroraLevelLabel.Name = "Level_Label"
AuroraLevelLabel.Size = UDim2.new(0.48, -6, 0, 22)
AuroraLevelLabel.Position = UDim2.new(0, 8, 0, 60)
AuroraLevelLabel.BackgroundColor3 = Color3.fromRGB(25, 12, 48)
AuroraLevelLabel.BackgroundTransparency = 0.4
AuroraLevelLabel.BorderSizePixel = 0
AuroraLevelLabel.Text = "  Level: 0"
AuroraLevelLabel.TextColor3 = Color3.fromRGB(130, 255, 130)
AuroraLevelLabel.TextSize = 11
AuroraLevelLabel.Font = Enum.Font.GothamSemibold
AuroraLevelLabel.TextXAlignment = Enum.TextXAlignment.Left
AuroraLevelLabel.Parent = AuroraPlayerCard

local AuroraLevelCorner = Instance.new("UICorner")
AuroraLevelCorner.CornerRadius = UDim.new(0, 6)
AuroraLevelCorner.Parent = AuroraLevelLabel

local AuroraRaceLabel = Instance.new("TextLabel")
AuroraRaceLabel.Name = "Race_Label"
AuroraRaceLabel.Size = UDim2.new(0.48, -6, 0, 22)
AuroraRaceLabel.Position = UDim2.new(0.52, -2, 0, 60)
AuroraRaceLabel.BackgroundColor3 = Color3.fromRGB(25, 12, 48)
AuroraRaceLabel.BackgroundTransparency = 0.4
AuroraRaceLabel.BorderSizePixel = 0
AuroraRaceLabel.Text = "  Race: Human"
AuroraRaceLabel.TextColor3 = Color3.fromRGB(255, 170, 210)
AuroraRaceLabel.TextSize = 11
AuroraRaceLabel.Font = Enum.Font.GothamSemibold
AuroraRaceLabel.TextXAlignment = Enum.TextXAlignment.Left
AuroraRaceLabel.Parent = AuroraPlayerCard

local AuroraRaceCorner = Instance.new("UICorner")
AuroraRaceCorner.CornerRadius = UDim.new(0, 6)
AuroraRaceCorner.Parent = AuroraRaceLabel

-- Items Checklist Card
local AuroraItemsCard = Instance.new("Frame")
AuroraItemsCard.Size = UDim2.new(1, -24, 0, 210)
AuroraItemsCard.Position = UDim2.new(0, 12, 0, 178)
AuroraItemsCard.BackgroundColor3 = Color3.fromRGB(30, 15, 55)
AuroraItemsCard.BackgroundTransparency = 0.35
AuroraItemsCard.BorderSizePixel = 0
AuroraItemsCard.Parent = AuroraStatsFrame

local AuroraItemsCardCorner = Instance.new("UICorner")
AuroraItemsCardCorner.CornerRadius = UDim.new(0, 12)
AuroraItemsCardCorner.Parent = AuroraItemsCard

local AuroraItemsCardStroke = Instance.new("UIStroke")
AuroraItemsCardStroke.Thickness = 0.5
AuroraItemsCardStroke.Color = Color3.fromRGB(90, 50, 160)
AuroraItemsCardStroke.Transparency = 0.5
AuroraItemsCardStroke.Parent = AuroraItemsCard

local AuroraItemsTitle = Instance.new("TextLabel")
AuroraItemsTitle.Size = UDim2.new(1, -16, 0, 20)
AuroraItemsTitle.Position = UDim2.new(0, 8, 0, 8)
AuroraItemsTitle.BackgroundTransparency = 1
AuroraItemsTitle.Text = "ITEMS CHECKLIST"
AuroraItemsTitle.TextColor3 = Color3.fromRGB(180, 140, 255)
AuroraItemsTitle.TextSize = 11
AuroraItemsTitle.Font = Enum.Font.GothamBold
AuroraItemsTitle.TextXAlignment = Enum.TextXAlignment.Left
AuroraItemsTitle.Parent = AuroraItemsCard

local AuroraItemsList = {"Cursed Dual Katana", "Mirror Fractal", "Soul Guitar", "Godhuman", "Valkyrie Helmet", "Race V4", "Tushita", "Yama"}

local AuroraItemsContainer = Instance.new("Frame")
AuroraItemsContainer.Size = UDim2.new(1, -12, 0, 170)
AuroraItemsContainer.Position = UDim2.new(0, 6, 0, 32)
AuroraItemsContainer.BackgroundTransparency = 1
AuroraItemsContainer.Parent = AuroraItemsCard

local AuroraItemsLayout = Instance.new("UIGridLayout")
AuroraItemsLayout.CellSize = UDim2.new(0.5, -4, 0, 28)
AuroraItemsLayout.CellPadding = UDim2.new(0, 4, 0, 4)
AuroraItemsLayout.StartCorner = Enum.StartCorner.TopLeft
AuroraItemsLayout.Parent = AuroraItemsContainer

for i, itemName in ipairs(AuroraItemsList) do
    local itemFrame = Instance.new("Frame")
    itemFrame.BackgroundColor3 = Color3.fromRGB(28, 14, 50)
    itemFrame.BackgroundTransparency = 0.25
    itemFrame.BorderSizePixel = 0
    itemFrame.Name = itemName:gsub(" ", "_")
    itemFrame.Parent = AuroraItemsContainer
    
    local itemCorner = Instance.new("UICorner")
    itemCorner.CornerRadius = UDim.new(0, 8)
    itemCorner.Parent = itemFrame
    
    local itemIndicator = Instance.new("Frame")
    itemIndicator.Size = UDim2.new(0, 10, 0, 10)
    itemIndicator.Position = UDim2.new(0, 8, 0.5, 0)
    itemIndicator.AnchorPoint = Vector2.new(0, 0.5)
    itemIndicator.BackgroundColor3 = Color3.fromRGB(60, 35, 100)
    itemIndicator.BorderSizePixel = 0
    itemIndicator.Name = "Indicator"
    itemIndicator.Parent = itemFrame
    
    local itemIndicatorCorner = Instance.new("UICorner")
    itemIndicatorCorner.CornerRadius = UDim.new(0, 3)
    itemIndicatorCorner.Parent = itemIndicator
    
    local itemLabel = Instance.new("TextLabel")
    itemLabel.Size = UDim2.new(1, -24, 1, 0)
    itemLabel.Position = UDim2.new(0, 22, 0, 0)
    itemLabel.BackgroundTransparency = 1
    itemLabel.Text = itemName
    itemLabel.TextColor3 = Color3.fromRGB(175, 145, 225)
    itemLabel.TextSize = 10
    itemLabel.Font = Enum.Font.GothamSemibold
    itemLabel.TextXAlignment = Enum.TextXAlignment.Left
    itemLabel.TextTruncate = Enum.TextTruncate.AtEnd
    itemLabel.Parent = itemFrame
end

-- Animation and Logic
local AuroraIsOpen = false
local AuroraOpenTweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
local AuroraCloseTweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.In)

local function AuroraOpenStats()
    AuroraIsOpen = true
    AuroraStatsFrame.Visible = true
    AuroraStatsFrame.Size = UDim2.new(0, 0, 0, 0)
    AuroraStatsFrame.BackgroundTransparency = 1
    
    AuroraTweenService:Create(AuroraStatsFrame, AuroraOpenTweenInfo, {
        Size = UDim2.new(0, 320, 0, 400),
        BackgroundTransparency = 0.1
    }):Play()
    
    AuroraTweenService:Create(AuroraToggleFrame, TweenInfo.new(0.2), {
        BackgroundTransparency = 1
    }):Play()
    
    task.wait(0.2)
    AuroraToggleFrame.Visible = false
end

local function AuroraCloseStats()
    AuroraIsOpen = false
    
    AuroraTweenService:Create(AuroraStatsFrame, AuroraCloseTweenInfo, {
        Size = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1
    }):Play()
    
    task.wait(0.25)
    AuroraStatsFrame.Visible = false
    AuroraToggleFrame.Visible = true
    AuroraToggleFrame.BackgroundTransparency = 0.2
end

AuroraToggleHit.MouseButton1Click:Connect(function()
    if not AuroraIsOpen then
        AuroraOpenStats()
    end
end)

AuroraCloseButton.MouseButton1Click:Connect(function()
    if AuroraIsOpen then
        AuroraCloseStats()
    end
end)

AuroraToggleHit.MouseEnter:Connect(function()
    AuroraTweenService:Create(AuroraToggleStroke, TweenInfo.new(0.2), {
        Color = Color3.fromRGB(180, 100, 255)
    }):Play()
end)

AuroraToggleHit.MouseLeave:Connect(function()
    AuroraTweenService:Create(AuroraToggleStroke, TweenInfo.new(0.2), {
        Color = Color3.fromRGB(138, 43, 226)
    }):Play()
end)

-- Dragging for Mobile
local AuroraDragging = false
local AuroraDragStart, AuroraDragPos

AuroraToggleFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        AuroraDragging = true
        AuroraDragStart = input.Position
        AuroraDragPos = AuroraToggleFrame.Position
    end
end)

AuroraToggleFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        AuroraDragging = false
    end
end)

AuroraUserInputService.InputChanged:Connect(function(input)
    if AuroraDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - AuroraDragStart
        AuroraToggleFrame.Position = UDim2.new(
            AuroraDragPos.X.Scale, AuroraDragPos.X.Offset + delta.X,
            AuroraDragPos.Y.Scale, AuroraDragPos.Y.Offset + delta.Y
        )
    end
end)

local function AuroraFormatNumber(num)
    if num >= 1e9 then
        return string.format("%.2fB", num / 1e9)
    elseif num >= 1e6 then
        return string.format("%.2fM", num / 1e6)
    elseif num >= 1e3 then
        return string.format("%.2fK", num / 1e3)
    else
        return tostring(math.floor(num))
    end
end

local function AuroraUpdateStats()
    local player = game.Players.LocalPlayer
    local data = player:WaitForChild("Data")
    
    AuroraUsernameLabel.Text = "  " .. player.Name
    
    local beli = data:FindFirstChild("Beli")
    if beli then
        local currentBeli = beli.Value
        AuroraMoneyLabel.Text = "  Beli: " .. AuroraFormatNumber(currentBeli)
        if lastBeli > 0 and currentBeli > lastBeli then
            local diff = currentBeli - lastBeli
            CreateToast("Beli Earned!", "+" .. AuroraFormatNumber(diff) .. " Beli", "success")
        end
        lastBeli = currentBeli
    end
    
    local fragments = data:FindFirstChild("Fragments")
    if fragments then
        local currentFragments = fragments.Value
        AuroraFragmentsLabel.Text = "  Frag: " .. AuroraFormatNumber(currentFragments)
        if lastFragments > 0 and currentFragments > lastFragments then
            local diff = currentFragments - lastFragments
            CreateToast("Fragments Earned!", "+" .. AuroraFormatNumber(diff) .. " Fragments", "info")
        end
        lastFragments = currentFragments
    end
    
    local level = data:FindFirstChild("Level")
    if level then
        local currentLevel = level.Value
        AuroraLevelLabel.Text = "  Level: " .. tostring(currentLevel)
        if lastLevel > 0 and currentLevel > lastLevel then
            CreateToast("Level Up!", "Now Level " .. tostring(currentLevel), "level")
        end
        lastLevel = currentLevel
    end
    
    local race = data:FindFirstChild("Race")
    if race then
        AuroraRaceLabel.Text = "  Race: " .. tostring(race.Value)
    end
    
    local backpack = player:FindFirstChild("Backpack")
    local savedTools = {}
    
    if backpack then
        for _, item in ipairs(backpack:GetChildren()) do
            savedTools[item.Name] = true
        end
    end
    
    local starterGear = player:FindFirstChild("StarterGear")
    if starterGear then
        for _, item in ipairs(starterGear:GetChildren()) do
            savedTools[item.Name] = true
        end
    end
    
    for _, itemFrame in ipairs(AuroraItemsContainer:GetChildren()) do
        if itemFrame:IsA("Frame") then
            local label = itemFrame:FindFirstChildWhichIsA("TextLabel")
            local indicator = itemFrame:FindFirstChild("Indicator")
            if label and indicator then
                local itemName = itemFrame.Name:gsub("_", " ")
                if savedTools[itemName] then
                    if not lastItems[itemName] then
                        CreateToast("Item Obtained!", itemName, "success")
                    end
                    indicator.BackgroundColor3 = Color3.fromRGB(70, 200, 120)
                    label.TextColor3 = Color3.fromRGB(110, 255, 150)
                    lastItems[itemName] = true
                else
                    indicator.BackgroundColor3 = Color3.fromRGB(60, 35, 100)
                    label.TextColor3 = Color3.fromRGB(175, 145, 225)
                end
            end
        end
    end
end

task.spawn(function()
    while task.wait(2) do
        pcall(AuroraUpdateStats)
    end
end)

task.spawn(function()
    local colors = {
        Color3.fromRGB(138, 43, 226),
        Color3.fromRGB(170, 60, 245),
        Color3.fromRGB(190, 85, 220),
        Color3.fromRGB(210, 120, 240)
    }
    local idx = 1
    while task.wait(0.5) do
        if AuroraStatsFrame.Visible then
            AuroraTweenService:Create(AuroraStatsStroke, TweenInfo.new(0.4), {
                Color = colors[idx]
            }):Play()
            idx = idx % #colors + 1
        end
    end
end)

task.spawn(function()
    while task.wait(1.2) do
        if not AuroraIsOpen then
            AuroraTweenService:Create(AuroraToggleGlow, TweenInfo.new(0.7, Enum.EasingStyle.Quad), {
                ImageTransparency = 0.5
            }):Play()
            task.wait(0.7)
            AuroraTweenService:Create(AuroraToggleGlow, TweenInfo.new(0.7, Enum.EasingStyle.Quad), {
                ImageTransparency = 0.88
            }):Play()
        end
    end
end)


if PlaceId == 2753915549 then
        Old_World = true
elseif PlaceId == 4442272183 then
        New_World = true
elseif PlaceId == 7449423635 then
        Three_World = true
end
Camera = (LocalPlayer:WaitForChild("Data")):WaitForChild("Level")
function CheckLevel2()
        local store2 = {}
        store2[2] = (game:GetService("Players"))["LocalPlayer"]["Data"]["Level"]["Value"]
        if Old_World then
                if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 9 or SelectMonster == "" then
                        Ms = "Bandit"
                        NameQuest = "BanditQuest1"
                        QuestLv = 1
                        NameMon = "Bandit"
                        CFrameQ = CFrame["new"](1059.37195, 15.4495068, 1550.4231, .939700544, 0, -0.341998369, 0, 1, 0, .341998369, 0, .939700544)
                        CFrameMon = CFrame["new"](1353.44885, 3.40935516, 1376.92029, .776053488, -6.97791975e-08, .630666852, 6.99138596e-08, 1, 2.4612488e-08, -0.630666852, 2.49917598e-08, .776053488)
                        Next_Level_X = 10
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 10 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 100 then
                        Ms = "Shanda"
                        NameQuest = "SkyExp1Quest"
                        QuestLv = 2
                        NameMon = "Shanda"
                        CFrameQ = CFrame["new"](-7859.09814, 5544.19043, -381.476196)
                        CFrameMon = CFrame["new"](-7904.57373, 5584.37646, -459.62973)
                        Next_Level_X = 75
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 60 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 74 or SelectMonster == "Desert Bandit" then
                        Ms = "Desert Bandit"
                        NameQuest = "DesertQuest"
                        QuestLv = 1
                        NameMon = "Desert Bandit"
                        CFrameQ = CFrame["new"](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
                        CFrameMon = CFrame["new"](932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-08, .0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 75 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 89 or SelectMonster == "Desert Officer" then
                        Ms = "Desert Officer"
                        NameQuest = "DesertQuest"
                        QuestLv = 2
                        NameMon = "Desert Officer"
                        CFrameQ = CFrame["new"](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
                        CFrameMon = CFrame["new"](1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-08, -0.070099175, -1.69377223e-08, 1, -8.17798806e-08, .070099175, -8.03913949e-08, -0.997540116)
                        SelectMonster = "Desert Bandit"
                        Next_Level_X = 90
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 90 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 99 or SelectMonster == "Snow Bandit" then
                        Ms = "Snow Bandit"
                        NameQuest = "SnowQuest"
                        QuestLv = 1
                        NameMon = "Snow Bandit"
                        CFrameQ = CFrame["new"](1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                        CFrameMon = CFrame["new"](1412.92346, 55.3503647, -1260.62036, -0.246266365, -0.0169920288, -0.969053388, .000432241941, .999844253, -0.0176417865, .969202161, -0.00476344163, -0.246220857)
                        if SelectMonster == "Snow Bandit" then
                        else
                                Next_Level_X = 100
                        end
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 110 then
                                SelectBoss_P = "Yeti"
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 100 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 119 or SelectMonster == "Snowman" then
                        Next_Level_X = 120
                        Ms = "Snowman"
                        NameQuest = "SnowQuest"
                        QuestLv = 2
                        NameMon = "Snowman"
                        CFrameQ = CFrame["new"](1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                        CFrameMon = CFrame["new"](1376.86401, 97.2779999, -1396.93115, -0.986755967, 7.71178321e-08, -0.162211925, 7.71531674e-08, 1, 6.08143536e-09, .162211925, -6.51427134e-09, -0.986755967)
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 110 then
                                SelectBoss_P = "Yeti"
                        end
                        SelectMonster = "Snow Bandit"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 120 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 174 or SelectMonster == "Chief Petty Officer" then
                        Ms = "Chief Petty Officer"
                        NameQuest = "MarineQuest2"
                        QuestLv = 1
                        NameMon = "Chief Petty Officer"
                        CFrameQ = CFrame["new"](-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        CFrameMon = CFrame["new"](-4882.8623, 22.6520386, 4255.53516, .273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, .96181643, -3.01326679e-08, .273695946)
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 130 then
                                SelectBoss_P = "Vice Admiral"
                        end
                        if SelectMonster == "Chief Petty Officer" then
                        else
                                Next_Level_X = 175
                        end
                elseif SelectMonster == "Sky Bandit" then
                        Ms = "Sky Bandit"
                        NameQuest = "SkyQuest"
                        QuestLv = 1
                        NameMon = "Sky Bandit"
                        CFrameQ = CFrame["new"](-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
                        CFrameMon = CFrame["new"](-4959.51367, 365.39267, -2974.56812, .964867651, 7.74418396e-08, .262737453, -6.95931988e-08, 1, -3.91783708e-08, -0.262737453, 1.95171506e-08, .964867651)
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 175 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 189 or SelectMonster == "Dark Master" then
                        Ms = "Dark Master"
                        NameQuest = "SkyQuest"
                        QuestLv = 2
                        NameMon = "Dark Master"
                        CFrameQ = CFrame["new"](-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
                        CFrameMon = CFrame["new"](-5079.98096, 376.477356, -2194.17139, .465965867, -3.69776352e-08, .884802461, 3.40249851e-09, 1, 4.00000886e-08, -0.884802461, -1.56281423e-08, .465965867)
                        SelectMonster = "Sky Bandit"
                        if SelectMonster == "Dark Master" then
                        else
                                Next_Level_X = 190
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 190 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 209 or SelectMonster == "Prisoner" then
                        Ms = "Prisoner"
                        QuestLv = 1
                        NameQuest = "PrisonerQuest"
                        NameMon = "Prisoner"
                        CFrameQ = CFrame["new"](5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, .995993316, -2.06384709e-09, -0.0894274712)
                        CFrameMon = CFrame["new"](5433.39307, 88.678093, 514.986877, .879988372, 0, -0.474995494, 0, 1, 0, .474995494, 0, .879988372)
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 220 then
                                SelectBoss_P = "Warden"
                        end
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 232 then
                                SelectBoss_P = "Chief Warden"
                        end
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 242 then
                                SelectBoss_P = "Thunder God"
                        end
                        if SelectMonster == "Prisoner" then
                        else
                                Next_Level_X = 210
                        end
                        Bypass_TP_Dis = true
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 210 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 249 or SelectMonster == "Dangerous Prisoner" then
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 220 then
                                SelectBoss_P = "Warden"
                        end
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 232 then
                                SelectBoss_P = "Chief Warden"
                        end
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 242 then
                                SelectBoss_P = "Thunder God"
                        end
                        Ms = "Dangerous Prisoner"
                        QuestLv = 2
                        NameQuest = "PrisonerQuest"
                        NameMon = "Dangerous Prisoner"
                        CFrameQ = CFrame["new"](5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, .995993316, -2.06384709e-09, -0.0894274712)
                        CFrameMon = CFrame["new"](5433.39307, 88.678093, 514.986877, .879988372, 0, -0.474995494, 0, 1, 0, .474995494, 0, .879988372)
                        SelectMonster = "Prisoner"
                        Next_Level_X = 250
                        Bypass_TP_Dis = true
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 250 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 274 or SelectMonster == "Toga Warrior" then
                        Ms = "Toga Warrior"
                        NameQuest = "ColosseumQuest"
                        QuestLv = 1
                        NameMon = "Toga Warrior"
                        CFrameQ = CFrame["new"](-1576.11743, 7.38933945, -2983.30762, .576966345, 1.22114863e-09, .816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, .576966345)
                        CFrameMon = CFrame["new"](-1779.97583, 44.6077499, -2736.35474, .984437346, 4.10396339e-08, .175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, .984437346)
                        if SelectMonster == "Toga Warrior" then
                        else
                                Next_Level_X = 275
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 275 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 299 or SelectMonster == "Gladiator" then
                        Ms = "Gladiator"
                        NameQuest = "ColosseumQuest"
                        QuestLv = 2
                        NameMon = "Gladiator"
                        CFrameQ = CFrame["new"](-1576.11743, 7.38933945, -2983.30762, .576966345, 1.22114863e-09, .816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, .576966345)
                        CFrameMon = CFrame["new"](-1274.75903, 58.1895943, -3188.16309, .464524001, 6.21005611e-08, .885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, .464524001)
                        SelectMonster = "Toga Warrior"
                        Next_Level_X = 300
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 300 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 324 or SelectMonster == "Military Soldier" then
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 350 then
                                SelectBoss_P = "Magma Admiral"
                        end
                        Ms = "Military Soldier"
                        NameQuest = "MagmaQuest"
                        QuestLv = 1
                        NameMon = "Military Soldier"
                        CFrameQ = CFrame["new"](-5316.55859, 12.2370615, 8517.2998, .588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, .808542669, 3.60215964e-08, .588437557)
                        CFrameMon = CFrame["new"](-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, .815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
                        if SelectMonster == "Military Soldier" then
                        else
                                Next_Level_X = 325
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 325 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 374 or SelectMonster == "Military Spy" then
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 350 then
                                SelectBoss_P = "Magma Admiral"
                        end
                        Ms = "Military Spy"
                        NameQuest = "MagmaQuest"
                        QuestLv = 2
                        NameMon = "Military Spy"
                        CFrameQ = CFrame["new"](-5316.55859, 12.2370615, 8517.2998, .588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, .808542669, 3.60215964e-08, .588437557)
                        CFrameMon = CFrame["new"](-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, .982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
                        SelectMonster = "Military Soldier"
                        Next_Level_X = 375
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 375 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 399 or SelectMonster == "Fishman Warrior" then
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 425 then
                                SelectBoss_P = "Fishman Lord"
                        end
                        Ms = "Fishman Warrior"
                        NameQuest = "FishmanQuest"
                        QuestLv = 1
                        NameMon = "Fishman Warrior"
                        CFrameQ = CFrame["new"](61122.5625, 18.4716396, 1568.16504)
                        CFrameMon = CFrame["new"](60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, .996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
                        if SelectMonster == "Fishman Warrior" then
                        else
                                Next_Level_X = 400
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 400 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 449 or SelectMonster == "Fishman Commando" then
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 425 then
                                SelectBoss_P = "Fishman Lord"
                        end
                        Ms = "Fishman Commando"
                        NameQuest = "FishmanQuest"
                        QuestLv = 2
                        NameMon = "Fishman Commando"
                        CFrameQ = CFrame["new"](61122.5625, 18.4716396, 1568.16504)
                        CFrameMon = CFrame["new"](61902.7383, 18.4828358, 1478.33936, -0.803795099, 0, -0.594906271, 0, 1, 0, .594906271, 0, -0.803795099)
                        if SelectMonster == "Fishman Commando" then
                        else
                                Next_Level_X = 450
                        end
                        SelectMonster = "Fishman Warrior"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 450 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 474 or SelectMonster == "God's Guard" then
                        Ms = "God's Guard"
                        NameQuest = "SkyExp1Quest"
                        QuestLv = 1
                        NameMon = "God's Guards"
                        CFrameQ = CFrame["new"](-4721.71436, 845.277161, -1954.20105)
                        CFrameMon = CFrame["new"](-4716.95703, 853.089722, -1933.925427)
                        if SelectMonster == "God's Guard" then
                        else
                                Next_Level_X = 475
                        end
                        SelectMonster = "Fishman Commando"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 475 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 524 or SelectMonster == "Shanda" then
                        Ms = "Shanda"
                        NameQuest = "SkyExp1Quest"
                        QuestLv = 2
                        NameMon = "Shandas"
                        CFrameQ = CFrame["new"](-7859.09814, 5544.19043, -381.476196)
                        CFrameMon = CFrame["new"](-7904.57373, 5584.37646, -459.62973)
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 500 then
                                SelectBoss_P = "Wysper"
                        end
                        if SelectMonster == "Shanda" then
                        else
                                Next_Level_X = 525
                        end
                        SelectMonster = "God's Guard"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 525 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 549 or SelectMonster == "Royal Squad" then
                        Ms = "Royal Squad"
                        NameQuest = "SkyExp2Quest"
                        QuestLv = 1
                        NameMon = "Royal Squad"
                        CFrameQ = CFrame["new"](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        CFrameMon = CFrame["new"](-7555.04199, 5606.90479, -1303.24744, -0.896107852, -9.6057462e-10, -0.443836004, -4.24974544e-09, 1, 6.41599973e-09, .443836004, 7.63560326e-09, -0.896107852)
                        if SelectMonster == "Royal Squad" then
                        else
                                Next_Level_X = 550
                        end
                        SelectMonster = "Shanda"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 550 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 624 or SelectMonster == "Royal Soldier" then
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 575 then
                                SelectBoss_P = "Thunder God"
                        end
                        Ms = "Royal Soldier"
                        NameQuest = "SkyExp2Quest"
                        QuestLv = 2
                        NameMon = "Royal Soldier"
                        CFrameQ = CFrame["new"](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        CFrameMon = CFrame["new"](-7837.31152, 5649.65186, -1791.08582, -0.716008604, .0104285581, -0.698013008, 5.02521061e-06, .99988848, .0149335321, .69809103, .0106890313, -0.715928733)
                        if SelectMonster == "Royal Soldier" then
                        else
                                Next_Level_X = 625
                        end
                        SelectMonster = "Royal Squad"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 625 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 649 or SelectMonster == "Galley Pirate" then
                        Ms = "Galley Pirate"
                        NameQuest = "FountainQuest"
                        QuestLv = 1
                        NameMon = "Galley Pirate"
                        CFrameQ = CFrame["new"](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
                        CFrameMon = CFrame["new"](5569.80518, 38.5269432, 3849.01196, .896460414, 3.98027495e-08, .443124533, -1.34262139e-08, 1, -6.26611296e-08, -0.443124533, 5.02237434e-08, .896460414)
                        if SelectMonster == "Galley Pirate" then
                        else
                                Next_Level_X = 650
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 650 or SelectMonster == "Galley Captain" then
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 675 then
                                SelectBoss_P = "Cyborg"
                        end
                        Ms = "Galley Captain"
                        NameQuest = "FountainQuest"
                        QuestLv = 2
                        NameMon = "Galley Captain"
                        CFrameQ = CFrame["new"](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
                        CFrameMon = CFrame["new"](5782.90186, 94.5326462, 4716.78174, .361808896, -1.24757526e-06, -0.932252586, 2.16989656e-06, 1, -4.96097414e-07, .932252586, -1.84339774e-06, .361808896)
                        SelectMonster = "Galley Pirate"
                        Next_Level_X = 9999
                end
        end
        if New_World then
                if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 700 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 724 or SelectMonster == "Raider" then
                        Ms = "Raider"
                        NameQuest = "Area1Quest"
                        QuestLv = 1
                        NameMon = "Raider"
                        CFrameQ = CFrame["new"](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
                        CFrameMon = CFrame["new"](-737.026123, 10.1748352, 2392.57959, .272128761, 0, -0.962260842, 0, 1, 0, .962260842, 0, .272128761)
                        if SelectMonster == "Raider" then
                        else
                                Next_Level_X = 725
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 725 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 774 or SelectMonster == "Mercenary" then
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 750 then
                                SelectBoss_P = "Diamond"
                        end
                        Ms = "Mercenary"
                        NameQuest = "Area1Quest"
                        QuestLv = 2
                        NameMon = "Mercenary"
                        CFrameQ = CFrame["new"](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
                        CFrameMon = CFrame["new"](-1022.21271, 72.9855194, 1891.39148, -0.990782857, 0, -0.135460541, 0, 1, 0, .135460541, 0, -0.990782857)
                        if SelectMonster == "Mercenary" then
                        else
                                Next_Level_X = 775
                        end
                        SelectMonster = "Raider"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 775 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 799 or SelectMonster == "Swan Pirate" then
                        Ms = "Swan Pirate"
                        NameQuest = "Area2Quest"
                        QuestLv = 1
                        NameMon = "Swan Pirate"
                        CFrameQ = CFrame["new"](638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906)
                        CFrameMon = CFrame["new"](976.467651, 111.174057, 1229.1084, .00852567982, -4.73897828e-08, -0.999963999, 1.12251888e-08, 1, -4.7295778e-08, .999963999, -1.08215579e-08, .00852567982)
                        if SelectMonster == "Swan Pirate" then
                        else
                                Next_Level_X = 800
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 800 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 874 or SelectMonster == "Factory Staff" then
                        Ms = "Factory Staff"
                        NameQuest = "Area2Quest"
                        QuestLv = 2
                        NameMon = "Factory Staff"
                        CFrameQ = CFrame["new"](638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906)
                        CFrameMon = CFrame["new"](336.74585, 73.1620483, -224.129272, .993632793, 3.40154607e-08, .112668738, -3.87658332e-08, 1, 3.99718729e-08, -0.112668738, -4.40850592e-08, .993632793)
                        if SelectMonster == "Factory Staff" then
                        else
                                Next_Level_X = 875
                        end
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 850 then
                                SelectBoss_P = "Jeremy"
                        end
                        SelectMonster = "Swan Pirate"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 875 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 899 or SelectMonster == "Marine Lieutenant" then
                        Ms = "Marine Lieutenant"
                        NameQuest = "MarineQuest3"
                        QuestLv = 1
                        NameMon = "Marine Lieutenant"
                        CFrameQ = CFrame["new"](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
                        CFrameMon = CFrame["new"](-2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, .64724648, 0, -0.762281299)
                        if SelectMonster == "Marine Lieutenant" then
                        else
                                Next_Level_X = 900
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 900 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 949 or SelectMonster == "Marine Captain" then
                        Ms = "Marine Captain"
                        NameQuest = "MarineQuest3"
                        QuestLv = 2
                        NameMon = "Marine Captain"
                        CFrameQ = CFrame["new"](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
                        CFrameMon = CFrame["new"](-1814.70313, 72.9919434, -3208.86621, -0.900422215, 7.93464423e-08, -0.435017526, 3.68856199e-08, 1, 1.06050372e-07, .435017526, 7.94441988e-08, -0.900422215)
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 925 then
                                SelectBoss_P = "Fajita"
                        end
                        if SelectMonster == "Marine Captain" then
                        else
                                Next_Level_X = 950
                        end
                        SelectMonster = "Marine Lieutenant"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 950 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 974 or SelectMonster == "Zombie" then
                        Ms = "Zombie"
                        NameQuest = "ZombieQuest"
                        QuestLv = 1
                        NameMon = "Zombie"
                        CFrameQ = CFrame["new"](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
                        CFrameMon = CFrame["new"](-5649.23438, 126.0578, -737.773743, .355238914, -8.10359282e-08, .934775114, 1.65461245e-08, 1, 8.04023372e-08, -0.934775114, -1.3095117e-08, .355238914)
                        if SelectMonster == "Zombie" then
                        else
                                Next_Level_X = 975
                        end
                        Bypass_TP_Dis = true
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 975 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 999 or SelectMonster == "Vampire" then
                        Ms = "Vampire"
                        NameQuest = "ZombieQuest"
                        QuestLv = 2
                        NameMon = "Vampire"
                        CFrameQ = CFrame["new"](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
                        CFrameMon = CFrame["new"](-6030.32031, .4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, .515373945, 8.68467822e-08, -0.856965423)
                        if SelectMonster == "Vampire" then
                        else
                                Next_Level_X = 1000
                        end
                        Bypass_TP_Dis = true
                        SelectMonster = "Zombie"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1000 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1049 or SelectMonster == "Snow Trooper" then
                        Ms = "Snow Trooper"
                        NameQuest = "SnowMountainQuest"
                        QuestLv = 1
                        NameMon = "Snow Trooper"
                        CFrameQ = CFrame["new"](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                        CFrameMon = CFrame["new"](621.003418, 391.361053, -5335.43604, .481644779, 0, .876366913, 0, 1, 0, -0.876366913, 0, .481644779)
                        if SelectMonster == "Snow Trooper" then
                        else
                                Next_Level_X = 1050
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1050 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1099 or SelectMonster == "Winter Warrior" then
                        Ms = "Winter Warrior"
                        NameQuest = "SnowMountainQuest"
                        QuestLv = 2
                        NameMon = "Winter Warrior"
                        CFrameQ = CFrame["new"](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                        CFrameMon = CFrame["new"](1295.62683, 429.447784, -5087.04492, -0.698032081, -8.28980049e-08, -0.71606636, -1.98835952e-08, 1, -9.63858184e-08, .71606636, -5.30424877e-08, -0.698032081)
                        if SelectMonster == "Winter Warrior" then
                        else
                                Next_Level_X = 1100
                        end
                        SelectMonster = "Snow Trooper"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1100 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1124 or SelectMonster == "Lab Subordinate" then
                        Ms = "Lab Subordinate"
                        NameQuest = "IceSideQuest"
                        QuestLv = 1
                        NameMon = "Lab Subordinate"
                        CFrameQ = CFrame["new"](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
                        CFrameMon = CFrame["new"](-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, .822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
                        if SelectMonster == "Lab Subordinate" then
                        else
                                Next_Level_X = 1125
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1125 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1174 or SelectMonster == "Horned Warrior" then
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1150 then
                                SelectBoss_P = "Smoke Admiral"
                        end
                        Ms = "Horned Warrior"
                        NameQuest = "IceSideQuest"
                        QuestLv = 2
                        NameMon = "Horned Warrior"
                        CFrameQ = CFrame["new"](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
                        CFrameMon = CFrame["new"](-6401.27979, 15.9775667, -5948.24316, .388303697, 0, -0.921531856, 0, 1, 0, .921531856, 0, .388303697)
                        if SelectMonster == "Horned Warrior" then
                        else
                                Next_Level_X = 1175
                        end
                        SelectMonster = "Lab Subordinate"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1175 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1199 or SelectMonster == "Magma Ninja" then
                        Ms = "Magma Ninja"
                        NameQuest = "FireSideQuest"
                        QuestLv = 1
                        NameMon = "Magma Ninja"
                        CFrameQ = CFrame["new"](-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                        CFrameMon = CFrame["new"](-5466.06445, 57.6952019, -5837.42822, -0.988835871, 0, -0.149006829, 0, 1, 0, .149006829, 0, -0.988835871)
                        if SelectMonster == "Magma Ninja" then
                        else
                                Next_Level_X = 1200
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1200 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1249 or SelectMonster == "Lava Pirate" then
                        Ms = "Lava Pirate"
                        NameQuest = "FireSideQuest"
                        QuestLv = 2
                        NameMon = "Lava Pirate"
                        CFrameQ = CFrame["new"](-5431.09473, 15.9868021, -5296.53223, .831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, .555080295, 2.68240168e-08, .831796765)
                        CFrameMon = CFrame["new"](-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, .98044765, 0, 1.00000012, 0, -0.98044765, 0, -0.196780294)
                        if SelectMonster == "Lava Pirate" then
                        else
                                Next_Level_X = 1250
                        end
                        SelectMonster = "Magma Ninja"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1250 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1274 or SelectMonster == "Ship Deckhand" then
                        Ms = "Ship Deckhand"
                        NameQuest = "ShipQuest1"
                        QuestLv = 1
                        NameMon = "Ship Deckhand"
                        CFrameQ = CFrame["new"](1037.80127, 125.092171, 32911.6016, -0.244533166, 0, -0.969640911, 0, 1.00000012, 0, .96964103, 0, -0.244533136)
                        CFrameMon = CFrame["new"](1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, .0532564968, -1.71604082e-08, -0.998580813)
                        if SelectMonster == "Ship Deckhand" then
                        else
                                Next_Level_X = 1275
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1275 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1299 or SelectMonster == "Ship Engineer" then
                        Ms = "Ship Engineer"
                        NameQuest = "ShipQuest1"
                        QuestLv = 2
                        NameMon = "Ship Engineer"
                        CFrameQ = CFrame["new"](1037.80127, 125.092171, 32911.6016, -0.244533166, 0, -0.969640911, 0, 1.00000012, 0, .96964103, 0, -0.244533136)
                        CFrameMon = CFrame["new"](921.30249023438, 125.400390625, 32937.34375)
                        if SelectMonster == "Ship Engineer" then
                        else
                                Next_Level_X = 1300
                        end
                        SelectMonster = "Ship Deckhand"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1300 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1324 or SelectMonster == "Ship Steward" then
                        Ms = "Ship Steward"
                        NameQuest = "ShipQuest2"
                        QuestLv = 1
                        NameMon = "Ship Steward"
                        CFrameQ = CFrame["new"](968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, .493826836, -2.43357912e-09, -0.869560242)
                        CFrameMon = CFrame["new"](917.96057128906, 136.89932250977, 33343.4140625)
                        if SelectMonster == "Ship Steward" then
                        else
                                Next_Level_X = 1325
                        end
                        SelectMonster = "Ship Deckhand"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1325 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1349 or SelectMonster == "Ship Officer" then
                        Ms = "Ship Officer"
                        NameQuest = "ShipQuest2"
                        QuestLv = 2
                        NameMon = "Ship Officer"
                        CFrameQ = CFrame["new"](968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, .493826836, -2.43357912e-09, -0.869560242)
                        CFrameMon = CFrame["new"](944.44964599609, 181.40081787109, 33278.9453125)
                        if SelectMonster == "Ship Officer" then
                        else
                                Next_Level_X = 1350
                        end
                        SelectMonster = "Ship Steward"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1350 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1374 or SelectMonster == "Arctic Warrior" then
                        Ms = "Arctic Warrior"
                        NameQuest = "FrostQuest"
                        QuestLv = 1
                        NameMon = "Arctic Warrior"
                        CFrameQ = CFrame["new"](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
                        CFrameMon = CFrame["new"](5878.23486, 81.3886948, -6136.35596, -0.451037169, 2.3908234e-07, .892505825, -1.08168464e-07, 1, -3.22542007e-07, -0.892505825, -2.4201924e-07, -0.451037169)
                        if SelectMonster == "Arctic Warrior" then
                        else
                                Next_Level_X = 1375
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1375 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1424 or SelectMonster == "Snow Lurker" then
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1400 then
                                SelectBoss_P = "Awakened Ice Admiral"
                        end
                        Ms = "Snow Lurker"
                        NameQuest = "FrostQuest"
                        QuestLv = 2
                        NameMon = "Snow Lurker"
                        CFrameQ = CFrame["new"](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
                        CFrameMon = CFrame["new"](5513.36865, 60.546711, -6809.94971, -0.958693981, -1.65617333e-08, .284439981, -4.07668654e-09, 1, 4.44854642e-08, -0.284439981, 4.14883701e-08, -0.958693981)
                        if SelectMonster == "Snow Lurker" then
                        else
                                Next_Level_X = 1450
                        end
                        SelectMonster = "Arctic Warrior"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] == 1425 or game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1449 or SelectMonster == "Sea Soldier" then
                        Ms = "Sea Soldier"
                        NameQuest = "ForgottenQuest"
                        QuestLv = 1
                        NameMon = "Sea Soldier"
                        CFrameQ = CFrame["new"](-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376)
                        CFrameMon = CFrame["new"](-3115.78223, 63.8785706, -9808.38574, -0.913427353, 3.11199457e-08, .407000452, 7.79564235e-09, 1, -5.89660658e-08, -0.407000452, -5.06883708e-08, -0.913427353)
                        if SelectMonster == "Sea Soldier" then
                        else
                                Next_Level_X = 1450
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1450 or SelectMonster == "Water Fighter" then
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1475 then
                                SelectBoss_P = "Tide Keeper"
                        end
                        Ms = "Water Fighter"
                        NameQuest = "ForgottenQuest"
                        QuestLv = 2
                        NameMon = "Water Fighter"
                        CFrameQ = CFrame["new"](-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376)
                        CFrameMon = CFrame["new"](-3212.99683, 263.809296, -10551.8799, .742111444, -5.59139615e-08, -0.670276582, 1.69155214e-08, 1, -6.46908234e-08, .670276582, 3.66697037e-08, .742111444)
                        if SelectMonster == "Water Fighter" then
                        else
                                Next_Level_X = 9999
                        end
                        SelectMonster = "Sea Soldier"
                end
        end
        if Three_World then
                if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1500 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1524 or SelectMonster == "Pirate Millionaire" then
                        Ms = "Pirate Millionaire"
                        NameQuest = "PiratePortQuest"
                        QuestLv = 1
                        NameMon = "Pirate Millionaire"
                        CFrameQ = CFrame["new"](-290.074677, 42.9034653, 5581.58984, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627)
                        CFrameMon = CFrame["new"](81.164993286133, 43.755737304688, 5724.7021484375)
                        if SelectMonster == "Pirate Millionaire" then
                        else
                                Next_Level_X = 1525
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1525 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1574 or SelectMonster == "Pistol Billionaire" then
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1550 then
                                SelectBoss_P = "Stone"
                        end
                        Ms = "Pistol Billionaire"
                        NameQuest = "PiratePortQuest"
                        QuestLv = 2
                        NameMon = "Pistol Billionaire"
                        CFrameQ = CFrame["new"](-290.074677, 42.9034653, 5581.58984, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627)
                        CFrameMon = CFrame["new"](81.164993286133, 43.755737304688, 5724.7021484375)
                        if SelectMonster == "Pistol Billionaire" then
                        else
                                Next_Level_X = 1575
                        end
                        SelectMonster = "Pirate Millionaire"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1575 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1599 or SelectMonster == "Dragon Crew Warrior" then
                        Ms = "Dragon Crew Warrior"
                        NameQuest = "AmazonQuest"
                        QuestLv = 1
                        NameMon = "Dragon Crew Warrior"
                        CFrameQ = CFrame["new"](5832.83594, 51.6806107, -1101.51563, .898790359, 0, -0.438378751, 0, 1, 0, .438378751, 0, .898790359)
                        CFrameMon = CFrame["new"](6241.9951171875, 51.522083282471, -1243.9771728516)
                        if SelectMonster == "Dragon Crew Warrior" then
                        else
                                Next_Level_X = 1600
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1600 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1624 or SelectMonster == "Dragon Crew Archer" then
                        Ms = "Dragon Crew Archer"
                        NameQuest = "AmazonQuest"
                        QuestLv = 2
                        NameMon = "Dragon Crew Archer"
                        CFrameQ = CFrame["new"](5832.83594, 51.6806107, -1101.51563, .898790359, 0, -0.438378751, 0, 1, 0, .438378751, 0, .898790359)
                        CFrameMon = CFrame["new"](6488.9155273438, 383.38375854492, -110.66246032715)
                        if SelectMonster == "Dragon Crew Archer" then
                        else
                                Next_Level_X = 1625
                        end
                        SelectMonster = "Dragon Crew Warrior"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1625 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1649 or SelectMonster == "Female Islander" then
                        Ms = "Female Islander"
                        NameQuest = "AmazonQuest2"
                        QuestLv = 1
                        NameMon = "Female Islander"
                        CFrameQ = CFrame["new"](5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                        CFrameMon = CFrame["new"](4770.4990234375, 758.95520019531, 1069.8680419922)
                        if SelectMonster == "Female Islander" then
                        else
                                Next_Level_X = 1650
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1650 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1699 or SelectMonster == "Giant Islander" then
                        Ms = "Giant Islander"
                        NameQuest = "AmazonQuest2"
                        QuestLv = 2
                        NameMon = "Giant Islander"
                        CFrameQ = CFrame["new"](5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                        CFrameMon = CFrame["new"](4530.3540039063, 656.75695800781, -131.60952758789)
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1675 then
                                SelectBoss_P = "Island Empress"
                        end
                        if SelectMonster == "Giant Islander" then
                        else
                                Next_Level_X = 1700
                        end
                        SelectMonster = "Female Islander"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1700 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1774 or SelectMonster == "Marine Commodore" then
                        Ms = "Marine Commodore"
                        NameQuest = "MarineTreeIsland"
                        QuestLv = 1
                        NameMon = "Marine Commodore"
                        CFrameQ = CFrame["new"](2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, .258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                        CFrameMon = CFrame["new"](2490.0844726563, 190.4232635498, -7160.0502929688)
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1750 then
                                SelectBoss_P = "Kilo Admiral"
                        end
                        if SelectMonster == "Marine Commodore" then
                        else
                                Next_Level_X = 1775
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1775 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1799 or SelectMonster == "Fishman Raider" then
                        Ms = "Fishman Raider"
                        NameQuest = "DeepForestIsland3"
                        QuestLv = 1
                        NameMon = "Fishman Raider"
                        CFrameQ = CFrame["new"](-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                        CFrameMon = CFrame["new"](-10322.400390625, 390.94473266602, -8580.0908203125)
                        if SelectMonster == "Fishman Raider" then
                        else
                                Next_Level_X = 1800
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1800 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1824 or SelectMonster == "Fishman Captain" then
                        Ms = "Fishman Captain"
                        NameQuest = "DeepForestIsland3"
                        QuestLv = 2
                        NameMon = "Fishman Captain"
                        CFrameQ = CFrame["new"](-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                        CFrameMon = CFrame["new"](-11194.541992188, 442.02795410156, -8608.806640625)
                        if SelectMonster == "Fishman Captain" then
                        else
                                Next_Level_X = 1825
                        end
                        SelectMonster = "Fishman Raider"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1825 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1849 or SelectMonster == "Forest Pirate" then
                        Ms = "Forest Pirate"
                        NameQuest = "DeepForestIsland"
                        QuestLv = 1
                        NameMon = "Forest Pirate"
                        CFrameQ = CFrame["new"](-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
                        CFrameMon = CFrame["new"](-13225.809570313, 428.19387817383, -7753.1245117188)
                        if SelectMonster == "Forest Pirate" then
                        else
                                Next_Level_X = 1850
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1850 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1899 or SelectMonster == "Mythological Pirate" then
                        Ms = "Mythological Pirate"
                        NameQuest = "DeepForestIsland"
                        QuestLv = 2
                        NameMon = "Mythological Pirate"
                        CFrameQ = CFrame["new"](-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
                        CFrameMon = CFrame["new"](-13869.172851563, 564.95251464844, -7084.4135742188)
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1875 then
                                SelectBoss_P = "Captain Elephant"
                        end
                        if SelectMonster == "Mythological Pirate" then
                        else
                                Next_Level_X = 1900
                        end
                        SelectMonster = "Forest Pirate"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1900 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1924 or SelectMonster == "Jungle Pirate" then
                        Ms = "Jungle Pirate"
                        NameQuest = "DeepForestIsland2"
                        QuestLv = 1
                        NameMon = "Jungle Pirate"
                        CFrameQ = CFrame["new"](-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                        CFrameMon = CFrame["new"](-11982.221679688, 376.32522583008, -10451.415039063)
                        if SelectMonster == "Jungle Pirate" then
                        else
                                Next_Level_X = 1925
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1925 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1974 or SelectMonster == "Musketeer Pirate" then
                        Ms = "Musketeer Pirate"
                        NameQuest = "DeepForestIsland2"
                        QuestLv = 2
                        NameMon = "Musketeer Pirate"
                        CFrameQ = CFrame["new"](-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                        CFrameMon = CFrame["new"](-13282.3046875, 496.23684692383, -9565.150390625)
                        if SelectMonster == "Musketeer Pirate" then
                        else
                                Next_Level_X = 1975
                        end
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1950 then
                                SelectBoss_P = "Beautiful Pirate"
                        end
                        SelectMonster = "Jungle Pirate"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 1975 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 1999 or SelectMonster == "Reborn Skeleton" then
                        Ms = "Reborn Skeleton"
                        NameQuest = "HauntedQuest1"
                        QuestLv = 1
                        NameMon = "Reborn Skeleton"
                        CFrameQ = CFrame["new"](-9480.8271484375, 142.13066101074, 5566.0712890625)
                        CFrameMon = CFrame["new"](-8817.880859375, 191.16761779785, 6298.6557617188)
                        if SelectMonster == "Reborn Skeleton" then
                        elseif not LevelMax then
                                Next_Level_X = 2000
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2000 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2024 or SelectMonster == "Living Zombie" then
                        Ms = "Living Zombie"
                        NameQuest = "HauntedQuest1"
                        QuestLv = 2
                        NameMon = "Living Zombie"
                        CFrameQ = CFrame["new"](-9480.8271484375, 142.13066101074, 5566.0712890625)
                        CFrameMon = CFrame["new"](-10125.234375, 183.94705200195, 6242.013671875)
                        if SelectMonster == "Living Zombie" then
                        elseif not LevelMax then
                                Next_Level_X = 2025
                        end
                        SelectMonster = "Reborn Skeleton"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2025 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2049 or SelectMonster == "Demonic Soul" then
                        Ms = "Demonic Soul"
                        NameQuest = "HauntedQuest2"
                        QuestLv = 1
                        NameMon = "Demonic"
                        CFrameQ = CFrame["new"](-9516.9931640625, 178.00651550293, 6078.4653320313)
                        CFrameMon = CFrame["new"](-9712.03125, 204.69589233398, 6193.322265625)
                        if SelectMonster == "Demonic Soul" then
                        else
                                Next_Level_X = 2050
                        end
                        SelectMonster = "Living Zombie"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2050 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2074 or SelectMonster == "Posessed Mummy" then
                        Ms = "Posessed Mummy"
                        NameQuest = "HauntedQuest2"
                        QuestLv = 2
                        NameMon = "Posessed Mummy"
                        CFrameQ = CFrame["new"](-9516.9931640625, 178.00651550293, 6078.4653320313)
                        CFrameMon = CFrame["new"](-9545.7763671875, 69.619895935059, 6339.5615234375)
                        if SelectMonster == "Posessed Mummy" then
                        else
                                Next_Level_X = 2075
                        end
                        SelectMonster = "Demonic Soul"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2075 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2099 or SelectMonster == "Peanut Scout" then
                        Ms = "Peanut Scout"
                        NameQuest = "NutsIslandQuest"
                        QuestLv = 1
                        NameMon = "Peanut Scout"
                        CFrameQ = CFrame["new"](-2104.17163, 38.1299706, -10194.418, .758814394, -1.38604395e-09, .651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, .758814394)
                        CFrameMon = CFrame["new"](-2098.07544, 192.611862, -10248.8867, .983392298, -9.57031787e-08, .181492642, 8.7276355e-08, 1, 5.44169616e-08, -0.181492642, -3.76732068e-08, .983392298)
                        if SelectMonster == "Peanut Scout" then
                        else
                                Next_Level_X = 2100
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2100 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2124 or SelectMonster == "Peanut President" then
                        Ms = "Peanut President"
                        NameQuest = "NutsIslandQuest"
                        QuestLv = 2
                        NameMon = "Peanut President"
                        CFrameQ = CFrame["new"](-2104.17163, 38.1299706, -10194.418, .758814394, -1.38604395e-09, .651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, .758814394)
                        CFrameMon = CFrame["new"](-1876.95959, 192.610947, -10542.2939, .0553516336, -2.83836812e-08, .998466909, -6.89634405e-10, 1, 2.84654931e-08, -0.998466909, -2.26418861e-09, .0553516336)
                        SelectMonster = "Peanut Scout"
                        if SelectMonster == "Peanut President" then
                        else
                                Next_Level_X = 2125
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2125 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2149 or SelectMonster == "Ice Cream Chef" then
                        Ms = "Ice Cream Chef"
                        NameQuest = "IceCreamIslandQuest"
                        QuestLv = 1
                        NameMon = "Ice Cream Chef"
                        CFrameQ = CFrame["new"](-820.404358, 65.8453293, -10965.5654, .822534859, 5.24448502e-08, -0.568714678, -2.08336317e-08, 1, 6.20846663e-08, .568714678, -3.92184099e-08, .822534859)
                        CFrameMon = CFrame["new"](-821.614075, 208.39537, -10990.7617, -0.870096624, 3.18909272e-08, .492881238, -1.8357893e-08, 1, -9.71107568e-08, -0.492881238, -9.35439957e-08, -0.870096624)
                        if SelectMonster == "Ice Cream Chef" then
                        else
                                Next_Level_X = 2150
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2150 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2199 or SelectMonster == "Ice Cream Commander" then
                        Ms = "Ice Cream Commander"
                        NameQuest = "IceCreamIslandQuest"
                        QuestLv = 2
                        NameMon = "Ice Cream Commander"
                        CFrameQ = CFrame["new"](-819.376526, 67.4634171, -10967.2832)
                        CFrameMon = CFrame["new"](-610.11669921875, 208.26904296875, -11253.686523438)
                        if SelectMonster == "Ice Cream Commander" then
                        else
                                Next_Level_X = 2200
                        end
                        if game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2175 then
                                SelectBoss_P = "Cake Queen"
                        end
                        SelectMonster = "Ice Cream Chef"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2200 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2224 or SelectMonster == "Cookie Crafter" then
                        Ms = "Cookie Crafter"
                        NameQuest = "CakeQuest1"
                        QuestLv = 1
                        NameMon = "Cookie Crafter"
                        CFrameQ = CFrame["new"](-2020.6068115234, 37.82400894165, -12027.80859375)
                        CFrameMon = CFrame["new"](-2286.6843261719, 146.56562805176, -12226.881835938)
                        if SelectMonster == "Cookie Crafter" then
                        elseif not LevelMax then
                                Next_Level_X = 2225
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2225 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] <= 2249 or SelectMonster == "Cake Guard" then
                        Ms = "Cake Guard"
                        NameQuest = "CakeQuest1"
                        QuestLv = 2
                        NameMon = "Cake Guard"
                        CFrameQ = CFrame["new"](-2020.6068115234, 37.82400894165, -12027.80859375)
                        CFrameMon = CFrame["new"](-1817.9747314453, 209.56327819824, -12288.922851562)
                        SelectMonster = "Cookie Crafter"
                        if SelectMonster == "Cake Guard" then
                        elseif not LevelMax then
                                Next_Level_X = 2250
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2250 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2300 or SelectMonster == "Baking Staff" then
                        Ms = "Baking Staff"
                        NameQuest = "CakeQuest2"
                        QuestLv = 1
                        NameMon = "Baking Staff"
                        CFrameQ = CFrame["new"](-1928.31763, 37.7296638, -12840.626)
                        CFrameMon = CFrame["new"](-1818.3479003906, 93.412757873535, -12887.66015625)
                        if SelectMonster == "Baking Staff" then
                        elseif not LevelMax then
                                Next_Level_X = 2300
                        end
                        SelectMonster = "Cookie Crafter"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2300 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2325 or SelectMonster == "Cocoa Warrior" then
                        Ms = "Cocoa Warrior"
                        NameQuest = "ChocQuest1"
                        QuestLv = 1
                        NameMon = "Cocoa Warrior"
                        CFrameQ = CFrame["new"](230.19186401367, 24.734258651733, -12202.657226562)
                        CFrameMon = CFrame["new"](24.617475509644, 24.734342575073, -12227.267578125)
                        if SelectMonster == "Cocoa Warrior" then
                        else
                                Next_Level_X = 2325
                        end
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2325 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2350 or SelectMonster == tableConcat({
                        "Chocolate Bar Battle",
                        "r"
                }) then
                        Ms = tableConcat({
                                "Chocolate Bar Battle",
                                "r"
                        })
                        NameQuest = "ChocQuest1"
                        QuestLv = 2
                        NameMon = tableConcat({
                                "Chocolate Bar Battle";
                                "r"
                        })
                        CFrameQ = CFrame["new"](230.19186401367, 24.734258651733, -12202.657226562)
                        CFrameMon = CFrame["new"](658.22302246094, 24.734258651733, -12541.991210938)
                        if SelectMonster == tableConcat({
                                "Chocolate Bar Battle";
                                "r"
                        }) then
                        else
                                Next_Level_X = 2350
                        end
                        SelectMonster = "Cocoa Warrior"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2350 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2375 or SelectMonster == "Sweet Thief" then
                        Ms = "Sweet Thief"
                        NameQuest = "ChocQuest2"
                        QuestLv = 1
                        NameMon = "Sweet Thief"
                        CFrameQ = CFrame["new"](149.14392089844, 24.793828964233, -12775.41015625)
                        CFrameMon = CFrame["new"](51.611843109131, 24.793809890747, -12574.873046875)
                        if SelectMonster == "Sweet Thief" then
                        else
                                Next_Level_X = 2375
                        end
                        SelectMonster = tableConcat({
                                "Chocolate Bar Battle",
                                "r"
                        })
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2375 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2400 or SelectMonster == "Candy Rebel" then
                        Ms = "Candy Rebel"
                        NameQuest = "ChocQuest2"
                        QuestLv = 2
                        NameMon = "Candy Rebel"
                        CFrameQ = CFrame["new"](149.14392089844, 24.793828964233, -12775.41015625)
                        CFrameMon = CFrame["new"](28.34560585022, 24.793802261353, -12949.502929688)
                        if SelectMonster == "Candy Rebel" then
                        else
                                Next_Level_X = 2400
                        end
                        SelectMonster = "Sweet Thief"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2400 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2425 or SelectMonster == "Candy Pirate" then
                        Ms = "Candy Pirate"
                        NameQuest = "CandyQuest1"
                        QuestLv = 1
                        NameMon = "Candy Pirate"
                        CFrameQ = CFrame["new"](-1146.8081054688, 16.10725402832, -14444.353515625)
                        CFrameMon = CFrame["new"](-1333.9425048828, 16.907636642456, -14424.844726562)
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2425 and game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] < 2550 or SelectMonster == "Snow Demon" then
                        Ms = "Snow Demon"
                        NameQuest = "CandyQuest1"
                        QuestLv = 2
                        NameMon = "Snow Demon"
                        CFrameQ = CFrame["new"](-1146.8081054688, 16.10725402832, -14444.353515625)
                        CFrameMon = CFrame["new"](-963.02130126953, 16.107183456421, -14289.576171875)
                        if SelectMonster == "Candy Pirate" then
                        else
                                Next_Level_X = 2551
                        end
                        SelectMonster = "Candy Pirate"
                elseif game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 2550 then
                        local tmp3 = {}
                        Ms = "Baking Staff"
                        NameQuest = "CakeQuest2"
                        QuestLv = 1
                        NameMon = "Baking Staff"
                        CFrameQ = CFrame["new"](-1928.31763, 37.7296638, -12840.626)
                        CFrameMon = CFrame["new"](-1818.3479003906, 93.412757873535, -12887.66015625)
                        SelectMonster = "Cookie Crafter"
                        tmp3[1] = tostring(string["match"](tostring(game["ReplicatedStorage"]["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner")), "%d+"))
                        if tmp3[1] == "nil" or tmp3[1] == nil then
                                (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner", true)
                                Cake_Prince_S:Set(tableConcat({
                                        " Cake Prince : Boss ",
                                        "Spawn"
                                }))
                        else
                                Cake_Prince_S:Set(" Cake Prince : " .. tmp3[1])
                        end
                end
        end
end
Humanoid = function()
        if Old_World and (Camera["Value"] >= 1 and Camera["Value"] <= 9) then
                Enemy = "Bandit"
                NameEnemy = "Bandit"
                QuestName = "BanditQuest1"
                QuestNumber = 1
                QuestPos = CFrame["new"](1059.58728, 16.412075, 1549.54443, -0.963007867, 4.12775627e-08, .269473195, 2.39519959e-08, 1, -6.75822349e-08, -0.269473195, -5.86278048e-08, -0.963007867)
                EnemyPos = CFrame["new"](1175.00793, 43.7162018, 1680.39185, .940636754, 1.67726082e-08, .339414984, -3.54472718e-08, 1, 4.88204712e-08, -0.339414984, -5.79536632e-08, .940636754)
        elseif Old_World and (Camera["Value"] >= 10 and Camera["Value"] <= 14) then
                Enemy = "Monkey"
                NameEnemy = "Monkey"
                QuestName = "JungleQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-1598.92285, 36.9012909, 148.748718, -0.969585121, -1.11576668e-07, -0.244754329, -1.2733129e-07, 1, 4.8546088e-08, .244754329, 7.823445e-08, -0.969585121)
                EnemyPos = CFrame["new"](-1660.75586, 40.1013031, 320.152313, .82476908, -4.88485696e-08, -0.565469682, 5.81200084e-08, 1, -1.61455704e-09, .565469682, -3.15334674e-08, .82476908)
        elseif Old_World and (Camera["Value"] >= 15 and Camera["Value"] <= 29) then
                Enemy = "Gorilla"
                NameEnemy = "Gorilla"
                QuestName = "JungleQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](-1598.92285, 36.9012909, 148.748718, -0.969585121, -1.11576668e-07, -0.244754329, -1.2733129e-07, 1, 4.8546088e-08, .244754329, 7.823445e-08, -0.969585121)
                EnemyPos = CFrame["new"](-1196.64343, 7.74201918, -445.539734, -0.919930279, -4.16423696e-08, .392081946, -1.71233108e-08, 1, 6.60324133e-08, -0.392081946, 5.40314744e-08, -0.919930279)
                if Old_World and (Camera["Value"] >= 20 and Camera["Value"] <= 29) then
                        Name_Boss = "The Gorilla King"
                        QuestName_Boss = "JungleQuest"
                        QuestNumber_Boss = 3
                end
        elseif Old_World and (Camera["Value"] >= 30 and Camera["Value"] <= 39) then
                Enemy = "Pirate"
                NameEnemy = "Pirate"
                QuestName = "BuggyQuest1"
                QuestNumber = 1
                QuestPos = CFrame["new"](-1139.5631103516, 4.7520513534546, 3830.38671875)
                EnemyPos = CFrame["new"](-1045.9431152344, 64.419502258301, 3930.3020019531)
        elseif Old_World and (Camera["Value"] >= 40 and Camera["Value"] <= 59) then
                Enemy = "Brute"
                NameEnemy = "Brute"
                QuestName = "BuggyQuest1"
                QuestNumber = 2
                QuestPos = CFrame["new"](-1139.5631103516, 4.7520513534546, 3830.38671875)
                EnemyPos = CFrame["new"](-1150.2763671875, 130.60118103027, 4164.9345703125)
                if Old_World and (Camera["Value"] >= 55 and Camera["Value"] <= 59) then
                        Name_Boss = "Bobby"
                        QuestName_Boss = "BuggyQuest1"
                        QuestNumber_Boss = 3
                end
        elseif Old_World and (Camera["Value"] >= 60 and Camera["Value"] <= 74) then
                Enemy = "Desert Bandit"
                NameEnemy = "Desert Bandit"
                QuestName = "DesertQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
                EnemyPos = CFrame["new"](935.8798046975, 6.4486746788025, 4481.5859375)
        elseif Old_World and (Camera["Value"] >= 75 and Camera["Value"] <= 89) then
                Enemy = "Desert Officer"
                NameEnemy = "Desert Officer"
                QuestName = "DesertQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
                EnemyPos = CFrame["new"](1608.2822265625, 8.6142244338989, 4371.0073242188)
        elseif Old_World and (Camera["Value"] >= 90 and Camera["Value"] <= 99) then
                Enemy = "Snow Bandit"
                NameEnemy = "Snow Bandit"
                QuestName = "SnowQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                EnemyPos = CFrame["new"](1354.3479003906, 87.272773742676, -1393.9465332031)
        elseif Old_World and (Camera["Value"] >= 100 and Camera["Value"] <= 119) then
                Enemy = "Snowman"
                NameEnemy = "Snowman"
                QuestName = "SnowQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                EnemyPos = CFrame["new"](1201.6412353516, 144.57958984375, -1550.0670166016)
                if Old_World and (Camera["Value"] >= 110 and Camera["Value"] <= 119) then
                        Name_Boss = "Yeti"
                        QuestName_Boss = "SnowQuest"
                        QuestNumber_Boss = 3
                end
        elseif Old_World and (Camera["Value"] >= 120 and Camera["Value"] <= 149) then
                Enemy = "Chief Petty Officer"
                NameEnemy = "Chief Petty Officer"
                QuestName = "MarineQuest2"
                QuestNumber = 1
                QuestPos = CFrame["new"](-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                EnemyPos = CFrame["new"](-4710.3598632812, 112.02615356445, 4584.92578125)
                if Old_World and (Camera["Value"] >= 130 and Camera["Value"] <= 149) then
                        Name_Boss = "Vice Admiral"
                        QuestName_Boss = "MarineQuest2"
                        QuestNumber_Boss = 2
                end
        elseif Old_World and (Camera["Value"] >= 150 and Camera["Value"] <= 174) then
                Enemy = "Sky Bandit"
                NameEnemy = "Sky Bandit"
                QuestName = "SkyQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-4838.701171875, 717.66931152344, -2617.8647460938)
                EnemyPos = CFrame["new"](-4965.37890625, 357.37414550781, -2848.7023925781)
        elseif Old_World and (Camera["Value"] >= 175 and Camera["Value"] <= 189) then
                Enemy = "Dark Master"
                NameEnemy = "Dark Master"
                QuestName = "SkyQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](-4838.701171875, 717.66931152344, -2617.8647460938)
                EnemyPos = CFrame["new"](-5224.05859375, 484.44784545898, -2275.9985351562)
        elseif Old_World and (Camera["Value"] >= 190 and Camera["Value"] <= 209) then
                Enemy = "Prisoner"
                NameEnemy = "Prisoner"
                QuestName = "PrisonerQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](5309.6474609375, 1.6542626619339, 477.8815612793)
                EnemyPos = CFrame["new"](5276.5576171875, 87.836639404297, 561.01007080078)
        elseif Old_World and (Camera["Value"] >= 210 and Camera["Value"] <= 249) then
                Enemy = "Dangerous Prisoner"
                NameEnemy = "Dangerous Prisoner"
                QuestName = "PrisonerQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](5309.6474609375, 1.6542626619339, 477.8815612793)
                EnemyPos = CFrame["new"](5276.5576171875, 87.836639404297, 561.01007080078)
                if Old_World and (Camera["Value"] >= 240 and Camera["Value"] <= 249) then
                        Name_Boss = "Swan"
                        QuestName_Boss = "ImpelQuest"
                        QuestNumber_Boss = 3
                end
        elseif Old_World and (Camera["Value"] >= 250 and Camera["Value"] <= 299) then
                Enemy = "Toga Warrior"
                NameEnemy = "Toga Warrior"
                QuestName = "ColosseumQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298)
                EnemyPos = CFrame["new"](-1820.21484375, 51.683856964111, -2740.6650390625)
        elseif Old_World and (Camera["Value"] >= 300 and Camera["Value"] <= 324) then
                Enemy = "Military Soldier"
                NameEnemy = "Military Soldier"
                QuestName = "MagmaQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                EnemyPos = CFrame["new"](-5411.1645507812, 11.081554412842, 8454.29296875)
        elseif Old_World and (Camera["Value"] >= 325 and Camera["Value"] <= 374) then
                Enemy = "Military Spy"
                NameEnemy = "Military Spy"
                QuestName = "MagmaQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                EnemyPos = CFrame["new"](-5802.8681640625, 86.262413024902, 8828.859375)
                if Old_World and (Camera["Value"] >= 350 and Camera["Value"] <= 374) then
                        Name_Boss = "Magma Admiral"
                        QuestName_Boss = "MagmaQuest"
                        QuestNumber_Boss = 3
                end
        elseif Old_World and (Camera["Value"] >= 375 and Camera["Value"] <= 399) then
                Enemy = "Fishman Warrior"
                NameEnemy = "Fishman Warrior"
                QuestName = "FishmanQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](61122.65234375, 18.497442245483, 1569.3997802734)
                EnemyPos = CFrame["new"](60878.30078125, 18.482830047607, 1543.7574462891)
                if ((CFrame["new"](61164, 12, 1820))["Position"] - LocalPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 2000 then
                        LocalPlayer["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](61164, 12, 1820)
                end
        elseif Old_World and (Camera["Value"] >= 400 and Camera["Value"] <= 449) then
                Enemy = "Fishman Commando"
                NameEnemy = "Fishman Commando"
                QuestName = "FishmanQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](61122.65234375, 18.497442245483, 1569.3997802734)
                EnemyPos = CFrame["new"](61922.6328125, 18.482830047607, 1493.9343261719)
                if Old_World and (Camera["Value"] >= 425 and Camera["Value"] <= 449) then
                        Name_Boss = "Fishman Lord"
                        QuestName_Boss = "FishmanQuest"
                        QuestNumber_Boss = 3
                end
                if ((CFrame["new"](61164, 12, 1820))["Position"] - LocalPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 2000 then
                        LocalPlayer["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](61164, 12, 1820)
                end
        elseif Old_World and (Camera["Value"] >= 450 and Camera["Value"] <= 474) then
                Enemy = "God's Guard"
                NameEnemy = "God's Guard"
                QuestName = "SkyExp1Quest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-4721.88867, 843.874695, -1949.96643, .996191859, 0, -0.0871884301, 0, 1, 0, .0871884301, 0, .996191859)
                EnemyPos = CFrame["new"](-4710.04296875, 845.27697753906, -1927.3079833984)
                if ((CFrame["new"](-4721.88867, 843.874695, -1949.96643, .996191859, 0, -0.0871884301, 0, 1, 0, .0871884301, 0, .996191859))["Position"] - LocalPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-4607.82275, 872.54248, -1667.55688))
                end
        elseif Old_World and (Camera["Value"] >= 475 and Camera["Value"] <= 524) then
                Enemy = "Shanda"
                NameEnemy = "Shanda"
                QuestName = "SkyExp1Quest"
                QuestNumber = 2
                QuestPos = CFrame["new"](-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, .906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                EnemyPos = CFrame["new"](-7678.4897460938, 5566.4038085938, -497.21560668945)
        elseif Old_World and (Camera["Value"] >= 525 and Camera["Value"] <= 549) then
                Enemy = "Royal Squad"
                NameEnemy = "Royal Squad"
                QuestName = "SkyExp2Quest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                EnemyPos = CFrame["new"](-7624.2524414062, 5658.1333007812, -1467.3542480469)
        elseif Old_World and (Camera["Value"] >= 550 and Camera["Value"] <= 624) then
                Enemy = "Royal Soldier"
                NameEnemy = "Royal Soldier"
                QuestName = "SkyExp2Quest"
                QuestNumber = 2
                QuestPos = CFrame["new"](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                EnemyPos = CFrame["new"](-7836.7534179688, 5645.6640625, -1790.6236572266)
                if Old_World and (Camera["Value"] >= 575 and Camera["Value"] <= 624) then
                        Name_Boss = "Thunder God"
                        QuestName_Boss = "SkyExp2Quest"
                        QuestNumber_Boss = 3
                end
        elseif Old_World and (Camera["Value"] >= 625 and Camera["Value"] <= 649) then
                Enemy = "Galley Pirate"
                NameEnemy = "Galley Pirate"
                QuestName = "FountainQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
                EnemyPos = CFrame["new"](5551.0219726562, 78.901351928711, 3930.4128417969)
        elseif Old_World and (Camera["Value"] >= 650 and Camera["Value"] <= 99999) then
                Enemy = "Galley Captain"
                NameEnemy = "Galley Captain"
                QuestName = "FountainQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
                EnemyPos = CFrame["new"](5441.9516601562, 42.502059936523, 4950.09375)
                if Old_World and (Camera["Value"] >= 675 and Camera["Value"] <= 99999) then
                        Name_Boss = "Cyborg"
                        QuestName_Boss = "FountainQuest"
                        QuestNumber_Boss = 3
                end
        elseif New_World and (Camera["Value"] >= 700 and Camera["Value"] <= 724) then
                Enemy = "Raider"
                NameEnemy = "Raider"
                QuestName = "Area1Quest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
                EnemyPos = CFrame["new"](-728.32672119141, 52.779319763184, 2345.7705078125)
        elseif New_World and (Camera["Value"] >= 725 and Camera["Value"] <= 774) then
                Enemy = "Mercenary"
                NameEnemy = "Mercenary"
                QuestName = "Area1Quest"
                QuestNumber = 2
                QuestPos = CFrame["new"](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
                EnemyPos = CFrame["new"](-1004.3244018555, 80.158866882324, 1424.6193847656)
                if New_World and (Camera["Value"] >= 750 and Camera["Value"] <= 774) then
                        Name_Boss = "Diamond"
                        QuestName_Boss = "Area1Quest"
                        QuestNumber_Boss = 3
                end
        elseif New_World and (Camera["Value"] >= 775 and Camera["Value"] <= 799) then
                Enemy = "Swan Pirate"
                NameEnemy = "Swan Pirate"
                QuestName = "Area2Quest"
                QuestNumber = 1
                QuestPos = CFrame["new"](638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906)
                EnemyPos = CFrame["new"](1068.6643066406, 137.61428833008, 1322.1060791016)
        elseif New_World and (Camera["Value"] >= 800 and Camera["Value"] <= 874) then
                Enemy = "Factory Staff"
                NameEnemy = "Factory Staff"
                QuestName = "Area2Quest"
                QuestNumber = 2
                QuestPos = CFrame["new"](632.698608, 73.1055908, 918.666321, -0.0319722369, 8.960749e-10, -0.999488771, 1.3632653e-10, 1, 8.9217234e-10, .999488771, -1.0773209e-10, -0.0319722369)
                EnemyPos = CFrame["new"](73.078674316406, 81.863441467285, -27.470672607422)
                if New_World and (Camera["Value"] >= 850 and Camera["Value"] <= 874) then
                        Name_Boss = "Jeremy"
                        QuestName_Boss = "Area2Quest"
                        QuestNumber_Boss = 3
                end
        elseif New_World and (Camera["Value"] >= 875 and Camera["Value"] <= 899) then
                Enemy = "Marine Lieutenant"
                NameEnemy = "Marine Lieutenant"
                QuestName = "MarineQuest3"
                QuestNumber = 1
                QuestPos = CFrame["new"](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
                EnemyPos = CFrame["new"](-2821.3723144531, 75.897277832031, -3070.0891113281)
        elseif New_World and (Camera["Value"] >= 900 and Camera["Value"] <= 949) then
                Enemy = "Marine Captain"
                NameEnemy = "Marine Captain"
                QuestName = "MarineQuest3"
                QuestNumber = 2
                QuestPos = CFrame["new"](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
                EnemyPos = CFrame["new"](-1861.2310791016, 80.176582336426, -3254.6975097656)
        elseif New_World and (Camera["Value"] >= 950 and Camera["Value"] <= 974) then
                Enemy = "Zombie"
                NameEnemy = "Zombie"
                QuestName = "ZombieQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
                EnemyPos = CFrame["new"](-5657.7768554688, 78.969734191895, -928.68701171875)
                if New_World and (Camera["Value"] >= 925 and Camera["Value"] <= 974) then
                        Name_Boss = "Fajita"
                        QuestName_Boss = "MarineQuest3"
                        QuestNumber_Boss = 3
                end
        elseif New_World and (Camera["Value"] >= 975 and Camera["Value"] <= 999) then
                Enemy = "Vampire"
                NameEnemy = "Vampire"
                QuestName = "ZombieQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
                EnemyPos = CFrame["new"](-6037.66796875, 32.184638977051, -1340.6597900391)
        elseif New_World and (Camera["Value"] >= 1000 and Camera["Value"] <= 1049) then
                Enemy = "Snow Trooper"
                NameEnemy = "Snow Trooper"
                QuestName = "SnowMountainQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                EnemyPos = CFrame["new"](549.14733886719, 427.38705444336, -5563.6987304688)
        elseif New_World and (Camera["Value"] >= 1050 and Camera["Value"] <= 1099) then
                Enemy = "Winter Warrior"
                NameEnemy = "Winter Warrior"
                QuestName = "SnowMountainQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                EnemyPos = CFrame["new"](1142.7451171875, 475.63980102539, -5199.4165039062)
        elseif New_World and (Camera["Value"] >= 1100 and Camera["Value"] <= 1124) then
                Enemy = "Lab Subordinate"
                NameEnemy = "Lab Subordinate"
                QuestName = "IceSideQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
                EnemyPos = CFrame["new"](-5707.4716796875, 15.951709747314, -4513.3920898438)
        elseif New_World and (Camera["Value"] >= 1125 and Camera["Value"] <= 1174) then
                Enemy = "Horned Warrior"
                NameEnemy = "Horned Warrior"
                QuestName = "IceSideQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
                EnemyPos = CFrame["new"](-6341.3666992188, 15.951770782471, -5723.162109375)
                if New_World and (Camera["Value"] >= 1150 and Camera["Value"] <= 1174) then
                        Name_Boss = "Smoke Admiral"
                        QuestName_Boss = "IceSideQuest"
                        QuestNumber_Boss = 3
                end
        elseif New_World and (Camera["Value"] >= 1175 and Camera["Value"] <= 1199) then
                Enemy = "Magma Ninja"
                NameEnemy = "Magma Ninja"
                QuestName = "FireSideQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                EnemyPos = CFrame["new"](-5449.6728515625, 76.658744812012, -5808.2006835938)
        elseif New_World and (Camera["Value"] >= 1200 and Camera["Value"] <= 1249) then
                Enemy = "Lava Pirate"
                NameEnemy = "Lava Pirate"
                QuestName = "FireSideQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                EnemyPos = CFrame["new"](-5213.3315429688, 49.737880706787, -4701.451171875)
        elseif New_World and (Camera["Value"] >= 1250 and Camera["Value"] <= 1274) then
                Enemy = "Ship Deckhand"
                NameEnemy = "Ship Deckhand"
                QuestName = "ShipQuest1"
                QuestNumber = 1
                QuestPos = CFrame["new"](1037.80127, 125.092171, 32911.6016)
                EnemyPos = CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375)
                if ((CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375))["Position"] - LocalPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 5000 then
                        ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3["new"](923.21301269531, 126.9759979248, 32852.83203125))
                end
        elseif New_World and (Camera["Value"] >= 1275 and Camera["Value"] <= 1299) then
                Enemy = "Ship Engineer"
                NameEnemy = "Ship Engineer"
                QuestName = "ShipQuest1"
                QuestNumber = 2
                QuestPos = CFrame["new"](1037.80127, 125.092171, 32911.6016)
                EnemyPos = CFrame["new"](919.47863769531, 43.544013977051, 32779.96875)
                if ((CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375))["Position"] - LocalPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 5000 then
                        ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3["new"](923.21301269531, 126.9759979248, 32852.83203125))
                end
        elseif New_World and (Camera["Value"] >= 1300 and Camera["Value"] <= 1324) then
                Enemy = "Ship Steward"
                NameEnemy = "Ship Steward"
                QuestName = "ShipQuest2"
                QuestNumber = 1
                QuestPos = CFrame["new"](968.80957, 125.092171, 33244.125)
                EnemyPos = CFrame["new"](919.43853759766, 129.55599975586, 33436.03515625)
                if ((CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375))["Position"] - LocalPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 5000 then
                        ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3["new"](923.21301269531, 126.9759979248, 32852.83203125))
                end
        elseif New_World and (Camera["Value"] >= 1325 and Camera["Value"] <= 1349) then
                Enemy = "Ship Officer"
                NameEnemy = "Ship Officer"
                QuestName = "ShipQuest2"
                QuestNumber = 2
                QuestPos = CFrame["new"](968.80957, 125.092171, 33244.125)
                EnemyPos = CFrame["new"](1036.0179443359, 181.4390411377, 33315.7265625)
                if ((CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375))["Position"] - LocalPlayer["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 5000 then
                        ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3["new"](923.21301269531, 126.9759979248, 32852.83203125))
                end
        elseif New_World and (Camera["Value"] >= 1350 and Camera["Value"] <= 1374) then
                Enemy = "Arctic Warrior"
                NameEnemy = "Arctic Warrior"
                QuestName = "FrostQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
                EnemyPos = CFrame["new"](5966.24609375, 62.970020294189, -6179.3828125)
        elseif New_World and (Camera["Value"] >= 1375 and Camera["Value"] <= 1424) then
                Enemy = "Snow Lurker"
                NameEnemy = "Snow Lurker"
                QuestName = "FrostQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
                EnemyPos = CFrame["new"](5407.0737304688, 69.194374084473, -6880.8803710938)
                if New_World and (Camera["Value"] >= 1400 and Camera["Value"] <= 1424) then
                        Name_Boss = "Awakened Ice Admiral"
                        QuestName_Boss = "FrostQuest"
                        QuestNumber_Boss = 3
                end
        elseif New_World and (Camera["Value"] >= 1425 and Camera["Value"] <= 1449) then
                Enemy = "Sea Soldier"
                NameEnemy = "Sea Soldier"
                QuestName = "ForgottenQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-3055, 240, -10145)
                EnemyPos = CFrame["new"](-3433, 26, -9784)
        elseif New_World and (Camera["Value"] >= 1450 and Camera["Value"] <= 999999) then
                Enemy = "Water Fighter"
                NameEnemy = "Water Fighter"
                QuestName = "ForgottenQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](-3054.53, 239.96, -10144.42)
                EnemyPos = CFrame["new"](-3360.23, 284.21, -10533.07)
                if New_World and (Camera["Value"] >= 1475 and Camera["Value"] <= 1499) then
                        Name_Boss = "Tide Keeper"
                        QuestName_Boss = "ForgottenQuest"
                        QuestNumber_Boss = 3
                end
        elseif Three_World and (Camera["Value"] >= 1500 and Camera["Value"] <= 1524) then
                Enemy = "Pirate Millionaire"
                NameEnemy = "Pirate Millionaire"
                QuestName = "PiratePortQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-449.15930175781, 108.61765289307, 5948.0014648438)
                EnemyPos = CFrame["new"](-245.99638366699, 47.30615234375, 5584.1005859375)
        elseif Three_World and (Camera["Value"] >= 1525 and Camera["Value"] <= 1574) then
                Enemy = "Pistol Billionaire"
                NameEnemy = "Pistol Billionaire"
                QuestName = "PiratePortQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](-449.15930175781, 108.61765289307, 5948.0014648438)
                EnemyPos = CFrame["new"](-187.33015441895, 86.239875793457, 6013.513671875)
                if Three_World and (Camera["Value"] >= 1550 and Camera["Value"] <= 1574) then
                        Name_Boss = "Stone"
                        QuestName_Boss = "PiratePortQuest"
                        QuestNumber_Boss = 3
                end
        elseif Three_World and (Camera["Value"] >= 1575 and Camera["Value"] <= 1599) then
                Enemy = "Dragon Crew Warrior"
                NameEnemy = "Dragon Crew Warrior"
                QuestName = "DragonCrewQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](6737.7768554688, 127.42920684814, -713.23126220703)
                EnemyPos = CFrame["new"](6141.140625, 51.351364135742, -1340.7385253906)
        elseif Three_World and (Camera["Value"] >= 1600 and Camera["Value"] <= 1624) then
                Enemy = "Dragon Crew Archer"
                NameEnemy = "Dragon Crew Archer"
                QuestName = "DragonCrewQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](6737.7768554688, 127.42920684814, -713.23126220703)
                EnemyPos = CFrame["new"](6616.4174804688, 441.76705932617, 446.04699707031)
        elseif Three_World and (Camera["Value"] >= 1625 and Camera["Value"] <= 1649) then
                Enemy = "Hydra Enforcer"
                NameEnemy = "Hydra Enforcer"
                QuestName = "VenomCrewQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](5212.94140625, 1004.1171875, 755.66571044922)
                EnemyPos = CFrame["new"](4685.2583007812, 735.80780029297, 815.34259033203)
        elseif Three_World and (Camera["Value"] >= 1650 and Camera["Value"] <= 1699) then
                Enemy = "Venomous Assailant"
                NameEnemy = "Venomous Assailant"
                QuestName = "VenomCrewQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](5212.94140625, 1004.1171875, 755.66571044922)
                EnemyPos = CFrame["new"](4729.0942382812, 590.43676757812, -36.976276397705)
                if Three_World and (Camera["Value"] >= 1675 and Camera["Value"] <= 1699) then
                        Name_Boss = "Hydra Leader"
                        QuestName_Boss = "VenomCrewQuest"
                        QuestNumber_Boss = 3
                end
        elseif Three_World and (Camera["Value"] >= 1700 and Camera["Value"] <= 1724) then
                Enemy = "Marine Commodore"
                NameEnemy = "Marine Commodore"
                QuestName = "MarineTreeIsland"
                QuestNumber = 1
                QuestPos = CFrame["new"](2484.0673828125, 74.282150268555, -6786.64453125)
                EnemyPos = CFrame["new"](2286.0078125, 73.133918762207, -7159.8090820312)
        elseif Three_World and (Camera["Value"] >= 1725 and Camera["Value"] <= 1774) then
                Enemy = "Marine Rear Admiral"
                NameEnemy = "Marine Rear Admiral"
                QuestName = "MarineTreeIsland"
                QuestNumber = 2
                QuestPos = CFrame["new"](2484.0673828125, 74.282150268555, -6786.64453125)
                EnemyPos = CFrame["new"](3656.7736816406, 160.52406311035, -7001.5986328125)
                if Three_World and (Camera["Value"] >= 1750 and Camera["Value"] <= 1774) then
                        Name_Boss = "Kilo Admiral"
                        QuestName_Boss = "MarineTreeIsland"
                        QuestNumber_Boss = 3
                end
        elseif Three_World and (Camera["Value"] >= 1775 and Camera["Value"] <= 1799) then
                Enemy = "Fishman Raider"
                NameEnemy = "Fishman Raider"
                QuestName = "DeepForestIsland3"
                QuestNumber = 1
                QuestPos = CFrame["new"](-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                EnemyPos = CFrame["new"](-10407.526367188, 331.76263427734, -8368.5166015625)
        elseif Three_World and (Camera["Value"] >= 1800 and Camera["Value"] <= 1824) then
                Enemy = "Fishman Captain"
                NameEnemy = "Fishman Captain"
                QuestName = "DeepForestIsland3"
                QuestNumber = 2
                QuestPos = CFrame["new"](-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                EnemyPos = CFrame["new"](-10994.701171875, 352.38140869141, -9002.1103515625)
        elseif Three_World and (Camera["Value"] >= 1825 and Camera["Value"] <= 1849) then
                Enemy = "Forest Pirate"
                NameEnemy = "Forest Pirate"
                QuestName = "DeepForestIsland"
                QuestNumber = 1
                QuestPos = CFrame["new"](-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
                EnemyPos = CFrame["new"](-13274.478515625, 332.37814331055, -7769.5805664062)
        elseif Three_World and (Camera["Value"] >= 1850 and Camera["Value"] <= 1899) then
                Enemy = "Mythological Pirate"
                NameEnemy = "Mythological Pirate"
                QuestName = "DeepForestIsland"
                QuestNumber = 2
                QuestPos = CFrame["new"](-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
                EnemyPos = CFrame["new"](-13680.607421875, 501.08154296875, -6991.189453125)
                if Three_World and (Camera["Value"] >= 1875 and Camera["Value"] <= 1899) then
                        Name_Boss = "Captain Elephant"
                        QuestName_Boss = "DeepForestIsland"
                        QuestNumber_Boss = 3
                end
        elseif Three_World and (Camera["Value"] >= 1900 and Camera["Value"] <= 1924) then
                Enemy = "Jungle Pirate"
                NameEnemy = "Jungle Pirate"
                QuestName = "DeepForestIsland2"
                QuestNumber = 1
                QuestPos = CFrame["new"](-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                EnemyPos = CFrame["new"](-12256.16015625, 331.73828125, -10485.836914062)
        elseif Three_World and (Camera["Value"] >= 1924 and Camera["Value"] <= 1974) then
                Enemy = "Musketeer Pirate"
                NameEnemy = "Musketeer Pirate"
                QuestName = "DeepForestIsland2"
                QuestNumber = 2
                QuestPos = CFrame["new"](-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                EnemyPos = CFrame["new"](-13457.904296875, 391.54565429688, -9859.177734375)
                if Three_World and (Camera["Value"] >= 1950 and Camera["Value"] <= 1974) then
                        Name_Boss = "Beautiful Pirate"
                        QuestName_Boss = "DeepForestIsland2"
                        QuestNumber_Boss = 3
                end
        elseif Three_World and (Camera["Value"] >= 1974 and Camera["Value"] <= 1999) then
                Enemy = "Reborn Skeleton"
                NameEnemy = "Reborn Skeleton"
                QuestName = "HauntedQuest1"
                QuestNumber = 1
                QuestPos = CFrame["new"](-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                EnemyPos = CFrame["new"](-8763.7236328125, 165.72299194336, 6159.8618164062)
        elseif Three_World and (Camera["Value"] >= 2000 and Camera["Value"] <= 2024) then
                Enemy = "Living Zombie"
                NameEnemy = "Living Zombie"
                QuestName = "HauntedQuest1"
                QuestNumber = 2
                QuestPos = CFrame["new"](-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                EnemyPos = CFrame["new"](-10144.131835938, 138.6266784668, 5838.0888671875)
        elseif Three_World and (Camera["Value"] >= 2025 and Camera["Value"] <= 2049) then
                Enemy = "Demonic Soul"
                NameEnemy = "Demonic Soul"
                QuestName = "HauntedQuest2"
                QuestNumber = 1
                QuestPos = CFrame["new"](-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                EnemyPos = CFrame["new"](-9505.8720703125, 172.10482788086, 6158.9931640625)
        elseif Three_World and (Camera["Value"] >= 2050 and Camera["Value"] <= 2074) then
                Enemy = "Posessed Mummy"
                NameEnemy = "Posessed Mummy"
                QuestName = "HauntedQuest2"
                QuestNumber = 2
                QuestPos = CFrame["new"](-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                EnemyPos = CFrame["new"](-9582.0224609375, 6.2515273094177, 6205.478515625)
        elseif Three_World and (Camera["Value"] >= 2075 and Camera["Value"] <= 2099) then
                Enemy = "Peanut Scout"
                NameEnemy = "Peanut Scout"
                QuestName = "NutsIslandQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                EnemyPos = CFrame["new"](-2143.2419433594, 47.721984863281, -10029.995117188)
        elseif Three_World and (Camera["Value"] >= 2100 and Camera["Value"] <= 2124) then
                Enemy = "Peanut President"
                NameEnemy = "Peanut President"
                QuestName = "NutsIslandQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                EnemyPos = CFrame["new"](-1859.3540039062, 38.103168487549, -10422.4296875)
        elseif Three_World and (Camera["Value"] >= 2125 and Camera["Value"] <= 2149) then
                Enemy = "Ice Cream Chef"
                NameEnemy = "Ice Cream Chef"
                QuestName = "IceCreamIslandQuest"
                QuestNumber = 1
                QuestPos = CFrame["new"](-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                EnemyPos = CFrame["new"](-872.24658203125, 65.81957244873, -10919.95703125)
        elseif Three_World and (Camera["Value"] >= 2150 and Camera["Value"] <= 2199) then
                Enemy = "Ice Cream Commander"
                NameEnemy = "Ice Cream Commander"
                QuestName = "IceCreamIslandQuest"
                QuestNumber = 2
                QuestPos = CFrame["new"](-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                EnemyPos = CFrame["new"](-558.06103515625, 112.04895782471, -11290.774414063)
                if Three_World and (Camera["Value"] >= 2175 and Camera["Value"] <= 2199) then
                        Name_Boss = "Cake Queen"
                        QuestName_Boss = "IceCreamIslandQuest"
                        QuestNumber_Boss = 3
                end
        elseif Three_World and (Camera["Value"] >= 2200 and Camera["Value"] <= 2224) then
                Enemy = "Cookie Crafter"
                NameEnemy = "Cookie Crafter"
                QuestName = "CakeQuest1"
                QuestNumber = 1
                QuestPos = CFrame["new"](-2021.32007, 37.7982254, -12028.7295, .957576931, -8.8030205e-08, .288177818, 6.930119e-08, 1, 7.519312e-08, -0.288177818, -5.2032135e-08, .957576931)
                EnemyPos = CFrame["new"](-2374.13671875, 37.798263549805, -12125.30859375)
        elseif Three_World and (Camera["Value"] >= 2225 and Camera["Value"] <= 2249) then
                Enemy = "Cake Guard"
                NameEnemy = "Cake Guard"
                QuestName = "CakeQuest1"
                QuestNumber = 2
                QuestPos = CFrame["new"](-2021.32007, 37.7982254, -12028.7295, .957576931, -8.8030205e-08, .288177818, 6.930119e-08, 1, 7.519312e-08, -0.288177818, -5.2032135e-08, .957576931)
                EnemyPos = CFrame["new"](-1598.3070068359, 43.773197174072, -12244.581054688)
        elseif Three_World and (Camera["Value"] >= 2250 and Camera["Value"] <= 2274) then
                Enemy = "Baking Staff"
                NameEnemy = "Baking Staff"
                QuestName = "CakeQuest2"
                QuestNumber = 1
                QuestPos = CFrame["new"](-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.2214214e-08, .250778586, 4.7491106e-08, 1, 1.4990471e-08, -0.250778586, 2.6421194e-08, -0.96804446)
                EnemyPos = CFrame["new"](-1887.8099365234, 77.618507385254, -12998.350585938)
        elseif Three_World and (Camera["Value"] >= 2275 and Camera["Value"] <= 2299) then
                Enemy = "Head Baker"
                NameEnemy = "Head Baker"
                QuestName = "CakeQuest2"
                QuestNumber = 2
                QuestPos = CFrame["new"](-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.2214214e-08, .250778586, 4.7491106e-08, 1, 1.4990471e-08, -0.250778586, 2.6421194e-08, -0.96804446)
                EnemyPos = CFrame["new"](-2216.1882324219, 82.884521484375, -12869.293945312)
        elseif Three_World and (Camera["Value"] >= 2300 and Camera["Value"] <= 2324) then
                Enemy = "Cocoa Warrior"
                NameEnemy = "Cocoa Warrior"
                QuestName = "ChocQuest1"
                QuestNumber = 1
                QuestPos = CFrame["new"](233.22836303711, 29.876001358032, -12201.233398438)
                EnemyPos = CFrame["new"](-21.553283691406, 80.574996948242, -12352.387695312)
        elseif Three_World and (Camera["Value"] >= 2325 and Camera["Value"] <= 2349) then
                Enemy = tableConcat({
                        "Chocolate Bar Battle";
                        "r"
                })
                NameEnemy = tableConcat({
                        "Chocolate Bar Battle",
                        "r"
                })
                QuestName = "ChocQuest1"
                QuestNumber = 2
                QuestPos = CFrame["new"](233.22836303711, 29.876001358032, -12201.233398438)
                EnemyPos = CFrame["new"](582.59057617188, 77.188095092773, -12463.162109375)
        elseif Three_World and (Camera["Value"] >= 2350 and Camera["Value"] <= 2374) then
                Enemy = "Sweet Thief"
                NameEnemy = "Sweet Thief"
                QuestName = "ChocQuest2"
                QuestNumber = 1
                QuestPos = CFrame["new"](150.50663757324, 30.693693161011, -12774.502929688)
                EnemyPos = CFrame["new"](165.1884765625, 76.058853149414, -12600.836914062)
        elseif Three_World and (Camera["Value"] >= 2375 and Camera["Value"] <= 2399) then
                Enemy = "Candy Rebel"
                NameEnemy = "Candy Rebel"
                QuestName = "ChocQuest2"
                QuestNumber = 2
                QuestPos = CFrame["new"](150.50663757324, 30.693693161011, -12774.502929688)
                EnemyPos = CFrame["new"](134.86563110352, 77.247680664062, -12876.547851562)
        elseif Three_World and (Camera["Value"] >= 2400 and Camera["Value"] <= 2424) then
                Enemy = "Candy Pirate"
                NameEnemy = "Candy Pirate"
                QuestName = "CandyQuest1"
                QuestNumber = 1
                QuestPos = CFrame["new"](-1167, 60, -14491)
                EnemyPos = CFrame["new"](-1310.5003662109, 26.016523361206, -14562.404296875)
        elseif Three_World and (Camera["Value"] >= 2425 and Camera["Value"] <= 2449) then
                Enemy = "Snow Demon"
                NameEnemy = "Snow Demon"
                QuestName = "CandyQuest1"
                QuestNumber = 2
                QuestPos = CFrame["new"](-1167, 60, -14491)
                EnemyPos = CFrame["new"](-880.20062255859, 71.247764587402, -14538.609375)
        elseif Three_World and (Camera["Value"] >= 2450 and Camera["Value"] <= 2474) then
                Enemy = "Isle Outlaw"
                NameEnemy = "Isle Outlaw"
                QuestName = "TikiQuest1"
                QuestNumber = 1
                QuestPos = CFrame["new"](-16547.748046875, 61.135334014893, -173.41360473633)
                EnemyPos = CFrame["new"](-16442.814453125, 116.13899993896, -264.46377563477)
        elseif Three_World and (Camera["Value"] >= 2475 and Camera["Value"] <= 2499) then
                Enemy = "Island Boy"
                NameEnemy = "Island Boy"
                QuestName = "TikiQuest1"
                QuestNumber = 2
                QuestPos = CFrame["new"](-16547.748046875, 61.135334014893, -173.41360473633)
                EnemyPos = CFrame["new"](-16901.26171875, 84.067565917969, -192.88906860352)
        elseif Three_World and (Camera["Value"] >= 2500 and Camera["Value"] <= 2524) then
                Enemy = "Sun-kissed Warrior"
                NameEnemy = "Sun"
                New = "Sun"
                QuestName = "TikiQuest2"
                QuestNumber = 1
                QuestPos = CFrame["new"](-16539.078125, 55.686328887939, 1051.5738525391)
                EnemyPos = CFrame["new"](-16051.969726562, 54.797149658203, 1084.67578125)
        elseif Three_World and (Camera["Value"] >= 2525 and Camera["Value"] <= 2549) then
                Enemy = "Isle Champion"
                NameEnemy = "Isle Champion"
                QuestName = "TikiQuest2"
                QuestNumber = 2
                QuestPos = CFrame["new"](-16539.078125, 55.686328887939, 1051.5738525391)
                EnemyPos = CFrame["new"](-16619.37109375, 129.98481750488, 1071.2355957031)
        elseif Three_World and (Camera["Value"] >= 2550 and Camera["Value"] <= 2574) then
                Enemy = "Serpent Hunter"
                NameEnemy = "Serpent Hunter"
                QuestName = "TikiQuest3"
                QuestNumber = 1
                QuestPos = CFrame["new"](-16666.5703125, 105.29138183594, 1576.6925048828)
                EnemyPos = CFrame["new"](-16474.5703125, 124.32273864746, 1619.248046875)
        elseif Three_World and (Camera["Value"] >= 2575 and Camera["Value"] <= 2650) then
                Enemy = "Skull Slayer"
                NameEnemy = "Skull Slayer"
                QuestName = "TikiQuest3"
                QuestNumber = 2
                QuestPos = CFrame["new"](-16666.5703125, 105.29138183594, 1576.6925048828)
                EnemyPos = CFrame["new"](-16778.7852, 232.283752, 1442.08325, -0.992449045, -5.54140511e-10, -0.12265785, -2.84580609e-10, 1, -2.21517649e-09, .12265785, -2.16354379e-09, -0.992449045)
        end
end
function TPZ(arg1)
        local data3 = {}
        data3[2] = arg1
        data3[1] = (data3[2]["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"]
        if data3[1] < 100 then
                data3[4] = 50
        elseif data3[1] < 400 then
                data3[4] = 400
        elseif data3[1] < 1000 then
                data3[4] = 300
        elseif data3[1] < 1500 then
                data3[4] = 260
        elseif data3[1] >= 1500 then
                data3[4] = 300
        end
        Mouse = (game:GetService("TweenService")):Create(game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"], TweenInfo["new"](data3[1] / data3[4], Enum["EasingStyle"]["Linear"]), {
                ["CFrame"] = data3[2]
        })
        Mouse:Play()
end
UserInputService = tick()
MarketplaceService = (game:GetService("Players"))["LocalPlayer"]
ReplicatedFirst = function()
        if PhysicsService then
                PhysicsService:Cancel()
                PhysicsService = nil
        end
end
RemoteFunction = function(arg1, arg2, arg3)
        local info3 = {}
        info3[10], info3[3], info3[4] = arg1, arg2, arg3
        info3[12] = 300
        if info3[3] == 1.6 then
                info3[12] = 350
        end
        info3[11] = info3[4] or 130
        info3[9] = MarketplaceService["Character"] and MarketplaceService["Character"]:FindFirstChild("HumanoidRootPart")
        info3[7] = MarketplaceService["Character"] and MarketplaceService["Character"]:FindFirstChild("Humanoid")
        if not info3[9] or not info3[7] then
                return
        end
        info3[13] = (info3[10]["Position"] - info3[9]["Position"])["Magnitude"]
        if info3[13] > 3000 and info3[7]["Health"] > 0 then
                local vars3 = {}
                vars3[1] = {
                        {
                                Vector3["new"](61163.85, 11.67, 1819.78),
                                "Old_World"
                        },
                        {
                                Vector3["new"](-4607.82, 872.54, -1667.55);
                                "Old_World"
                        };
                        {
                                Vector3["new"](-7894.61, 5547.14, -380.29),
                                "Old_World"
                        },
                        {
                                Vector3["new"](923.21, 126.97, 32852.83);
                                "New_World"
                        };
                        {
                                Vector3["new"](-2953.31, 41.01, 2099.17);
                                "Old_World"
                        }
                }
                for idx, val in pairs(vars3[1]) do
                        local temp3 = {}
                        temp3[3], temp3[1] = idx, val
                        if _G[temp3[1][2]] and (temp3[1][1] - info3[10]["Position"])["Magnitude"] <= 2300 then
                                (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("requestEntrance", temp3[1][1])
                                break
                        end
                end
        end
        UserInputService = tick()
        ReplicatedFirst()
        info3[6] = (info3[10]["Position"] - info3[9]["Position"])["Magnitude"]
        info3[9]["CFrame"] = CFrame["new"](info3[9]["Position"]["X"], info3[10]["Position"]["Y"], info3[9]["Position"]["Z"])
        if info3[6] < 130 then
                pcall(function()
                        info3[9]["CFrame"] = info3[10]
                end)
                return
        elseif info3[6] < info3[11] then
                info3[12] = 350
        end
        for idx, val in pairs(MarketplaceService["Character"]:GetDescendants()) do
                local state3 = {}
                state3[2], state3[3] = idx, val
                if state3[3]:IsA("BasePart") and state3[3]["CanCollide"] then
                        state3[3]["CanCollide"] = false
                end
        end
        info3[8] = info3[6] / info3[12]
        info3[2] = TweenInfo["new"](info3[8], Enum["EasingStyle"]["Linear"])
        info3[5] = {
                ["CFrame"] = info3[10]
        }
        PhysicsService = (game:GetService("TweenService")):Create(info3[9], info3[2], info3[5])
        PhysicsService:Play()
end
StatsGui = function()
        if God_Human_C_M then
                local cache3 = {}
                cache3[1] = (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("getInventory")
                for idx, val in pairs(cache3[1]) do
                        local store3 = {}
                        store3[1], store3[3] = idx, val
                        if store3[3]["Type"] == "Sword" then
                                if store3[3]["Name"] == "Tushita" and store3[3]["Mastery"] >= 400 then
                                        Tushita_M = true
                                elseif store3[3]["Name"] == "Yama" and store3[3]["Mastery"] >= 400 then
                                        Yama_M = true
                                end
                        end
                end
                if not Tushita_M then
                        if not TempTable["ffc"](MarketplaceService["Backpack"], "Tushita") and not TempTable["ffc"](MarketplaceService["Character"], "Tushita") then
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadItem", "Tushita")
                        end
                elseif not Yama_M then
                        if not TempTable["ffc"](MarketplaceService["Backpack"], "Yama") and not TempTable["ffc"](MarketplaceService["Character"], "Yama") then
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadItem", "Yama")
                        end
                end
                for idx, val in pairs(MarketplaceService["Backpack"]:GetChildren()) do
                        local tmp4 = {}
                        tmp4[2], tmp4[1] = idx, val
                        if tmp4[1]:IsA("Tool") and tostring(tmp4[1]["ToolTip"]) == "Sword" then
                                (MarketplaceService["Character"]:WaitForChild("Humanoid")):EquipTool(tmp4[1])
                        end
                end
        else
                for idx, val in pairs(MarketplaceService["Backpack"]:GetChildren()) do
                        local data4 = {}
                        data4[2], data4[1] = idx, val
                        if data4[1]:IsA("Tool") and tostring(data4[1]["ToolTip"]) == "Melee" then
                                (MarketplaceService["Character"]:WaitForChild("Humanoid")):EquipTool(data4[1])
                        end
                end
        end
end
function TPBoat(arg1, arg2, arg3, arg4)
        local info4 = {}
        info4[3], info4[5], info4[4], info4[6] = arg1, arg2, arg3, arg4
        if info4[6] == nil then
                info4[6] = false
        end
        info4[1] = (info4[3]["Position"] - info4[5]["Position"])["Magnitude"]
        Speed = info4[4]
        TweenP = (game:GetService("TweenService")):Create(info4[5], TweenInfo["new"](info4[1] / Speed, Enum["EasingStyle"]["Linear"]), {
                ["CFrame"] = info4[3]
        })
        if info4[6] == true then
                TweenP:Cancel()
        else
                TweenP:Play()
        end
end
setmetatable(TempTable, {
        ["__index"] = function(arg1, arg2)
                local vars4 = {}
                vars4[2], vars4[3] = arg1, arg2
                if vars4[3] == "wt" then
                        return function(arg1)
                                local temp4 = {}
                                temp4[2] = arg1
                                return task["wait"](temp4[2])
                        end
                elseif vars4[3] == "p" then
                        return function(...)
                                return pcall(...)
                        end
                elseif vars4[3] == "sf" then
                        return function(arg1, arg2)
                                local state4 = {}
                                state4[2], state4[3] = arg1, arg2
                                return string["find"](state4[2], tostring(state4[3]))
                        end
                elseif vars4[3] == "cf" then
                        return function(...)
                                MarketplaceService["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer(...)
                        end
                elseif vars4[3] == "ffc" then
                        return function(arg1, arg2)
                                local cache4 = {}
                                cache4[3], cache4[2] = arg1, arg2
                                return cache4[3] and cache4[3]:FindFirstChild(cache4[2])
                        end
                elseif vars4[3] == "Equip" then
                        return function(arg1)
                                local store4 = {}
                                store4[2] = arg1
                                if not store4[2] or type(store4[2]) ~= "string" then
                                        return
                                end
                                for idx, val in pairs(MarketplaceService["Backpack"]:GetChildren()) do
                                        local tmp5 = {}
                                        tmp5[3], tmp5[2] = idx, val
                                        if tmp5[2]:IsA("Tool") and tmp5[2]["Name"] == store4[2] then
                                                (MarketplaceService["Character"]:WaitForChild("Humanoid")):EquipTool(tmp5[2])
                                        end
                                end
                        end
                elseif vars4[3] == "gi" then
                        return function(arg1)
                                local data5 = {}
                                data5[2] = arg1
                                if TempTable["ffc"](MarketplaceService["Backpack"], data5[2]) or TempTable["ffc"](MarketplaceService["Character"], data5[2]) then
                                        return true
                                end
                                for idx, val in pairs(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventoryWeapons")) do
                                        local info5 = {}
                                        info5[2], info5[1] = idx, val
                                        if info5[1]["Name"] == data5[2] then
                                                return true
                                        end
                                end
                                return false
                        end
                elseif vars4[3] == "tf" then
                        return function(arg1, arg2)
                                local vars5 = {}
                                vars5[3], vars5[1] = arg1, arg2
                                return table["find"](vars5[3], vars5[1])
                        end
                elseif vars4[3] == "CheckBoss" then
                        return function(arg1)
                                local temp5 = {}
                                temp5[1] = arg1
                                if TempTable["ffc"](ReplicatedStorage, temp5[1]) or TempTable["ffc"](Enemies, temp5[1]) then
                                        return true
                                end
                                return false
                        end
                elseif vars4[3] == "IsHall" then
                        return function()
                                if TempTable["ffc"](Workspace["Map"], "IceCastle") then
                                        if TempTable["ffc"](Workspace["Map"]["IceCastle"]["Hall"]["LibraryDoor"], "Keyhole") then
                                                return true
                                        end
                                end
                                return false
                        end
                elseif vars4[3] == "CheckBackpack" then
                        return function(arg1)
                                local state5 = {}
                                state5[1] = arg1
                                if TempTable["ffc"](MarketplaceService["Backpack"], state5[1]) or TempTable["ffc"](MarketplaceService["Character"], state5[1]) then
                                        return true
                                end
                                return false
                        end
                elseif vars4[3] == "GetMobRaid" then
                        return function()
                                local cache5 = {}
                                cache5[2] = {}
                                for idx, val in pairs(Enemies:GetChildren()) do
                                        local store5 = {}
                                        store5[1], store5[2] = idx, val
                                        if store5[2]:FindFirstChild("HumanoidRootPart") and (store5[2]:FindFirstChild("Humanoid") and (store5[2]["Humanoid"]["Health"] > 0 and (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - store5[2]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5000)) then
                                                table["insert"](cache5[2], store5[2])
                                        end
                                end
                                return cache5[2]
                        end
                elseif vars4[3] == "GetFruits" then
                        return function()
                                local tmp6 = {}
                                tmp6[2] = {}
                                for idx, val in pairs(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
                                        local data6 = {}
                                        data6[3], data6[1] = idx, val
                                        if data6[1]["Type"] == "Blox Fruit" and data6[1]["Value"] <= 999999 then
                                                table["insert"](tmp6[2], {
                                                        ["Name"] = data6[1]["Name"],
                                                        ["Value"] = data6[1]["Value"]
                                                })
                                        end
                                end
                                return tmp6[2]
                        end
                elseif vars4[3] == "GetRaid" then
                        return function(arg1, arg2)
                                local info6 = {}
                                info6[3], info6[1] = arg1, arg2
                                for idx, val in pairs(Workspace["_WorldOrigin"]["Locations"]:GetChildren()) do
                                        local vars6 = {}
                                        vars6[1], vars6[2] = idx, val
                                        if vars6[2]:IsA("Part") or vars6[2]:IsA("BasePart") then
                                                if vars6[2]["Name"] == info6[3] and (vars6[2]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= info6[1] then
                                                        return vars6[2]
                                                end
                                        end
                                end
                                return nil
                        end
                elseif vars4[3] == "GetType" then
                        return function()
                                local temp6 = {}
                                temp6[1] = {}
                                for idx, val in pairs(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
                                        local state6 = {}
                                        state6[2], state6[3] = idx, val
                                        if state6[3]["Type"] == "Blox Fruit" then
                                                table["insert"](temp6[1], state6[3]["Name"])
                                        end
                                end
                                return temp6[1]
                        end
                elseif vars4[3] == "IsInList" then
                        return function(arg1, arg2)
                                local cache6 = {}
                                cache6[3], cache6[2] = arg1, arg2
                                for idx, val in pairs(cache6[3]) do
                                        local store6 = {}
                                        store6[2], store6[3] = idx, val
                                        if store6[3] == cache6[2] then
                                                return true
                                        end
                                end
                                return false
                        end
                elseif vars4[3] == "IsHeavenly" then
                        return function()
                                for idx, val in pairs(((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("getTitles")) do
                                        local tmp7 = {}
                                        tmp7[1], tmp7[3] = idx, val
                                        if tmp7[3]["Name"] == "Heavenly Devil" then
                                                return true
                                        end
                                end
                                return false
                        end
                elseif vars4[3] == "GetMonster" then
                        return function(arg1)
                                local data7 = {}
                                data7[2] = arg1
                                pcall(function()
                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                local info7 = {}
                                                info7[3], info7[1] = idx, val
                                                if info7[1]:IsA("Model") and (info7[1]:FindFirstChild("Humanoid") and (info7[1]["Humanoid"]["Health"] > 0 and (info7[1]["HumanoidRootPart"]["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= data7[2])) then
                                                        Monster = info7[1]
                                                        return
                                                end
                                        end
                                end)
                        end
                elseif vars4[3] == "GetMon_Soul" then
                        return function()
                                for idx, val in next, (game:GetService("Workspace"))["Enemies"]:GetChildren() do
                                        local vars7 = {}
                                        vars7[3], vars7[2] = idx, val
                                        if vars7[2]["Name"] == "Living Zombie" then
                                                table["insert"](get_mon, vars7[2]["Name"])
                                        end
                                end
                        end
                elseif vars4[3] == "click" then
                        return function(arg1)
                                local temp7 = {}
                                temp7[1] = arg1
                                VirtualInputManager:SendMouseButtonEvent(temp7[1]["AbsolutePosition"]["X"] + temp7[1]["AbsoluteSize"]["X"] / 2, temp7[1]["AbsolutePosition"]["Y"] + 90, 0, true, temp7[1], 1)
                                VirtualInputManager:SendMouseButtonEvent(temp7[1]["AbsolutePosition"]["X"] + temp7[1]["AbsoluteSize"]["X"] / 2, temp7[1]["AbsolutePosition"]["Y"] + 90, 0, false, temp7[1], 1)
                        end
                elseif vars4[3] == "HopLowServer" then
                        return function(arg1)
                                local state7 = {}
                                state7[1] = arg1
                                pcall(function()
                                        local cache7 = {}
                                        if not state7[1] then
                                                state7[1] = 10
                                        end
                                        ticklon = tick()
                                        repeat
                                                task["wait"]()
                                        until tick() - ticklon >= 1
                                        cache7[1] = function()
                                                for idx = 1, math["huge"], 1 do
                                                        local store7 = {}
                                                        store7[2] = idx
                                                        if ChooseRegion == nil or ChooseRegion == "" then
                                                                ChooseRegion = "Singapore"
                                                        else
                                                                (game:GetService("Players"))["LocalPlayer"]["PlayerGui"]["ServerBrowser"]["Frame"]["Filters"]["SearchRegion"]["TextBox"]["Text"] = ChooseRegion
                                                        end
                                                        store7[1] = (game:GetService("ReplicatedStorage"))["__ServerBrowser"]:InvokeServer(store7[2])
                                                        for idx, val in pairs(store7[1]) do
                                                                local tmp8 = {}
                                                                tmp8[2], tmp8[3] = idx, val
                                                                if tmp8[2] ~= game["JobId"] and tmp8[3]["Count"] < state7[1] then
                                                                        (game:GetService("ReplicatedStorage"))["__ServerBrowser"]:InvokeServer("teleport", tmp8[2])
                                                                end
                                                        end
                                                end
                                                return false
                                        end
                                        if not(getgenv())["Loaded"] then
                                                local data8 = {}
                                                data8[1] = function(arg1)
                                                        local info8 = {}
                                                        info8[1] = arg1
                                                        if info8[1]["Name"] == "ErrorPrompt" then
                                                                if info8[1]["Visible"] then
                                                                        if info8[1]["TitleFrame"]["ErrorTitle"]["Text"] == "Teleport Failed" then
                                                                                HopLowServer()
                                                                                info8[1]["Visible"] = false
                                                                        end
                                                                end;
                                                                (info8[1]:GetPropertyChangedSignal("Visible")):Connect(function()
                                                                        if info8[1]["Visible"] then
                                                                                if info8[1]["TitleFrame"]["ErrorTitle"]["Text"] == "Teleport Failed" then
                                                                                        HopLowServer()
                                                                                        info8[1]["Visible"] = false
                                                                                end
                                                                        end
                                                                end)
                                                        end
                                                end
                                                for idx, val in pairs(game["CoreGui"]["RobloxPromptGui"]["promptOverlay"]:GetChildren()) do
                                                        local vars8 = {}
                                                        vars8[3], vars8[1] = idx, val
                                                        data8[1](vars8[1])
                                                end
                                                game["CoreGui"]["RobloxPromptGui"]["promptOverlay"]["ChildAdded"]:Connect(data8[1]);
                                                (getgenv())["Loaded"] = true
                                        end
                                        while task["wait"](.1) do
                                                cache7[1]()
                                        end
                                end)
                        end
                elseif vars4[3] == "CheckItem" then
                        return function(arg1)
                                local temp8 = {}
                                temp8[2] = arg1
                                for idx, val in pairs(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
                                        local state8 = {}
                                        state8[2], state8[3] = idx, val
                                        if type(state8[3]) == "table" then
                                                if state8[3]["Type"] == "Material" then
                                                        if state8[3]["Name"] == temp8[2] then
                                                                return state8[3]["Count"]
                                                        end
                                                end
                                        end
                                end
                                return 0
                        end
                elseif vars4[3] == "FarmBone" then
                        return function(arg1)
                                local cache8 = {}
                                cache8[1] = arg1
                                if cache8[1] then
                                        if TempTable["ffc"](MarketplaceService["Backpack"], "Fire Essence") or TempTable["ffc"](MarketplaceService["Character"], "Fire Essence") then
                                                repeat
                                                        TempTable["Status"](tableConcat({
                                                                " Status : Use Fire E";
                                                                "ssence"
                                                        }))
                                                        TempTable["Equip"]("Fire Essence")
                                                        TempTable["wt"](.5)
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon", true)
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
                                                until not TempTable["ffc"](MarketplaceService["Backpack"], "Fire Essence") and not TempTable["ffc"](MarketplaceService["Character"], "Fire Essence")
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
                                                Dragon_Talon_C = true
                                        else
                                                if TempTable["ffc"](Enemies, "Demonic Soul") or TempTable["ffc"](Enemies, "Posessed Mummy") or TempTable["ffc"](Enemies, "Reborn Skeleton") or TempTable["ffc"](Enemies, "Living Zombie") then
                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                local store8 = {}
                                                                store8[3], store8[1] = idx, val
                                                                if store8[1]["Name"] == "Reborn Skeleton" or store8[1]["Name"] == "Living Zombie" or store8[1]["Name"] == "Demonic Soul" or store8[1]["Name"] == "Posessed Mummy" then
                                                                        if store8[1]:FindFirstChild("HumanoidRootPart") and (store8[1]:FindFirstChild("Humanoid") and store8[1]["Humanoid"]["Health"] > 0) then
                                                                                repeat
                                                                                        TempTable["wt"](.1)
                                                                                        if TempTable["CheckItem"]("Bones") > 500 and ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones", "Check") > 0 then
                                                                                                repeat
                                                                                                        TempTable["wt"](.2)
                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones", "Check")
                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones", "Buy", 1, 1)
                                                                                                until ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones", "Check") == 0
                                                                                        end
                                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                MarketplaceService["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                        end
                                                                                        RemoteFunction(store8[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5, 200)
                                                                                        StatsGui()
                                                                                        TempTable["BN"](store8[1]["Name"])
                                                                                until not store8[1]["Parent"] or store8[1]["Humanoid"]["Health"] <= 0
                                                                        end
                                                                end
                                                        end
                                                else
                                                        RemoteFunction(CFrame["new"](-9505.8720703125, 172.10482788086, 6158.9931640625), 1.5)
                                                end
                                        end
                                else
                                        if TempTable["ffc"](Enemies, "Demonic Soul") or TempTable["ffc"](Enemies, "Posessed Mummy") or TempTable["ffc"](Enemies, "Reborn Skeleton") or TempTable["ffc"](Enemies, "Living Zombie") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local tmp9 = {}
                                                        tmp9[1], tmp9[2] = idx, val
                                                        if tmp9[2]["Name"] == "Reborn Skeleton" or tmp9[2]["Name"] == "Living Zombie" or tmp9[2]["Name"] == "Demonic Soul" or tmp9[2]["Name"] == "Posessed Mummy" then
                                                                if tmp9[2]:FindFirstChild("HumanoidRootPart") and (tmp9[2]:FindFirstChild("Humanoid") and tmp9[2]["Humanoid"]["Health"] > 0) then
                                                                        repeat
                                                                                TempTable["wt"](.1)
                                                                                if TempTable["CheckItem"]("Bones") > 500 and ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones", "Check") > 0 then
                                                                                        repeat
                                                                                                TempTable["wt"](.2)
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones", "Check")
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones", "Buy", 1, 1)
                                                                                        until ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones", "Check") == 0
                                                                                end
                                                                                if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                        MarketplaceService["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                end
                                                                                RemoteFunction(tmp9[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5, 200)
                                                                                StatsGui()
                                                                                TempTable["BN"](tmp9[2]["Name"])
                                                                        until not tmp9[2]["Parent"] or tmp9[2]["Humanoid"]["Health"] <= 0
                                                                end
                                                        end
                                                end
                                        else
                                                RemoteFunction(CFrame["new"](-9505.8720703125, 172.10482788086, 6158.9931640625), 1.5)
                                        end
                                end
                        end
                elseif vars4[3] == "Get_Item_Inventory" then
                        return function(arg1)
                                local data9 = {}
                                data9[2] = arg1
                                if not TempTable["ffc"](MarketplaceService["Backpack"], data9[2]) and not TempTable["ffc"](MarketplaceService["Character"], data9[2]) then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadItem", tostring(data9[2]))
                                end
                        end
                elseif vars4[3] == "BN" then
                        return function(arg1)
                                local info9 = {}
                                info9[2] = arg1
                                pcall(function()
                                        local vars9 = {}
                                        vars9[3] = game["Players"]["LocalPlayer"]
                                        vars9[2] = vars9[3]["Character"] and vars9[3]["Character"]:FindFirstChild("HumanoidRootPart")
                                        if not vars9[2] then
                                                return
                                        end
                                        for idx, val in pairs(game["Workspace"]["Enemies"]:GetChildren()) do
                                                local temp9 = {}
                                                temp9[2], temp9[3] = idx, val
                                                if temp9[3]:IsA("Model") and (temp9[3]["Name"] == info9[2] and (temp9[3]:FindFirstChild("Humanoid") and temp9[3]:FindFirstChild("HumanoidRootPart"))) then
                                                        local state9 = {}
                                                        state9[3], state9[2] = temp9[3]["Humanoid"], temp9[3]["HumanoidRootPart"]
                                                        if state9[3]["Health"] > 0 and (state9[2]["Position"] - vars9[2]["Position"])["Magnitude"] <= 350 then
                                                                local cache9 = {}
                                                                cache9[2] = nil
                                                                for idx, val in pairs(game["Workspace"]["Enemies"]:GetChildren()) do
                                                                        local store9 = {}
                                                                        store9[1], store9[2] = idx, val
                                                                        if store9[2] ~= temp9[3] and (store9[2]:IsA("Model") and (store9[2]["Name"] == info9[2] and store9[2]:FindFirstChild("HumanoidRootPart"))) then
                                                                                cache9[2] = store9[2]["HumanoidRootPart"]
                                                                                break
                                                                        end
                                                                end
                                                                if cache9[2] then
                                                                        local tmp10 = {}
                                                                        tmp10[1] = Instance["new"]("BodyPosition")
                                                                        tmp10[1]["Position"] = cache9[2]["Position"] + Vector3["new"](0, 0, 0)
                                                                        tmp10[1]["MaxForce"] = Vector3["new"](1000000, 1000000, 1000000)
                                                                        tmp10[1]["P"] = 3000
                                                                        tmp10[1]["D"] = 100
                                                                        tmp10[1]["Name"] = "EnemyFlyPosition"
                                                                        tmp10[1]["Parent"] = state9[2]
                                                                end
                                                                state9[2]["CanCollide"] = false
                                                                state9[3]:ChangeState(14)
                                                                state9[3]["WalkSpeed"] = 0
                                                                if state9[3]:FindFirstChild("Animator") then
                                                                        state9[3]["Animator"]:Destroy()
                                                                end
                                                                for idx, val in pairs(temp9[3]:GetDescendants()) do
                                                                        local data10 = {}
                                                                        data10[2], data10[3] = idx, val
                                                                        if data10[3]:IsA("BasePart") then
                                                                                data10[3]["CanCollide"] = false
                                                                                data10[3]["CanTouch"] = false
                                                                                data10[3]["CanQuery"] = false
                                                                        end
                                                                end
                                                                if temp9[3]:FindFirstChild("Head") then
                                                                        temp9[3]["Head"]["CanCollide"] = false
                                                                end
                                                        end
                                                end
                                        end
                                        sethiddenproperty(vars9[3], "SimulationRadius", math["huge"])
                                end)
                        end
                elseif vars4[3] == "Status" then
                        return function(arg1)
                                local info10 = {}
                                info10[2] = arg1
                                Backpack["Text"] = info10[2]
                                local statusText = info10[2]:gsub("^%s*Status%s*:%s*", "")
                                if statusText ~= "" and statusText ~= lastStatusText then
                                        local toastType = "info"
                                        if statusText:find("Auto Farm") or statusText:find("Farm") then
                                                toastType = "success"
                                        elseif statusText:find("TP") or statusText:find("Teleport") then
                                                toastType = "warning"
                                        elseif statusText:find("Use") then
                                                toastType = "info"
                                        end
                                        CreateToast("Status Update", statusText, toastType)
                                        lastStatusText = statusText
                                end
                        end
                elseif vars4[3] == "GetQuest" then
                        return function(arg1)
                                local vars10 = {}
                                vars10[1] = arg1
                                if (Vector3["new"](-12379.1406, 601.433167, -6543.60742) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 30 then
                                        RemoteFunction(CFrame["new"](-12379.1406, 601.433167, -6543.60742), 1.5)
                                elseif (Vector3["new"](-12379.1406, 601.433167, -6543.60742) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] < 30 then
                                        if vars10[1] == "Good" then
                                                repeat
                                                        wait(.1)
                                                        RemoteFunction(CFrame["new"](-12392.5068, 603.319763, -6596.00586), 1.5)
                                                until (Vector3["new"](-12392.5068, 603.319763, -6596.00586) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
                                                wait(1)
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress", "Good")
                                                wait(1)
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "StartTrial", "Good")
                                        elseif vars10[1] == "Evil" then
                                                repeat
                                                        wait(.1)
                                                        RemoteFunction(CFrame["new"](-12392.2637, 603.319763, -6503.27832), 1.5)
                                                until (Vector3["new"](-12392.2637, 603.319763, -6503.27832) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
                                                wait(1)
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress", "Evil")
                                                wait(1)
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "StartTrial", "Evil")
                                        end
                                end
                        end
                elseif vars4[3] == "GetTorch" then
                        return function(arg1)
                                local temp10 = {}
                                temp10[2] = arg1
                                repeat
                                        wait()
                                        RemoteFunction(Workspace["Map"]["HeavenlyDimension"][temp10[2]]["CFrame"], 1.5)
                                until (Workspace["Map"]["HeavenlyDimension"][temp10[2]]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 7
                                fireproximityprompt(workspace["Map"]["HeavenlyDimension"][temp10[2]]["ProximityPrompt"])
                                wait(.5)
                        end
                elseif vars4[3] == "GetTorchX" then
                        return function(arg1)
                                local state10 = {}
                                state10[1] = arg1
                                repeat
                                        wait()
                                        RemoteFunction(Workspace["Map"]["HellDimension"][state10[1]]["CFrame"], 1.5)
                                until (Workspace["Map"]["HellDimension"][state10[1]]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 7
                                fireproximityprompt(workspace["Map"]["HellDimension"][state10[1]]["ProximityPrompt"])
                                wait(.5)
                        end
                end
        end
})
PlayerGui = game:GetService("Players")
PathfindingService = game:GetService("ReplicatedStorage")
Team = game:GetService("Workspace")
StarterGui = {}
StarterGui["__index"] = StarterGui
ContextActionService = PlayerGui["LocalPlayer"]
task["spawn"](function()
        while task["wait"](.5) do
                TempTable["p"](function()
                        if MarketplaceService["Data"]["Points"]["Value"] > 0 and MarketplaceService["Data"]["Stats"]["Melee"]["Level"]["Value"] < 2650 then
                                PathfindingService["Remotes"]["CommF_"]:InvokeServer("AddPoint", "Melee", MarketplaceService["Data"]["Points"]["Value"])
                        end
                        if MarketplaceService["Data"]["Stats"]["Melee"]["Level"]["Value"] >= 2650 and (MarketplaceService["Data"]["Points"]["Value"] > 0 and MarketplaceService["Data"]["Stats"]["Defense"]["Level"]["Value"] < 2550) then
                                PathfindingService["Remotes"]["CommF_"]:InvokeServer("AddPoint", "Defense", MarketplaceService["Data"]["Points"]["Value"])
                        end
                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                PathfindingService["Remotes"]["CommF_"]:InvokeServer("Buso")
                        end
                end)
        end
end);
(getgenv())["Fast Attack"] = true
Tween = 0
task["spawn"](function()
        while task["wait"](Tween) do
                if (getgenv())["Fast Attack"] and not Stop_Fast_Attack then
                        if TempTable["sf"](MarketplaceService["PlayerGui"]["Main"]["Version"]["Text"], "v26.6.1") then
                                xpcall(function()
                                        if (ContextActionService["Character"] or ContextActionService["CharacterAdded"]:Wait()):FindFirstChildOfClass("Tool") and ((ContextActionService["Character"] or ContextActionService["CharacterAdded"]:Wait()):FindFirstChildOfClass("Humanoid") and (ContextActionService["Character"] or ContextActionService["CharacterAdded"]:Wait())["Humanoid"]["Health"] > 0) then
                                                for idx, val in pairs(Team["Enemies"]:GetChildren()) do
                                                        local cache10 = {}
                                                        cache10[1], cache10[3] = idx, val
                                                        if cache10[3]:FindFirstChildOfClass("Humanoid") and (cache10[3]["Humanoid"]["Health"] > 0 and cache10[3]:FindFirstChild("HumanoidRootPart")) then
                                                                if (cache10[3]["HumanoidRootPart"]["Position"] - ContextActionService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 60 then
                                                                        local store10 = {}
                                                                        if (ContextActionService["Character"] or ContextActionService["CharacterAdded"]:Wait()):FindFirstChild("Stun") then
                                                                                (ContextActionService["Character"] or ContextActionService["CharacterAdded"]:Wait())["Stun"]["Value"] = 0
                                                                        end
                                                                        if (ContextActionService["Character"] or ContextActionService["CharacterAdded"]:Wait()):FindFirstChild("Busy") then
                                                                                (ContextActionService["Character"] or ContextActionService["CharacterAdded"]:Wait())["Busy"]["Value"] = false
                                                                        end
                                                                        if cache10[3]:FindFirstChild("Stun") then
                                                                                cache10[3]["Stun"]["Value"] = 0
                                                                        end
                                                                        if cache10[3]:FindFirstChild("Busy") then
                                                                                cache10[3]["Busy"]["Value"] = false
                                                                        end
                                                                        if ReplicatedStorage["Modules"]["Net"]:FindFirstChild("RE") and ReplicatedStorage["Modules"]["Net"]["RE"]:FindFirstChild("RegisterHit") then
                                                                                ReplicatedStorage["Modules"]["Net"]["RE"]["RegisterHit"]:SetAttribute("Virtual", not ReplicatedStorage["Modules"]["Net"]["RE"]["RegisterHit"]:GetAttribute("Virtual"))
                                                                        end
                                                                        if ContextActionService["Character"] then
                                                                                ContextActionService["Character"]:SetAttribute("Clashable", not ContextActionService["Character"]:GetAttribute("Clashable"))
                                                                        end
                                                                        store10[2] = 0
                                                                        for idx, val in pairs(Team["Enemies"]:GetChildren()) do
                                                                                local tmp11 = {}
                                                                                tmp11[1], tmp11[3] = idx, val
                                                                                if tmp11[3]:FindFirstChildOfClass("Humanoid") and (tmp11[3]["Humanoid"]["Health"] > 0 and (tmp11[3]:FindFirstChild("HumanoidRootPart") and (tmp11[3]["HumanoidRootPart"]["Position"] - ContextActionService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 60)) then
                                                                                        store10[2] = store10[2] + 1
                                                                                        if store10[2] > 5 then
                                                                                                Tween = .1
                                                                                        elseif store10[2] > 2 and store10[2] <= 5 then
                                                                                                Tween = .03
                                                                                        else
                                                                                                Tween = 0
                                                                                        end;
                                                                                        (Net:RemoteEvent("RegisterAttack")):FireServer(math["huge"]);
                                                                                        (Net:RemoteEvent("RegisterHit", true)):FireServer(tmp11[3]["Head"], {
                                                                                                {
                                                                                                        tmp11[3],
                                                                                                        tmp11[3]["Head"]
                                                                                                };
                                                                                                tmp11[3]["Head"]
                                                                                        }, nil, (tostring(ContextActionService["UserId"])):sub(2, 4) .. (tostring(coroutine["running"]())):sub(11, 15))
                                                                                end
                                                                        end
                                                                end
                                                        end
                                                end
                                        end
                                end, warn)
                        else
                                local data11 = {}
                                assert(getrenv, tableConcat({
                                        "Exploit not supporte";
                                        "d"
                                }))
                                data11[11] = game:GetService("CollectionService")
                                data11[2] = game:GetService("ReplicatedStorage")
                                data11[8] = game:GetService("Players")
                                data11[6] = data11[8]["LocalPlayer"]
                                data11[3] = debug["getupvalue"]((getrenv())["_G"]["SendHitsToServer"], 1)
                                data11[5] = data11[2]["Modules"]["Net"]["RE/RegisterAttack"]
                                data11[4] = function()
                                        local info11 = {}
                                        info11[3] = data11[11]:GetTagged("BasicMob")
                                        if #info11[3] == 0 then
                                                return nil
                                        end
                                        info11[4] = {}
                                        info11[2] = data11[6]["Character"] and data11[6]["Character"]["PrimaryPart"]["Position"]
                                        if not info11[2] then
                                                return nil
                                        end
                                        for idx, val in pairs(info11[3]) do
                                                local vars11 = {}
                                                vars11[1], vars11[4] = idx, val
                                                vars11[5] = vars11[4]:FindFirstChildOfClass("Humanoid")
                                                vars11[3] = vars11[4]["PrimaryPart"]
                                                if vars11[5] and (vars11[5]["Health"] > 0 and vars11[3]) then
                                                        local temp11 = {}
                                                        temp11[1] = (vars11[3]["Position"] - info11[2])["Magnitude"]
                                                        if temp11[1] <= 100 then
                                                                info11[4][#info11[4] + 1] = {
                                                                        ["mob"] = vars11[4];
                                                                        ["distance"] = temp11[1]
                                                                }
                                                        end
                                                end
                                        end
                                        if #info11[4] == 0 then
                                                return nil
                                        end
                                        table["sort"](info11[4], function(arg1, arg2)
                                                local state11 = {}
                                                state11[1], state11[2] = arg1, arg2
                                                return state11[1]["distance"] < state11[2]["distance"]
                                        end)
                                        return #info11[4] > 2 and {
                                                info11[4][1],
                                                info11[4][2]
                                        } or info11[4]
                                end
                                data11[1] = function()
                                        local cache11 = {}
                                        cache11[3] = data11[4]()
                                        if not cache11[3] then
                                                return
                                        end
                                        cache11[2] = {}
                                        for idx, val in pairs(cache11[3]) do
                                                local store11 = {}
                                                store11[4], store11[2] = idx, val
                                                store11[1] = store11[2]["mob"]:FindFirstChild("HumanoidRootPart")
                                                if store11[1] then
                                                        cache11[2][#cache11[2] + 1] = {
                                                                store11[2]["mob"];
                                                                store11[1]
                                                        }
                                                end
                                        end
                                        if #cache11[2] > 0 then
                                                data11[5]:FireServer(0 / 0)
                                                coroutine["resume"](data11[3], cache11[2][1][2], {
                                                        table["unpack"](cache11[2], 2)
                                                })
                                        end
                                end
                                data11[7], data11[9] = pcall(function()
                                        data11[1]()
                                end)
                                if not data11[7] then
                                        warn(tableConcat({
                                                "Error in Combat scri",
                                                "pt: "
                                        }) .. tostring(data11[9]))
                                end
                        end
                end
        end
end)
for idx, val in pairs(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
        local tmp12 = {}
        tmp12[1], tmp12[3] = idx, val
        if tmp12[3]["Type"] == "Material" then
                if tmp12[3]["Name"] == "Mirror Fractal" then
                        Mirror_Fractal_H = true
                end
        end
end
MarketplaceService["PlayerGui"]["Notifications"]["Enabled"] = false
if (((ReplicatedStorage:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({
        ["StorageName"] = "Pure Red";
        ["Type"] = "AuraSkin";
        ["Context"] = "Equip"
}) ~= false then
        Pure_Red_H = true
end
if (((ReplicatedStorage:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({
        ["StorageName"] = "Snow White";
        ["Type"] = "AuraSkin",
        ["Context"] = "Equip"
}) ~= false then
        Snow_White = true
end
if (((ReplicatedStorage:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({
        ["StorageName"] = "Snow White";
        ["Type"] = "AuraSkin";
        ["Context"] = "Equip"
}) ~= false then
        Winter_Sky = true
end
if (((ReplicatedStorage:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({
        ["StorageName"] = "Rainbow Saviour";
        ["Type"] = "AuraSkin";
        ["Context"] = "Equip"
}) ~= false then
        Rainbow_Saviour = true
end
if Three_World and (ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TushitaProgress"))["OpenedDoor"] then
        Unlock_Tushita_Quest = true
end
TestService = function()
        local data12 = {}
        if Three_World then
                if tostring(string["match"](tostring(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner")), "%d+")) == "nil" or tostring(string["match"](tostring(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner")), "%d+")) == nil then
                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner", true)
                end
        end
        if Three_World then
                if TempTable["ffc"](Enemies, "Cake Prince") or TempTable["ffc"](ReplicatedStorage, "Cake Prince") then
                        if TempTable["ffc"](Enemies, "Cake Prince") then
                                for idx, val in pairs(Enemies:GetChildren()) do
                                        local info12 = {}
                                        info12[2], info12[3] = idx, val
                                        if info12[3]["Name"] == "Cake Prince" and info12[3]["Humanoid"]["Health"] > 0 then
                                                repeat
                                                        TempTable["wt"]()
                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                MarketplaceService["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                        end
                                                        RemoteFunction(info12[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
                                                        StatsGui()
                                                until not info12[3]["Parent"] or info12[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                        end
                                end
                        elseif TempTable["ffc"](ReplicatedStorage, "Cake Prince") then
                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                        local vars12 = {}
                                        vars12[1], vars12[3] = idx, val
                                        if vars12[3]["Name"] == "Cake Prince" and vars12[3]["Humanoid"]["Health"] > 0 then
                                                repeat
                                                        TempTable["wt"]()
                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                MarketplaceService["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                        end
                                                        RemoteFunction(vars12[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
                                                        StatsGui()
                                                until not vars12[3]["Parent"] or vars12[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                        end
                                end
                        end
                end
        end
        if Three_World then
                if Enemies:FindFirstChild("rip_indra True Form") or ReplicatedStorage:FindFirstChild("rip_indra True Form") then
                        if not(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TushitaProgress"))["OpenedDoor"] then
                                local temp12 = {}
                                temp12[1] = ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TushitaProgress")
                                if not temp12[1]["OpenedDoor"] then
                                        if MarketplaceService["Backpack"]:FindFirstChild("Holy Torch") or MarketplaceService["Character"]:FindFirstChild("Holy Torch") then
                                                TempTable["Equip"]("Holy Torch")
                                                for idx = 1, 5, 1 do
                                                        local state12 = {}
                                                        state12[1] = idx
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TushitaProgress", "Torch", state12[1])
                                                end
                                        elseif ReplicatedStorage:FindFirstChild("rip_indra True Form") or Enemies:FindFirstChild("rip_indra True Form") then
                                                if MarketplaceService["Backpack"]:FindFirstChild("Holy Torch") or MarketplaceService["Character"]:FindFirstChild("Holy Torch") then
                                                        TempTable["Equip"]("Holy Torch")
                                                        for idx = 1, 5, 1 do
                                                                local cache12 = {}
                                                                cache12[1] = idx
                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TushitaProgress", "Torch", cache12[1])
                                                        end
                                                elseif ReplicatedStorage:FindFirstChild("rip_indra True Form") or Enemies:FindFirstChild("rip_indra True Form") then
                                                        task["spawn"](function()
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        VirtualInputManager:SendKeyEvent(true, "Space", false, game)
                                                                        TempTable["wt"](.3)
                                                                        VirtualInputManager:SendKeyEvent(false, "Space", false, game)
                                                                until MarketplaceService["Backpack"]:FindFirstChild("Holy Torch") or MarketplaceService["Character"]:FindFirstChild("Holy Torch") or not ReplicatedStorage:FindFirstChild("rip_indra True Form") and not Enemies:FindFirstChild("rip_indra True Form")
                                                        end)
                                                        repeat
                                                                TempTable["wt"]()
                                                                MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](5714, 19, 254)
                                                        until MarketplaceService["Backpack"]:FindFirstChild("Holy Torch") or MarketplaceService["Character"]:FindFirstChild("Holy Torch") or not ReplicatedStorage:FindFirstChild("rip_indra True Form") and not Enemies:FindFirstChild("rip_indra True Form")
                                                        if MarketplaceService["Backpack"]:FindFirstChild("Holy Torch") or MarketplaceService["Character"]:FindFirstChild("Holy Torch") then
                                                                TempTable["Equip"]("Holy Torch")
                                                                for idx = 1, 5, 1 do
                                                                        local store12 = {}
                                                                        store12[2] = idx
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TushitaProgress", "Torch", store12[2])
                                                                end
                                                        end
                                                end
                                        end
                                elseif temp12[1]["OpenedDoor"] then
                                        Unlock_Tushita_Quest = true
                                        return
                                end
                        else
                                if Enemies:FindFirstChild("rip_indra True Form") or ReplicatedStorage:FindFirstChild("rip_indra True Form") then
                                        if Enemies:FindFirstChild("rip_indra True Form") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local tmp13 = {}
                                                        tmp13[3], tmp13[1] = idx, val
                                                        if tmp13[1]["Name"] == "rip_indra True Form" and tmp13[1]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"](.1)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                MarketplaceService["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        RemoteFunction(tmp13[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
                                                                        StatsGui()
                                                                until not tmp13[1]["Parent"] or tmp13[1]["Humanoid"]["Health"] <= 0
                                                        end
                                                end
                                        elseif ReplicatedStorage:FindFirstChild("rip_indra True Form") then
                                                RemoteFunction((ReplicatedStorage:FindFirstChild("rip_indra True Form"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0))
                                        end
                                elseif MarketplaceService["Backpack"]:FindFirstChild("God's Chalice") or MarketplaceService["Character"]:FindFirstChild("God's Chalice") then
                                        repeat
                                                TempTable["wt"](.1)
                                                Oyster_H = false
                                                Hot_pink_H = false
                                                Really_red_H = false
                                                for idx, val in pairs(Workspace["Map"]["Boat Castle"]["Summoner"]["Circle"]:GetChildren()) do
                                                        local data13 = {}
                                                        data13[1], data13[2] = idx, val
                                                        if data13[2]["Name"] == "Part" and (tostring(data13[2]["BrickColor"]) == "Oyster" and tostring(data13[2]["Part"]["BrickColor"]) == "Lime green") then
                                                                Oyster_H = true
                                                        end
                                                end
                                                for idx, val in pairs(Workspace["Map"]["Boat Castle"]["Summoner"]["Circle"]:GetChildren()) do
                                                        local info13 = {}
                                                        info13[3], info13[1] = idx, val
                                                        if info13[1]["Name"] == "Part" and (tostring(info13[1]["BrickColor"]) == "Hot pink" and tostring(info13[1]["Part"]["BrickColor"]) == "Lime green") then
                                                                Hot_pink_H = true
                                                        end
                                                end
                                                for idx, val in pairs(Workspace["Map"]["Boat Castle"]["Summoner"]["Circle"]:GetChildren()) do
                                                        local vars13 = {}
                                                        vars13[1], vars13[3] = idx, val
                                                        if vars13[3]["Name"] == "Part" and (tostring(vars13[3]["BrickColor"]) == "Really red" and tostring(vars13[3]["Part"]["BrickColor"]) == "Lime green") then
                                                                Really_red_H = true
                                                        end
                                                end
                                                if Oyster_H and (Hot_pink_H and Really_red_H) then
                                                        repeat
                                                                TempTable["wt"](.1)
                                                                TempTable["Equip"]("God's Chalice")
                                                                RemoteFunction(CFrame["new"](-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, .952628076, .000226983335, .999996245, .00273981248, -0.952631414, .00104948215, -0.304125458), 1.5)
                                                        until (Vector3["new"](-5561.06738, 314.375793, -2663.88892) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5
                                                        TempTable["wt"](1)
                                                else
                                                        if MarketplaceService["Backpack"]:FindFirstChild("God's Chalice") or MarketplaceService["Character"]:FindFirstChild("God's Chalice") then
                                                                repeat
                                                                        TempTable["wt"](.1)
                                                                        StatsGui()
                                                                        RemoteFunction(CFrame["new"](-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, .952628076, .000226983335, .999996245, .00273981248, -0.952631414, .00104948215, -0.304125458), 1.5)
                                                                until (Vector3["new"](-5561.06738, 314.375793, -2663.88892) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5
                                                                if Snow_White and not Oyster_H then
                                                                        for idx, val in pairs(Workspace["Map"]["Boat Castle"]["Summoner"]["Circle"]:GetChildren()) do
                                                                                local temp13 = {}
                                                                                temp13[3], temp13[2] = idx, val
                                                                                if temp13[2]["Name"] == "Part" and tostring(temp13[2]["BrickColor"]) == "Oyster" then
                                                                                        if tostring(temp13[2]["Part"]["BrickColor"]) ~= "Lime green" then
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("activateColor", "Snow White")
                                                                                                TempTable["wt"](1)
                                                                                                repeat
                                                                                                        TempTable["wt"]()
                                                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                                MarketplaceService["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                                        end
                                                                                                        RemoteFunction(temp13[2]["Part"]["CFrame"], 1.5)
                                                                                                until tostring(temp13[2]["Part"]["BrickColor"]) == "Lime green"
                                                                                                Oyster_H = true
                                                                                        end
                                                                                end
                                                                        end
                                                                end
                                                                if Pure_Red_H and not Really_red_H then
                                                                        for idx, val in pairs(Workspace["Map"]["Boat Castle"]["Summoner"]["Circle"]:GetChildren()) do
                                                                                local state13 = {}
                                                                                state13[1], state13[2] = idx, val
                                                                                if state13[2]["Name"] == "Part" and tostring(state13[2]["BrickColor"]) == "Really red" then
                                                                                        if tostring(state13[2]["Part"]["BrickColor"]) ~= "Lime green" then
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("activateColor", "Pure Red")
                                                                                                TempTable["wt"](1)
                                                                                                repeat
                                                                                                        TempTable["wt"]()
                                                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                                MarketplaceService["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                                        end
                                                                                                        RemoteFunction(state13[2]["Part"]["CFrame"], 1.5)
                                                                                                until tostring(state13[2]["Part"]["BrickColor"]) == "Lime green"
                                                                                                Really_red_H = true
                                                                                        end
                                                                                end
                                                                        end
                                                                end
                                                                if Winter_Sky and not Hot_pink_H then
                                                                        for idx, val in pairs(Workspace["Map"]["Boat Castle"]["Summoner"]["Circle"]:GetChildren()) do
                                                                                local cache13 = {}
                                                                                cache13[1], cache13[2] = idx, val
                                                                                if cache13[2]["Name"] == "Part" and tostring(cache13[2]["BrickColor"]) == "Hot pink" then
                                                                                        if tostring(cache13[2]["Part"]["BrickColor"]) ~= "Lime green" then
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("activateColor", "Winter Sky")
                                                                                                TempTable["wt"](1)
                                                                                                repeat
                                                                                                        TempTable["wt"]()
                                                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                                MarketplaceService["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                                        end
                                                                                                        RemoteFunction(cache13[2]["Part"]["CFrame"], 1.5)
                                                                                                until tostring(cache13[2]["Part"]["BrickColor"]) == "Lime green"
                                                                                                Hot_pink_H = true
                                                                                        end
                                                                                end
                                                                        end
                                                                end
                                                                TempTable["Equip"]("God's Chalice")
                                                                RemoteFunction(CFrame["new"](-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, .952628076, .000226983335, .999996245, .00273981248, -0.952631414, .00104948215, -0.304125458), 1.5)
                                                                if TimeLoaderx == nil or tick() - TimeLoaderx > 10 then
                                                                        TimeLoaderx = tick()
                                                                        ReplicatedStorage[tableConcat({
                                                                                "DefaultChatSystemCha",
                                                                                "tEvents"
                                                                        })]["SayMessageRequest"]:FireServer(tableConcat({
                                                                                "I have God Chalice. ",
                                                                                "I Can't Spawn Boss A";
                                                                                "dmin"
                                                                        }), "All")
                                                                end
                                                        end
                                                end
                                        until not MarketplaceService["Backpack"]:FindFirstChild("God's Chalice") and not MarketplaceService["Character"]:FindFirstChild("God's Chalice")
                                end
                        end
                end
        end
        if Three_World then
                if Enemies:FindFirstChild("rip_indra True Form") or ReplicatedStorage:FindFirstChild("rip_indra True Form") then
                        if Enemies:FindFirstChild("rip_indra True Form") then
                                for idx, val in pairs(Enemies:GetChildren()) do
                                        local store13 = {}
                                        store13[1], store13[3] = idx, val
                                        if store13[3]["Name"] == "rip_indra True Form" and store13[3]["Humanoid"]["Health"] > 0 then
                                                repeat
                                                        TempTable["wt"](.1)
                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                MarketplaceService["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                        end
                                                        RemoteFunction(store13[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
                                                        StatsGui()
                                                until not store13[3]["Parent"] or store13[3]["Humanoid"]["Health"] <= 0
                                        end
                                end
                        elseif ReplicatedStorage:FindFirstChild("rip_indra True Form") then
                                RemoteFunction((ReplicatedStorage:FindFirstChild("rip_indra True Form"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0))
                        end
                end
        end
        data12[2] = false
        if Three_World and not Mirror_Fractal_H then
                if TempTable["ffc"](MarketplaceService["Backpack"], "Sweet Chalice") or TempTable["ffc"](MarketplaceService["Character"], "Sweet Chalice") or TempTable["ffc"](MarketplaceService["Backpack"], "God's Chalice") or TempTable["ffc"](MarketplaceService["Character"], "God's Chalice") or TempTable["ffc"](Enemies, "Dough King") or TempTable["ffc"](ReplicatedStorage, "Dough King") then
                        repeat
                                wait()
                                for idx, val in pairs(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
                                        local tmp14 = {}
                                        tmp14[2], tmp14[3] = idx, val
                                        if tmp14[3]["Type"] == "Material" then
                                                if tmp14[3]["Name"] == "Mirror Fractal" then
                                                        Mirror_Fractal_H = true
                                                end
                                        end
                                end
                                if TempTable["ffc"](Enemies, "Dough King") or TempTable["ffc"](ReplicatedStorage, "Dough King") then
                                        if TempTable["ffc"](Enemies, "Dough King") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local data14 = {}
                                                        data14[2], data14[1] = idx, val
                                                        if data14[1]["Name"] == "Dough King" and data14[1]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        wait(.1)
                                                                        RemoteFunction(data14[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
                                                                        StatsGui()
                                                                until not data14[1]["Parent"] or data14[1]["Humanoid"]["Health"] <= 0
                                                                for idx, val in pairs((game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
                                                                        local info14 = {}
                                                                        info14[3], info14[1] = idx, val
                                                                        if info14[1]["Type"] == "Material" then
                                                                                if info14[1]["Name"] == "Mirror Fractal" then
                                                                                        Mirror_Fractal_H = true
                                                                                end
                                                                        end
                                                                end
                                                                return
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Dough King") then
                                                RemoteFunction((game["ReplicatedStorage"]:FindFirstChild("Dough King"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                        end
                                elseif TempTable["ffc"](MarketplaceService["Backpack"], "Sweet Chalice") or TempTable["ffc"](MarketplaceService["Character"], "Sweet Chalice") and not Mirror_Fractal_H then
                                        if (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](-2286.6843261719, 146.56562805176, -12226.881835938))["Magnitude"] >= 1800 then
                                                repeat
                                                        wait()
                                                        RemoteFunction(CFrame["new"](-2286.6843261719, 146.56562805176, -12226.881835938), 1.5)
                                                until (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](-2286.6843261719, 146.56562805176, -12226.881835938))["Magnitude"] <= 3
                                        elseif (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](-2286.6843261719, 146.56562805176, -12226.881835938))["Magnitude"] < 1800 then
                                                Monster = nil
                                                for idx = 1500, 0, -300 do
                                                        local vars14 = {}
                                                        vars14[1] = idx
                                                        TempTable["GetMonster"](vars14[1])
                                                end
                                                if Monster ~= nil and Monster["Humanoid"]["Health"] > 0 then
                                                        local temp14 = {}
                                                        PosMon_X = Monster["HumanoidRootPart"]["CFrame"]
                                                        StatrMagnet = true
                                                        repeat
                                                                wait()
                                                                RemoteFunction(Monster["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -17, 0), 1.5)
                                                                StatsGui()
                                                        until not Monster["Parent"] or Monster["Humanoid"]["Health"] <= 0
                                                        StatrMagnet = false
                                                        temp14[1] = tostring(string["match"](tostring(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner")), "%d+"))
                                                        if temp14[1] == "nil" or temp14[1] == nil then
                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner", true)
                                                        end
                                                elseif Monster == nil then
                                                        for idx = 1500, 0, -300 do
                                                                local state14 = {}
                                                                state14[2] = idx
                                                                TempTable["GetMonster"](state14[2])
                                                        end
                                                        if Monster == nil then
                                                                RemoteFunction(CFrame["new"](-2286.6843261719, 146.56562805176, -12226.881835938), 1.5)
                                                        end
                                                end
                                        end
                                elseif TempTable["ffc"](MarketplaceService["Backpack"], "God's Chalice") or TempTable["ffc"](MarketplaceService["Character"], "God's Chalice") and not Mirror_Fractal_H then
                                        if TempTable["CheckItem"]("Conjured Cocoa") >= 10 then
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("SweetChaliceNpc")
                                        elseif TempTable["CheckItem"]("Conjured Cocoa") < 10 then
                                                if (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](658.22302246094, 24.734258651733, -12541.991210938))["Magnitude"] >= 1800 then
                                                        repeat
                                                                wait()
                                                                RemoteFunction(CFrame["new"](658.22302246094, 24.734258651733, -12541.991210938), 1.5)
                                                        until (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](658.22302246094, 24.734258651733, -12541.991210938))["Magnitude"] <= 3 or TempTable["CheckItem"]("Conjured Cocoa") >= 10
                                                elseif (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](658.22302246094, 24.734258651733, -12541.991210938))["Magnitude"] < 1800 then
                                                        Monster = nil
                                                        for idx = 1500, 0, -300 do
                                                                local cache14 = {}
                                                                cache14[1] = idx
                                                                TempTable["GetMonster"](cache14[1])
                                                        end
                                                        if Monster ~= nil and Monster["Humanoid"]["Health"] > 0 then
                                                                PosMon_X = Monster["HumanoidRootPart"]["CFrame"]
                                                                StatrMagnet = true
                                                                repeat
                                                                        wait()
                                                                        RemoteFunction(Monster["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -17, 0), 1.5)
                                                                        StatsGui()
                                                                until not Monster["Parent"] or Monster["Humanoid"]["Health"] <= 0
                                                                StatrMagnet = false
                                                        elseif Monster == nil then
                                                                for idx = 1500, 0, -300 do
                                                                        local store14 = {}
                                                                        store14[2] = idx
                                                                        TempTable["GetMonster"](store14[2])
                                                                end
                                                                if Monster == nil then
                                                                        RemoteFunction(CFrame["new"](658.22302246094, 24.734258651733, -12541.991210938), 1.5)
                                                                end
                                                        end
                                                end
                                        end
                                elseif not Enemies:FindFirstChild("Dough King") and not ReplicatedStorage:FindFirstChild("Dough King") then
                                        data12[2] = true
                                end
                        until Mirror_Fractal_H or data12[2]
                end
        end
        if Three_World then
                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("EliteHunter") ~= tableConcat({
                        "I don't have anythin";
                        "g for you right now.",
                        " Come back later."
                }) then
                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("EliteHunter")
                        for idx, val in ipairs({
                                "Diablo";
                                "Deandre";
                                "Urban"
                        }) do
                                local tmp15 = {}
                                tmp15[2], tmp15[1] = idx, val
                                tmp15[3] = Enemies:FindFirstChild(tmp15[1]) or ReplicatedStorage:FindFirstChild(tmp15[1])
                                if tmp15[3] and (tmp15[3]:FindFirstChild("HumanoidRootPart") and (tmp15[3]:FindFirstChild("Humanoid") and tmp15[3]["Humanoid"]["Health"] > 0)) then
                                        repeat
                                                TempTable["wt"]()
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("EliteHunter")
                                                RemoteFunction(tmp15[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                        MarketplaceService["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                end
                                                StatsGui()
                                        until not tmp15[3]["Parent"] or tmp15[3]["Humanoid"]["Health"] <= 0
                                end
                        end
                end
        end
        if New_World then
                if TempTable["ffc"](Enemies, "Darkbeard") or TempTable["ffc"](ReplicatedStorage, "Darkbeard") then
                        if TempTable["ffc"](Enemies, "Darkbeard") then
                                for idx, val in pairs(Enemies:GetChildren()) do
                                        local data15 = {}
                                        data15[3], data15[1] = idx, val
                                        if data15[1]["Name"] == "Darkbeard" and data15[1]["Humanoid"]["Health"] > 0 then
                                                repeat
                                                        TempTable["wt"]()
                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                MarketplaceService["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                        end
                                                        RemoteFunction(data15[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
                                                        StatsGui()
                                                until not data15[1]["Parent"] or data15[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                        end
                                end
                        elseif TempTable["ffc"](ReplicatedStorage, "Darkbeard") then
                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                        local info15 = {}
                                        info15[2], info15[1] = idx, val
                                        if info15[1]["Name"] == "Darkbeard" and info15[1]["Humanoid"]["Health"] > 0 then
                                                repeat
                                                        TempTable["wt"]()
                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                MarketplaceService["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                        end
                                                        RemoteFunction(info15[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
                                                        StatsGui()
                                                until not info15[1]["Parent"] or info15[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                        end
                                end
                        end
                end
        end
        if New_World then
                if TempTable["ffc"](Enemies, "Core") or TempTable["ffc"](ReplicatedStorage, "Core") then
                        if TempTable["ffc"](Enemies, "Core") then
                                for idx, val in pairs(Enemies:GetChildren()) do
                                        local vars15 = {}
                                        vars15[1], vars15[2] = idx, val
                                        if vars15[2]["Name"] == "Core" and vars15[2]["Humanoid"]["Health"] > 0 then
                                                repeat
                                                        TempTable["wt"]()
                                                        RemoteFunction(vars15[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                        end
                                                        StatsGui()
                                                until not vars15[2]["Parent"] or vars15[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                        end
                                end
                        elseif TempTable["ffc"](ReplicatedStorage, "Core") then
                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                        local temp15 = {}
                                        temp15[3], temp15[2] = idx, val
                                        if temp15[2]["Name"] == "Core" and temp15[2]["Humanoid"]["Health"] > 0 then
                                                repeat
                                                        TempTable["wt"]()
                                                        RemoteFunction(temp15[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                        end
                                                        StatsGui()
                                                until not temp15[2]["Parent"] or temp15[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                        end
                                end
                        end
                end
        end
        Humanoid()
        if Quest ~= nil then
                return
        end
        if Level["Value"] < 2650 or not Three_World then
                if Level["Value"] <= 9 and (not New_World and not Three_World) then
                        if MarketplaceService["PlayerGui"]["Main"]["Quest"]["Visible"] then
                                if TempTable["sf"](MarketplaceService["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], tostring(NameEnemy)) then
                                        if TempTable["ffc"](Enemies, Enemy) then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local state15 = {}
                                                        state15[1], state15[2] = idx, val
                                                        if state15[2]["Name"] == Enemy and (TempTable["ffc"](state15[2], "Humanoid") and (state15[2]["Humanoid"]["Health"] > 0 and TempTable["ffc"](state15[2], "HumanoidRootPart"))) then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        TempTable["BN"](state15[2]["Name"])
                                                                        RemoteFunction(state15[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until state15[2]["Humanoid"]["Health"] <= 0 or not Enemies:FindFirstChild(Enemy) or not(MarketplaceService["PlayerGui"]["Main"]:FindFirstChild("Quest"))["Visible"] or not(getgenv())["AutoFarm"] or Quest ~= nil
                                                        end
                                                end
                                        else
                                                RemoteFunction(EnemyPos, 1.5)
                                        end
                                else
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
                                end
                        else
                                repeat
                                        TempTable["wt"]()
                                        RemoteFunction(QuestPos, 1.5)
                                        if (QuestPos["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5 and (MarketplaceService["Character"]:WaitForChild("Humanoid"))["Health"] > 0 then
                                                TempTable["wt"]();
                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("StartQuest", QuestName, QuestNumber)
                                        end
                                until (MarketplaceService["PlayerGui"]["Main"]:FindFirstChild("Quest"))["Visible"] or not(getgenv())["AutoFarm"] or Quest ~= nil
                        end
                elseif Level["Value"] >= 9 and (Level["Value"] <= 70 and (not New_World and not Three_World)) then
                        if ((CFrame["new"](-7895, 5546, -380))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1000 then
                                if TempTable["ffc"](Enemies, "Shanda") then
                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                local cache15 = {}
                                                cache15[2], cache15[1] = idx, val
                                                if cache15[1]["Name"] == "Shanda" and (cache15[1]:FindFirstChild("Humanoid") and cache15[1]["Humanoid"]["Health"] > 0) then
                                                        repeat
                                                                TempTable["wt"]()
                                                                SROP = true
                                                                RemoteFunction(cache15[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                StatsGui()
                                                                TempTable["BN"](cache15[1]["Name"])
                                                        until not cache15[1]["Parent"] or cache15[1]["Humanoid"]["Health"] <= 0 or Level["Value"] >= 91 or not(getgenv())["AutoFarm"] or Quest ~= nil
                                                end
                                        end
                                else
                                        RemoteFunction(CFrame["new"](-7757, 5582, -481), 1.5)
                                end
                        else
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-7894.6176757813, 5547.1416015625, -380.29119873047))
                        end
                elseif Level["Value"] >= 71 then
                        if MarketplaceService["PlayerGui"]["Main"]["Quest"]["Visible"] then
                                if TempTable["sf"](MarketplaceService["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], tostring(NameEnemy)) then
                                        if TempTable["ffc"](Enemies, Enemy) then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local store15 = {}
                                                        store15[1], store15[2] = idx, val
                                                        if store15[2]["Name"] == Enemy and (store15[2]:FindFirstChild("Humanoid") and (store15[2]["Humanoid"]["Health"] > 0 and store15[2]:FindFirstChild("HumanoidRootPart"))) then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        SROP = false
                                                                        RemoteFunction(store15[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        TempTable["BN"](store15[2]["Name"])
                                                                        StatsGui()
                                                                until store15[2]["Humanoid"]["Health"] <= 0 or not Enemies:FindFirstChild(Enemy) or not(MarketplaceService["PlayerGui"]["Main"]:FindFirstChild("Quest"))["Visible"] or Quest ~= nil
                                                        end
                                                end
                                        else
                                                RemoteFunction(EnemyPos, 1.5)
                                        end
                                else
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
                                end
                        else
                                repeat
                                        TempTable["wt"]()
                                        RemoteFunction(QuestPos, 1.5)
                                        if (QuestPos["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5 and (MarketplaceService["Character"]:WaitForChild("Humanoid"))["Health"] > 0 then
                                                TempTable["wt"](.5);
                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("StartQuest", QuestName, QuestNumber)
                                        end
                                until (MarketplaceService["PlayerGui"]["Main"]:FindFirstChild("Quest"))["Visible"] or not(getgenv())["AutoFarm"] or Quest ~= nil
                        end
                end
        elseif Level["Value"] >= 2650 and Three_World then
                SROP = false
                if TempTable["ffc"](ReplicatedStorage, "Cake Prince") then
                        for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                local tmp16 = {}
                                tmp16[1], tmp16[2] = idx, val
                                if tmp16[2]["Name"] == "Cake Prince" and (tmp16[2]:FindFirstChild("Humanoid") and (tmp16[2]:FindFirstChild("Humanoid"))["Health"] > 0) then
                                        RemoteFunction(tmp16[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 42, 10), 1.5)
                                end
                        end
                elseif TempTable["ffc"](Enemies, "Cake Prince") then
                        for idx, val in pairs(Enemies:GetChildren()) do
                                local data16 = {}
                                data16[1], data16[2] = idx, val
                                if data16[2]["Name"] == "Cake Prince" and (data16[2]:FindFirstChild("Humanoid") and (data16[2]:FindFirstChild("Humanoid"))["Health"] > 0) then
                                        RemoteFunction(data16[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 42, 10), 1.5)
                                end
                        end
                else
                        if tostring(string["match"](tostring(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner")), "%d+")) == "nil" or tostring(string["match"](tostring(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner")), "%d+")) == nil then
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner", true)
                        end
                        if TempTable["ffc"](Enemies, "Cookie Crafter") or TempTable["ffc"](Enemies, "Cake Guard") or TempTable["ffc"](Enemies, "Baking Staff") or TempTable["ffc"](Enemies, "Head Baker") then
                                for idx, val in pairs(Enemies:GetChildren()) do
                                        local info16 = {}
                                        info16[1], info16[2] = idx, val
                                        if info16[2]["Name"] == "Cookie Crafter" or info16[2]["Name"] == "Cake Guard" or info16[2]["Name"] == "Baking Staff" or info16[2]["Name"] == "Head Baker" then
                                                repeat
                                                        TempTable["wt"]()
                                                        RemoteFunction(info16[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                        end
                                                        TempTable["BN"](info16[2]["Name"])
                                                        StatsGui()
                                                until info16[2]["Humanoid"]["Health"] <= 0 or not Enemies:FindFirstChild(Enemy) or not(MarketplaceService["PlayerGui"]["Main"]:FindFirstChild("Quest"))["Visible"] or Quest ~= nil
                                        end
                                end
                        else
                                RemoteFunction(CFrame["new"](-2091.9118652344, 70.008842468262, -12142.8359375), 1.5)
                        end
                end
        end
end
Chat = function()
        if not noFruit then
                for idx, val in pairs(MarketplaceService["Backpack"]:GetChildren()) do
                        local vars16 = {}
                        vars16[3], vars16[2] = idx, val
                        if vars16[2]:GetAttribute("OriginalName") ~= nil and (TempTable["sf"](vars16[2]["Name"], "Fruit") and (vars16[2]:IsA("Tool") and not TempTable["IsInList"](TempTable["GetType"](), vars16[2]:GetAttribute("OriginalName")))) then
                                local temp16 = {}
                                temp16[1] = {
                                        "StoreFruit";
                                        vars16[2]:GetAttribute("OriginalName"),
                                        vars16[2]
                                };
                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(temp16[1]))
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetFruits", false)
                        end
                end
                for idx, val in pairs(MarketplaceService["Character"]:GetChildren()) do
                        local state16 = {}
                        state16[3], state16[1] = idx, val
                        if state16[1]:GetAttribute("OriginalName") ~= nil and (TempTable["sf"](state16[1]["Name"], "Fruit") and (state16[1]:IsA("Tool") and not TempTable["IsInList"](TempTable["GetType"](), state16[1]:GetAttribute("OriginalName")))) then
                                local cache16 = {}
                                cache16[2] = {
                                        "StoreFruit";
                                        state16[1]:GetAttribute("OriginalName"),
                                        state16[1]
                                };
                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(cache16[2]))
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetFruits", false)
                        end
                end
        end
end
_G["Ew"] = true
Ewx = true
task["spawn"](function()
        while TempTable["wt"]() do
                if _G["Ew"] then
                        StatsGui()
                else
                        Chat()
                        if Ewx then
                                TweenInfoData = 0
                        else
                                TweenInfoData = .2
                        end
                end
        end
end)
task["spawn"](function()
        while TempTable["wt"](1) do
                xpcall(function()
                        if not Black_Leg_C then
                                repeat
                                        TempTable["wt"](TweenInfoData)
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyBlackLeg")
                                        StatsGui()
                                        TempTable["wt"](.05)
                                        if TempTable["ffc"](MarketplaceService["Character"], "Black Leg") or TempTable["ffc"](MarketplaceService["Backpack"], "Black Leg") and not Black_Leg_C then
                                                Black_Leg_C = true
                                                TempTable["Equip"]("Black Leg")
                                        end
                                until Black_Leg_C
                        end
                        if not Electro_C then
                                repeat
                                        TempTable["wt"](TweenInfoData)
                                        StatsGui()
                                        VirtualInputManager:SendKeyEvent(true, "V", false, game)
                                        wait(.5)
                                        VirtualInputManager:SendKeyEvent(false, "V", false, game)
                                        if TempTable["ffc"](MarketplaceService["Character"], "Black Leg") and (MarketplaceService["Character"]["Black Leg"]["Level"]["Value"] >= 300 and not Electro_C) then
                                                if MarketplaceService["Character"]["Black Leg"]["Level"]["Value"] >= 400 then
                                                        Black_Leg_C_M = true
                                                end
                                                Electro_C = true
                                                TempTable["wt"](.05)
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectro")
                                        end
                                until Electro_C
                        end
                        if not Fishman_Karate_C then
                                repeat
                                        TempTable["wt"](TweenInfoData)
                                        StatsGui()
                                        if TempTable["ffc"](MarketplaceService["Character"], "Electro") and (MarketplaceService["Character"]["Electro"]["Level"]["Value"] >= 300 and not Fishman_Karate_C) then
                                                if MarketplaceService["Character"]["Electro"]["Level"]["Value"] >= 400 then
                                                        Electro_C_M = true
                                                end
                                                Fishman_Karate_C = true
                                                TempTable["wt"](.05)
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
                                        end
                                until Fishman_Karate_C
                        end
                        if not Fishman_Karate_C_M then
                                repeat
                                        local store16 = {}
                                        task["wait"](TweenInfoData)
                                        StatsGui()
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
                                        store16[2] = MarketplaceService["Character"]:FindFirstChild("Fishman Karate")
                                        if store16[2] and (store16[2]:FindFirstChild("Level") and store16[2]["Level"]["Value"] >= 400) then
                                                Fishman_Karate_C_M = true
                                        end
                                until Fishman_Karate_C_M
                        end
                        TempTable["wt"](TweenInfoData)
                        if not Dragon_Claw_C then
                                local tmp17 = {}
                                tmp17[2] = ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "DragonClaw", "2")
                                if tmp17[2] == 1 or tmp17[2] == 2 then
                                        pcall(function()
                                                if MarketplaceService["Character"]["Fishman Karate"]["Level"]["Value"] >= 400 then
                                                        Fishman_Karate_C_M = true
                                                end
                                        end)
                                        Dragon_Claw_C = true
                                end
                        end
                        repeat
                                task["wait"](TweenInfoData)
                                StatsGui()
                                if not Super_human then
                                        if Dragon_Claw_C then
                                                if TempTable["ffc"](MarketplaceService["Character"], "Dragon Claw") and MarketplaceService["Character"]["Dragon Claw"]["Level"]["Value"] >= 300 then
                                                        local data17 = {}
                                                        if MarketplaceService["Character"]["Dragon Claw"]["Level"]["Value"] >= 400 then
                                                                Dragon_Claw_C_M = true
                                                        end
                                                        data17[2] = {
                                                                [1] = "BuySuperhuman"
                                                        }
                                                        if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer(unpack(data17[2])) == 1 or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer(unpack(data17[2])) == 2 then
                                                                Super_human = true
                                                                if MarketplaceService["Character"]["Superhuman"]["Level"]["Value"] >= 400 then
                                                                        Super_humanw_C_M = true
                                                                end
                                                        end
                                                end
                                        end
                                end
                        until Super_human
                        if not Death_Step then
                                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep") == 1 or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep") == 2 then
                                        Death_Step = true
                                end
                        end
                        if Black_Leg_C_M then
                                repeat
                                        local info17 = {}
                                        task["wait"](TweenInfoData)
                                        StatsGui()
                                        info17[1] = MarketplaceService["Character"]:FindFirstChild("Death Step")
                                        if info17[1] and (info17[1]:FindFirstChild("Level") and info17[1]["Level"]["Value"] >= 400) then
                                                local vars17 = {}
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyBlackLeg")
                                                vars17[1] = MarketplaceService["Character"]:FindFirstChild("Black Leg")
                                                if vars17[1] and (vars17[1]:FindFirstChild("Level") and vars17[1]["Level"]["Value"] >= 400) then
                                                        Black_Leg_C_M = true
                                                end
                                        end
                                until Black_Leg_C_M
                        end
                        if not Death_Step_C_M then
                                repeat
                                        local temp17 = {}
                                        task["wait"](TweenInfoData)
                                        StatsGui()
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep")
                                        temp17[1] = MarketplaceService["Character"]:FindFirstChild("Death Step")
                                        if temp17[1] and (temp17[1]:FindFirstChild("Level") and temp17[1]["Level"]["Value"] >= 400) then
                                                Death_Step_C_M = true
                                        end
                                until Death_Step_C_M
                        end
                        if not Electro_C_M then
                                repeat
                                        local state17 = {}
                                        task["wait"](TweenInfoData)
                                        StatsGui()
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectro")
                                        state17[1] = MarketplaceService["Character"]:FindFirstChild("Electro")
                                        if state17[1] and (state17[1]:FindFirstChild("Level") and state17[1]["Level"]["Value"] >= 400) then
                                                Electro_C_M = true
                                        end
                                until Electro_C_M
                        end
                        if not Fishman_Karate_C_M then
                                repeat
                                        local cache17 = {}
                                        task["wait"](TweenInfoData)
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
                                        warn()
                                        cache17[1] = MarketplaceService["Character"]:FindFirstChild("Fishman Karate")
                                        if cache17[1] and (cache17[1]:FindFirstChild("Level") and cache17[1]["Level"]["Value"] >= 400) then
                                                Fishman_Karate_C_M = true
                                        end
                                until Fishman_Karate_C_M
                        end
                        if not Dragon_Claw_C_M then
                                repeat
                                        local store17 = {}
                                        task["wait"](TweenInfoData)
                                        StatsGui()
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "DragonClaw", "2")
                                        store17[1] = MarketplaceService["Character"]:FindFirstChild("Dragon Claw")
                                        if store17[1] and (store17[1]:FindFirstChild("Level") and store17[1]["Level"]["Value"] >= 400) then
                                                Dragon_Claw_C_M = true
                                        end
                                until Dragon_Claw_C_M
                        end
                        if not Sharkman_Karate_C then
                                repeat
                                        TempTable["wt"](TweenInfoData)
                                        StatsGui()
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")
                                        if TempTable["ffc"](MarketplaceService["Backpack"], "Sharkman Karate") or TempTable["ffc"](MarketplaceService["Character"], "Sharkman Karate") then
                                                Sharkman_Karate_C = true
                                        end
                                until Sharkman_Karate_C
                        end
                        if not Sharkman_Karate_C_M then
                                repeat
                                        local tmp18 = {}
                                        task["wait"](TweenInfoData)
                                        StatsGui()
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")
                                        tmp18[1] = MarketplaceService["Character"]:FindFirstChild("Sharkman Karate")
                                        if tmp18[1] and (tmp18[1]:FindFirstChild("Level") and tmp18[1]["Level"]["Value"] >= 400) then
                                                Sharkman_Karate_C_M = true
                                        end
                                until Sharkman_Karate_C_M
                        end
                        if not Electric_Claw_C then
                                repeat
                                        task["wait"](TweenInfoData)
                                        if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 1 or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 2 then
                                                Electric_Claw_C = true
                                        end
                                until Electric_Claw_C
                        end
                        if not Electric_Claw_C_M then
                                repeat
                                        local data18 = {}
                                        task["wait"](TweenInfoData)
                                        StatsGui()
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw")
                                        data18[2] = MarketplaceService["Character"]:FindFirstChild("Electric Claw")
                                        if data18[2] and (data18[2]:FindFirstChild("Level") and data18[2]["Level"]["Value"] >= 400) then
                                                Electric_Claw_C_M = true
                                        end
                                until Electric_Claw_C_M
                        end
                        if not Dragon_Talon_C then
                                repeat
                                        task["wait"](TweenInfoData)
                                        if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon") == 1 or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon") == 2 then
                                                Dragon_Talon_C = true
                                        end
                                until Dragon_Talon_C
                        end
                        if not Dragon_Talon_C_M then
                                repeat
                                        local info18 = {}
                                        task["wait"](TweenInfoData)
                                        StatsGui()
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
                                        info18[1] = MarketplaceService["Character"]:FindFirstChild("Dragon Talon")
                                        if info18[1] and (info18[1]:FindFirstChild("Level") and info18[1]["Level"]["Value"] >= 400) then
                                                Dragon_Talon_C_M = true
                                        end
                                until Dragon_Talon_C_M
                        end
                        if not God_Human_C then
                                repeat
                                        task["wait"](TweenInfoData)
                                        if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman") == 1 or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman") == 2 then
                                                God_Human_C = true
                                        end
                                until God_Human_C
                        end
                        if not God_Human_C_M then
                                repeat
                                        local vars18 = {}
                                        task["wait"](TweenInfoData)
                                        StatsGui()
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman")
                                        vars18[2] = MarketplaceService["Character"]:FindFirstChild("Godhuman")
                                        if vars18[2] and (vars18[2]:FindFirstChild("Level") and vars18[2]["Level"]["Value"] >= 400) then
                                                God_Human_C_M = true
                                        end
                                until God_Human_C_M
                        end
                end, warn)
        end
end);
(getgenv())["AutoFarm"] = true
if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate", true) ~= tableConcat({
        "I lost my house keys",
        ", could you help me ";
        "find them? Thanks."
}) then
        CheckFindWaterKey = true
end
if Level["Value"] >= 2000 and (getgenv())["Configs"]["Quest"]["RGB Haki"] then
        if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("HornedMan", "Bet") == 1 then
                RGB_Haki_H = true
        end
end
ChangeHistoryService = function()
        if not TempTable["gi"]("Cursed Dual Katana") then
                if TempTable["gi"]("Tushita") and TempTable["gi"]("Yama") then
                        local temp18 = {}
                        temp18[1] = (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("getInventory")
                        for idx, val in pairs(temp18[1]) do
                                local state18 = {}
                                state18[3], state18[2] = idx, val
                                if state18[2]["Type"] == "Sword" then
                                        if state18[2]["Name"] == "Tushita" and state18[2]["Mastery"] >= 400 then
                                                Tushita_M = true
                                        elseif state18[2]["Name"] == "Yama" and state18[2]["Mastery"] >= 400 then
                                                Yama_M = true
                                        end
                                end
                        end
                        return Tushita_M and Yama_M
                end
        end
        return false
end
task["spawn"](function()
        while TempTable["wt"]() do
                xpcall(function()
                        if (getgenv())["AutoFarm"] then
                                local cache18 = {}
                                Stop_Fast_Attack = false
                                if Level["Value"] >= 1500 or RainbowSaviour then
                                        if (((ReplicatedStorage:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({
                                                ["StorageName"] = "Rainbow Saviour",
                                                ["Type"] = "AuraSkin";
                                                ["Context"] = "Equip"
                                        }) ~= false then
                                                (((ReplicatedStorage:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({
                                                        ["StorageName"] = "Rainbow Saviour";
                                                        ["Type"] = "AuraSkin";
                                                        ["Context"] = "Equip"
                                                })
                                        end
                                end
                                cache18[1] = false
                                if ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Cousin", "Buy") == 1 then
                                        TempTable["wt"](1)
                                        Chat()
                                else
                                        for idx, val in pairs(Workspace:GetChildren()) do
                                                local store18 = {}
                                                store18[1], store18[3] = idx, val
                                                if store18[3]:GetAttribute("OriginalName") ~= nil and (TempTable["sf"](store18[3]["Name"], "Fruit") and (store18[3]:IsA("Tool") and not TempTable["IsInList"](TempTable["GetType"](), store18[3]:GetAttribute("OriginalName")))) then
                                                        repeat
                                                                TempTable["wt"](.1)
                                                                TempTable["Status"](" Status : TP To " .. store18[3]["Name"])
                                                                TPZ(store18[3]["Handle"]["CFrame"])
                                                                cache18[1] = true
                                                                Chat()
                                                        until not store18[3] or game["Players"]["LocalPlayer"]["Backpack"]:FindFirstChild(store18[3]["Name"]) or TempTable["IsInList"](TempTable["GetType"](), store18[3]:GetAttribute("OriginalName")) or (store18[3]["Handle"]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10 or not(getgenv())["AutoFarm"]
                                                end
                                        end
                                        if not cache18[1] then
                                                local tmp19 = {}
                                                if TempTable["tf"](Configs["Gun"], "Magma Blaster") and (Level["Value"] >= 200 and (not TempTable["gi"]("Magma Blaster") and (Old_World and TempTable["CheckBoss"]("Magma Admiral")))) then
                                                        Quest = "Magma Blaster"
                                                        return
                                                end
                                                if TempTable["tf"](Configs["Gun"], "Bazooka") and (Level["Value"] >= 200 and (not TempTable["gi"]("Bazooka") and (Old_World and TempTable["CheckBoss"]("Wysper")))) then
                                                        Quest = "Bazooka"
                                                        return
                                                end
                                                if TempTable["tf"](Configs["Sword"], "Saber") and (Level["Value"] >= 200 and not TempTable["gi"]("Saber")) then
                                                        Quest = "Saber"
                                                        return
                                                end
                                                if TempTable["tf"](Configs["Sword"], "Shark Saw") and (Level["Value"] >= 100 and (not TempTable["gi"]("Shark Saw") and (Old_World and TempTable["CheckBoss"]("The Saw")))) then
                                                        Quest = "Shark Saw"
                                                        return
                                                end
                                                if TempTable["tf"](Configs["Sword"], "Wardens Sword") and (Level["Value"] >= 100 and (not TempTable["gi"]("Wardens Sword") and (Old_World and TempTable["CheckBoss"]("Chief Warden")))) then
                                                        Quest = "Wardens Sword"
                                                        return
                                                end
                                                if TempTable["tf"](Configs["Sword"], "Pole (1st Form)") and (Level["Value"] >= 100 and (not TempTable["gi"]("Pole (1st Form)") and (Old_World and TempTable["CheckBoss"]("Thunder God")))) then
                                                        Quest = "Pole (1st Form)"
                                                        return
                                                end
                                                if ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Alchemist", "1") ~= -2 and (Beli["Value"] >= 2500000 and (Level["Value"] >= 850 and (ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 and not TempTable["ffc"](MarketplaceService["Data"]["Race"], "Evolved")))) then
                                                        Quest = "Evo Race V1"
                                                        return
                                                end
                                                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "3") ~= -2 and (ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1") == 0 and (TempTable["IsHeavenly"]() and (Camera["Value"] >= 1400 and Beli["Value"] >= 2000000))) then
                                                        Quest = "Evo Race V2"
                                                        return
                                                end
                                                if TempTable["tf"](Configs["Sword"], "Gravity Blade") and (not TempTable["gi"]("Gravity Blade") and (New_World and (TempTable["CheckBoss"]("Orbitus") and Level["Value"] >= 800))) then
                                                        Quest = "Gravity Blade"
                                                        return
                                                end
                                                if TempTable["tf"](Configs["Sword"], "Longsword") and (not TempTable["gi"]("Longsword") and (New_World and (TempTable["CheckBoss"]("Diamond") and Level["Value"] >= 800))) then
                                                        Quest = "Longsword"
                                                        return
                                                end
                                                if TempTable["tf"](Configs["Sword"], "Rengoku") and (not TempTable["gi"]("Rengoku") and (New_World and (TempTable["CheckBoss"]("Awakened Ice Admiral") and Level["Value"] >= 800))) then
                                                        Quest = "Rengoku"
                                                        return
                                                end
                                                if TempTable["IsHall"]() and (New_World and (TempTable["CheckBoss"]("Awakened Ice Admiral") and Level["Value"] >= 800)) then
                                                        Quest = "Rengoku"
                                                        return
                                                end
                                                if not TempTable["gi"]("Rengoku") and (TempTable["CheckBackpack"]("Hidden Key") and New_World) then
                                                        repeat
                                                                TempTable["wt"](.3)
                                                                TempTable["Status"](tableConcat({
                                                                        " Status : Use Hidden";
                                                                        " Key"
                                                                }))
                                                                TempTable["Equip"]("Hidden Key")
                                                                RemoteFunction(CFrame["new"](6572.29248, 295.712677, -6966.09961, .803500533, -3.27515153e-08, .595304072, 3.97485422e-08, 1, 1.36659384e-09, -0.595304072, 2.25644108e-08, .803500533), 1.5)
                                                        until (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](6572.29248, 295.712677, -6966.09961))["Magnitude"] <= 5 or not(getgenv())["AutoFarm"]
                                                        TempTable["wt"](1)
                                                        return
                                                end
                                                if New_World and (TempTable["IsHall"]() and TempTable["CheckBackpack"]("Library Key")) then
                                                        repeat
                                                                TempTable["wt"](.1)
                                                                TempTable["Status"](tableConcat({
                                                                        " Status : Use Librar",
                                                                        "y Key"
                                                                }))
                                                                TempTable["Equip"]("Library Key")
                                                                RemoteFunction(CFrame["new"](6377.12549, 296.634735, -6843.76025, -0.860993743, 1.17677516e-07, -0.508615494, 1.31121894e-07, 1, 9.40274347e-09, .508615494, -5.8594928e-08, -0.860993743), 1.5)
                                                        until (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](6377.12549, 296.634735, -6843.76025))["Magnitude"] <= 1 or not TempTable["IsHall"]() or not(getgenv())["AutoFarm"]
                                                        TempTable["wt"](1)
                                                        return
                                                end
                                                if TempTable["tf"](Configs["Sword"], "Flail") and (not TempTable["gi"]("Flail") and (New_World and TempTable["CheckBoss"]("Smoke Admiral"))) then
                                                        Quest = "Flail"
                                                        return
                                                end
                                                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress", "Bartilo") ~= 3 and Level["Value"] >= 850 then
                                                        Quest = "BartiloQuest"
                                                        return
                                                end
                                                if not CheckFindWaterKey then
                                                        if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate", true) == tableConcat({
                                                                "I lost my house keys";
                                                                ", could you help me ",
                                                                "find them? Thanks."
                                                        }) and Level["Value"] >= 850 then
                                                                Quest = "Find Water Key"
                                                                return
                                                        end
                                                end
                                                if New_World and (not TempTable["IsHeavenly"]() and ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1") == 0) then
                                                        Quest = "Don Swan"
                                                        return
                                                end
                                                if Three_World and (TempTable["tf"](Configs["Sword"], "Yama") and (ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("EliteHunter", "Progress") >= 30 and not TempTable["gi"]("Yama"))) then
                                                        Quest = "Yama"
                                                        return
                                                end
                                                if Three_World and (TempTable["tf"](Configs["Sword"], "Tushita") and (not TempTable["gi"]("Tushita") and Unlock_Tushita_Quest)) then
                                                        Quest = "Longma"
                                                        return
                                                end
                                                if TempTable["tf"](Configs["Gun"], "Soul Guitar") and (not TempTable["gi"]("Soul Guitar") and (Level["Value"] >= 2000 and TempTable["CheckItem"]("Dark Fragment") >= 1)) then
                                                        Quest = "Soul Guitar"
                                                        return
                                                end
                                                if Level["Value"] >= 2000 and ((getgenv())["Configs"]["Quest"]["RGB Haki"] and not RGB_Haki_H) then
                                                        if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("HornedMan", "Bet") == nil then
                                                                Quest = "RGB"
                                                                return
                                                        end
                                                end
                                                if TempTable["tf"](Configs["Gun"], "Venom Bow") and (not TempTable["gi"]("Venom Bow") and (Three_World and TempTable["CheckBoss"]("Hydra Leader"))) then
                                                        Quest = "Venom Bow"
                                                        return
                                                end
                                                if TempTable["tf"](Configs["Sword"], "Twin Hooks") and (not TempTable["gi"]("Twin Hooks") and (Three_World and TempTable["CheckBoss"]("Captain Elephant"))) then
                                                        Quest = "Twin Hooks"
                                                        return
                                                end
                                                if (game:GetService("Workspace"))["Map"]:FindFirstChild("MysticIsland") and (not ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CheckTempleDoor") and (ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "3") == -2 and Mirror_Fractal_H)) then
                                                        Quest = "Pull Lerver"
                                                        return
                                                end
                                                if ChangeHistoryService() then
                                                        Quest = "Cursed Dual Katana"
                                                        return
                                                end
                                                if not Dragon_Talon_C then
                                                        if TempTable["ffc"](MarketplaceService["Backpack"], "Fire Essence") or TempTable["ffc"](MarketplaceService["Character"], "Fire Essence") then
                                                                repeat
                                                                        TempTable["Status"](tableConcat({
                                                                                " Status : Use Fire E",
                                                                                "ssence"
                                                                        }))
                                                                        TempTable["Equip"]("Fire Essence")
                                                                        TempTable["wt"](.5)
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon", true)
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
                                                                until not TempTable["ffc"](MarketplaceService["Backpack"], "Fire Essence") and not TempTable["ffc"](MarketplaceService["Character"], "Fire Essence")
                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
                                                                Dragon_Talon_C = true
                                                                return
                                                        end
                                                end
                                                if Fishman_Karate_C_M and (not Dragon_Claw_C and Level["Value"] >= 1100) then
                                                        if not Dragon_Claw_C then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        StatsGui()
                                                                        if TempTable["ffc"](MarketplaceService["Backpack"], "Dragon Claw") or TempTable["ffc"](MarketplaceService["Character"], "Dragon Claw") then
                                                                                Dragon_Claw_C = true
                                                                                return
                                                                        end
                                                                        if not Dragon_Claw_C and Level["Value"] >= 1100 then
                                                                                if Fragments["Value"] >= 1500 then
                                                                                        local data19 = {}
                                                                                        data19[1] = {
                                                                                                [1] = "BlackbeardReward",
                                                                                                [2] = "DragonClaw",
                                                                                                [3] = "2"
                                                                                        }
                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer(unpack(data19[1]))
                                                                                        Dragon_Claw_C = true
                                                                                        return
                                                                                elseif Fragments["Value"] < 1500 then
                                                                                        if MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] and (Fragments["Value"] < 1500 and not Dragon_Claw_C) then
                                                                                                TempTable["Status"](" Status : Farm Raid")
                                                                                                if #TempTable["GetMobRaid"]() == 0 then
                                                                                                        if Select_Map == "Magma" or Select_Map == "Flame" then
                                                                                                                for idx, val in pairs(Workspace:GetDescendants()) do
                                                                                                                        local info19 = {}
                                                                                                                        info19[3], info19[2] = idx, val
                                                                                                                        if info19[2]["Name"] == "Lava" then
                                                                                                                                info19[2]:Destroy()
                                                                                                                        end
                                                                                                                end
                                                                                                        end
                                                                                                        if TempTable["GetRaid"]("Island 5", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 5", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 4", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 4", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 3", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 3", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 2", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 2", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 1", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 1", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        end
                                                                                                else
                                                                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                                                                local vars19 = {}
                                                                                                                vars19[2], vars19[1] = idx, val
                                                                                                                if vars19[1]:FindFirstChild("HumanoidRootPart") and (vars19[1]:FindFirstChild("Humanoid") and ((vars19[1]:FindFirstChild("Humanoid"))["Health"] > 0 and (MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"]["Position"] - vars19[1]["HumanoidRootPart"]["CFrame"]["Position"])["Magnitude"] <= 5000)) then
                                                                                                                        repeat
                                                                                                                                local temp19 = {}
                                                                                                                                TempTable["wt"](.1)
                                                                                                                                if Select_Map == "Magma" or Select_Map == "Flame" then
                                                                                                                                        for idx, val in pairs(Workspace:GetDescendants()) do
                                                                                                                                                local state19 = {}
                                                                                                                                                state19[1], state19[2] = idx, val
                                                                                                                                                if state19[2]["Name"] == "Lava" then
                                                                                                                                                        state19[2]:Destroy()
                                                                                                                                                end
                                                                                                                                        end
                                                                                                                                end
                                                                                                                                temp19[2] = math["random"](1, 5)
                                                                                                                                if temp19[2] == 1 then
                                                                                                                                        temp19[3] = CFrame["new"](0, 30, 1)
                                                                                                                                elseif temp19[2] == 2 then
                                                                                                                                        temp19[3] = CFrame["new"](0, 30, 15)
                                                                                                                                elseif temp19[2] == 3 then
                                                                                                                                        temp19[3] = CFrame["new"](1, 30, -15)
                                                                                                                                elseif temp19[2] == 4 then
                                                                                                                                        temp19[3] = CFrame["new"](15, 30, 0)
                                                                                                                                elseif temp19[2] == 5 then
                                                                                                                                        temp19[3] = CFrame["new"](-15, 30, 0)
                                                                                                                                end
                                                                                                                                RemoteFunction(vars19[1]["HumanoidRootPart"]["CFrame"] * temp19[3], 1.5)
                                                                                                                                if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                                                                end
                                                                                                                                StatsGui()
                                                                                                                        until not vars19[1]["Parent"] or vars19[1]["Humanoid"]["Health"] <= 0 or #TempTable["GetMobRaid"]() == 0
                                                                                                                end
                                                                                                        end
                                                                                                end
                                                                                        else
                                                                                                if MarketplaceService["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
                                                                                                        Select_Map = "Dark"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
                                                                                                        Select_Map = "Sand"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
                                                                                                        Select_Map = "Magma"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
                                                                                                        Select_Map = "Rumble"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
                                                                                                        Select_Map = "Flame"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
                                                                                                        Select_Map = "Ice"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Light-Light" then
                                                                                                        Select_Map = "Light"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "String-String" then
                                                                                                        Select_Map = "String"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
                                                                                                        Select_Map = "Quake"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
                                                                                                        Select_Map = "Buddha"
                                                                                                else
                                                                                                        Select_Map = "Ice"
                                                                                                end
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
                                                                                                TempTable["wt"](.2)
                                                                                                if MarketplaceService["Backpack"]:FindFirstChild("Special Microchip") or MarketplaceService["Character"]:FindFirstChild("Special Microchip") and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                        if PlaceId == 4442272183 and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                local cache19 = {}
                                                                                                                fireclickdetector(Workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                cache19[2] = 0
                                                                                                                repeat
                                                                                                                        cache19[2] = cache19[2] + 1
                                                                                                                        TempTable["wt"](1)
                                                                                                                until cache19[2] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"] == true
                                                                                                        elseif PlaceId == 7449423635 then
                                                                                                                RemoteFunction(CFrame["new"](-5034, 315, -2951), 1.5)
                                                                                                                if ((CFrame["new"](-5034, 315, -2951))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                                                                                        if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                local store19 = {}
                                                                                                                                fireclickdetector(Workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                store19[1] = 0
                                                                                                                                repeat
                                                                                                                                        store19[1] = store19[1] + 1
                                                                                                                                        TempTable["wt"](1)
                                                                                                                                until store19[1] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"] == true
                                                                                                                        end
                                                                                                                end
                                                                                                        end
                                                                                                else
                                                                                                        if not MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
                                                                                                                if Beli["Value"] >= 0 and MarketplaceService["Data"]["Fragments"]["Value"] >= 1500 then
                                                                                                                        local tmp20 = {}
                                                                                                                        tmp20[2] = {
                                                                                                                                [1] = "BlackbeardReward",
                                                                                                                                [2] = "DragonClaw",
                                                                                                                                [3] = "2"
                                                                                                                        };
                                                                                                                        (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(tmp20[2]))
                                                                                                                        Dragon_Claw_C = true
                                                                                                                        return
                                                                                                                end
                                                                                                                table["sort"](TempTable["GetFruits"](), function(arg1, arg2)
                                                                                                                        local data20 = {}
                                                                                                                        data20[2], data20[1] = arg1, arg2
                                                                                                                        if data20[2]["Value"] < 100000 and data20[2]["Value"] < 100000 then
                                                                                                                                return data20[2]["Value"] < data20[1]["Value"]
                                                                                                                        end
                                                                                                                end)
                                                                                                                TempTable["wt"](1)
                                                                                                                if #TempTable["GetFruits"]() > 0 and not Dragon_Claw_C then
                                                                                                                        TempTable["wt"](2)
                                                                                                                        if not MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
                                                                                                                                if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 and MarketplaceService["Data"]["Fragments"]["Value"] < 5000 then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadFruit", (TempTable["GetFruits"]())[1]["Name"])
                                                                                                                                elseif Fragments["Value"] < 5000 then
                                                                                                                                        break
                                                                                                                                end
                                                                                                                                if MarketplaceService["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
                                                                                                                                        Select_Map = "Dark"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
                                                                                                                                        Select_Map = "Sand"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
                                                                                                                                        Select_Map = "Magma"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
                                                                                                                                        Select_Map = "Rumble"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
                                                                                                                                        Select_Map = "Flame"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
                                                                                                                                        Select_Map = "Ice"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Light-Light" then
                                                                                                                                        Select_Map = "Light"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "String-String" then
                                                                                                                                        Select_Map = "String"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
                                                                                                                                        Select_Map = "Quake"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
                                                                                                                                        Select_Map = "Buddha"
                                                                                                                                else
                                                                                                                                        Select_Map = "Ice"
                                                                                                                                end
                                                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
                                                                                                                                if PlaceId == 4442272183 and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                        local info20 = {}
                                                                                                                                        fireclickdetector(Workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                        info20[2] = 0
                                                                                                                                        repeat
                                                                                                                                                info20[2] = info20[2] + 1
                                                                                                                                                TempTable["wt"](1)
                                                                                                                                        until info20[2] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                                elseif PlaceId == 7449423635 then
                                                                                                                                        RemoteFunction(CFrame["new"](-5034, 315, -2951), 1.5)
                                                                                                                                        if ((CFrame["new"](-5034, 315, -2951))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                                                                                                                if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                                        local vars20 = {}
                                                                                                                                                        fireclickdetector(Workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                                        vars20[1] = 0
                                                                                                                                                        repeat
                                                                                                                                                                vars20[1] = vars20[1] + 1
                                                                                                                                                                TempTable["wt"](1)
                                                                                                                                                        until vars20[1] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                                                end
                                                                                                                                        end
                                                                                                                                end
                                                                                                                        end
                                                                                                                else
                                                                                                                        Quest = nil
                                                                                                                        TempTable["Status"](tableConcat({
                                                                                                                                " Status : Auto Farm ",
                                                                                                                                "Level"
                                                                                                                        }))
                                                                                                                        TestService()
                                                                                                                end
                                                                                                        end
                                                                                                end
                                                                                        end
                                                                                end
                                                                        end
                                                                until Dragon_Claw_C
                                                        end
                                                        return
                                                end
                                                tmp19[1] = function()
                                                        for idx, val in pairs(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
                                                                local temp20 = {}
                                                                temp20[3], temp20[1] = idx, val
                                                                if temp20[1]["Value"] and temp20[1]["Value"] >= 1000000 then
                                                                        return true
                                                                end
                                                        end
                                                        return false
                                                end
                                                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1") ~= 0 and (game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 900 and tmp19[1]()) then
                                                        repeat
                                                                TempTable["wt"]()
                                                                noFruit = true
                                                                for idx, val in pairs(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
                                                                        local state20 = {}
                                                                        state20[2], state20[1] = idx, val
                                                                        if state20[1]["Value"] and state20[1]["Value"] >= 1000000 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("LoadFruit", state20[1]["Name"])
                                                                                TempTable["wt"](1)
                                                                                for idx, val in pairs((game:GetService("Players"))["LocalPlayer"]["Backpack"]:GetChildren()) do
                                                                                        local cache20 = {}
                                                                                        cache20[3], cache20[1] = idx, val
                                                                                        if string["find"](cache20[1]["Name"], "Fruit") then
                                                                                                TempTable["Equip"](cache20[1])
                                                                                        end
                                                                                end
                                                                                TempTable["wt"](.2)
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1")
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "2")
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "3")
                                                                                return
                                                                        end
                                                                end
                                                        until ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1") == 0 or not tmp19[1]()
                                                        noFruit = false
                                                end
                                                if Level["Value"] >= 1500 and (ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1") ~= 0 and not tmp19[1]()) then
                                                        TempTable["HopLowServer"](10)
                                                        return
                                                end
                                                if Super_human and (not Death_Step and Level["Value"] >= 1100) then
                                                        if not Death_Step then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        StatsGui()
                                                                        if not Super_humanw_C_M then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySuperhuman")
                                                                                if MarketplaceService["Character"]["Superhuman"]["Level"]["Value"] < 400 then
                                                                                        repeat
                                                                                                TempTable["wt"]()
                                                                                                StatsGui()
                                                                                                Quest = nil
                                                                                                TempTable["Status"](tableConcat({
                                                                                                        " Status : Auto Farm ",
                                                                                                        "Level"
                                                                                                }))
                                                                                                TestService()
                                                                                        until MarketplaceService["Character"]["Superhuman"]["Level"]["Value"] >= 400
                                                                                        Super_humanw_C_M = true
                                                                                end
                                                                        end
                                                                        if TempTable["ffc"](MarketplaceService["Backpack"], "Death Step") or TempTable["ffc"](MarketplaceService["Character"], "Death Step") then
                                                                                Death_Step = true
                                                                                return
                                                                        end
                                                                        if not Death_Step and Level["Value"] >= 1100 then
                                                                                if Fragments["Value"] >= 5000 then
                                                                                        if Black_Leg_C_M then
                                                                                                if Beli["Value"] >= 2500000 then
                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep")
                                                                                                        Death_Step = true
                                                                                                        return
                                                                                                else
                                                                                                        StatsGui()
                                                                                                        Quest = nil
                                                                                                        TempTable["Status"](tableConcat({
                                                                                                                " Status : Auto Farm ",
                                                                                                                "Level"
                                                                                                        }))
                                                                                                        TestService()
                                                                                                end
                                                                                        else
                                                                                                repeat
                                                                                                        TempTable["wt"]()
                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyBlackLeg")
                                                                                                        StatsGui()
                                                                                                        Quest = nil
                                                                                                        TempTable["Status"](tableConcat({
                                                                                                                " Status : Auto Farm ";
                                                                                                                "Level"
                                                                                                        }))
                                                                                                        TestService()
                                                                                                until MarketplaceService["Character"]["Black Leg"]["Level"]["Value"] >= 400
                                                                                                Black_Leg_C_M = true
                                                                                                if not Super_human then
                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySuperhuman")
                                                                                                end
                                                                                                return
                                                                                        end
                                                                                elseif Fragments["Value"] < 5000 then
                                                                                        if MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] and (Fragments["Value"] < 5000 and not Death_Step) then
                                                                                                TempTable["Status"](" Status : Farm Raid")
                                                                                                if #TempTable["GetMobRaid"]() == 0 then
                                                                                                        if Select_Map == "Magma" or Select_Map == "Flame" then
                                                                                                                for idx, val in pairs(Workspace:GetDescendants()) do
                                                                                                                        local store20 = {}
                                                                                                                        store20[2], store20[1] = idx, val
                                                                                                                        if store20[1]["Name"] == "Lava" then
                                                                                                                                store20[1]:Destroy()
                                                                                                                        end
                                                                                                                end
                                                                                                        end
                                                                                                        if TempTable["GetRaid"]("Island 5", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 5", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 4", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 4", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 3", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 3", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 2", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 2", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 1", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 1", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        end
                                                                                                else
                                                                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                                                                local tmp21 = {}
                                                                                                                tmp21[2], tmp21[1] = idx, val
                                                                                                                if tmp21[1]:FindFirstChild("HumanoidRootPart") and (tmp21[1]:FindFirstChild("Humanoid") and ((tmp21[1]:FindFirstChild("Humanoid"))["Health"] > 0 and (MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"]["Position"] - tmp21[1]["HumanoidRootPart"]["CFrame"]["Position"])["Magnitude"] <= 5000)) then
                                                                                                                        repeat
                                                                                                                                local data21 = {}
                                                                                                                                TempTable["wt"](.1)
                                                                                                                                if Select_Map == "Magma" or Select_Map == "Flame" then
                                                                                                                                        for idx, val in pairs(Workspace:GetDescendants()) do
                                                                                                                                                local info21 = {}
                                                                                                                                                info21[1], info21[3] = idx, val
                                                                                                                                                if info21[3]["Name"] == "Lava" then
                                                                                                                                                        info21[3]:Destroy()
                                                                                                                                                end
                                                                                                                                        end
                                                                                                                                end
                                                                                                                                data21[2] = math["random"](1, 5)
                                                                                                                                if data21[2] == 1 then
                                                                                                                                        data21[1] = CFrame["new"](0, 30, 1)
                                                                                                                                elseif data21[2] == 2 then
                                                                                                                                        data21[1] = CFrame["new"](0, 30, 15)
                                                                                                                                elseif data21[2] == 3 then
                                                                                                                                        data21[1] = CFrame["new"](1, 30, -15)
                                                                                                                                elseif data21[2] == 4 then
                                                                                                                                        data21[1] = CFrame["new"](15, 30, 0)
                                                                                                                                elseif data21[2] == 5 then
                                                                                                                                        data21[1] = CFrame["new"](-15, 30, 0)
                                                                                                                                end
                                                                                                                                RemoteFunction(tmp21[1]["HumanoidRootPart"]["CFrame"] * data21[1], 1.5)
                                                                                                                                if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                                                                end
                                                                                                                                StatsGui()
                                                                                                                        until not tmp21[1]["Parent"] or tmp21[1]["Humanoid"]["Health"] <= 0 or #TempTable["GetMobRaid"]() == 0
                                                                                                                end
                                                                                                        end
                                                                                                end
                                                                                        else
                                                                                                if MarketplaceService["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
                                                                                                        Select_Map = "Dark"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
                                                                                                        Select_Map = "Sand"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
                                                                                                        Select_Map = "Magma"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
                                                                                                        Select_Map = "Rumble"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
                                                                                                        Select_Map = "Flame"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
                                                                                                        Select_Map = "Ice"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Light-Light" then
                                                                                                        Select_Map = "Light"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "String-String" then
                                                                                                        Select_Map = "String"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
                                                                                                        Select_Map = "Quake"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
                                                                                                        Select_Map = "Buddha"
                                                                                                else
                                                                                                        Select_Map = "Ice"
                                                                                                end
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
                                                                                                TempTable["wt"](.2)
                                                                                                if MarketplaceService["Backpack"]:FindFirstChild("Special Microchip") or MarketplaceService["Character"]:FindFirstChild("Special Microchip") and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                        if PlaceId == 4442272183 and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                local vars21 = {}
                                                                                                                fireclickdetector(Workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                vars21[1] = 0
                                                                                                                repeat
                                                                                                                        vars21[1] = vars21[1] + 1
                                                                                                                        TempTable["wt"](1)
                                                                                                                until vars21[1] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"] == true
                                                                                                        elseif PlaceId == 7449423635 then
                                                                                                                RemoteFunction(CFrame["new"](-5034, 315, -2951), 1.5)
                                                                                                                if ((CFrame["new"](-5034, 315, -2951))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                                                                                        if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                local temp21 = {}
                                                                                                                                fireclickdetector(Workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                temp21[1] = 0
                                                                                                                                repeat
                                                                                                                                        temp21[1] = temp21[1] + 1
                                                                                                                                        TempTable["wt"](1)
                                                                                                                                until temp21[1] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                        end
                                                                                                                end
                                                                                                        end
                                                                                                else
                                                                                                        if not MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
                                                                                                                if MarketplaceService["Data"]["Fragments"]["Value"] >= 5000 then
                                                                                                                        if MarketplaceService["Data"]["Beli"]["Value"] >= 2500000 then
                                                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep")
                                                                                                                                Death_Step = true
                                                                                                                                return
                                                                                                                        end
                                                                                                                        return
                                                                                                                end
                                                                                                                table["sort"](TempTable["GetFruits"](), function(arg1, arg2)
                                                                                                                        local state21 = {}
                                                                                                                        state21[3], state21[1] = arg1, arg2
                                                                                                                        if state21[3]["Value"] < 100000 and state21[3]["Value"] < 100000 then
                                                                                                                                return state21[3]["Value"] < state21[1]["Value"]
                                                                                                                        end
                                                                                                                end)
                                                                                                                TempTable["wt"](1)
                                                                                                                if #TempTable["GetFruits"]() > 0 and not Death_Step then
                                                                                                                        warn()
                                                                                                                        TempTable["wt"](2)
                                                                                                                        if not MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
                                                                                                                                if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 and MarketplaceService["Data"]["Fragments"]["Value"] < 5000 then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadFruit", (TempTable["GetFruits"]())[1]["Name"])
                                                                                                                                elseif Fragments["Value"] < 5000 then
                                                                                                                                        break
                                                                                                                                end
                                                                                                                                if MarketplaceService["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
                                                                                                                                        Select_Map = "Dark"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
                                                                                                                                        Select_Map = "Sand"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
                                                                                                                                        Select_Map = "Magma"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
                                                                                                                                        Select_Map = "Rumble"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
                                                                                                                                        Select_Map = "Flame"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
                                                                                                                                        Select_Map = "Ice"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Light-Light" then
                                                                                                                                        Select_Map = "Light"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "String-String" then
                                                                                                                                        Select_Map = "String"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
                                                                                                                                        Select_Map = "Quake"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
                                                                                                                                        Select_Map = "Buddha"
                                                                                                                                else
                                                                                                                                        Select_Map = "Ice"
                                                                                                                                end
                                                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
                                                                                                                                if PlaceId == 4442272183 and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                        local cache21 = {}
                                                                                                                                        fireclickdetector(Workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                        cache21[2] = 0
                                                                                                                                        repeat
                                                                                                                                                cache21[2] = cache21[2] + 1
                                                                                                                                                TempTable["wt"](1)
                                                                                                                                        until cache21[2] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                                elseif PlaceId == 7449423635 then
                                                                                                                                        RemoteFunction(CFrame["new"](-5034, 315, -2951), 1.5)
                                                                                                                                        if ((CFrame["new"](-5034, 315, -2951))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                                                                                                                if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                                        local store21 = {}
                                                                                                                                                        fireclickdetector(Workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                                        store21[1] = 0
                                                                                                                                                        repeat
                                                                                                                                                                store21[1] = store21[1] + 1
                                                                                                                                                                TempTable["wt"](1)
                                                                                                                                                        until store21[1] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                                                end
                                                                                                                                        end
                                                                                                                                end
                                                                                                                        end
                                                                                                                else
                                                                                                                        Quest = nil
                                                                                                                        TempTable["Status"](tableConcat({
                                                                                                                                " Status : Auto Farm ";
                                                                                                                                "Level"
                                                                                                                        }))
                                                                                                                        TestService()
                                                                                                                end
                                                                                                        end
                                                                                                end
                                                                                        end
                                                                                end
                                                                        end
                                                                until Death_Step
                                                        end
                                                        return
                                                end
                                                if Dragon_Claw_C_M and (not Sharkman_Karate_C and Level["Value"] >= 1100) then
                                                        if not Sharkman_Karate_C then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        StatsGui()
                                                                        if TempTable["ffc"](MarketplaceService["Backpack"], "Sharkman Karate") or TempTable["ffc"](MarketplaceService["Character"], "Sharkman Karate") then
                                                                                Sharkman_Karate_C = true
                                                                                return
                                                                        end
                                                                        if not Sharkman_Karate_C and Level["Value"] >= 1100 then
                                                                                if Fragments["Value"] >= 5000 then
                                                                                        if Beli["Value"] >= 2550000 and not Sharkman_Karate_C then
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")
                                                                                                Sharkman_Karate_C = true
                                                                                                return
                                                                                        else
                                                                                                StatsGui()
                                                                                                Quest = nil
                                                                                                TempTable["Status"](tableConcat({
                                                                                                        " Status : Auto Farm ",
                                                                                                        "Level"
                                                                                                }))
                                                                                                TestService()
                                                                                        end
                                                                                elseif Fragments["Value"] < 5000 then
                                                                                        if MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] and (Fragments["Value"] < 5000 and not Sharkman_Karate_C) then
                                                                                                TempTable["Status"](" Status : Farm Raid")
                                                                                                if #TempTable["GetMobRaid"]() == 0 then
                                                                                                        if Select_Map == "Magma" or Select_Map == "Flame" then
                                                                                                                for idx, val in pairs(Workspace:GetDescendants()) do
                                                                                                                        local tmp22 = {}
                                                                                                                        tmp22[1], tmp22[3] = idx, val
                                                                                                                        if tmp22[3]["Name"] == "Lava" then
                                                                                                                                tmp22[3]:Destroy()
                                                                                                                        end
                                                                                                                end
                                                                                                        end
                                                                                                        if TempTable["GetRaid"]("Island 5", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 5", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 4", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 4", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 3", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 3", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 2", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 2", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 1", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 1", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        end
                                                                                                else
                                                                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                                                                local data22 = {}
                                                                                                                data22[3], data22[1] = idx, val
                                                                                                                if data22[1]:FindFirstChild("HumanoidRootPart") and (data22[1]:FindFirstChild("Humanoid") and ((data22[1]:FindFirstChild("Humanoid"))["Health"] > 0 and (MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"]["Position"] - data22[1]["HumanoidRootPart"]["CFrame"]["Position"])["Magnitude"] <= 5000)) then
                                                                                                                        repeat
                                                                                                                                local info22 = {}
                                                                                                                                TempTable["wt"](.1)
                                                                                                                                if Select_Map == "Magma" or Select_Map == "Flame" then
                                                                                                                                        for idx, val in pairs(Workspace:GetDescendants()) do
                                                                                                                                                local vars22 = {}
                                                                                                                                                vars22[2], vars22[3] = idx, val
                                                                                                                                                if vars22[3]["Name"] == "Lava" then
                                                                                                                                                        vars22[3]:Destroy()
                                                                                                                                                end
                                                                                                                                        end
                                                                                                                                end
                                                                                                                                info22[2] = math["random"](1, 5)
                                                                                                                                if info22[2] == 1 then
                                                                                                                                        info22[3] = CFrame["new"](0, 30, 1)
                                                                                                                                elseif info22[2] == 2 then
                                                                                                                                        info22[3] = CFrame["new"](0, 30, 15)
                                                                                                                                elseif info22[2] == 3 then
                                                                                                                                        info22[3] = CFrame["new"](1, 30, -15)
                                                                                                                                elseif info22[2] == 4 then
                                                                                                                                        info22[3] = CFrame["new"](15, 30, 0)
                                                                                                                                elseif info22[2] == 5 then
                                                                                                                                        info22[3] = CFrame["new"](-15, 30, 0)
                                                                                                                                end
                                                                                                                                RemoteFunction(data22[1]["HumanoidRootPart"]["CFrame"] * info22[3], 1.5)
                                                                                                                                if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                                                                end
                                                                                                                                StatsGui()
                                                                                                                        until not data22[1]["Parent"] or data22[1]["Humanoid"]["Health"] <= 0 or #TempTable["GetMobRaid"]() == 0
                                                                                                                end
                                                                                                        end
                                                                                                end
                                                                                        else
                                                                                                if MarketplaceService["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
                                                                                                        Select_Map = "Dark"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
                                                                                                        Select_Map = "Sand"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
                                                                                                        Select_Map = "Magma"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
                                                                                                        Select_Map = "Rumble"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
                                                                                                        Select_Map = "Flame"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
                                                                                                        Select_Map = "Ice"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Light-Light" then
                                                                                                        Select_Map = "Light"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "String-String" then
                                                                                                        Select_Map = "String"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
                                                                                                        Select_Map = "Quake"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
                                                                                                        Select_Map = "Buddha"
                                                                                                else
                                                                                                        Select_Map = "Ice"
                                                                                                end
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
                                                                                                TempTable["wt"](.2)
                                                                                                if MarketplaceService["Backpack"]:FindFirstChild("Special Microchip") or MarketplaceService["Character"]:FindFirstChild("Special Microchip") and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                        if PlaceId == 4442272183 and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                local temp22 = {}
                                                                                                                fireclickdetector(Workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                temp22[1] = 0
                                                                                                                repeat
                                                                                                                        temp22[1] = temp22[1] + 1
                                                                                                                        TempTable["wt"](1)
                                                                                                                until temp22[1] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                        elseif PlaceId == 7449423635 then
                                                                                                                RemoteFunction(CFrame["new"](-5034, 315, -2951), 1.5)
                                                                                                                if ((CFrame["new"](-5034, 315, -2951))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                                                                                        if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                local state22 = {}
                                                                                                                                fireclickdetector(Workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                state22[2] = 0
                                                                                                                                repeat
                                                                                                                                        state22[2] = state22[2] + 1
                                                                                                                                        TempTable["wt"](1)
                                                                                                                                until state22[2] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                        end
                                                                                                                end
                                                                                                        end
                                                                                                else
                                                                                                        if not MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
                                                                                                                if Beli["Value"] >= 0 and MarketplaceService["Data"]["Fragments"]["Value"] >= 5000 then
                                                                                                                        print("nan")
                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")
                                                                                                                        Sharkman_Karate_C = true
                                                                                                                        return
                                                                                                                end
                                                                                                                table["sort"](TempTable["GetFruits"](), function(arg1, arg2)
                                                                                                                        local cache22 = {}
                                                                                                                        cache22[3], cache22[1] = arg1, arg2
                                                                                                                        if cache22[3]["Value"] < 100000 and cache22[3]["Value"] < 100000 then
                                                                                                                                return cache22[3]["Value"] < cache22[1]["Value"]
                                                                                                                        end
                                                                                                                end)
                                                                                                                TempTable["wt"](1)
                                                                                                                if #TempTable["GetFruits"]() > 0 and not Sharkman_Karate_C then
                                                                                                                        TempTable["wt"](2)
                                                                                                                        if not MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
                                                                                                                                if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 and MarketplaceService["Data"]["Fragments"]["Value"] < 5000 then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadFruit", (TempTable["GetFruits"]())[1]["Name"])
                                                                                                                                elseif Fragments["Value"] < 5000 then
                                                                                                                                        break
                                                                                                                                end
                                                                                                                                if MarketplaceService["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
                                                                                                                                        Select_Map = "Dark"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
                                                                                                                                        Select_Map = "Sand"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
                                                                                                                                        Select_Map = "Magma"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
                                                                                                                                        Select_Map = "Rumble"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
                                                                                                                                        Select_Map = "Flame"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
                                                                                                                                        Select_Map = "Ice"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Light-Light" then
                                                                                                                                        Select_Map = "Light"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "String-String" then
                                                                                                                                        Select_Map = "String"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
                                                                                                                                        Select_Map = "Quake"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
                                                                                                                                        Select_Map = "Buddha"
                                                                                                                                else
                                                                                                                                        Select_Map = "Ice"
                                                                                                                                end
                                                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
                                                                                                                                if PlaceId == 4442272183 and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                        local store22 = {}
                                                                                                                                        fireclickdetector(Workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                        store22[1] = 0
                                                                                                                                        repeat
                                                                                                                                                store22[1] = store22[1] + 1
                                                                                                                                                TempTable["wt"](1)
                                                                                                                                        until store22[1] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                                elseif PlaceId == 7449423635 then
                                                                                                                                        RemoteFunction(CFrame["new"](-5034, 315, -2951), 1.5)
                                                                                                                                        if ((CFrame["new"](-5034, 315, -2951))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                                                                                                                if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                                        local tmp23 = {}
                                                                                                                                                        fireclickdetector(Workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                                        tmp23[2] = 0
                                                                                                                                                        repeat
                                                                                                                                                                tmp23[2] = tmp23[2] + 1
                                                                                                                                                                TempTable["wt"](1)
                                                                                                                                                        until tmp23[2] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                                                end
                                                                                                                                        end
                                                                                                                                end
                                                                                                                        end
                                                                                                                else
                                                                                                                        Quest = nil
                                                                                                                        TempTable["Status"](tableConcat({
                                                                                                                                " Status : Auto Farm ",
                                                                                                                                "Level"
                                                                                                                        }))
                                                                                                                        TestService()
                                                                                                                end
                                                                                                        end
                                                                                                end
                                                                                        end
                                                                                end
                                                                        end
                                                                until Sharkman_Karate_C
                                                        end
                                                        return
                                                end
                                                if Sharkman_Karate_C_M and (not Electric_Claw_C and Level["Value"] >= 1100) then
                                                        if not Electric_Claw_C then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        StatsGui()
                                                                        if TempTable["ffc"](MarketplaceService["Backpack"], "Electric Claw") or TempTable["ffc"](MarketplaceService["Character"], "Electric Claw") then
                                                                                Electric_Claw_C = true
                                                                                return
                                                                        end
                                                                        if not Electric_Claw_C and Level["Value"] >= 1100 then
                                                                                if Fragments["Value"] >= 5000 then
                                                                                        if Beli["Value"] >= 3000000 then
                                                                                                pcall(function()
                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw")
                                                                                                        if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 1 or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 2 then
                                                                                                                Electric_Claw_C = true
                                                                                                        end
                                                                                                end)
                                                                                                if not Electric_Claw_C then
                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw")
                                                                                                        if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 1 or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 2 then
                                                                                                                Electric_Claw_C = true
                                                                                                        end
                                                                                                end
                                                                                                if Three_World and not Electric_Claw_C then
                                                                                                        Quest = "Quest Electric Claw"
                                                                                                end
                                                                                                return
                                                                                        else
                                                                                                StatsGui()
                                                                                                Quest = nil
                                                                                                TempTable["Status"](tableConcat({
                                                                                                        " Status : Auto Farm ";
                                                                                                        "Level"
                                                                                                }))
                                                                                                TestService()
                                                                                        end
                                                                                elseif Fragments["Value"] < 5000 then
                                                                                        if MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] and (Fragments["Value"] < 5000 and not Electric_Claw_C) then
                                                                                                TempTable["Status"](" Status : Farm Raid")
                                                                                                if #TempTable["GetMobRaid"]() == 0 then
                                                                                                        if Select_Map == "Magma" or Select_Map == "Flame" then
                                                                                                                for idx, val in pairs(Workspace:GetDescendants()) do
                                                                                                                        local data23 = {}
                                                                                                                        data23[2], data23[1] = idx, val
                                                                                                                        if data23[1]["Name"] == "Lava" then
                                                                                                                                data23[1]:Destroy()
                                                                                                                        end
                                                                                                                end
                                                                                                        end
                                                                                                        if TempTable["GetRaid"]("Island 5", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 5", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 4", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 4", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 3", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 3", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 2", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 2", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 1", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 1", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        end
                                                                                                else
                                                                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                                                                local info23 = {}
                                                                                                                info23[1], info23[2] = idx, val
                                                                                                                if info23[2]:FindFirstChild("HumanoidRootPart") and (info23[2]:FindFirstChild("Humanoid") and ((info23[2]:FindFirstChild("Humanoid"))["Health"] > 0 and (MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"]["Position"] - info23[2]["HumanoidRootPart"]["CFrame"]["Position"])["Magnitude"] <= 5000)) then
                                                                                                                        repeat
                                                                                                                                local vars23 = {}
                                                                                                                                TempTable["wt"](.1)
                                                                                                                                if Select_Map == "Magma" or Select_Map == "Flame" then
                                                                                                                                        for idx, val in pairs(Workspace:GetDescendants()) do
                                                                                                                                                local temp23 = {}
                                                                                                                                                temp23[3], temp23[2] = idx, val
                                                                                                                                                if temp23[2]["Name"] == "Lava" then
                                                                                                                                                        temp23[2]:Destroy()
                                                                                                                                                end
                                                                                                                                        end
                                                                                                                                end
                                                                                                                                vars23[2] = math["random"](1, 5)
                                                                                                                                if vars23[2] == 1 then
                                                                                                                                        vars23[1] = CFrame["new"](0, 30, 1)
                                                                                                                                elseif vars23[2] == 2 then
                                                                                                                                        vars23[1] = CFrame["new"](0, 30, 15)
                                                                                                                                elseif vars23[2] == 3 then
                                                                                                                                        vars23[1] = CFrame["new"](1, 30, -15)
                                                                                                                                elseif vars23[2] == 4 then
                                                                                                                                        vars23[1] = CFrame["new"](15, 30, 0)
                                                                                                                                elseif vars23[2] == 5 then
                                                                                                                                        vars23[1] = CFrame["new"](-15, 30, 0)
                                                                                                                                end
                                                                                                                                RemoteFunction(info23[2]["HumanoidRootPart"]["CFrame"] * vars23[1], 1.5)
                                                                                                                                if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                                                                end
                                                                                                                                StatsGui()
                                                                                                                        until not info23[2]["Parent"] or info23[2]["Humanoid"]["Health"] <= 0 or #TempTable["GetMobRaid"]() == 0
                                                                                                                end
                                                                                                        end
                                                                                                end
                                                                                        else
                                                                                                if MarketplaceService["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
                                                                                                        Select_Map = "Dark"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
                                                                                                        Select_Map = "Sand"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
                                                                                                        Select_Map = "Magma"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
                                                                                                        Select_Map = "Rumble"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
                                                                                                        Select_Map = "Flame"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
                                                                                                        Select_Map = "Ice"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Light-Light" then
                                                                                                        Select_Map = "Light"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "String-String" then
                                                                                                        Select_Map = "String"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
                                                                                                        Select_Map = "Quake"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
                                                                                                        Select_Map = "Buddha"
                                                                                                else
                                                                                                        Select_Map = "Ice"
                                                                                                end
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
                                                                                                TempTable["wt"](.2)
                                                                                                if MarketplaceService["Backpack"]:FindFirstChild("Special Microchip") or MarketplaceService["Character"]:FindFirstChild("Special Microchip") and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                        if PlaceId == 4442272183 and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                local state23 = {}
                                                                                                                fireclickdetector(Workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                state23[2] = 0
                                                                                                                repeat
                                                                                                                        state23[2] = state23[2] + 1
                                                                                                                        TempTable["wt"](1)
                                                                                                                until state23[2] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                        elseif PlaceId == 7449423635 then
                                                                                                                RemoteFunction(CFrame["new"](-5034, 315, -2951), 1.5)
                                                                                                                if ((CFrame["new"](-5034, 315, -2951))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                                                                                        if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                local cache23 = {}
                                                                                                                                fireclickdetector(Workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                cache23[2] = 0
                                                                                                                                repeat
                                                                                                                                        cache23[2] = cache23[2] + 1
                                                                                                                                        TempTable["wt"](1)
                                                                                                                                until cache23[2] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                        end
                                                                                                                end
                                                                                                        end
                                                                                                else
                                                                                                        if not MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
                                                                                                                if MarketplaceService["Data"]["Fragments"]["Value"] >= 5000 then
                                                                                                                        if MarketplaceService["Data"]["Beli"]["Value"] >= 3000000 then
                                                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw")
                                                                                                                                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 1 or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 2 then
                                                                                                                                        Electric_Claw_C = true
                                                                                                                                end
                                                                                                                                return
                                                                                                                        end
                                                                                                                        return
                                                                                                                end
                                                                                                                table["sort"](TempTable["GetFruits"](), function(arg1, arg2)
                                                                                                                        local store23 = {}
                                                                                                                        store23[2], store23[3] = arg1, arg2
                                                                                                                        if store23[2]["Value"] < 100000 and store23[2]["Value"] < 100000 then
                                                                                                                                return store23[2]["Value"] < store23[3]["Value"]
                                                                                                                        end
                                                                                                                end)
                                                                                                                TempTable["wt"](1)
                                                                                                                if #TempTable["GetFruits"]() > 0 and not Electric_Claw_C then
                                                                                                                        warn()
                                                                                                                        TempTable["wt"](2)
                                                                                                                        if not MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
                                                                                                                                if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 and MarketplaceService["Data"]["Fragments"]["Value"] < 5000 then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadFruit", (TempTable["GetFruits"]())[1]["Name"])
                                                                                                                                elseif Fragments["Value"] < 5000 then
                                                                                                                                        break
                                                                                                                                end
                                                                                                                                if MarketplaceService["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
                                                                                                                                        Select_Map = "Dark"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
                                                                                                                                        Select_Map = "Sand"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
                                                                                                                                        Select_Map = "Magma"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
                                                                                                                                        Select_Map = "Rumble"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
                                                                                                                                        Select_Map = "Flame"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
                                                                                                                                        Select_Map = "Ice"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Light-Light" then
                                                                                                                                        Select_Map = "Light"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "String-String" then
                                                                                                                                        Select_Map = "String"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
                                                                                                                                        Select_Map = "Quake"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
                                                                                                                                        Select_Map = "Buddha"
                                                                                                                                else
                                                                                                                                        Select_Map = "Ice"
                                                                                                                                end
                                                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
                                                                                                                                if PlaceId == 4442272183 and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                        local tmp24 = {}
                                                                                                                                        fireclickdetector(Workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                        tmp24[2] = 0
                                                                                                                                        repeat
                                                                                                                                                tmp24[2] = tmp24[2] + 1
                                                                                                                                                TempTable["wt"](1)
                                                                                                                                        until tmp24[2] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                                elseif PlaceId == 7449423635 then
                                                                                                                                        RemoteFunction(CFrame["new"](-5034, 315, -2951), 1.5)
                                                                                                                                        if ((CFrame["new"](-5034, 315, -2951))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                                                                                                                if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                                        local data24 = {}
                                                                                                                                                        fireclickdetector(Workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                                        data24[2] = 0
                                                                                                                                                        repeat
                                                                                                                                                                data24[2] = data24[2] + 1
                                                                                                                                                                TempTable["wt"](1)
                                                                                                                                                        until data24[2] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                                                end
                                                                                                                                        end
                                                                                                                                end
                                                                                                                        end
                                                                                                                else
                                                                                                                        Quest = nil
                                                                                                                        TempTable["Status"](tableConcat({
                                                                                                                                " Status : Auto Farm ",
                                                                                                                                "Level"
                                                                                                                        }))
                                                                                                                        TestService()
                                                                                                                end
                                                                                                        end
                                                                                                end
                                                                                        end
                                                                                end
                                                                        end
                                                                until Electric_Claw_C
                                                        end
                                                        return
                                                end
                                                if Electric_Claw_C_M and (not Dragon_Talon_C and Level["Value"] >= 1100) then
                                                        if not Dragon_Talon_C then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        StatsGui()
                                                                        if TempTable["ffc"](MarketplaceService["Backpack"], "Dragon Talon") or TempTable["ffc"](MarketplaceService["Character"], "Dragon Talon") then
                                                                                Dragon_Talon_C = true
                                                                                return
                                                                        end
                                                                        if not Dragon_Talon_C and Level["Value"] >= 1100 then
                                                                                if Fragments["Value"] >= 5000 then
                                                                                        if Beli["Value"] >= 3000000 then
                                                                                                Quest = nil
                                                                                                TempTable["Status"](tableConcat({
                                                                                                        " Status : Auto Farm ",
                                                                                                        "Bone"
                                                                                                }))
                                                                                                TempTable["FarmBone"](true)
                                                                                        else
                                                                                                StatsGui()
                                                                                                Quest = nil
                                                                                                TempTable["Status"](tableConcat({
                                                                                                        " Status : Auto Farm ",
                                                                                                        "Level"
                                                                                                }))
                                                                                                TestService()
                                                                                        end
                                                                                elseif Fragments["Value"] < 5000 then
                                                                                        if MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] and (Fragments["Value"] < 5000 and not Dragon_Talon_C) then
                                                                                                TempTable["Status"](" Status : Farm Raid")
                                                                                                if #TempTable["GetMobRaid"]() == 0 then
                                                                                                        if Select_Map == "Magma" or Select_Map == "Flame" then
                                                                                                                for idx, val in pairs(Workspace:GetDescendants()) do
                                                                                                                        local info24 = {}
                                                                                                                        info24[1], info24[3] = idx, val
                                                                                                                        if info24[3]["Name"] == "Lava" then
                                                                                                                                info24[3]:Destroy()
                                                                                                                        end
                                                                                                                end
                                                                                                        end
                                                                                                        if TempTable["GetRaid"]("Island 5", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 5", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 4", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 4", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 3", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 3", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 2", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 2", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 1", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 1", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        end
                                                                                                else
                                                                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                                                                local vars24 = {}
                                                                                                                vars24[2], vars24[3] = idx, val
                                                                                                                if vars24[3]:FindFirstChild("HumanoidRootPart") and (vars24[3]:FindFirstChild("Humanoid") and ((vars24[3]:FindFirstChild("Humanoid"))["Health"] > 0 and (MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"]["Position"] - vars24[3]["HumanoidRootPart"]["CFrame"]["Position"])["Magnitude"] <= 5000)) then
                                                                                                                        repeat
                                                                                                                                local temp24 = {}
                                                                                                                                TempTable["wt"](.1)
                                                                                                                                if Select_Map == "Magma" or Select_Map == "Flame" then
                                                                                                                                        for idx, val in pairs(Workspace:GetDescendants()) do
                                                                                                                                                local state24 = {}
                                                                                                                                                state24[3], state24[1] = idx, val
                                                                                                                                                if state24[1]["Name"] == "Lava" then
                                                                                                                                                        state24[1]:Destroy()
                                                                                                                                                end
                                                                                                                                        end
                                                                                                                                end
                                                                                                                                temp24[1] = math["random"](1, 5)
                                                                                                                                if temp24[1] == 1 then
                                                                                                                                        temp24[2] = CFrame["new"](0, 30, 1)
                                                                                                                                elseif temp24[1] == 2 then
                                                                                                                                        temp24[2] = CFrame["new"](0, 30, 15)
                                                                                                                                elseif temp24[1] == 3 then
                                                                                                                                        temp24[2] = CFrame["new"](1, 30, -15)
                                                                                                                                elseif temp24[1] == 4 then
                                                                                                                                        temp24[2] = CFrame["new"](15, 30, 0)
                                                                                                                                elseif temp24[1] == 5 then
                                                                                                                                        temp24[2] = CFrame["new"](-15, 30, 0)
                                                                                                                                end
                                                                                                                                RemoteFunction(vars24[3]["HumanoidRootPart"]["CFrame"] * temp24[2], 1.5)
                                                                                                                                if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                                                                end
                                                                                                                                StatsGui()
                                                                                                                        until not vars24[3]["Parent"] or vars24[3]["Humanoid"]["Health"] <= 0 or #TempTable["GetMobRaid"]() == 0
                                                                                                                end
                                                                                                        end
                                                                                                end
                                                                                        else
                                                                                                if MarketplaceService["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
                                                                                                        Select_Map = "Dark"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
                                                                                                        Select_Map = "Sand"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
                                                                                                        Select_Map = "Magma"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
                                                                                                        Select_Map = "Rumble"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
                                                                                                        Select_Map = "Flame"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
                                                                                                        Select_Map = "Ice"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Light-Light" then
                                                                                                        Select_Map = "Light"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "String-String" then
                                                                                                        Select_Map = "String"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
                                                                                                        Select_Map = "Quake"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
                                                                                                        Select_Map = "Buddha"
                                                                                                else
                                                                                                        Select_Map = "Ice"
                                                                                                end
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
                                                                                                TempTable["wt"](.2)
                                                                                                if MarketplaceService["Backpack"]:FindFirstChild("Special Microchip") or MarketplaceService["Character"]:FindFirstChild("Special Microchip") and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                        if PlaceId == 4442272183 and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                local cache24 = {}
                                                                                                                fireclickdetector(Workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                cache24[1] = 0
                                                                                                                repeat
                                                                                                                        cache24[1] = cache24[1] + 1
                                                                                                                        TempTable["wt"](1)
                                                                                                                until cache24[1] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                        elseif PlaceId == 7449423635 then
                                                                                                                RemoteFunction(CFrame["new"](-5034, 315, -2951), 1.5)
                                                                                                                if ((CFrame["new"](-5034, 315, -2951))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                                                                                        if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                local store24 = {}
                                                                                                                                fireclickdetector(Workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                store24[2] = 0
                                                                                                                                repeat
                                                                                                                                        store24[2] = store24[2] + 1
                                                                                                                                        TempTable["wt"](1)
                                                                                                                                until store24[2] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                        end
                                                                                                                end
                                                                                                        end
                                                                                                else
                                                                                                        if not MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
                                                                                                                if MarketplaceService["Data"]["Fragments"]["Value"] >= 5000 then
                                                                                                                        if MarketplaceService["Data"]["Beli"]["Value"] >= 3000000 then
                                                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
                                                                                                                                Dragon_Talon_C = true
                                                                                                                                return
                                                                                                                        end
                                                                                                                        return
                                                                                                                end
                                                                                                                table["sort"](TempTable["GetFruits"](), function(arg1, arg2)
                                                                                                                        local tmp25 = {}
                                                                                                                        tmp25[1], tmp25[2] = arg1, arg2
                                                                                                                        if tmp25[1]["Value"] < 100000 and tmp25[1]["Value"] < 100000 then
                                                                                                                                return tmp25[1]["Value"] < tmp25[2]["Value"]
                                                                                                                        end
                                                                                                                end)
                                                                                                                TempTable["wt"](1)
                                                                                                                if #TempTable["GetFruits"]() > 0 and not Dragon_Talon_C then
                                                                                                                        warn()
                                                                                                                        TempTable["wt"](2)
                                                                                                                        if not MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
                                                                                                                                if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 and MarketplaceService["Data"]["Fragments"]["Value"] < 5000 then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadFruit", (TempTable["GetFruits"]())[1]["Name"])
                                                                                                                                elseif Fragments["Value"] < 5000 then
                                                                                                                                        break
                                                                                                                                end
                                                                                                                                if MarketplaceService["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
                                                                                                                                        Select_Map = "Dark"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
                                                                                                                                        Select_Map = "Sand"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
                                                                                                                                        Select_Map = "Magma"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
                                                                                                                                        Select_Map = "Rumble"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
                                                                                                                                        Select_Map = "Flame"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
                                                                                                                                        Select_Map = "Ice"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Light-Light" then
                                                                                                                                        Select_Map = "Light"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "String-String" then
                                                                                                                                        Select_Map = "String"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
                                                                                                                                        Select_Map = "Quake"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
                                                                                                                                        Select_Map = "Buddha"
                                                                                                                                else
                                                                                                                                        Select_Map = "Ice"
                                                                                                                                end
                                                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
                                                                                                                                if PlaceId == 4442272183 and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                        local data25 = {}
                                                                                                                                        fireclickdetector(Workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                        data25[2] = 0
                                                                                                                                        repeat
                                                                                                                                                data25[2] = data25[2] + 1
                                                                                                                                                TempTable["wt"](1)
                                                                                                                                        until data25[2] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                                elseif PlaceId == 7449423635 then
                                                                                                                                        RemoteFunction(CFrame["new"](-5034, 315, -2951), 1.5)
                                                                                                                                        if ((CFrame["new"](-5034, 315, -2951))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                                                                                                                if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                                        local info25 = {}
                                                                                                                                                        fireclickdetector(Workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                                        info25[1] = 0
                                                                                                                                                        repeat
                                                                                                                                                                info25[1] = info25[1] + 1
                                                                                                                                                                TempTable["wt"](1)
                                                                                                                                                        until info25[1] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                                                end
                                                                                                                                        end
                                                                                                                                end
                                                                                                                        end
                                                                                                                else
                                                                                                                        Quest = nil
                                                                                                                        TempTable["Status"](tableConcat({
                                                                                                                                " Status : Auto Farm ",
                                                                                                                                "Level"
                                                                                                                        }))
                                                                                                                        TestService()
                                                                                                                end
                                                                                                        end
                                                                                                end
                                                                                        end
                                                                                end
                                                                        end
                                                                until Dragon_Talon_C
                                                        end
                                                        return
                                                end
                                                if Dragon_Talon_C_M and (not God_Human_C and Level["Value"] >= 1100) then
                                                        if not God_Human_C then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        StatsGui()
                                                                        if TempTable["ffc"](MarketplaceService["Backpack"], "Godhuman") or TempTable["ffc"](MarketplaceService["Character"], "Godhuman") then
                                                                                God_Human_C = true
                                                                                return
                                                                        end
                                                                        if not God_Human_C and Level["Value"] >= 1100 then
                                                                                if Fragments["Value"] >= 5000 then
                                                                                        if Beli["Value"] >= 5000000 then
                                                                                                Quest = "Godhuman"
                                                                                        else
                                                                                                StatsGui()
                                                                                                Quest = nil
                                                                                                TempTable["Status"](tableConcat({
                                                                                                        " Status : Auto Farm ",
                                                                                                        "Level"
                                                                                                }))
                                                                                                TestService()
                                                                                        end
                                                                                elseif Fragments["Value"] < 5000 then
                                                                                        if MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] and (Fragments["Value"] < 5000 and not God_Human_C) then
                                                                                                TempTable["Status"](" Status : Farm Raid")
                                                                                                if #TempTable["GetMobRaid"]() == 0 then
                                                                                                        if Select_Map == "Magma" or Select_Map == "Flame" then
                                                                                                                for idx, val in pairs(Workspace:GetDescendants()) do
                                                                                                                        local vars25 = {}
                                                                                                                        vars25[3], vars25[1] = idx, val
                                                                                                                        if vars25[1]["Name"] == "Lava" then
                                                                                                                                vars25[1]:Destroy()
                                                                                                                        end
                                                                                                                end
                                                                                                        end
                                                                                                        if TempTable["GetRaid"]("Island 5", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 5", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 4", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 4", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 3", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 3", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 2", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 2", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        elseif TempTable["GetRaid"]("Island 1", 2500) ~= nil then
                                                                                                                RemoteFunction((TempTable["GetRaid"]("Island 1", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
                                                                                                        end
                                                                                                else
                                                                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                                                                local temp25 = {}
                                                                                                                temp25[2], temp25[1] = idx, val
                                                                                                                if temp25[1]:FindFirstChild("HumanoidRootPart") and (temp25[1]:FindFirstChild("Humanoid") and ((temp25[1]:FindFirstChild("Humanoid"))["Health"] > 0 and (MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"]["Position"] - temp25[1]["HumanoidRootPart"]["CFrame"]["Position"])["Magnitude"] <= 5000)) then
                                                                                                                        repeat
                                                                                                                                local state25 = {}
                                                                                                                                TempTable["wt"](.1)
                                                                                                                                if Select_Map == "Magma" or Select_Map == "Flame" then
                                                                                                                                        for idx, val in pairs(Workspace:GetDescendants()) do
                                                                                                                                                local cache25 = {}
                                                                                                                                                cache25[2], cache25[1] = idx, val
                                                                                                                                                if cache25[1]["Name"] == "Lava" then
                                                                                                                                                        cache25[1]:Destroy()
                                                                                                                                                end
                                                                                                                                        end
                                                                                                                                end
                                                                                                                                state25[2] = math["random"](1, 5)
                                                                                                                                if state25[2] == 1 then
                                                                                                                                        state25[1] = CFrame["new"](0, 30, 1)
                                                                                                                                elseif state25[2] == 2 then
                                                                                                                                        state25[1] = CFrame["new"](0, 30, 15)
                                                                                                                                elseif state25[2] == 3 then
                                                                                                                                        state25[1] = CFrame["new"](1, 30, -15)
                                                                                                                                elseif state25[2] == 4 then
                                                                                                                                        state25[1] = CFrame["new"](15, 30, 0)
                                                                                                                                elseif state25[2] == 5 then
                                                                                                                                        state25[1] = CFrame["new"](-15, 30, 0)
                                                                                                                                end
                                                                                                                                RemoteFunction(temp25[1]["HumanoidRootPart"]["CFrame"] * state25[1], 1.5)
                                                                                                                                if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                                                                end
                                                                                                                                StatsGui()
                                                                                                                        until not temp25[1]["Parent"] or temp25[1]["Humanoid"]["Health"] <= 0 or #TempTable["GetMobRaid"]() == 0
                                                                                                                end
                                                                                                        end
                                                                                                end
                                                                                        else
                                                                                                if MarketplaceService["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
                                                                                                        Select_Map = "Dark"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
                                                                                                        Select_Map = "Sand"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
                                                                                                        Select_Map = "Magma"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
                                                                                                        Select_Map = "Rumble"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
                                                                                                        Select_Map = "Flame"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
                                                                                                        Select_Map = "Ice"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Light-Light" then
                                                                                                        Select_Map = "Light"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "String-String" then
                                                                                                        Select_Map = "String"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
                                                                                                        Select_Map = "Quake"
                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
                                                                                                        Select_Map = "Buddha"
                                                                                                else
                                                                                                        Select_Map = "Ice"
                                                                                                end
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
                                                                                                TempTable["wt"](.2)
                                                                                                if MarketplaceService["Backpack"]:FindFirstChild("Special Microchip") or MarketplaceService["Character"]:FindFirstChild("Special Microchip") and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                        if PlaceId == 4442272183 and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                local store25 = {}
                                                                                                                fireclickdetector(Workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                store25[2] = 0
                                                                                                                repeat
                                                                                                                        store25[2] = store25[2] + 1
                                                                                                                        TempTable["wt"](1)
                                                                                                                until store25[2] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                        elseif PlaceId == 7449423635 then
                                                                                                                RemoteFunction(CFrame["new"](-5034, 315, -2951), 1.5)
                                                                                                                if ((CFrame["new"](-5034, 315, -2951))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                                                                                        if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                local tmp26 = {}
                                                                                                                                fireclickdetector(Workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                tmp26[1] = 0
                                                                                                                                repeat
                                                                                                                                        tmp26[1] = tmp26[1] + 1
                                                                                                                                        TempTable["wt"](1)
                                                                                                                                until tmp26[1] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                        end
                                                                                                                end
                                                                                                        end
                                                                                                else
                                                                                                        if not MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
                                                                                                                if MarketplaceService["Data"]["Fragments"]["Value"] >= 5000 then
                                                                                                                        if MarketplaceService["Data"]["Beli"]["Value"] >= 3000000 then
                                                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyGodHuman")
                                                                                                                                God_Human_C = true
                                                                                                                                return
                                                                                                                        end
                                                                                                                        return
                                                                                                                end
                                                                                                                table["sort"](TempTable["GetFruits"](), function(arg1, arg2)
                                                                                                                        local data26 = {}
                                                                                                                        data26[2], data26[1] = arg1, arg2
                                                                                                                        if data26[2]["Value"] < 100000 and data26[2]["Value"] < 100000 then
                                                                                                                                return data26[2]["Value"] < data26[1]["Value"]
                                                                                                                        end
                                                                                                                end)
                                                                                                                TempTable["wt"](1)
                                                                                                                if #TempTable["GetFruits"]() > 0 and not God_Human_C then
                                                                                                                        warn()
                                                                                                                        TempTable["wt"](2)
                                                                                                                        if not MarketplaceService["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
                                                                                                                                if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 and MarketplaceService["Data"]["Fragments"]["Value"] < 5000 then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("LoadFruit", (TempTable["GetFruits"]())[1]["Name"])
                                                                                                                                elseif Fragments["Value"] < 5000 then
                                                                                                                                        break
                                                                                                                                end
                                                                                                                                if MarketplaceService["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
                                                                                                                                        Select_Map = "Dark"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
                                                                                                                                        Select_Map = "Sand"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
                                                                                                                                        Select_Map = "Magma"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
                                                                                                                                        Select_Map = "Rumble"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
                                                                                                                                        Select_Map = "Flame"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
                                                                                                                                        Select_Map = "Ice"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Light-Light" then
                                                                                                                                        Select_Map = "Light"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "String-String" then
                                                                                                                                        Select_Map = "String"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
                                                                                                                                        Select_Map = "Quake"
                                                                                                                                elseif MarketplaceService["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
                                                                                                                                        Select_Map = "Buddha"
                                                                                                                                else
                                                                                                                                        Select_Map = "Ice"
                                                                                                                                end
                                                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
                                                                                                                                if PlaceId == 4442272183 and MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                        local info26 = {}
                                                                                                                                        fireclickdetector(Workspace["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                        info26[2] = 0
                                                                                                                                        repeat
                                                                                                                                                info26[2] = info26[2] + 1
                                                                                                                                                TempTable["wt"](1)
                                                                                                                                        until info26[2] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                                elseif PlaceId == 7449423635 then
                                                                                                                                        RemoteFunction(CFrame["new"](-5034, 315, -2951), 1.5)
                                                                                                                                        if ((CFrame["new"](-5034, 315, -2951))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                                                                                                                if MarketplaceService["Character"]["Humanoid"]["Health"] > 0 then
                                                                                                                                                        local vars26 = {}
                                                                                                                                                        fireclickdetector(Workspace["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
                                                                                                                                                        vars26[1] = 0
                                                                                                                                                        repeat
                                                                                                                                                                vars26[1] = vars26[1] + 1
                                                                                                                                                                TempTable["wt"](1)
                                                                                                                                                        until vars26[1] >= 20 or MarketplaceService["PlayerGui"]["Main"]["Timer"]["Visible"]
                                                                                                                                                end
                                                                                                                                        end
                                                                                                                                end
                                                                                                                        end
                                                                                                                else
                                                                                                                        Quest = nil
                                                                                                                        TempTable["Status"](tableConcat({
                                                                                                                                " Status : Auto Farm ";
                                                                                                                                "Level"
                                                                                                                        }))
                                                                                                                        TestService()
                                                                                                                end
                                                                                                        end
                                                                                                end
                                                                                        end
                                                                                end
                                                                        end
                                                                until God_Human_C
                                                        end
                                                        return
                                                end
                                                if Level["Value"] >= 700 and (not New_World and not Three_World) then
                                                        Quest = "World 2"
                                                        return
                                                end
                                                if New_World and (CheckFindWaterKey and (Level["Value"] >= 1500 and (ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1") == 0 and (not TempTable["IsHall"]() and TempTable["IsHeavenly"]())))) then
                                                        Quest = "TravelZou"
                                                        return
                                                end
                                                Quest = nil
                                                TempTable["Status"](tableConcat({
                                                        " Status : Auto Farm ",
                                                        "Level"
                                                }))
                                                TestService()
                                        end
                                end
                        end
                end, warn)
        end
end)
task["spawn"](function()
        while TempTable["wt"]() do
                xpcall(function()
                        if Quest ~= nil then
                                TempTable["Status"](" Status : " .. Quest)
                        end
                        if Quest == "Saber" then
                                local temp26 = {}
                                if not old_World then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelMain")
                                end
                                temp26[2] = ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress")
                                if temp26[2]["UsedTorch"] == false then
                                        for idx, val in pairs((game:GetService("Workspace"))["Map"]["Jungle"]["QuestPlates"]:GetChildren()) do
                                                local state26 = {}
                                                state26[3], state26[2] = idx, val
                                                if table["find"]({
                                                        "Plate1",
                                                        "Plate2",
                                                        "Plate3",
                                                        "Plate4";
                                                        "Plate5"
                                                }, state26[2]["Name"]) then
                                                        state26[2]["Button"]["CFrame"] = MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"]
                                                end
                                        end
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "GetTorch")
                                        TempTable["Equip"]("Torch")
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "DestroyTorch")
                                elseif temp26[2]["UsedCup"] == false then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "GetCup")
                                        TempTable["Equip"]("Cup")
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "FillCup", (game:GetService("Players"))["LocalPlayer"]["Character"]["Cup"])
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "SickMan")
                                elseif temp26[2]["KilledMob"] == false then
                                        local cache26 = {}
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "RichSon")
                                        cache26[2] = TempTable["ffc"](Enemies, "Mob Leader")
                                        if cache26[2] then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local store26 = {}
                                                        store26[2], store26[3] = idx, val
                                                        if store26[3]["Name"] == "Mob Leader" then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(store26[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 20, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not store26[3]["Parent"] or store26[3]["Humanoid"]["Health"] <= 0 or TempTable["gi"]("Saber")
                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "RichSon")
                                                        end
                                                end
                                        else
                                                RemoteFunction(CFrame["new"](-2848.59399, 7.4272871, 5342.44043), 1.5)
                                        end
                                elseif temp26[2]["UsedRelic"] == false then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "RichSon")
                                        TempTable["Equip"]("Relic")
                                        RemoteFunction(CFrame["new"](-1406.60925, 29.8520069, 4.5805192), 1.5)
                                else
                                        if TempTable["ffc"](Enemies, "Saber Expert") then
                                                for idx, val in pairs((game:GetService("Workspace"))["Enemies"]:GetChildren()) do
                                                        local tmp27 = {}
                                                        tmp27[1], tmp27[3] = idx, val
                                                        if tmp27[3]["Name"] == "Saber Expert" then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(tmp27[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 25, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not tmp27[3]["Parent"] or tmp27[3]["Humanoid"]["Health"] <= 0 or TempTable["gi"]("Saber")
                                                        end
                                                end
                                        else
                                                RemoteFunction(CFrame["new"](-1458.89502, 29.8870335, -50.633564, .858821094, 1.13848939e-08, .512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, .858821094), 1.5)
                                                if ((CFrame["new"](-1458.89502, 29.8870335, -50.633564, .858821094, 1.13848939e-08, .512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, .858821094))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                        TempTable["wt"](.5)
                                                        if not TempTable["ffc"](Enemies, "Saber Expert") then
                                                                MarketplaceService:Kick("Hop")
                                                                TempTable["wt"](.1)
                                                                TeleportService:Teleport(PlaceId, MarketplaceService)
                                                        end
                                                end
                                        end
                                end
                        elseif Quest == "World 2" then
                                local data27 = {}
                                data27[1] = ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer(tableConcat({
                                        "DressrosaQuestProgre";
                                        "ss"
                                }))
                                if data27[1]["UsedKey"] == false then
                                        RemoteFunction(CFrame["new"](1347.32947, 37.349369, -1325.44922, .538348913, 8.57539106e-08, .842722058, 8.61935634e-10, 1, -1.0230886e-07, -0.842722058, 5.58042359e-08, .538348913), 1.5)
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer(tableConcat({
                                                "DressrosaQuestProgre",
                                                "ss"
                                        }), "Detective")
                                        TempTable["Equip"]("Key")
                                elseif data27[1]["KilledIceBoss"] == false then
                                        if TempTable["ffc"](Enemies, "Ice Admiral") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local info27 = {}
                                                        info27[1], info27[2] = idx, val
                                                        if info27[2]["Name"] == "Ice Admiral" and info27[2]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"](.1)
                                                                        RemoteFunction(info27[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 20, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not info27[2]["Parent"] or info27[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or data27[1]["KilledIceBoss"]
                                                                TempTable["wt"](2)
                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
                                                                TleP = true
                                                                TempTable["wt"](25)
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Ice Admiral") then
                                                RemoteFunction(CFrame["new"](1144.5270996094, 7.3292083740234, -1164.7322998047), 1.5)
                                        end
                                elseif data27[1]["KilledIceBoss"] == true then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
                                        TleP = true
                                        TempTable["wt"](25)
                                end
                        elseif Quest == "Pole (1st Form)" then
                                if not TempTable["CheckBoss"]("Thunder God") then
                                        return
                                end
                                repeat
                                        TempTable["wt"]()
                                        if TempTable["ffc"](Enemies, "Thunder God") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local vars27 = {}
                                                        vars27[3], vars27[1] = idx, val
                                                        if vars27[1]["Name"] == "Thunder God" and vars27[1]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(vars27[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not vars27[1]["Parent"] or vars27[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Thunder God")
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Thunder God") then
                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                        local temp27 = {}
                                                        temp27[2], temp27[3] = idx, val
                                                        if temp27[3]["Name"] == "Thunder God" and temp27[3]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(temp27[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not temp27[3]["Parent"] or temp27[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Thunder God")
                                                        end
                                                end
                                        end
                                until not TempTable["CheckBoss"]("Thunder God")
                        elseif Quest == "Shark Saw" then
                                if not TempTable["CheckBoss"]("The Saw") then
                                        return
                                end
                                repeat
                                        TempTable["wt"]()
                                        if TempTable["ffc"](Enemies, "The Saw") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local state27 = {}
                                                        state27[1], state27[3] = idx, val
                                                        if state27[3]["Name"] == "The Saw" and state27[3]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(state27[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not state27[3]["Parent"] or state27[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("The Saw")
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "The Saw") then
                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                        local cache27 = {}
                                                        cache27[1], cache27[3] = idx, val
                                                        if cache27[3]["Name"] == "The Saw" and cache27[3]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(cache27[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not cache27[3]["Parent"] or cache27[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("The Saw")
                                                        end
                                                end
                                        end
                                until not TempTable["CheckBoss"]("The Saw")
                        elseif Quest == "Flail" then
                                if not TempTable["CheckBoss"]("Smoke Admiral") then
                                        return
                                end
                                repeat
                                        TempTable["wt"]()
                                        if TempTable["ffc"](Enemies, "Smoke Admiral") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local store27 = {}
                                                        store27[2], store27[1] = idx, val
                                                        if store27[1]["Name"] == "Smoke Admiral" and store27[1]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(store27[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not store27[1]["Parent"] or store27[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Smoke Admiral")
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Smoke Admiral") then
                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                        local tmp28 = {}
                                                        tmp28[1], tmp28[2] = idx, val
                                                        if tmp28[2]["Name"] == "Smoke Admiral" and tmp28[2]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(tmp28[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not tmp28[2]["Parent"] or tmp28[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Smoke Admiral")
                                                        end
                                                end
                                        end
                                until not TempTable["CheckBoss"]("Smoke Admiral")
                        elseif Quest == "Wardens Sword" then
                                if not TempTable["CheckBoss"]("Chief Warden") then
                                        return
                                end
                                repeat
                                        TempTable["wt"]()
                                        if TempTable["ffc"](Enemies, "Chief Warden") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local data28 = {}
                                                        data28[2], data28[1] = idx, val
                                                        if data28[1]["Name"] == "Chief Warden" and data28[1]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(data28[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not data28[1]["Parent"] or data28[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Chief Warden")
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Chief Warden") then
                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                        local info28 = {}
                                                        info28[1], info28[2] = idx, val
                                                        if info28[2]["Name"] == "Chief Warden" and info28[2]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(info28[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not info28[2]["Parent"] or info28[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Chief Warden")
                                                        end
                                                end
                                        end
                                until not TempTable["CheckBoss"]("The Saw")
                        elseif Quest == "Magma Blaster" then
                                if not TempTable["CheckBoss"]("Magma Admiral") then
                                        return
                                end
                                repeat
                                        TempTable["wt"]()
                                        if TempTable["ffc"](Enemies, "Magma Admiral") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local vars28 = {}
                                                        vars28[1], vars28[2] = idx, val
                                                        if vars28[2]["Name"] == "Magma Admiral" and vars28[2]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(vars28[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not vars28[2]["Parent"] or vars28[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Magma Admiral")
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Magma Admiral") then
                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                        local temp28 = {}
                                                        temp28[2], temp28[3] = idx, val
                                                        if temp28[3]["Name"] == "Magma Admiral" and temp28[3]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(temp28[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not temp28[3]["Parent"] or temp28[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Magma Admiral")
                                                        end
                                                end
                                        end
                                until not TempTable["CheckBoss"]("Magma Admiral")
                        elseif Quest == "Bazooka" then
                                if not TempTable["CheckBoss"]("Wysper") then
                                        return
                                end
                                repeat
                                        TempTable["wt"]()
                                        if TempTable["ffc"](Enemies, "Wysper") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local state28 = {}
                                                        state28[3], state28[2] = idx, val
                                                        if state28[2]["Name"] == "Wysper" and state28[2]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(state28[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not state28[2]["Parent"] or state28[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Wysper")
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Wysper") then
                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                        local cache28 = {}
                                                        cache28[3], cache28[1] = idx, val
                                                        if cache28[1]["Name"] == "Wysper" and cache28[1]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(cache28[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not cache28[1]["Parent"] or cache28[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Wysper")
                                                        end
                                                end
                                        end
                                until not TempTable["CheckBoss"]("Wysper")
                        elseif Quest == "Twin Hooks" then
                                if not TempTable["CheckBoss"]("Captain Elephant") then
                                        return
                                end
                                repeat
                                        TempTable["wt"]()
                                        if TempTable["ffc"](Enemies, "Captain Elephant") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local store28 = {}
                                                        store28[2], store28[3] = idx, val
                                                        if store28[3]["Name"] == "Captain Elephant" and store28[3]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(store28[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not store28[3]["Parent"] or store28[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Captain Elephant")
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Captain Elephant") then
                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                        local tmp29 = {}
                                                        tmp29[1], tmp29[2] = idx, val
                                                        if tmp29[2]["Name"] == "Captain Elephant" and tmp29[2]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
                                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
                                                                        end
                                                                        RemoteFunction(tmp29[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not tmp29[2]["Parent"] or tmp29[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Captain Elephant")
                                                        end
                                                end
                                        end
                                until not TempTable["CheckBoss"]("Wysper")
                        elseif Quest == "Gravity Blade" then
                                if not TempTable["CheckBoss"]("Orbitus") then
                                        return
                                end
                                repeat
                                        TempTable["wt"]()
                                        if TempTable["ffc"](Enemies, "Orbitus") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local data29 = {}
                                                        data29[2], data29[1] = idx, val
                                                        if data29[1]["Name"] == "Orbitus" and data29[1]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(data29[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not data29[1]["Parent"] or data29[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Orbitus")
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Orbitus") then
                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                        local info29 = {}
                                                        info29[3], info29[2] = idx, val
                                                        if info29[2]["Name"] == "Orbitus" and info29[2]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(info29[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not info29[2]["Parent"] or info29[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Orbitus")
                                                        end
                                                end
                                        end
                                until not TempTable["CheckBoss"]("Orbitus")
                        elseif Quest == "Longsword" then
                                if not TempTable["CheckBoss"]("Diamond") then
                                        return
                                end
                                repeat
                                        TempTable["wt"]()
                                        if TempTable["ffc"](Enemies, "Diamond") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local vars29 = {}
                                                        vars29[3], vars29[2] = idx, val
                                                        if vars29[2]["Name"] == "Diamond" and vars29[2]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(vars29[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not vars29[2]["Parent"] or vars29[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Diamond")
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Diamond") then
                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                        local temp29 = {}
                                                        temp29[2], temp29[3] = idx, val
                                                        if temp29[3]["Name"] == "Diamond" and temp29[3]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(temp29[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not temp29[3]["Parent"] or temp29[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Diamond")
                                                        end
                                                end
                                        end
                                until not TempTable["CheckBoss"]("Diamond")
                        elseif Quest == "Rengoku" then
                                if not TempTable["CheckBoss"]("Awakened Ice Admiral") then
                                        return
                                end
                                repeat
                                        TempTable["wt"]()
                                        if TempTable["ffc"](Enemies, "Awakened Ice Admiral") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local state29 = {}
                                                        state29[3], state29[2] = idx, val
                                                        if state29[2]["Name"] == "Awakened Ice Admiral" and state29[2]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(state29[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not state29[2]["Parent"] or state29[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Awakened Ice Admiral")
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Awakened Ice Admiral") then
                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                        local cache29 = {}
                                                        cache29[3], cache29[2] = idx, val
                                                        if cache29[2]["Name"] == "Awakened Ice Admiral" and cache29[2]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(cache29[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not cache29[2]["Parent"] or cache29[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Awakened Ice Admiral")
                                                        end
                                                end
                                        end
                                until not TempTable["CheckBoss"]("Awakened Ice Admiral")
                        elseif Quest == "BartiloQuest" then
                                if New_World then
                                        local store29 = {}
                                        store29[1] = ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress")
                                        if store29[1]["KilledBandits"] == false then
                                                if MarketplaceService["PlayerGui"]["Main"]["Quest"]["Visible"] and (TempTable["sf"](MarketplaceService["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "Swan Pirates") and TempTable["sf"](MarketplaceService["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "50")) then
                                                        if TempTable["ffc"](Enemies, "Swan Pirate") then
                                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                                        local tmp30 = {}
                                                                        tmp30[1], tmp30[2] = idx, val
                                                                        if tmp30[2]["Name"] == "Swan Pirate" and tmp30[2]["Humanoid"]["Health"] > 0 then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("SetSpawnPoint")
                                                                                repeat
                                                                                        TempTable["wt"]()
                                                                                        TempTable["BN"](tmp30[2]["Name"])
                                                                                        RemoteFunction(tmp30[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                        end
                                                                                        StatsGui()
                                                                                until (tmp30[2]["HumanoidRootPart"]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 50 or tmp30[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                                                        end
                                                                end
                                                        else
                                                                RemoteFunction(CFrame["new"](976.467651, 111.174057, 1229.1084), 1.5)
                                                        end
                                                else
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("StartQuest", "BartiloQuest", 1)
                                                end
                                        elseif store29[1]["KilledSpring"] == false then
                                                if TempTable["ffc"](Enemies, "Jeremy") then
                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                local data30 = {}
                                                                data30[3], data30[1] = idx, val
                                                                if data30[1]["Name"] == "Jeremy" then
                                                                        repeat
                                                                                TempTable["wt"]()
                                                                                RemoteFunction(data30[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                if not game["Players"]["LocalPlayer"]["Character"]:FindFirstChild("HasBuso") then
                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                end
                                                                                StatsGui()
                                                                        until not data30[1]["Parent"] or data30[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                                                end
                                                        end
                                                elseif TempTable["ffc"](ReplicatedStorage, "Jeremy") then
                                                        RemoteFunction((ReplicatedStorage:FindFirstChild("Jeremy"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                elseif not TempTable["ffc"](Enemies, "Jeremy") and not TempTable["ffc"](ReplicatedStorage, "Jeremy") then
                                                        TestService()
                                                end
                                        elseif store29[1]["DidPlates"] == false then
                                                repeat
                                                        TempTable["wt"](.3)
                                                        RemoteFunction(CFrame["new"](-1836, 11, 1714), 1.5)
                                                until (Vector3["new"](-1836, 11, 1714) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] < 10
                                                TempTable["wt"](1)
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress", "DidPlates")
                                        end
                                else
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
                                end
                        elseif Quest == "Find Water Key" then
                                if New_World then
                                        if MarketplaceService["Backpack"]:FindFirstChild("Water Key") or TempTable["ffc"](MarketplaceService["Character"], "Water Key") then
                                                TempTable["Status"](tableConcat({
                                                        " Status : Use Water ";
                                                        "Key"
                                                }))
                                                TempTable["Equip"]("Water Key")
                                                TempTable["wait"](0)
                                                PathfindingService["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate", true)
                                                CheckFindWaterKey = true
                                        elseif not TempTable["ffc"](MarketplaceService["Backpack"], "Water Key") and not TempTable["ffc"](MarketplaceService["Character"], "Water Key") then
                                                if TempTable["ffc"](Enemies, "Tide Keeper") then
                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                local info30 = {}
                                                                info30[1], info30[2] = idx, val
                                                                if info30[2]["Name"] == "Tide Keeper" and (info30[2]:FindFirstChild("Humanoid") and (info30[2]:FindFirstChild("Humanoid"))["Health"] > 0) then
                                                                        repeat
                                                                                task["wait"]()
                                                                                RemoteFunction(info30[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                end
                                                                                StatsGui()
                                                                        until not info30[2]["Parent"] or info30[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                                                end
                                                        end
                                                elseif TempTable["ffc"](ReplicatedStorage, "Tide Keeper") then
                                                        for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                                local vars30 = {}
                                                                vars30[1], vars30[2] = idx, val
                                                                if vars30[2]["Name"] == "Tide Keeper" and (vars30[2]:FindFirstChild("Humanoid") and (vars30[2]:FindFirstChild("Humanoid"))["Health"] > 0) then
                                                                        repeat
                                                                                TempTable["wt"]()
                                                                                RemoteFunction(vars30[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                end
                                                                                StatsGui()
                                                                        until not vars30[2]["Parent"] or vars30[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                                                end
                                                        end
                                                else
                                                        MarketplaceService:Kick("Hop")
                                                        TempTable["wt"](.1)
                                                        TeleportService:Teleport(PlaceId, MarketplaceService)
                                                end
                                        end
                                else
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
                                end
                        elseif Quest == "Evo Race V1" then
                                if New_World then
                                        if Start_Quest_Evo_V1 then
                                                if not TempTable["ffc"](MarketplaceService["Backpack"], "Flower 3") and not TempTable["ffc"](MarketplaceService["Character"], "Flower 3") then
                                                        if (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](976.467651, 111.174057, 1229.1084))["Magnitude"] <= 800 then
                                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                                        local temp30 = {}
                                                                        temp30[2], temp30[1] = idx, val
                                                                        if temp30[1]["Humanoid"]["Health"] > 0 and (temp30[1]["HumanoidRootPart"]["Position"] - Vector3["new"](976.467651, 111.174057, 1229.1084))["Magnitude"] <= 800 then
                                                                                repeat
                                                                                        TempTable["wt"]()
                                                                                        RemoteFunction(temp30[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                        end
                                                                                        StatsGui()
                                                                                until not temp30[1]["Parent"] or temp30[1]["Humanoid"]["Health"] <= 0 or TempTable["ffc"](MarketplaceService["Backpack"], "Flower 3") or TempTable["ffc"](MarketplaceService["Character"], "Flower 3") or not(getgenv())["AutoFarm"]
                                                                        end
                                                                end
                                                        else
                                                                RemoteFunction(CFrame["new"](976.467651, 111.174057, 1229.1084), 1.5)
                                                        end
                                                elseif not TempTable["ffc"](MarketplaceService["Backpack"], "Flower 2") and not TempTable["ffc"](MarketplaceService["Character"], "Flower 2") then
                                                        if TempTable["ffc"](Workspace, "Flower2") then
                                                                RemoteFunction(Workspace["Flower2"]["CFrame"], 1.5)
                                                                if (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Workspace["Flower2"]["Position"])["Magnitude"] <= 5 then
                                                                        VirtualInputManager:SendKeyEvent(true, "Space", false, game)
                                                                        TempTable["wt"](.5)
                                                                        VirtualInputManager:SendKeyEvent(false, "Space", false, game)
                                                                end
                                                        end
                                                elseif not TempTable["ffc"](MarketplaceService["Backpack"], "Flower 1") and not TempTable["ffc"](MarketplaceService["Character"], "Flower 1") then
                                                        RemoteFunction(Workspace["Flower1"]["CFrame"], 1.5)
                                                        if (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Workspace["Flower1"]["Position"])["Magnitude"] <= 5 and Workspace["Flower1"]["Transparency"] == 0 then
                                                                VirtualInputManager:SendKeyEvent(true, "Space", false, game)
                                                                TempTable["wt"](.5)
                                                                VirtualInputManager:SendKeyEvent(false, "Space", false, game)
                                                        end
                                                        TempTable["wt"](1)
                                                else
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist", "3")
                                                end
                                        else
                                                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 1 or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 2 then
                                                        Start_Quest_Evo_V1 = true
                                                end
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Alchemist", "2")
                                        end
                                else
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
                                end
                        elseif Quest == "Evo Race V2" then
                                if New_World then
                                        if MarketplaceService["Data"]["Race"]["Value"] == "Human" then
                                                if Quest_Start_Evo_Human_V3 then
                                                        if not TempTable["ffc"](Enemies, "Orbitus") and (not TempTable["ffc"](ReplicatedStorage, "Orbitus") and not Kill_Orbitus) then
                                                                TempTable["HopLowServer"](4)
                                                                wait(.2)
                                                                MarketplaceService:Kick("Hop")
                                                                TempTable["wt"](.1)
                                                                TeleportService:Teleport(PlaceId, MarketplaceService)
                                                        end
                                                        if not TempTable["ffc"](Enemies, "Jeremy") and (not TempTable["ffc"](ReplicatedStorage, "Jeremy") and not Kill_Jeremy) then
                                                                TempTable["HopLowServer"](4)
                                                                wait(.2)
                                                                MarketplaceService:Kick("Hop")
                                                                TempTable["wt"](.1)
                                                                TeleportService:Teleport(PlaceId, MarketplaceService)
                                                        end
                                                        if not TempTable["ffc"](Enemies, "Diamond") and (not TempTable["ffc"](ReplicatedStorage, "Diamond") and not Kill_Diamond) then
                                                                TempTable["HopLowServer"](4)
                                                                wait(.2)
                                                                MarketplaceService:Kick("Hop")
                                                                TempTable["wt"](.1)
                                                                TeleportService:Teleport(PlaceId, MarketplaceService)
                                                        end
                                                        if not Kill_Orbitus then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        pcall(function()
                                                                                if TempTable["ffc"](Enemies, "Orbitus") or TempTable["ffc"](ReplicatedStorage, "Orbitus") then
                                                                                        if TempTable["ffc"](Enemies, "Orbitus") then
                                                                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                                                                        local state30 = {}
                                                                                                        state30[3], state30[1] = idx, val
                                                                                                        if state30[1]["Name"] == "Orbitus" and state30[1]["Humanoid"]["Health"] > 0 then
                                                                                                                repeat
                                                                                                                        TempTable["wt"]()
                                                                                                                        if state30[1]:FindFirstChild("HumanoidRootPart") then
                                                                                                                                RemoteFunction(state30[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                                                                if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                                                                end
                                                                                                                                StatsGui()
                                                                                                                        else
                                                                                                                                Kill_Orbitus = true
                                                                                                                                break
                                                                                                                        end
                                                                                                                until not state30[1]["Parent"] or state30[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                                                                                                Kill_Orbitus = true
                                                                                                        end
                                                                                                end
                                                                                        elseif TempTable["ffc"](ReplicatedStorage, "Orbitus") then
                                                                                                RemoteFunction(ReplicatedStorage["Orbitus"]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                        end
                                                                                end
                                                                        end)
                                                                until Kill_Orbitus
                                                        end
                                                        if not Kill_Jeremy then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        pcall(function()
                                                                                if TempTable["ffc"](Enemies, "Jeremy") or TempTable["ffc"](ReplicatedStorage, "Jeremy") then
                                                                                        if TempTable["ffc"](Enemies, "Jeremy") then
                                                                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                                                                        local cache30 = {}
                                                                                                        cache30[2], cache30[3] = idx, val
                                                                                                        if cache30[3]["Name"] == "Jeremy" and cache30[3]["Humanoid"]["Health"] > 0 then
                                                                                                                repeat
                                                                                                                        TempTable["wt"]()
                                                                                                                        if cache30[3]:FindFirstChild("HumanoidRootPart") then
                                                                                                                                RemoteFunction(cache30[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                                                                if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                                                                end
                                                                                                                                StatsGui()
                                                                                                                        else
                                                                                                                                Kill_Jeremy = true
                                                                                                                                break
                                                                                                                        end
                                                                                                                until not cache30[3]["Parent"] or cache30[3]["Humanoid"]["Health"] <= 0 or not cache30[3]:FindFirstChild("HumanoidRootPart") or not(getgenv())["AutoFarm"]
                                                                                                                Kill_Jeremy = true
                                                                                                        end
                                                                                                end
                                                                                        elseif TempTable["ffc"](ReplicatedStorage, "Jeremy") then
                                                                                                RemoteFunction(ReplicatedStorage["Jeremy"]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                        end
                                                                                end
                                                                        end)
                                                                until Kill_Orbitus
                                                        end
                                                        if not Kill_Diamond then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        pcall(function()
                                                                                if TempTable["ffc"](Enemies, "Diamond") or TempTable["ffc"](ReplicatedStorage, "Diamond") then
                                                                                        if TempTable["ffc"](Enemies, "Diamond") then
                                                                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                                                                        local store30 = {}
                                                                                                        store30[2], store30[1] = idx, val
                                                                                                        if store30[1]["Name"] == "Diamond" and store30[1]["Humanoid"]["Health"] > 0 then
                                                                                                                repeat
                                                                                                                        TempTable["wt"]()
                                                                                                                        if store30[1]:FindFirstChild("HumanoidRootPart") then
                                                                                                                                RemoteFunction(store30[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                                                                if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                                                                end
                                                                                                                                StatsGui()
                                                                                                                        else
                                                                                                                                Kill_Diamond = true
                                                                                                                                break
                                                                                                                        end
                                                                                                                until not store30[1]["Parent"] or store30[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                                                                                                Kill_Diamond = true
                                                                                                        end
                                                                                                end
                                                                                        elseif TempTable["ffc"](ReplicatedStorage, "Diamond") then
                                                                                                RemoteFunction(ReplicatedStorage["Diamond"]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                        end
                                                                                end
                                                                        end)
                                                                until Kill_Diamond
                                                        end
                                                else
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1")
                                                        TempTable["wt"](1)
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "2")
                                                        warn()
                                                        if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 1 or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 2 then
                                                                Quest_Start_Evo_Human_V3 = true
                                                        end
                                                end
                                        elseif MarketplaceService["Data"]["Race"]["Value"] == "Fishman" then
                                                if Quest_Start_Evo_Fishman_V3 then
                                                        local tmp31 = {}
                                                        tmp31[1] = false
                                                        tmp31[3] = false
                                                        for idx, val in pairs(Workspace["SeaBeasts"]:GetChildren()) do
                                                                local data31 = {}
                                                                data31[2], data31[3] = idx, val
                                                                if data31[3]:FindFirstChild("Health") and (data31[3]["Health"]["Value"] > 0 and (Vector3["new"](-3823.9206542969, 76.979339599609, -11685.7734375) - data31[3]["HumanoidRootPart"]["Position"])["Magnitude"] >= 1500) then
                                                                        tmp31[1] = true
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
                                                                        Tejao = true
                                                                        PositionSkillMasteryDevilFruit = data31[3]["HumanoidRootPart"]["CFrame"]
                                                                        MarketplaceService["Character"]["Humanoid"]["Sit"] = false
                                                                        wait(1)
                                                                        if MarketplaceService["Character"]["Humanoid"]["Sit"] == false then
                                                                                Boat = nil
                                                                        end
                                                                        repeat
                                                                                wait()
                                                                                RemoteFunction(data31[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 3, 0), 1.5)
                                                                        until (data31[3]["HumanoidRootPart"]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5 or not(getgenv())["AutoFarm"]
                                                                        repeat
                                                                                wait()
                                                                                TempTable["Equip"]("Fishman Karate")
                                                                                if MarketplaceService["PlayerGui"]["Main"]["Skills"]:FindFirstChild("Fishman Karate") and (tostring(MarketplaceService["PlayerGui"]["Main"]["Skills"]["Fishman Karate"]["Z"]["Title"]["TextColor"]) == "Institutional white" and MarketplaceService["PlayerGui"]["Main"]["Skills"]["Fishman Karate"]["Z"]["Cooldown"]["AbsoluteSize"]["X"] == 0) then
                                                                                        TempTable["Equip"]("Fishman Karate")
                                                                                        RemoteFunction(data31[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 3, 0), 1.5)
                                                                                        wait(.5)
                                                                                        PositionSkillMasteryDevilFruit = data31[3]["HumanoidRootPart"]["Position"]
                                                                                        if data31[3]["Health"]["Value"] > 0 then
                                                                                                VirtualInputManager:SendKeyEvent(true, "Z", false, game)
                                                                                                wait(.5)
                                                                                                VirtualInputManager:SendKeyEvent(false, "Z", false, game)
                                                                                                wait(.2)
                                                                                        end
                                                                                elseif MarketplaceService["PlayerGui"]["Main"]["Skills"]:FindFirstChild("Fishman Karate") and (tostring(MarketplaceService["PlayerGui"]["Main"]["Skills"]["Fishman Karate"]["X"]["Title"]["TextColor"]) == "Institutional white" and MarketplaceService["PlayerGui"]["Main"]["Skills"]["Fishman Karate"]["X"]["Cooldown"]["AbsoluteSize"]["X"] == 0) then
                                                                                        TempTable["Equip"]("Fishman Karate")
                                                                                        RemoteFunction(data31[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 3, 0), 1.5)
                                                                                        wait(.5)
                                                                                        PositionSkillMasteryDevilFruit = data31[3]["HumanoidRootPart"]["Position"]
                                                                                        if data31[3]["Health"]["Value"] > 0 then
                                                                                                VirtualInputManager:SendKeyEvent(true, "X", false, game)
                                                                                                wait(.5)
                                                                                                VirtualInputManager:SendKeyEvent(false, "X", false, game)
                                                                                                wait(.2)
                                                                                        end
                                                                                elseif MarketplaceService["PlayerGui"]["Main"]["Skills"]:FindFirstChild("Fishman Karate") and (tostring(MarketplaceService["PlayerGui"]["Main"]["Skills"]["Fishman Karate"]["C"]["Title"]["TextColor"]) == "Institutional white" and MarketplaceService["PlayerGui"]["Main"]["Skills"]["Fishman Karate"]["C"]["Cooldown"]["AbsoluteSize"]["X"] == 0) then
                                                                                        TempTable["Equip"]("Fishman Karate")
                                                                                        RemoteFunction(data31[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 3, 0), 1.5)
                                                                                        wait(.5)
                                                                                        PositionSkillMasteryDevilFruit = data31[3]["HumanoidRootPart"]["Position"]
                                                                                        if data31[3]["Health"]["Value"] > 0 then
                                                                                                VirtualInputManager:SendKeyEvent(true, "C", false, game)
                                                                                                wait(.5)
                                                                                                VirtualInputManager:SendKeyEvent(false, "C", false, game)
                                                                                                wait(.2)
                                                                                        end
                                                                                end
                                                                        until not data31[3]["Parent"] or data31[3]["Health"]["Value"] <= 0 or not(getgenv())["AutoFarm"]
                                                                        Tejao = false
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "3")
                                                                        wait(1)
                                                                end
                                                        end
                                                        if not tmp31[1] then
                                                                for idx, val in pairs(Workspace["Boats"]:GetChildren()) do
                                                                        local info31 = {}
                                                                        info31[3], info31[1] = idx, val
                                                                        if info31[1]["Name"] == "Dinghy" and tostring(info31[1]["Owner"]["Value"]) == MarketplaceService["Name"] then
                                                                                tmp31[3] = true
                                                                                if (Vector3["new"](3017.2006835938, -4.25, -2686.3325195312) - info31[1]["VehicleSeat"]["Position"])["Magnitude"] >= 30 then
                                                                                        if MarketplaceService["Character"]["Humanoid"]["Sit"] then
                                                                                                Boat = "Bit"
                                                                                                TPBoat(CFrame["new"](1550, -4.25, -2759), info31[1]["VehicleSeat"], 200)
                                                                                        elseif (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - info31[1]["VehicleSeat"]["Position"])["Magnitude"] >= 10 then
                                                                                                Boat = nil
                                                                                                RemoteFunction(info31[1]["VehicleSeat"]["CFrame"], 1.5)
                                                                                        else
                                                                                                Boat = "Bit"
                                                                                                MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"] = info31[1]["VehicleSeat"]["CFrame"] * CFrame["new"](0, 1, 0)
                                                                                                wait(3)
                                                                                        end
                                                                                else
                                                                                        if MarketplaceService["Character"]["Humanoid"]["Sit"] then
                                                                                                vu:Button1Down(Vector2["new"](1280, 600))
                                                                                                wait(1)
                                                                                        elseif (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - info31[1]["VehicleSeat"]["Position"])["Magnitude"] >= 10 then
                                                                                                Boat = nil
                                                                                                RemoteFunction(info31[1]["VehicleSeat"]["CFramem"], 1.5)
                                                                                        else
                                                                                                Boat = "Bit"
                                                                                                MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"] = info31[1]["VehicleSeat"]["CFrame"] * CFrame["new"](0, 1, 0)
                                                                                                wait(3)
                                                                                        end
                                                                                end
                                                                        end
                                                                end
                                                        end
                                                        if not tmp31[3] and not tmp31[1] then
                                                                RemoteFunction(CFrame["new"](-1935, 6, -2564), 1.5)
                                                                if (Vector3["new"](-1935, 6, -2564) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyBoat", "Dinghy")
                                                                        wait(1)
                                                                        Boat = "bit"
                                                                end
                                                        end
                                                else
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1")
                                                        wait(1)
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "2")
                                                        if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 1 or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 2 then
                                                                Quest_Start_Evo_Fishman_V3 = true
                                                        end
                                                end
                                        end
                                else
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
                                end
                        elseif Quest == "Don Swan" then
                                repeat
                                        TempTable["wt"]()
                                        if TempTable["ffc"](Enemies, "Don Swan") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local vars31 = {}
                                                        vars31[1], vars31[2] = idx, val
                                                        if vars31[2]["Name"] == "Don Swan" and vars31[2]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(vars31[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not vars31[2]["Parent"] or vars31[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Don Swan")
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Don Swan") then
                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                        local temp31 = {}
                                                        temp31[3], temp31[1] = idx, val
                                                        if temp31[1]["Name"] == "Don Swan" and temp31[1]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(temp31[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not temp31[1]["Parent"] or temp31[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Don Swan")
                                                        end
                                                end
                                        else
                                                TempTable["HopLowServer"](3)
                                                TempTable["wt"](.2)
                                                MarketplaceService:Kick("Hop")
                                                TempTable["wt"](.1)
                                                TeleportService:Teleport(PlaceId, MarketplaceService)
                                        end
                                until not TempTable["CheckBoss"]("Don Swan")
                        elseif Quest == "TravelZou" then
                                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelZou")
                                end
                                if Kill_Don then
                                        if TempTable["ffc"](Enemies, "rip_indra") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local state31 = {}
                                                        state31[1], state31[3] = idx, val
                                                        if state31[3]["Name"] == "rip_indra" and state31[3]["Humanoid"]["Health"] > 0 then
                                                                if TempTable["ffc"](state31[3]["Humanoid"], "Animator") then
                                                                        state31[3]["Humanoid"]["Animator"]:Destroy()
                                                                end
                                                                repeat
                                                                        TempTable["wt"](.1)
                                                                        StatsGui()
                                                                        RemoteFunction(state31[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                until state31[3]["Humanoid"]["Health"] <= 0 or not state31[3]["Parent"] or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1
                                                                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelZou")
                                                                        TleP = true
                                                                        TempTable["wt"](30)
                                                                end
                                                        end
                                                end
                                        elseif ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelZou")
                                                TleP = true
                                                TempTable["wt"](30)
                                        elseif not(game:GetService("Workspace"))["Enemies"]:FindFirstChild("rip_indra") then
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check")
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Begin")
                                                TempTable["wt"](3)
                                        end
                                elseif not okokok then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check")
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Begin")
                                        TempTable["wt"](3)
                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                local cache31 = {}
                                                cache31[1], cache31[3] = idx, val
                                                if cache31[3]["Name"] == "rip_indra" then
                                                        Kill_Don = true
                                                end
                                        end
                                        okokok = true
                                else
                                        StatsGui()
                                        Quest = nil
                                        TempTable["Status"](tableConcat({
                                                " Status : Auto Farm ",
                                                "Level"
                                        }))
                                        TestService()
                                end
                        elseif Quest == "Yama" then
                                if (Workspace["Map"]["Waterfall"]["SealedKatana"]["Hitbox"]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 300 then
                                        if TempTable["ffc"](Enemies, "Ghost") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local store31 = {}
                                                        store31[2], store31[3] = idx, val
                                                        if store31[3]["Name"] == "Ghost" and store31[3]["Humanoid"]["Health"] > 0 then
                                                                if TempTable["ffc"](store31[3]["Humanoid"], "Animator") then
                                                                        store31[3]["Humanoid"]["Animator"]:Destroy()
                                                                end
                                                                repeat
                                                                        wait(.1)
                                                                        StatsGui()
                                                                        store31[3]["HumanoidRootPart"]["Size"] = Vector3["new"](50, 50, 50)
                                                                        RemoteFunction(store31[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 15, 0), 1.5)
                                                                        VirtualUser:Button1Down(Vector2["new"](1280, 600))
                                                                until not store31[3]["Parent"] or store31[3]["Humanoid"]["Health"] <= 0
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Ghost") then
                                                RemoteFunction((ReplicatedStorage:FindFirstChild("Ghost"))["HumanoidRootPart"]["CFrame"], 1.5)
                                        elseif not TempTable["ffc"](Enemies, "Ghost") and not TempTable["ffc"](ReplicatedStorage, "Ghost") then
                                                RemoteFunction(Workspace["Map"]["Waterfall"]["SealedKatana"]["Hitbox"]["CFrame"], 1.5)
                                                for idx, val in pairs(MarketplaceService["Character"]:GetChildren()) do
                                                        local tmp32 = {}
                                                        tmp32[2], tmp32[3] = idx, val
                                                        if tmp32[3]:IsA("Tool") then
                                                                tmp32[3]["Parent"] = MarketplaceService["Backpack"]
                                                        end
                                                end
                                                fireclickdetector(Workspace["Map"]["Waterfall"]["SealedKatana"]["Hitbox"]["ClickDetector"], 1)
                                        end
                                else
                                        RemoteFunction(Workspace["Map"]["Waterfall"]["SealedKatana"]["Hitbox"]["CFrame"], 1.5)
                                end
                        elseif Quest == "Quest Electric Claw" then
                                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw", true) == "Nah." or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw", true) == 4 then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw", "Start")
                                        MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](-12548, 337, -7481)
                                elseif ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw", true) == 3 or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw", true) == 0 then
                                        Electric_Claw_C = true
                                end
                        elseif Quest == "Venom Bow" then
                                if not TempTable["CheckBoss"]("Hydra Leader") then
                                        return
                                end
                                repeat
                                        TempTable["wt"]()
                                        if TempTable["ffc"](Enemies, "Hydra Leader") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local data32 = {}
                                                        data32[2], data32[1] = idx, val
                                                        if data32[1]["Name"] == "Hydra Leader" and data32[1]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(data32[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not data32[1]["Parent"] or data32[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Hydra Leader")
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Hydra Leader") then
                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                        local info32 = {}
                                                        info32[1], info32[2] = idx, val
                                                        if info32[2]["Name"] == "Hydra Leader" and info32[2]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(info32[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not info32[2]["Parent"] or info32[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Hydra Leader")
                                                        end
                                                end
                                        end
                                until not TempTable["CheckBoss"]("Hydra Leader")
                        elseif Quest == "Godhuman" then
                                if TempTable["CheckItem"]("Fish Tail") >= 20 and (TempTable["CheckItem"]("Magma Ore") >= 20 and (TempTable["CheckItem"]("Mystic Droplet") >= 10 and TempTable["CheckItem"]("Dragon Scale") >= 10)) then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman", true)
                                        Godhuman = true
                                elseif TempTable["CheckItem"]("Fish Tail") < 20 or TempTable["CheckItem"]("Magma Ore") < 20 or TempTable["CheckItem"]("Mystic Droplet") < 10 or TempTable["CheckItem"]("Dragon Scale") < 10 then
                                        local vars32 = {}
                                        vars32[5] = nil
                                        vars32[4] = nil
                                        vars32[3] = nil
                                        vars32[2] = nil
                                        if TempTable["CheckItem"]("Fish Tail") < 20 then
                                                vars32[5] = "Fishman Warrior"
                                                vars32[4] = "Fishman Commando"
                                                vars32[3] = CFrame["new"](60946.6094, 65.6735229, 1525.91687)
                                                vars32[2] = CFrame["new"](61902.7383, 32.4828358, 1478.33936)
                                                if ((CFrame["new"](61164, 12, 1820))["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 2000 then
                                                        MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](61164, 12, 1820)
                                                end
                                                if not Old_World then
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelMain")
                                                        TleP = true
                                                        TempTable["wt"](50)
                                                end
                                        elseif TempTable["CheckItem"]("Magma Ore") < 20 then
                                                vars32[5] = "Magma Ninja"
                                                vars32[4] = "Lava Pirate"
                                                vars32[3] = CFrame["new"](-5466.06445, 77.6952019, -5837.42822)
                                                vars32[2] = CFrame["new"](-5169.71729, 54.1234779, -4669.73633)
                                                if not New_World then
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
                                                        TleP = true
                                                        TempTable["wt"](50)
                                                end
                                        elseif TempTable["CheckItem"]("Mystic Droplet") < 10 then
                                                vars32[5] = "Sea Soldier"
                                                vars32[4] = "Water Fighter"
                                                vars32[3] = CFrame["new"](-3115.78223, 63.8785706, -9808.38574)
                                                vars32[2] = CFrame["new"](-3212.99683, 263.809296, -10551.8799)
                                                if not New_World then
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
                                                        TleP = true
                                                        TempTable["wt"](50)
                                                end
                                        elseif TempTable["CheckItem"]("Dragon Scale") < 10 then
                                                vars32[5] = "Dragon Crew Warrior"
                                                vars32[4] = "Dragon Crew Archer"
                                                vars32[3] = CFrame["new"](6241.9951171875, 51.522083282471, -1243.9771728516)
                                                vars32[2] = CFrame["new"](6488.9155273438, 383.38375854492, -110.66246032715)
                                                if not Three_World then
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelZou")
                                                        TleP = true
                                                        TempTable["wt"](50)
                                                end
                                        end
                                        if vars32[5] ~= nil then
                                                repeat
                                                        TempTable["wt"]()
                                                        RemoteFunction(vars32[3])
                                                until (vars32[3]["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
                                                if TempTable["ffc"](Enemies, vars32[5]) then
                                                        for idx, val in pairs(game["Workspace"]["Enemies"]:GetChildren()) do
                                                                local temp32 = {}
                                                                temp32[2], temp32[3] = idx, val
                                                                if temp32[3]["Name"] == vars32[5] and temp32[3]["Humanoid"]["Health"] > 0 then
                                                                        StatrMagnet = true
                                                                        repeat
                                                                                TempTable["wt"]()
                                                                                RemoteFunction(temp32[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 20, 0), 1.5)
                                                                                StatsGui()
                                                                                TempTable["BN"](temp32[3]["Name"])
                                                                        until not temp32[3]["Parent"] or temp32[3]["Humanoid"]["Health"] <= 0
                                                                        StatrMagnet = false
                                                                end
                                                        end
                                                end
                                        end
                                        if vars32[4] ~= nil then
                                                repeat
                                                        TempTable["wt"]()
                                                        RemoteFunction(vars32[2], 1.5)
                                                until (vars32[2]["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
                                                if game["Workspace"]["Enemies"]:FindFirstChild(vars32[4]) then
                                                        for idx, val in pairs(game["Workspace"]["Enemies"]:GetChildren()) do
                                                                local state32 = {}
                                                                state32[2], state32[3] = idx, val
                                                                if state32[3]["Name"] == vars32[4] and state32[3]["Humanoid"]["Health"] > 0 then
                                                                        StatrMagnet = true
                                                                        repeat
                                                                                TempTable["wt"]()
                                                                                RemoteFunction(state32[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 20, 0), 1.5)
                                                                                StatsGui()
                                                                                TempTable["BN"](state32[3]["Name"])
                                                                        until not state32[3]["Parent"] or state32[3]["Humanoid"]["Health"] <= 0
                                                                        StatrMagnet = false
                                                                end
                                                        end
                                                end
                                        end
                                end
                        elseif Quest == "Longma" then
                                repeat
                                        TempTable["wt"]()
                                        if TempTable["ffc"](Enemies, "Longma") then
                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                        local cache32 = {}
                                                        cache32[3], cache32[2] = idx, val
                                                        if cache32[2]["Name"] == "Longma" and cache32[2]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(cache32[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not cache32[2]["Parent"] or cache32[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Longma")
                                                        end
                                                end
                                        elseif TempTable["ffc"](ReplicatedStorage, "Longma") then
                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                        local store32 = {}
                                                        store32[2], store32[3] = idx, val
                                                        if store32[3]["Name"] == "Longma" and store32[3]["Humanoid"]["Health"] > 0 then
                                                                repeat
                                                                        TempTable["wt"]()
                                                                        RemoteFunction(store32[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                        end
                                                                        StatsGui()
                                                                until not store32[3]["Parent"] or store32[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not TempTable["CheckBoss"]("Longma")
                                                        end
                                                end
                                        else
                                                TempTable["HopLowServer"](3)
                                                TempTable["wt"](.2)
                                                MarketplaceService:Kick("Hop")
                                                TempTable["wt"](.1)
                                                TeleportService:Teleport(PlaceId, MarketplaceService)
                                        end
                                until not TempTable["CheckBoss"]("Longma")
                        elseif Quest == "Soul Guitar" then
                                if TempTable["CheckItem"]("Bones") < 500 then
                                        if Three_World then
                                                TempTable["FarmBone"](false)
                                        else
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelZou")
                                                TleP = true
                                                wait(50)
                                        end
                                elseif TempTable["CheckItem"]("Ectoplasm") < 250 then
                                        if New_World then
                                                if (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](921.30249023438, 125.400390625, 32937.34375))["Magnitude"] >= 3000 then
                                                        repeat
                                                                TempTable["wt"]()
                                                                RemoteFunction(CFrame["new"](921.30249023438, 125.400390625, 32937.34375), 1.5)
                                                        until (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](921.30249023438, 125.400390625, 32937.34375))["Magnitude"] <= 3
                                                elseif (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](921.30249023438, 125.400390625, 32937.34375))["Magnitude"] < 3000 then
                                                        Monster = nil
                                                        for idx = 1500, 0, -300 do
                                                                local tmp33 = {}
                                                                tmp33[2] = idx
                                                                TempTable["GetMonster"](tmp33[2])
                                                        end
                                                        if Monster ~= nil and Monster["Humanoid"]["Health"] > 0 then
                                                                PosMon_X = Monster["HumanoidRootPart"]["CFrame"]
                                                                StatrMagnet = true
                                                                repeat
                                                                        wait()
                                                                        RemoteFunction(Monster["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 20, 0), 1.5)
                                                                        StatsGui()
                                                                until not Monster["Parent"] or Monster["Humanoid"]["Health"] <= 0
                                                                StatrMagnet = false
                                                        elseif Monster == nil then
                                                                for idx = 1500, 0, -300 do
                                                                        local data33 = {}
                                                                        data33[2] = idx
                                                                        TempTable["GetMonster"](data33[2])
                                                                end
                                                                if Monster == nil then
                                                                        RemoteFunction(CFrame["new"](921.30249023438, 125.400390625, 32937.34375), 1.5)
                                                                end
                                                        end
                                                end
                                        else
                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
                                                TleP = true
                                                wait(50)
                                        end
                                elseif not Three_World then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("TravelZou")
                                        TleP = true
                                        wait(50)
                                else
                                        if tostring((game:GetService("Workspace"))["Map"]["Haunted Castle"]["SwampWater"]["BrickColor"]) == "Maroon" then
                                                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check") ~= nil and (ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check"))["Swamp"] == false then
                                                        repeat
                                                                wait()
                                                                RemoteFunction(CFrame["new"](-10147.779296875, 138.6266784668, 5939.5600585938), 1.5)
                                                        until (Vector3["new"](-10147.779296875, 138.6266784668, 5939.5600585938) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
                                                        wait(1)
                                                        get_mon = {}
                                                        TempTable["GetMon_Soul"]()
                                                        if #get_mon >= 6 then
                                                                for idx, val in pairs(MarketplaceService["Character"]:GetChildren()) do
                                                                        local info33 = {}
                                                                        info33[3], info33[2] = idx, val
                                                                        if info33[2]:IsA("Tool") then
                                                                                info33[2]["Parent"] = MarketplaceService["Backpack"]
                                                                        end
                                                                end
                                                                RemoteFunction(CFrame["new"](-10147.779296875, 158.6266784668, 5939.5600585938), 1.5)
                                                                for idx, val in next, (game:GetService("Workspace"))["Enemies"]:GetChildren() do
                                                                        local vars33 = {}
                                                                        vars33[2], vars33[1] = idx, val
                                                                        if (vars33[1]["HumanoidRootPart"]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 500 then
                                                                                vars33[1]["HumanoidRootPart"]["CFrame"] = MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 0, 20)
                                                                                sethiddenproperty(MarketplaceService, "SimulationRadius", math["huge"])
                                                                        end
                                                                end
                                                                wait(1)
                                                                StatsGui()
                                                                wait(2)
                                                        end
                                                end
                                        elseif ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check") ~= nil then
                                                local temp33 = {}
                                                temp33[2] = ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check")
                                                if not Quest_Soul_Guitar then
                                                        repeat
                                                                wait(.1)
                                                                RemoteFunction(CFrame["new"](-9680.7412109375, 6.1591067314148, 6346.1552734375), 1.5)
                                                        until (Vector3["new"](-9680.7412109375, 6.1591067314148, 6346.1552734375) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5
                                                        wait(1)
                                                        for idx, val in pairs(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check")) do
                                                                local state33 = {}
                                                                state33[3], state33[1] = idx, val
                                                                if state33[1] == false then
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", state33[3])
                                                                end
                                                        end
                                                        wait(2)
                                                        for idx, val in pairs(ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check")) do
                                                                local cache33 = {}
                                                                cache33[3], cache33[1] = idx, val
                                                                if cache33[1] == false then
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", cache33[3])
                                                                end
                                                        end
                                                        wait(1)
                                                        Quest_Soul_Guitar = true
                                                end
                                        elseif tostring((game:GetService("Workspace"))["Map"]["Haunted Castle"]["SwampWater"]["BrickColor"]) ~= "Maroon" then
                                                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent", 2) == true then
                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent", 2, true)
                                                else
                                                        RemoteFunction(CFrame["new"](-8652.6416015625, 141.10939025879, 6168.810546875), 1.5)
                                                end
                                        end
                                end
                        elseif Quest == "RGB" then
                                local store33 = {}
                                store33[1] = nil
                                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("HornedMan", "Bet") == nil then
                                        if MarketplaceService["PlayerGui"]["Main"]["Quest"]["Visible"] then
                                                local tmp34 = {}
                                                tmp34[1] = (game:GetService("Players"))["LocalPlayer"]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"]
                                                if string["find"](tmp34[1], "Stone") then
                                                        if TempTable["ffc"](Enemies, "Stone") or TempTable["ffc"](ReplicatedStorage, "Stone") then
                                                                store33[1] = "Stone"
                                                        end
                                                end
                                                if string["find"](tmp34[1], "Hydra Leader") then
                                                        if TempTable["ffc"](Enemies, "Hydra Leader") or TempTable["ffc"](ReplicatedStorage, "Hydra Leader") then
                                                                store33[1] = "Hydra Leader"
                                                        end
                                                end
                                                if string["find"](tmp34[1], "Kilo Admiral") then
                                                        if TempTable["ffc"](Enemies, "Kilo Admiral") or TempTable["ffc"](ReplicatedStorage, "Kilo Admiral") then
                                                                store33[1] = "Kilo Admiral"
                                                        end
                                                end
                                                if string["find"](tmp34[1], "Captain Elephant") then
                                                        if TempTable["ffc"](Enemies, "Captain Elephant") or TempTable["ffc"](ReplicatedStorage, "Captain Elephant") then
                                                                store33[1] = "Captain Elephant"
                                                        end
                                                end
                                                if string["find"](tmp34[1], "Beautiful Pirate") then
                                                        if TempTable["ffc"](Enemies, "Beautiful Pirate") or TempTable["ffc"](ReplicatedStorage, "Beautiful Pirate") then
                                                                store33[1] = "Beautiful Pirate"
                                                        end
                                                end
                                                if store33[1] ~= nil then
                                                        if TempTable["ffc"](Enemies, store33[1]) then
                                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                                        local data34 = {}
                                                                        data34[2], data34[3] = idx, val
                                                                        if data34[3]["Name"] == store33[1] and data34[3]["Humanoid"]["Health"] > 0 then
                                                                                repeat
                                                                                        TempTable["wt"]()
                                                                                        RemoteFunction(data34[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                        end
                                                                                        StatsGui()
                                                                                until not data34[3]["Parent"] or data34[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                                                        end
                                                                end
                                                        elseif TempTable["ffc"](ReplicatedStorage, store33[1]) then
                                                                for idx, val in pairs(ReplicatedStorage:GetChildren()) do
                                                                        local info34 = {}
                                                                        info34[3], info34[1] = idx, val
                                                                        if info34[1]["Name"] == store33[1] and info34[1]["Humanoid"]["Health"] > 0 then
                                                                                repeat
                                                                                        TempTable["wt"]()
                                                                                        RemoteFunction(info34[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
                                                                                        if not TempTable["ffc"](MarketplaceService["Character"], "HasBuso") then
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Buso")
                                                                                        end
                                                                                        StatsGui()
                                                                                until not info34[1]["Parent"] or info34[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
                                                                        end
                                                                end
                                                        end
                                                else
                                                        if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("HornedMan", "Bet") == 1 then
                                                                return
                                                        else
                                                                MarketplaceService:Kick("Hop")
                                                                TempTable["wt"](.1)
                                                                TeleportService:Teleport(PlaceId, MarketplaceService)
                                                        end
                                                end
                                        end
                                elseif ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("HornedMan", "Bet") == 1 then
                                        return
                                end
                        elseif Quest == "Pull Lerver" then
                                if not ExSeb then
                                        if (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("RaceV4Progress", "Check") == 1 then
                                                local vars34 = {}
                                                vars34[1] = {
                                                        [1] = "RaceV4Progress";
                                                        [2] = "Check"
                                                };
                                                (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(vars34[1]))
                                                vars34[3] = {
                                                        [1] = "RaceV4Progress";
                                                        [2] = "Begin"
                                                };
                                                (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(vars34[3]))
                                        elseif (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("RaceV4Progress", "Check") == 2 then
                                                local temp34 = {}
                                                temp34[1] = {
                                                        [1] = "RaceV4Progress",
                                                        [2] = "Check"
                                                };
                                                (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(temp34[1]))
                                                repeat
                                                        local state34 = {}
                                                        wait()
                                                        game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](2959.87231, 2282.42139, -7216.23193)
                                                        state34[1] = {
                                                                [1] = "RaceV4Progress",
                                                                [2] = "Teleport"
                                                        };
                                                        (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(state34[1]))
                                                until (game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](28286.35546875, 14896.5078125, 102.62469482422))["Magnitude"] <= 15
                                        elseif (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("RaceV4Progress", "Check") == 3 then
                                                ExSeb = true
                                                if not ujihfdg then
                                                        local cache34 = {}
                                                        cache34[3] = {
                                                                [1] = "RaceV4Progress";
                                                                [2] = "Check"
                                                        };
                                                        (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(cache34[3]))
                                                        wait(1)
                                                        cache34[2] = {
                                                                [1] = "RaceV4Progress";
                                                                [2] = "Continue"
                                                        };
                                                        (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(cache34[2]))
                                                        ujihfdg = true
                                                end
                                        elseif (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("RaceV4Progress", "Check") == 4 then
                                                ExSeb = true
                                        end
                                else
                                        if (game:GetService("Workspace"))["Map"]:FindFirstChild("MysticIsland") then
                                                if MarketplaceService["Character"]["Humanoid"]["Sit"] == true then
                                                        MarketplaceService["Character"]["Humanoid"]["Sit"] = false
                                                        wait(.5)
                                                        MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"] = MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 15, 0)
                                                        wait(1)
                                                else
                                                        local store34 = {}
                                                        store34[1] = ((game:GetService("Workspace"))["Map"]:FindFirstChild("MysticIsland"))["WorldPivot"] * CFrame["new"](0, 500, 0)
                                                        if (store34[1]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 25 then
                                                                task["spawn"](function()
                                                                        repeat
                                                                                wait(.2)
                                                                                Workspace["CurrentCamera"]["CFrame"] = CFrame["lookAt"](Workspace["CurrentCamera"]["CFrame"]["Position"], Lighting:GetMoonDirection() + Workspace["CurrentCamera"]["CFrame"]["Position"])
                                                                        until StopCamera or not(game:GetService("Workspace"))["Map"]:FindFirstChild("MysticIsland") or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CheckTempleDoor")
                                                                end);
                                                                ((ReplicatedStorage:WaitForChild("Remotes")):WaitForChild("CommE")):FireServer("ActivateAbility")
                                                                wait(17)
                                                                for idx, val in pairs((game:GetService("Workspace"))["Map"]["MysticIsland"]:GetChildren()) do
                                                                        local tmp35 = {}
                                                                        tmp35[3], tmp35[1] = idx, val
                                                                        if tmp35[1]["ClassName"] == "MeshPart" and (tmp35[1]["Name"] == "Part" and tmp35[1]["Transparency"] == 0) then
                                                                                repeat
                                                                                        wait(.2)
                                                                                        StopCamera = true
                                                                                        RemoteFunction(tmp35[1]["CFrame"], 1.5)
                                                                                        wait(.5)
                                                                                        VirtualInputManager:SendKeyEvent(true, "Space", false, game)
                                                                                        wait(.5)
                                                                                        VirtualInputManager:SendKeyEvent(false, "Space", false, game)
                                                                                until tmp35[1]["Transparency"] == 1 or not(game:GetService("Workspace"))["Map"]:FindFirstChild("MysticIsland") or ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CheckTempleDoor")
                                                                                wait(.5)
                                                                        end
                                                                end
                                                        else
                                                                RemoteFunction(store34[1], 1.5)
                                                        end
                                                end
                                        end
                                end
                        elseif Quest == "Cursed Dual Katana" then
                                if ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "OpenDoor") == "opened" then
                                        local data35 = {}
                                        data35[2] = ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress")
                                        if data35[2]["Good"] == 0 or data35[2]["Good"] == -3 then
                                                CDK_Q_S_C = 3
                                                if data35[2]["Good"] == 0 then
                                                        TempTable["GetQuest"]("Good")
                                                elseif data35[2]["Good"] == -3 then
                                                        repeat
                                                                wait()
                                                                RemoteFunction(CFrame["new"](-4600.37, 15.1245, -2881.18), 1.5)
                                                                if (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](-4600.37, 15.1245, -2881.18))["Magnitude"] <= 3 then
                                                                        wait(1)
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", Team["NPCs"]:FindFirstChild("Luxury Boat Dealer"), "Check")
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetUnlockables")
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", Team["NPCs"]:FindFirstChild("Luxury Boat Dealer"))
                                                                        wait(.5)
                                                                        Q_Boat_1 = true
                                                                end
                                                        until Q_Boat_1
                                                        repeat
                                                                wait()
                                                                RemoteFunction(CFrame["new"](-2068.63, 3.37222, -9887.08), 1.5)
                                                                if (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](-2068.63, 3.37222, -9887.08))["Magnitude"] <= 3 then
                                                                        wait(1)
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", Team["NPCs"]:FindFirstChild("Luxury Boat Dealer"), "Check")
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetUnlockables")
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", Team["NPCs"]:FindFirstChild("Luxury Boat Dealer"))
                                                                        wait(.5)
                                                                        Q_Boat_2 = true
                                                                end
                                                        until Q_Boat_2
                                                        repeat
                                                                wait()
                                                                RemoteFunction(CFrame["new"](-9531.19, 5.91675, -8377.75), 1.5)
                                                                if (MarketplaceService["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](-9531.19, 5.91675, -8377.75))["Magnitude"] <= 3 then
                                                                        wait(1)
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", Team["NPCs"]:FindFirstChild("Luxury Boat Dealer"), "Check")
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("GetUnlockables")
                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", Team["NPCs"]:FindFirstChild("Luxury Boat Dealer"))
                                                                        wait(.5)
                                                                        Q_Boat_3 = true
                                                                end
                                                        until Q_Boat_3
                                                        Q_Boat_1 = false
                                                        Q_Boat_2 = false
                                                        Q_Boat_3 = false
                                                end
                                        elseif data35[2]["Evil"] == 0 or data35[2]["Evil"] == -3 then
                                                CDK_Q_S_C = 4
                                                if data35[2]["Evil"] == 0 then
                                                        TempTable["GetQuest"]("Evil")
                                                elseif data35[2]["Evil"] == -3 then
                                                        Stop_Fast_Attack = true
                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                local info35 = {}
                                                                info35[2], info35[3] = idx, val
                                                                if info35[3]:FindFirstChild("HumanoidRootPart") and (info35[3]["HumanoidRootPart"]["Position"] - Vector3["new"](-13347.6982, 332.378143, -7652.27783))["Magnitude"] > 10 then
                                                                        info35[3]["HumanoidRootPart"]["CFrame"] = CFrame["new"](-13347.6982, 332.378143, -7652.27783)
                                                                        sethiddenproperty(MarketplaceService, "SimulationRadius", math["huge"])
                                                                end
                                                        end
                                                        RemoteFunction(CFrame["new"](-13347.6982, 332.378143, -7652.27783, -0.97929436, 4.50812898e-08, -0.202441484, 4.58302409e-08, 1, 9.8789521e-10, .202441484, -8.31050162e-09, -0.97929436), 1.5)
                                                end
                                        elseif data35[2]["Evil"] == 1 or data35[2]["Evil"] == -4 then
                                                Stop_Fast_Attack = false
                                                CDK_Q_S_C = 5
                                                if data35[2]["Evil"] == 1 then
                                                        TempTable["GetQuest"]("Evil")
                                                elseif data35[2]["Evil"] == -4 then
                                                        if TempTable["ffc"](MarketplaceService, "QuestHaze") then
                                                                if Quest_Kill == nil then
                                                                        for idx, val in pairs(MarketplaceService["QuestHaze"]:GetChildren()) do
                                                                                local vars35 = {}
                                                                                vars35[2], vars35[1] = idx, val
                                                                                if tonumber(vars35[1]["Value"]) > 0 and Quest_Kill == nil then
                                                                                        SelectMonster = vars35[1]["Name"]
                                                                                        CFrameMon = nil
                                                                                        CheckLevel2()
                                                                                        if CFrameMon ~= nil then
                                                                                                Quest_Kill = vars35[1]["Name"]
                                                                                        end
                                                                                end
                                                                        end
                                                                elseif TempTable["ffc"](MarketplaceService["QuestHaze"], Quest_Kill) and tonumber((MarketplaceService["QuestHaze"]:FindFirstChild(Quest_Kill))["Value"]) <= 0 then
                                                                        Quest_Kill = nil
                                                                elseif TempTable["ffc"](MarketplaceService["QuestHaze"], Quest_Kill) and tonumber((MarketplaceService["QuestHaze"]:FindFirstChild(Quest_Kill))["Value"]) > 0 then
                                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                                local temp35 = {}
                                                                                temp35[1], temp35[2] = idx, val
                                                                                if temp35[2]:FindFirstChild("Humanoid") and (temp35[2]["Humanoid"]["Health"] > 0 and temp35[2]:FindFirstChild("HazeESP")) then
                                                                                        repeat
                                                                                                wait(.1)
                                                                                                RemoteFunction(temp35[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 25, 0), 1.5)
                                                                                                StatsGui()
                                                                                        until not temp35[2]["Parent"] or temp35[2]["Humanoid"]["Health"] <= 0
                                                                                end
                                                                        end
                                                                        RemoteFunction(CFrameMon, 1.5)
                                                                else
                                                                        Quest_Kill = nil
                                                                end
                                                        end
                                                end
                                        elseif data35[2]["Good"] == 1 or data35[2]["Good"] == -4 then
                                                CDK_Q_S_C = 6
                                                if data35[2]["Good"] == 1 then
                                                        TempTable["GetQuest"]("Good")
                                                elseif data35[2]["Good"] == -4 then
                                                        RemoteFunction(CFrame["new"](-5543.0805664062, 313.76550292969, -2969.4846191406), 1.5)
                                                        if (Vector3["new"](-5543.0805664062, 313.76550292969, -2969.4846191406) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1500 then
                                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                                        local state35 = {}
                                                                        state35[3], state35[1] = idx, val
                                                                        if state35[1]:FindFirstChild("Humanoid") and (state35[1]["Humanoid"]["Health"] > 0 and (state35[1]["HumanoidRootPart"]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1500) then
                                                                                repeat
                                                                                        wait(.3)
                                                                                        StatsGui()
                                                                                        RemoteFunction(state35[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                until not state35[1]["Parent"] or state35[1]["Humanoid"]["Health"] <= 0
                                                                        end
                                                                end
                                                        end
                                                end
                                        elseif data35[2]["Good"] == 2 or data35[2]["Good"] == -5 then
                                                CDK_Q_S_C = 7
                                                if data35[2]["Good"] == 2 then
                                                        TempTable["GetQuest"]("Good")
                                                elseif data35[2]["Good"] == -5 then
                                                        if not Kill_Boss_Cake then
                                                                if TempTable["ffc"](Enemies, "Cake Queen") then
                                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                                local cache35 = {}
                                                                                cache35[3], cache35[2] = idx, val
                                                                                if cache35[2]["Name"] == "Cake Queen" and (cache35[2]["Humanoid"]["Health"] > 0 and not Kill_Boss_Cake) then
                                                                                        repeat
                                                                                                wait(.3)
                                                                                                if TempTable["ffc"](cache35[2], "HumanoidRootPart") then
                                                                                                        RemoteFunction(cache35[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                                        StatsGui()
                                                                                                else
                                                                                                        break
                                                                                                end
                                                                                        until not cache35[2]["Parent"] or cache35[2]["Humanoid"]["Health"] <= 0
                                                                                        Kill_Boss_Cake = true
                                                                                        wait(1)
                                                                                end
                                                                        end
                                                                else
                                                                        RemoteFunction(CFrame["new"](-714.643066, 381.565613, -11021.0566), 1.5)
                                                                end
                                                        else
                                                                if Workspace["Map"]:FindFirstChild("HeavenlyDimension") then
                                                                        if not Ceyma_HeavenlyDimension then
                                                                                repeat
                                                                                        wait(.1)
                                                                                        RemoteFunction((Workspace["Map"]:FindFirstChild("HeavenlyDimension"))["WorldPivot"], 1.5)
                                                                                until ((Workspace["Map"]:FindFirstChild("HeavenlyDimension"))["WorldPivot"]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5
                                                                                wait(1)
                                                                                Ceyma_HeavenlyDimension = true
                                                                        elseif Ceyma_HeavenlyDimension then
                                                                                StatsGui()
                                                                                if Enemies:FindFirstChildOfClass("Model") then
                                                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                                                local store35 = {}
                                                                                                store35[3], store35[2] = idx, val
                                                                                                if store35[2]:FindFirstChild("HumanoidRootPart") and (store35[2]:FindFirstChild("Humanoid") and ((Workspace["Map"]:FindFirstChild("HeavenlyDimension"))["WorldPivot"]["Position"] - store35[2]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1000) then
                                                                                                        if store35[2]["Humanoid"]["Health"] > 0 then
                                                                                                                repeat
                                                                                                                        wait()
                                                                                                                        RemoteFunction(store35[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                                                        StatsGui()
                                                                                                                until not store35[2]["Parent"] or store35[2]["Humanoid"]["Health"] <= 0
                                                                                                        end
                                                                                                end
                                                                                        end
                                                                                elseif not Enemies:FindFirstChildOfClass("Model") then
                                                                                        TempTable["GetTorch"]("Torch1")
                                                                                        if not Enemies:FindFirstChildOfClass("Model") then
                                                                                                TempTable["GetTorch"]("Torch2")
                                                                                                if not Enemies:FindFirstChildOfClass("Model") then
                                                                                                        TempTable["GetTorch"]("Torch3")
                                                                                                        if not Enemies:FindFirstChildOfClass("Model") and Workspace["Map"]:FindFirstChild("HeavenlyDimension") then
                                                                                                                Workspace["Map"]["HeavenlyDimension"]["Exit"]["CFrame"] = MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"]
                                                                                                                wait(1)
                                                                                                        end
                                                                                                end
                                                                                        end
                                                                                end
                                                                        end
                                                                elseif not Workspace["Map"]:FindFirstChild("HeavenlyDimension") then
                                                                        wait(5)
                                                                        if not Workspace["Map"]:FindFirstChild("HeavenlyDimension") then
                                                                                Kill_Boss_Cake = false
                                                                        end
                                                                end
                                                        end
                                                end
                                        elseif data35[2]["Evil"] == 2 or data35[2]["Evil"] == -5 then
                                                CDK_Q_S_C = 8
                                                if data35[2]["Evil"] == 2 then
                                                        TempTable["GetQuest"]("Evil")
                                                elseif data35[2]["Evil"] == -5 then
                                                        if Workspace["Map"]:FindFirstChild("HellDimension") then
                                                                if ((Workspace["Map"]:FindFirstChild("HellDimension"))["WorldPivot"]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 1200 then
                                                                        repeat
                                                                                wait(.1)
                                                                                RemoteFunction((Workspace["Map"]:FindFirstChild("HellDimension"))["WorldPivot"], 1.5)
                                                                        until ((Workspace["Map"]:FindFirstChild("HellDimension"))["WorldPivot"]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10
                                                                        wait(1)
                                                                elseif ((Workspace["Map"]:FindFirstChild("HellDimension"))["WorldPivot"]["Position"] - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1200 then
                                                                        StatsGui()
                                                                        if Enemies:FindFirstChildOfClass("Model") then
                                                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                                                        local tmp36 = {}
                                                                                        tmp36[2], tmp36[1] = idx, val
                                                                                        if tmp36[1]:FindFirstChild("HumanoidRootPart") and (tmp36[1]:FindFirstChild("Humanoid") and ((Workspace["Map"]:FindFirstChild("HellDimension"))["WorldPivot"]["Position"] - tmp36[1]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1000) then
                                                                                                if tmp36[1]["Humanoid"]["Health"] > 0 then
                                                                                                        repeat
                                                                                                                wait()
                                                                                                                RemoteFunction(tmp36[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                                                StatsGui()
                                                                                                        until not tmp36[1]["Parent"] or tmp36[1]["Humanoid"]["Health"] <= 0
                                                                                                end
                                                                                        end
                                                                                end
                                                                        elseif not Enemies:FindFirstChildOfClass("Model") then
                                                                                TempTable["GetTorchX"]("Torch1")
                                                                                if not Enemies:FindFirstChildOfClass("Model") then
                                                                                        TempTable["GetTorchX"]("Torch2")
                                                                                        if not Enemies:FindFirstChildOfClass("Model") then
                                                                                                TempTable["GetTorchX"]("Torch3")
                                                                                                if not Enemies:FindFirstChildOfClass("Model") and Workspace["Map"]:FindFirstChild("HellDimension") then
                                                                                                        Workspace["Map"]["HellDimension"]["Exit"]["CFrame"] = MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"]
                                                                                                        wait(1)
                                                                                                end
                                                                                        end
                                                                                end
                                                                        end
                                                                end
                                                        elseif not Workspace["Map"]:FindFirstChild("HellDimension") then
                                                                if Enemies:FindFirstChild("Soul Reaper") or game["ReplicatedStorage"]:FindFirstChild("Soul Reaper") then
                                                                        Stop_Fast_Attack = true
                                                                        if not Enemies:FindFirstChild("Soul Reaper") and game["ReplicatedStorage"]:FindFirstChild("Soul Reaper") then
                                                                                repeat
                                                                                        wait(.2)
                                                                                        RemoteFunction((game["ReplicatedStorage"]:FindFirstChild("Soul Reaper"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                                until Enemies:FindFirstChild("Soul Reaper")
                                                                                wait(1)
                                                                        end
                                                                        if Enemies:FindFirstChild("Soul Reaper") then
                                                                                RemoteFunction((Enemies:FindFirstChild("Soul Reaper"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 0, 2), 1.5)
                                                                                wait(1)
                                                                        end
                                                                elseif ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones", "Check") > 0 and TempTable["CheckItem"]("Bones") > 500 then
                                                                        repeat
                                                                                wait(.2)
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones", "Check")
                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones", "Buy", 1, 1)
                                                                        until ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Bones", "Check") == 0
                                                                        wait(1)
                                                                        if not Dragon_Talon_C then
                                                                                if TempTable["ffc"](MarketplaceService["Backpack"], "Fire Essence") or TempTable["ffc"](MarketplaceService["Character"], "Fire Essence") then
                                                                                        repeat
                                                                                                TempTable["Status"](tableConcat({
                                                                                                        " Status : Use Fire E",
                                                                                                        "ssence"
                                                                                                }))
                                                                                                TempTable["Equip"]("Fire Essence")
                                                                                                TempTable["wt"](.5)
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon", true)
                                                                                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
                                                                                        until not TempTable["ffc"](MarketplaceService["Backpack"], "Fire Essence") and not TempTable["ffc"](MarketplaceService["Character"], "Fire Essence")
                                                                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
                                                                                        Dragon_Talon_C = true
                                                                                end
                                                                        end
                                                                        if TempTable["ffc"](MarketplaceService["Backpack"], "Hallow Essence") or TempTable["ffc"](MarketplaceService["Character"], "Hallow Essence") then
                                                                                repeat
                                                                                        TempTable["Status"](tableConcat({
                                                                                                " Status : Use Hallow";
                                                                                                " Essence"
                                                                                        }))
                                                                                        TempTable["Equip"]("Hallow Essence")
                                                                                        RemoteFunction(CFrame["new"](-8932.86, 143.258, 6063.31), 1.5)
                                                                                until not TempTable["ffc"](MarketplaceService["Backpack"], "Hallow Essence") and not TempTable["ffc"](MarketplaceService["Character"], "Hallow Essence")
                                                                        end
                                                                elseif not Enemies:FindFirstChild("Soul Reaper") and not ReplicatedStorage:FindFirstChild("Soul Reaper") then
                                                                        TempTable["FarmBone"]()
                                                                end
                                                        end
                                                end
                                        elseif data35[2]["Evil"] == 3 then
                                                repeat
                                                        wait()
                                                        RemoteFunction(CFrame["new"](-12392.2637, 603.319763, -6503.27832), 1.5)
                                                until (Vector3["new"](-12392.2637, 603.319763, -6503.27832) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 2
                                                if CoreGui:FindFirstChild("     ") then
                                                        CoreGui["     "]["Enabled"] = false
                                                end
                                                wait(1)
                                                VirtualInputManager:SendKeyEvent(true, "E", false, game)
                                                wait(1)
                                                VirtualInputManager:SendKeyEvent(false, "E", false, game)
                                                wait(1)
                                                TempTable["click"](MarketplaceService["PlayerGui"]["Main"]["Dialogue"])
                                        elseif data35[2]["Good"] == 3 then
                                                repeat
                                                        wait()
                                                        RemoteFunction(CFrame["new"](-12392.5068, 603.319763, -6596.00586), 1.5)
                                                until (Vector3["new"](-12392.5068, 603.319763, -6596.00586) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 2
                                                if CoreGui:FindFirstChild("     ") then
                                                        CoreGui["     "]["Enabled"] = false
                                                end
                                                wait(1)
                                                VirtualInputManager:SendKeyEvent(true, "E", false, game)
                                                wait(1)
                                                VirtualInputManager:SendKeyEvent(false, "E", false, game)
                                                wait(1)
                                                TempTable["click"](MarketplaceService["PlayerGui"]["Main"]["Dialogue"])
                                        elseif data35[2]["Good"] == 4 and (data35[2]["Evil"] == 4 and Workspace["Map"]["Turtle"]["Cursed"]["BossDoor"]["Position"]["Y"] > 584) then
                                                StatsGui()
                                                repeat
                                                        wait(.1)
                                                        RemoteFunction(CFrame["new"](-12359.1719, 603.319702, -6550.59717, .481593847, 0, -0.87639451, 0, 1, 0, .87639451, 0, .481593847), 1.5)
                                                until (Vector3["new"](-12359.1719, 603.319702, -6550.59717) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
                                                if CoreGui:FindFirstChild("     ") then
                                                        CoreGui["     "]["Enabled"] = false
                                                end
                                                wait(1)
                                                VirtualInputManager:SendKeyEvent(true, "E", false, game)
                                                wait(1)
                                                VirtualInputManager:SendKeyEvent(false, "E", false, game)
                                                wait(1)
                                                TempTable["click"](MarketplaceService["PlayerGui"]["Main"]["Dialogue"])
                                        elseif Workspace["Map"]["Turtle"]["Cursed"]["BossDoor"]["Position"]["Y"] <= 584 then
                                                local data36 = {}
                                                if CoreGui:FindFirstChild("     ") then
                                                        CoreGui["     "]["Enabled"] = true
                                                end
                                                data36[1] = ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("getInventory")
                                                for idx, val in pairs(data36[1]) do
                                                        local info36 = {}
                                                        info36[1], info36[3] = idx, val
                                                        if info36[3]["Type"] == "Sword" then
                                                                if info36[3]["Name"] == "Cursed Dual Katana" then
                                                                        return
                                                                end
                                                        end
                                                end
                                                CDK_Q_S_C = 10
                                                if (Vector3["new"](-12297.5605, 598.726013, -6532.96436) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 100 then
                                                        repeat
                                                                wait()
                                                                RemoteFunction(CFrame["new"](-12379.1406, 601.433167, -6543.60742), 1.5)
                                                        until Boss_Extant or (Vector3["new"](-12379.1406, 601.433167, -6543.60742) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
                                                        repeat
                                                                wait()
                                                                RemoteFunction(CFrame["new"](-12330.197265625, 603.31982421875, -6549.1186523438), 1.5)
                                                                for idx, val in pairs(Enemies:GetChildren()) do
                                                                        local vars36 = {}
                                                                        vars36[2], vars36[3] = idx, val
                                                                        if vars36[3]["Name"] == "Cursed Skeleton Boss" then
                                                                                Boss_Extant = true
                                                                                MarketplaceService["Character"]["HumanoidRootPart"]["CFrame"] = vars36[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0)
                                                                        end
                                                                end
                                                        until Boss_Extant or (Vector3["new"](-12330.197265625, 603.31982421875, -6549.1186523438) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
                                                        wait(1)
                                                        for idx, val in pairs(Enemies:GetChildren()) do
                                                                local temp36 = {}
                                                                temp36[2], temp36[3] = idx, val
                                                                if temp36[3]["Name"] == "Cursed Skeleton Boss" then
                                                                        repeat
                                                                                wait(.1)
                                                                                TempTable["Get_Item_Inventory"]("Tushita")
                                                                                TempTable["Equip"]("Tushita")
                                                                                RemoteFunction(temp36[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
                                                                        until not temp36[3]["Parent"] or temp36[3]["Humanoid"]["Health"] <= 0
                                                                        for idx, val in pairs(data36[1]) do
                                                                                local state36 = {}
                                                                                state36[2], state36[1] = idx, val
                                                                                if state36[1]["Type"] == "Sword" then
                                                                                        if state36[1]["Name"] == "Cursed Dual Katana" then
                                                                                                return
                                                                                        end
                                                                                end
                                                                        end
                                                                end
                                                        end
                                                elseif (Vector3["new"](-12297.5605, 598.726013, -6532.96436) - MarketplaceService["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 100 then
                                                        RemoteFunction(CFrame["new"](-12297.5605, 598.726013, -6532.96436), 1.5)
                                                end
                                        end
                                else
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "OpenDoor", true)
                                end
                        end
                end, warn)
        end
end)
task["spawn"](function()
        while TempTable["wt"]() do
                xpcall(function()
                        for idx, val in pairs(Enemies:GetChildren()) do
                                local cache36 = {}
                                cache36[2], cache36[1] = idx, val
                                if TempTable["ffc"](cache36[1], "Humanoid") and (cache36[1]["Humanoid"]["Health"] <= 0 and TempTable["ffc"](cache36[1], "HumanoidRootPart")) then
                                        if cache36[1]["Humanoid"]["Health"] <= 0 then
                                                cache36[1]:Destroy()
                                        end
                                end
                        end
                        if TempTable["ffc"](MarketplaceService["Character"], "Black Leg") then
                                VirtualInputManager:SendKeyEvent(true, "V", false, game)
                                TempTable["wt"](.1)
                                VirtualInputManager:SendKeyEvent(false, "V", false, game)
                        end
                        if TempTable["ffc"](MarketplaceService["Character"], "HumanoidRootPart") and not TempTable["ffc"](MarketplaceService["Character"]["HumanoidRootPart"], "Lock") then
                                local store36 = {}
                                store36[1] = MarketplaceService["Character"]:FindFirstChild("Humanoid")
                                if store36[1] and store36[1]["Sit"] then
                                        store36[1]["Sit"] = false
                                end
                                store36[2] = Instance["new"]("BodyVelocity")
                                store36[2]["Name"] = "Lock"
                                store36[2]["MaxForce"] = Vector3["new"](1000000000, 1000000000, 1000000000)
                                store36[2]["Velocity"] = Vector3["new"](0, 0, 0)
                                store36[2]["P"] = 10000
                                store36[2]["Parent"] = MarketplaceService["Character"]["HumanoidRootPart"]
                        end
                end, warn)
        end
end)
task["spawn"](function()
        while TempTable["wt"](1) do
                pcall(function()
                        if not TempTable["ffc"](MarketplaceService["Character"], "Highlight") then
                                local tmp37 = {}
                                tmp37[1] = Instance["new"]("Highlight")
                                tmp37[1]["Name"] = "Highlight"
                                tmp37[1]["FillColor"] = Color3["fromRGB"](138, 43, 226)
                                tmp37[1]["OutlineColor"] = Color3["fromRGB"](186, 85, 211)
                                tmp37[1]["FillTransparency"] = 1
                                tmp37[1]["OutlineTransparency"] = 0
                                tmp37[1]["Adornee"] = MarketplaceService["Character"]
                                tmp37[1]["Parent"] = MarketplaceService["Character"]
                        end
                end)
        end
end)
redeem = {
        "Sub2Fer999",
        "Enyu_is_Pro",
        "JCWK",
        "StarcodeHEO",
        "MagicBUS";
        "KittGaming",
        "Sub2CaptainMaui",
        "Sub2OfficialNoobie",
        "TheGreatAce";
        "Sub2NoobMaster123";
        "Sub2Daigrock";
        "Axiore";
        "StrawHatMaine";
        "TantaiGaming",
        "Bluxxy";
        "SUB2GAMERROBOT_EXP1";
        "GAMER_ROBOT_1M";
        "SUBGAMERROBOT_RESET";
        "RESET_5B";
        tableConcat({
                "SUB2GAMERROBOT_RESET";
                "1"
        }),
        "Sub2UncleKizaru",
        "ADMIN_TROLL ";
        "DRAGONABUSE ";
        "DEVSCOOKING "
}
task["spawn"](function()
        for idx, val in pairs(redeem) do
                local data37 = {}
                data37[2], data37[1] = idx, val
                PathfindingService["Remotes"]["Redeem"]:InvokeServer(data37[1])
        end
end)
task["spawn"](function()
        while TempTable["wt"](150) do
                VirtualInputManager:SendKeyEvent(true, "Space", false, game)
                wait(.5)
                VirtualInputManager:SendKeyEvent(false, "Space", false, game)
        end
end)
RootPart = game:GetService("Players")
DataStoreService = RootPart["LocalPlayer"]
TextChatService = function()
        while not DataStoreService["Character"] or not DataStoreService["Character"]:FindFirstChild("HumanoidRootPart") do
                task["wait"](.5)
        end
        return DataStoreService["Character"]:WaitForChild("HumanoidRootPart")
end
HttpService = (TextChatService())["Position"]
Leaderstats = 0
GroupService = 1
task["spawn"](function()
        while task["wait"]() do
                if Quest ~= "Cursed Dual Katana" and (Quest ~= "Evo Race V2" and (Quest ~= "Evo Race V1" and not SROP)) then
                        local info37 = {}
                        task["wait"](GroupService)
                        info37[2] = (TextChatService())["Position"]
                        info37[1] = (info37[2] - HttpService)["Magnitude"]
                        if info37[1] <= 1 then
                                Leaderstats = Leaderstats + GroupService
                                if Leaderstats >= 30 and (Quest ~= "Cursed Dual Katana" and (Quest ~= "Evo Race V2" and (Quest ~= "Evo Race V1" and not SROP))) then
                                        TempTable["HopLowServer"](9)
                                end
                        else
                                Leaderstats = 0
                                HttpService = info37[2]
                        end
                end
        end
end)
task["spawn"](function()
        while task["wait"]() do
                if Team["Map"]:FindFirstChild("Heavenly") then
                        fireproximityprompt(Team["Map"]["HeavenlyDimension"]["Torch1"]["ProximityPrompt"])
                        fireproximityprompt(Team["Map"]["HeavenlyDimension"]["Torch2"]["ProximityPrompt"])
                        fireproximityprompt(Team["Map"]["HeavenlyDimension"]["Torch3"]["ProximityPrompt"])
                end
                if Team["Map"]:FindFirstChild("HellDimension") then
                        fireproximityprompt(Team["Map"]["HellDimension"]["Torch1"]["ProximityPrompt"])
                        fireproximityprompt(Team["Map"]["HellDimension"]["Torch2"]["ProximityPrompt"])
                        fireproximityprompt(Team["Map"]["HellDimension"]["Torch3"]["ProximityPrompt"])
                end
        end
end)
DataStoreService["PlayerGui"]["Notifications"]["Enabled"] = false
task["spawn"](function()
        while task["wait"]() do
                pcall(function()
                        if not(game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]:FindFirstChild("Lock") then
                                local vars37 = {}
                                if (game["Players"]["LocalPlayer"]["Character"]:WaitForChild("Humanoid"))["Sit"] == true then
                                        (game["Players"]["LocalPlayer"]["Character"]:WaitForChild("Humanoid"))["Sit"] = false
                                end
                                vars37[2] = Instance["new"]("BodyVelocity")
                                vars37[2]["Name"] = "Lock"
                                vars37[2]["Parent"] = (game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]
                                vars37[2]["MaxForce"] = Vector3["new"](9000000000, 9000000000, 9000000000)
                                vars37[2]["Velocity"] = Vector3["new"](0, 0, 0)
                        end
                end)
        end
end)
TempTable["wt"](5)
_G["Ew"] = false
Ewx = false
task["spawn"](function()
        while TempTable["wt"]() do
                pcall(function()
                        if Beli["Value"] >= 2500000 and New_World then
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer", "1")
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer", "2")
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer", "3")
                        end
                        if TempTable["tf"](Configs["Gun"], "Kabucha") and (Fragments["Value"] >= 10000 and not TempTable["gi"]("Kabucha")) then
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "Slingshot", "2")
                        end
                        if Beli["Value"] >= 3000000 then
                                if TempTable["tf"](Configs["Sword"], "Bisento") and not TempTable["gi"]("Bisento") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Bisento")
                                end
                                if TempTable["tf"](Configs["Sword"], "Cutlass") and not TempTable["gi"]("Cutlass") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Cutlass")
                                end
                                if TempTable["tf"](Configs["Sword"], "Katana") and not TempTable["gi"]("Katana") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Katana")
                                end
                                if TempTable["tf"](Configs["Sword"], "Dual Katana") and not TempTable["gi"]("Dual Katana") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Dual Katana")
                                end
                                if TempTable["tf"](Configs["Sword"], "Soul Cane") and not TempTable["gi"]("Soul Cane") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Soul Cane")
                                end
                                if TempTable["tf"](Configs["Sword"], "Triple Katana") and not TempTable["gi"]("Triple Katana") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Triple Katana")
                                end
                                if TempTable["tf"](Configs["Sword"], "Iron Mace") and not TempTable["gi"]("Iron Mace") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Iron Mace")
                                end
                                if TempTable["tf"](Configs["Sword"], "Pipe") and not TempTable["gi"]("Pipe") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Pipe")
                                end
                                if TempTable["tf"](Configs["Sword"], "Dual-Headed Blade") and not TempTable["gi"]("Dual-Headed Blade") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Dual-Headed Blade")
                                end
                                if TempTable["tf"](Configs["Gun"], "Musket") and not TempTable["gi"]("Musket") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Musket")
                                end
                                if TempTable["tf"](Configs["Gun"], "Flintlock") and not TempTable["gi"]("Flintlock") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Flintlock")
                                end
                                if TempTable["tf"](Configs["Gun"], "Refined Slingshot") and not TempTable["gi"]("Refined Slingshot") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Refined Slingshot")
                                end
                                if TempTable["tf"](Configs["Gun"], "Dual Flintlock") and not TempTable["gi"]("Dual Flintlock") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Dual Flintlock")
                                end
                                if TempTable["tf"](Configs["Gun"], "Cannon") and not TempTable["gi"]("Cannon") then
                                        ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Cannon")
                                end
                        end
                        if TempTable["tf"](Configs["Sword"], "Midnight Blade") and (ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Ectoplasm", "Check") >= 100 and not TempTable["gi"]("Midnight Blade")) then
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("Ectoplasm", "Buy", 3)
                        end
                        if not klmdlkgf and Level["Value"] >= 2000 then
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyHaki", "Geppo")
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyHaki", "Soru")
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("KenTalk", "Buy")
                                klmdlkgf = true
                        end
                        if not klmdlkgfx and Level["Value"] >= 1000 then
                                ReplicatedStorage["Remotes"]["CommF_"]:InvokeServer("BuyHaki", "Buso")
                                klmdlkgfx = true
                        end
                        TempTable["wt"](100)
                end)
        end
end)
