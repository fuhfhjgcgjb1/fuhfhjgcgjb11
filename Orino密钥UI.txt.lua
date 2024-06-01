local OrionLib =
    loadstring(
    game:HttpGet(
        ("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion")
    )
)() 
local Player = game.Players.LocalPlayer 
local Window =
    OrionLib:MakeWindow(
    {
        Name = "NN中心密钥系统",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "Orion试验",
        IntroText = "正在加载脚本..."
    }
) 

function MakeScriptHub()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\100\104\100\98\120\117\98\47\110\110\115\105\101\106\119\47\109\97\105\110\47\71\85\73\89\68\83\83\46\108\117\97\34\41\41\40\41\10")()
end

OrionLib:MakeNotification(
    {
        Name = "已登录！",
        Content = "你需要密钥" .. Player.Name .. " ",
        Image = "rbxassetid://4483345998",
        Time = 5
    }
) 

getgenv().Key = "fuhfhjgcgjb2024" 
getgenv().KeyInput = "隐藏密码" 

local Tab =
    Window:MakeTab(
    {
        Name = "验证",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
) 

Tab:AddTextbox(
    {
        Name = "密钥",
        Default = "",
        TextDisappear = true,
        Callback = function(Value)
            getgenv().KeyInput = Value
        end
    }
) 

Tab:AddButton(
    {
        Name = "检查密钥",
        Callback = function()
            if getgenv().KeyInput == getgenv().Key then
                OrionLib:MakeNotification(
                    {
                        Name = "正在检查密钥",
                        Content = "正在检查您输入的密钥",
                        Image = "rbxassetid://4483345998",
                        Time = 5
                    }
                )
                wait(2)
                OrionLib:MakeNotification(
                    {
                        Name = "密钥正确！",
                        Content = "密钥正确！",
                        Image = "rbxassetid://4483345998",
                        Time = 5
                    }
                )
                wait(1)
                
                OrionLib:Destroy()
                wait(.3)
                MakeScriptHub()
            else
                OrionLib:MakeNotification(
                    {
                        Name = "正在检查密钥",
                        Content = "正在检查您输入的密钥",
                        Image = "rbxassetid://4483345998",
                        Time = 5
                    }
                )
                wait(2)
                OrionLib:MakeNotification(
                    {
                        Name = "密钥错误！",
                        Content = "密钥错误",
                        Image = "rbxassetid://4483345998",
                        Time = 5
                    }
                )
            end
        end
    }
) 

Tab:AddButton(
    {
        Name = "获取密钥",
        Callback = function()
            setclipboard("263575982") 
        end
    }
)

OrionLib:Init() 