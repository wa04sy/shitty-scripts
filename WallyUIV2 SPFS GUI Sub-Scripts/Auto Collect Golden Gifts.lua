local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game.workspace.SnowDecorations.Presents:GetDescendants()) do
if v.Name == "ClickDetector" then
wait(.5)
hrp.CFrame = v.Parent.CFrame
fireclickdetector(v, 150)
end
end