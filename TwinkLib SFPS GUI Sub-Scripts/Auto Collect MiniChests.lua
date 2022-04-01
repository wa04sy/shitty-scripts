local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game.Workspace.MiniChests:GetChildren()) do
wait(.5)
fireclickdetector(v.ClickDetector, 150)
hrp.CFrame = v.CFrame
end