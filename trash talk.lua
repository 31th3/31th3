getgenv().keytoclick = "U"
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = keytoclick
tool.Activated:connect(function()
    local vim = game:service("VirtualInputManager")
vim:SendKeyEvent(true, keytoclick, false, game)
end)
tool.Parent = game.Players.LocalPlayer.Backpack

game.StarterGui:SetCore("SendNotification", {
                        Title = "By 31th3",
                        Text = "Done😎",
                        Duration = 10,
                        Button1 = "Oki!"
                    })

local player = game.Players.LocalPlayer

local function connectCharacterAdded()
    player.CharacterAdded:Connect(onCharacterAdded)
end

connectCharacterAdded()

player.CharacterRemoving:Connect(function()
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local garbage = {
    'ur bad',
    'ez',
    'u so bad',
    'EZ KID',
    'dont eat',
    'no aim',
    'GET BETTER',
    'LOLOLOLOLOLOLOL',
    'grip some aim',
    'this thing',
    'newbie',
    'poron',
    'call',
    'PERIOD',
    'RUN MY 1s SON',
    'LOL',
    'UR SO POOR',
    'ew',
    'dog',
    'seed',
    'im not locking ur just bad',
    'kid im not locking XDXDXDXD ur just bad',
    'sad',
    'sonned',
    'how did u fail to get me',
}

function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.U and gameProcessedEvent == false then        
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        garbage[math.random(1,#garbage)],
        "All"
    )
    end
end
 
game:GetService("UserInputService").InputBegan:connect(TrashTalk)