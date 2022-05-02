local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
wait(1)
VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
print("Anti-AFK has started")
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Anti-AFK";
Text = "has been activated, Enjoy!";
})