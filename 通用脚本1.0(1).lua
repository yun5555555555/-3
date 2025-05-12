local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "通用脚本"; Text ="载入中"; Duration = 2; })wait("3")

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "通用脚本"; Text ="纯缝合不是特别好"; Duration = 2; })wait("2")

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "感谢您的试用"; Text ="谢谢您"; Duration = 2; })wait("2")

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "通用脚本"; Text ="载入成功"; Duration = 3; })

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("现在时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local xynbui = loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/hun/main/jmlibrary1.lua"))();		--ui部分
local win = xynbui:new("通用脚本")--脚本名字
--
local UITab1 = win:Tab("信息",'3673491501')

local about = UITab1:section("作者信息",false)

about:Label("H.制作")
about:Label("感谢您的支持")
about:Label("祝您健康快乐")
about:Label("感谢游玩")
about:Label("祝您天天开心，身体健康，万事如意，心想事成")

local UITab3 = win:Tab("作者师傅",'16060333448')

local about = UITab3:section("作者师傅",true)

about:Label("洛天依")

local UITab3 = win:Tab("你的信息",'16060333448')

local about = UITab3:section("你的信息",true)

about:Label("你的注入器:"..identifyexecutor())
about:Label("你的账号年龄:"..player.AccountAge.."天")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
about:Label("你现在的服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
about:Label("你现在的服务器id:"..game.GameId)
about:Label("你的用户ID:"..game.Players.LocalPlayer.UserId)
about:Label("获取客户端ID:"..game:GetService("RbxAnalyticsService"):GetClientId())
about:Toggle("脚本框架变小一点", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    about:Button("关闭脚本",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)
    
about:Label("通用脚本")
about:Label("作者QQ：3673491501")
about:Button("点击复作者QQ群",function()
setclipboard("926719137")
end)

local UITab3 = win:Tab("其他脚本",'16060333448')--这里就是什么服务器或者什么什么功能

local about = UITab3:section("其他脚本",true)

about:Button("ohio最好用脚本",function()--里面的字就是脚本名字
 loadstring(game:HttpGet("https://raw.githubusercontent.com/rbxluau/Roblox/main/ScriptHub.lua"))() --这里输入脚本
end)

about:Button("林脚本",function()

AL = "Advanced Logic团队破解"loadstring(game:HttpGet("https://raw.githubusercontent.com/longshu886/longscript/main/linpojie"))()
end)
--下面是根据上面来做下去的
about:Button("落叶中心",function()getgenv().LS="落叶中心" 
loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))()
end

about:Button("冷脚本",function()
getgenv().Leng="冷脚本QQ群815883059" loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/lenglenglenglenglenglenglenglenglenglenglengleng-cold-script-LBT-H/refs/heads/main/LENG-cold-script-LBT-H.txt"))()
end)


about:Button("星河脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AWDX-DYVB/test/main/%E6%B2%B3%E6%B5%81%E6%97%A0%E5%AF%86%E9%92%A5.lua"))()
end)

about:Button("静心脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/jxdjbx/gggggghjjnbb/main/jdjdd"))()
end)

about:Button("脚本中心",function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
end)

about:Button("皮脚本",function()
getgenv().XiaoPi="皮脚本QQ群1002100032" loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
end)

about:Button("鱼脚本",function()
getgenv().Fish = "鱼脚本"loadstring(game:HelpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,115,104,122,46,97,108,47,126,70,105,115,104,83,99,114,105,112,116,78,101,119})end)())))();
 end)

about:Button("神经脚本",function()
loadstring(game:HttpGet("https://github.com/shenjin55/qq-927274889/raw/refs/heads/main/roblox-shen-jin.lua"))()
end)

about:Button("XA HUB",function()
loadstring(game:HttpGet("https://pastebin.com/raw/h8nC0fLb", true))()
end)

about:Button("落叶中星",function()
getgenv().LS="落叶中心" loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))()
end)

about:Button("鬼脚本",function()
ROBLOX = "GHOST_SCRIPT"GS_TEAM = "QQ群858895377"loadstring(game:HttpGet("https://raw.githubusercontent.com/Ghost-Gui-888/Ghost-Script/main/QQ858895377"))()
end)

about:Button("安脚本",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/atoyayaya/ui/main/11451411919')))()
end)

about:Button("小灵脚本",function()
XiaoLing = "小凌中心.Cocoe" loadstring(game:HttpGet("https://raw.githubusercontent.com/flyspeed7/Xiao-Ling-NEO.UI/main/%E2%82%AA%E5%B0%8F%E5%87%8C%E4%B8%AD%E5%BF%83(%E6%96%B0%E7%89%88ui).txt"))("小凌中心")("作者QQ:1211373508")
end)

about:Button("大死妈",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/whenheer/-v4/refs/heads/main/Protected_5320244476072095.lua"))()
end)

local UITab3 = win:Tab("通用",'16060333448')

local about = UITab3:section("通用",true)

about:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 1000, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)

about:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 1000, false, function(Jump)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)

about:Slider('设置重力', 'Sliderflag', 196.2, 196.2, 1000,false, function(Value)
        game.Workspace.Gravity = Value
    end)

about:Button("血量设置",function()
game.Players.LocalPlayer.Character.Humanoid.Health = Value
end)

about:Button("死亡笔记",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
end)

about:Button("转圈",function()
loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end)

local UITab5 = win:Tab("『忍者传奇』",'7734068321')

local about = UITab5:section("『忍者传奇』",true)

about:Button("禁漫中心",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/jm%E5%BF%8D%E8%80%85.lua"))()
end)

about:Button("传送",function()
loadstring(game:HttpGet("https://pastebin.com/raw/UzaUDSPK"))()
end)