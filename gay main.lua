local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/wa04sy/ui_library_public/main/twink_library", true))()
local MainUI = library.Load("SPFS GUI V2")
local w1 = MainUI.AddPage("Autofarm")
local StatLabel = w1.AddLabel("📈 Stat Farm 📈")
local StrToggle = w1.AddToggle("💪 Auto Strength 💪", false, function(strFarm)
strTog = strFarm
    repeat wait()
        game:GetService("ReplicatedStorage").Events.Train:FireServer("Strength")
    until strTog == false
end)
local EndToggle = w1.AddToggle("🛡️ Auto Endurance 🛡️", false, function(endFarm)
endTog = endFarm
    repeat wait()
        game:GetService("ReplicatedStorage").Events.Train:FireServer("Endurance")
    until endTog == false
end)
local PsyToggle = w1.AddToggle("🔮 Auto Psychic 🔮", false, function(psyFarm)
psyTog = psyFarm
    repeat wait()
        game:GetService("ReplicatedStorage").Events.Train:FireServer("Psychic")
    until psyTog == false
end)
local EndAreaToggle = w1.AddToggle("🛡️ Auto Endurance (Area) 🛡️", false, function(endAreaFarm)
endAreaTog = endAreaFarm
    repeat wait()
        game:GetService("ReplicatedStorage").Events.Train:FireServer("EnduranceArea")
    until endAreaTog == false
end)
local ToolLabel = w1.AddLabel("★ Boss Tools ★")
local SkillToggle = w1.AddToggle("⚔️ Spam Item Skill ⚔️", false, function(itemSkill)
skillTog = itemSkill
    repeat wait()
        game:GetService("ReplicatedStorage").Events.UseSkill:FireServer("AncientItem",CFrame.new(Vector3.new(math.huge,math.huge,math.huge), Vector3.new(math.huge,math.huge,math.huge)))
    until skillTog == false
end)
local OtherToolsLabel = w1.AddLabel("★ Other Tools ★")
local AFKEarthChestsToggle = w1.AddToggle("🌎 Auto Collect Earth Chests 🌎", false, function(autocollectearthchest)
AFKEarthChestsTog = autocollectearthchest
    repeat wait()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Santa")
    wait(0.5)
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Frostooth")
    wait(0.5)
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Golden Guardian")
    wait(0.5)
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Festive Valkyrie")
    wait(0.5)
    hrp.CFrame = CFrame.new(-363.256317, 70.9719467, -92.4615784, -0.034941256, 1.11914488e-07, -0.99938935, 1.35075942e-08, 1, 1.11510609e-07, 0.99938935, -9.60302504e-09, -0.034941256)
    wait(1)
    hrp.CFrame = CFrame.new(-360.944946, 70.9719391, -107.263336, -0.00213440997, 9.68144818e-08, -0.999997735, 8.53142623e-09, 1, 9.67964908e-08, 0.999997735, -8.32480307e-09, -0.00213440997)
    wait(1)
    hrp.CFrame = CFrame.new(-364.068726, 71.1820068, -121.736298, 0.0217911229, 5.4246442e-08, -0.999762535, 1.262383e-08, 1, 5.45344783e-08, 0.999762535, -1.38091991e-08, 0.0217911229)
    wait(1)
    hrp.CFrame = CFrame.new(-1625.84717, 54.6794281, -1953.604, 0.999966085, 2.9537965e-08, 0.00823627226, -2.85862107e-08, 1, -1.15674183e-07, -0.00823627226, 1.15434815e-07, 0.999966085)
    wait(1)
    hrp.CFrame = CFrame.new(923.371155, 52.0578461, 888.342163, 0.0468053296, -7.21369231e-09, 0.998904049, -4.61814693e-08, 1, 9.38551725e-09, -0.998904049, -4.65701468e-08, 0.0468053296)
    wait(1)
    hrp.CFrame = CFrame.new(-1681.59399, 68.2730408, 636.994812, 0.996363401, -1.73099366e-08, -0.0852056891, 1.67584044e-08, 1, -7.18818916e-09, 0.0852056891, 5.73413717e-09, 0.996363401)
    wait(1)
    hrp.CFrame = CFrame.new(974.340637, 55.3321228, -1778.00146, -0.000917264086, 1.44596752e-08, 0.999999583, 3.54226799e-08, 1, -1.44271892e-08, -0.999999583, 3.54094318e-08, -0.000917264086)
    wait(1)
    hrp.CFrame = CFrame.new(-251.552948, 2904.53369, -639.810303, 0.999994636, -8.551158e-08, -0.00327212201, 8.536243e-08, 1, -4.57227856e-08, 0.00327212201, 4.54432261e-08, 0.999994636)
    wait(1)
    hrp.CFrame = CFrame.new(-412.060944, 70.7444839, -107.52037, 1, 7.17559843e-08, -3.18366838e-05, -7.175543e-08, 1, 1.752176e-08, 3.18366838e-05, -1.75194756e-08, 1)
    until AFKEarthChestsTog == false
end)
local AFKMiniChestsToggle = w1.AddToggle("💎 Auto Collect MiniChests 💎", false, function(autocollectminichest)
AFKMiniChestsTog = autocollectminichest
    repeat wait()
        local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
        for i,v in pairs(game.Workspace.MiniChests:GetChildren()) do
        wait(.5)
        fireclickdetector(v.ClickDetector, 150)
        hrp.CFrame = v.CFrame
        end
    until AFKMiniChestsTog == false
end)
local AFKSpaceChestsToggle = w1.AddToggle("🌌 Auto Collect Space Chests 🌌", false, function(autocollectspacechest)
AFKSpaceChestsTog = autocollectspacechest
    repeat wait()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Santa")
    wait(0.5)
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Frostooth")
    wait(0.5)
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Golden Guardian")
    wait(0.5)
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Festive Valkyrie")
    wait(0.5)
    hrp.CFrame = CFrame.new(1978.60962, 212.310913, 1697.52051, -0.0311224274, -1.12514137e-07, -0.999515593, -6.38819164e-10, 1, -1.12548776e-07, 0.999515593, -2.86428148e-09, -0.0311224274)
    wait(1)
    hrp.CFrame = CFrame.new(1976.41394, 212.310913, 1840.77979, -0.0789925456, -1.09045509e-07, -0.996875226, -9.72883551e-09, 1, -1.08616405e-07, 0.996875226, 1.11854881e-09, -0.0789925456)
    wait(1)
    hrp.CFrame = CFrame.new(5016.6123, 439.747528, 4869.82617, 0.964619815, 1.19919319e-08, 0.263644785, -5.29557553e-09, 1, -2.61098076e-08, -0.263644785, 2.37898874e-08, 0.964619815)
    wait(1)
    hrp.CFrame = CFrame.new(-903.515442, 444.438965, 5333.16406, 0.91699326, 1.86873006e-08, 0.398902625, -5.68097835e-09, 1, -3.37873942e-08, -0.398902625, 2.87166575e-08, 0.91699326)
    wait(1)
    hrp.CFrame = CFrame.new(-1175.08167, 444.656982, 660.224976, 0.979895413, -1.26500614e-08, 0.19951196, 1.02434239e-09, 1, 5.83740096e-08, -0.19951196, -5.69960541e-08, 0.979895413)
    wait(1)
    hrp.CFrame = CFrame.new(1897.76208, 209.717285, 1770.4989, 4.67872042e-06, -7.7267126e-09, 1, 1.68536278e-08, 1, 7.72663356e-09, -1, 1.68535923e-08, 4.67872042e-06)
    until AFKSpaceChestsTog == false
end)
local AFKGoldenGiftToggle = w1.AddToggle("🎁 Auto Collect Golden Gifts 🎁", false, function(autocollectgoldengifts)
AFKGoldenGiftTog = autocollectgoldengifts
    repeat wait()
        local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
        for i,v in pairs(game.workspace.SnowDecorations.Presents:GetDescendants()) do
        if v.Name == "ClickDetector" then
        wait(.5)
        hrp.CFrame = v.Parent.CFrame
        fireclickdetector(v, 150)
        end
        end
    until AFKGoldenGiftTog == false
end)
local w2 = MainUI.AddPage("Transform")
local MainFormsLabel = w2.AddLabel("⭐ Main Transformations ⭐")
local MainForm1Button = w2.AddButton("🟢 Equip Sparks 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Sparks")
end)
local MainForm2Button = w2.AddButton("🟢 Equip Ninja 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Ninja")
end)
local MainForm3Button = w2.AddButton("🟢 Equip Buff Noob 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Buff Noob")
end)
local MainForm4Button = w2.AddButton("🟢 Equip Golden Guardian 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Golden Guardian")
end)
local MainForm5Button = w2.AddButton("🟢 Equip Gem Guardian 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Gem Guardian")
end)
local MainForm6Button = w2.AddButton("🟢 Equip Forgotten Knight 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Forgotten Knight")
end)
local MainForm7Button = w2.AddButton("🟢 Equip Fire Ranger 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Fire Ranger")
end)
local MainForm8Button = w2.AddButton("🟢 Equip Galactic Guardian 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Galactic Guardian")
end)
local MainForm9Button = w2.AddButton("🟢 Equip Ancient Warrior 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Ancient Warrior")
end)
local MainForm10Button = w2.AddButton("🟢 Equip Shadow Lord 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Shadow Lord")
end)
local MainForm11Button = w2.AddButton("🟢 Equip Void Emperor 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Void Emperor")
end)
local MainForm12Button = w2.AddButton("🟢 Equip Forgotten Dragon 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Forgotten Dragon")
end)
local MainForm13Button = w2.AddButton("🟢 Equip Sci-Borg 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Sci-Borg")
end)
local MainForm14Button = w2.AddButton("🟢 Equip Ocean God 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Ocean God")
end)
local MainForm15Button = w2.AddButton("🟢 Equip Eternal Lord 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Eternal Lord")
end)
local MainForm16Button = w2.AddButton("🟢 Equip Thunder God 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Thunder God")
end)
local MainForm17Button = w2.AddButton("🟢 Equip Bounty Hunter 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Bounty Hunter")
end)
local MainForm18Button = w2.AddButton("🟢 Equip Defender 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Defender")
end)
local MainForm19Button = w2.AddButton("🟢 Equip Superhero 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Hero")
end)
local MainForm20Button = w2.AddButton("🟢 Equip Crook 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Crook")
end)
local MainForm21Button = w2.AddButton("🟢 Equip Supervillain 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Villain")
end)
local FusionFormsLabel = w2.AddLabel("🌟 Fusion Transformations 🌟")
local FusionForm1Button = w2.AddButton("🟢 Equip Werewolf 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Werewolf")
end)
local FusionForm2Button = w2.AddButton("🟢 Equip Minotaur 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Minotaur")
end)
local FusionForm3Button = w2.AddButton("🟢 Equip Gryphon 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Gryphon")
end)
local FusionForm4Button = w2.AddButton("🟢 Equip Phoenix 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Phoenix")
end)
local FusionForm5Button = w2.AddButton("🟢 Equip Yeti 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Yeti")
end)
local FusionForm6Button = w2.AddButton("🟢 Equip Hydra 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Hydra")
end)
local FusionForm7Button = w2.AddButton("🟢 Equip Reaper 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Reaper")
end)
local FusionForm8Button = w2.AddButton("🟢 Equip Dragon Ruler 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Dragon Ruler")
end)
local HalloweenFormsLabel = w2.AddLabel("🎃 Halloween Transformations 🎃")
local HalloweenForm1Button = w2.AddButton("🟢 Equip Skeletal Dragon 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Skeletal Dragon")
end)
local HalloweenForm2Button = w2.AddButton("🟢 Equip Demon Axolotl 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Demon Axolotl")
end)
local HalloweenForm3Button = w2.AddButton("🟢 Equip Shadow Demon King 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Shadow Demon King")
end)
local HalloweenForm4Button = w2.AddButton("🟢 Equip Universal Destroyer 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Universal Destroyer")
end)
local HalloweenForm5Button = w2.AddButton("🟢 Equip Headless Horseman 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Headless Horseman")
end)
local HalloweenForm6Button = w2.AddButton("🟢 Equip Demon 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Demon")
end)
local HalloweenForm7Button = w2.AddButton("🟢 Equip Dark Knight 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Dark Knight")
end)
local HalloweenForm8Button = w2.AddButton("🟢 Equip Halloween Lord 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Halloween Lord")
end)
local HalloweenForm9Button = w2.AddButton("🟢 Equip Skelemancer 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Skelemancer")
end)
local HalloweenLBFormsLabel = w2.AddLabel("🎃 Halloween Leaderboard Transformations 🎃")
local HalloweenLBForm1Button = w2.AddButton("🟢 Equip Hellfire Skeleton 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Hellfire Skeleton")
end)
local HalloweenLBForm2Button = w2.AddButton("🟢 Equip The Sinister One 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("The Sinister One")
end)
local HalloweenLBForm3Button = w2.AddButton("🟢 Equip Celestial Overlord 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Celestial Overlord")
end)
local HalloweenLBForm4Button = w2.AddButton("🟢 Equip Pumpking God 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Pumpking God")
end)
local WinterFormsLabel = w2.AddLabel("❄️ Winter Transformations ❄️")
local WinterForm1Button = w2.AddButton("🟢 Equip Elf 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Elf")
end)
local WinterForm2Button = w2.AddButton("🟢 Equip Reindeer 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Reindeer")
end)
local WinterForm3Button = w2.AddButton("🟢 Equip Snowman 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Snowman")
end)
local WinterForm4Button = w2.AddButton("🟢 Equip Festive Ninja 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Festive Ninja")
end)
local WinterForm5Button = w2.AddButton("🟢 Equip Festive Ruler 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Festive Ruler")
end)
local WinterForm6Button = w2.AddButton("🟢 Equip Santa 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Santa")
end)
local WinterForm7Button = w2.AddButton("🟢 Equip Frostooth 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Frostooth")
end)
local WinterForm8Button = w2.AddButton("🟢 Equip Festive Valkyrie 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Festive Valkyrie")
end)
local WinterForm9Button = w2.AddButton("🟢 Equip Frostbit Knight 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Frostbit Knight")
end)
local WinterForm10Button = w2.AddButton("🟢 Equip Gingerbread King 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Gingerbread King")
end)
local WinterForm11Button = w2.AddButton("🟢 Equip Ice Angel Queen 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Ice Angel Queen")
end)
local WinterForm12Button = w2.AddButton("🟢 Equip Winter Wizard 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Winter Wizard")
end)
local WinterForm13Button = w2.AddButton("🟢 Equip Frost Lord 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Frost Lord")
end)
local WinterLBFormsLabel = w2.AddLabel("❄️ Winter Leaderboard Transformations ❄️")
local WinterLBForm1Button = w2.AddButton("🟢 Equip Ice Golem 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Ice Golem")
end)
local WinterLBForm2Button = w2.AddButton("🟢 Equip Peppermint Penguin 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Peppermint Penguin")
end)
local WinterLBForm3Button = w2.AddButton("🟢 Equip Festive Spirit 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Festive Spirit")
end)
local WinterLBForm4Button = w2.AddButton("🟢 Equip Almighty Ruler 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer("Almighty Ruler")
end)
local w3 = MainUI.AddPage("Auto Quest")
local MainQLabel = w3.AddLabel("📜 Main Quests 📜")
local MainQDropdown = w3.AddDropdown("Quests", {
    "(Choose Quest)",
    "GamesReborn",
    "Anubis",
    "Poseidon",
    "Astro",
    "Terra",
    "Frost",
    "Blaze",
    "Zeus",
    "Frostooth",
    "Santa",
    "Reaper"
    }, function(selectedQuest)
        print("Selected: "..selectedQuest)
    chosenQuest = selectedQuest
end)
local MainQToggle = w3.AddToggle("🔴 Auto Quest 🔴", false, function(mainquests)
MainQTog = mainquests
    repeat wait()
        game:GetService("ReplicatedStorage").Events.Quest:FireServer(chosenQuest)
    until MainQTog == false
end)
local AnubisQLabel = w3.AddLabel("📜 Anubis Quests 📜")
local AnubisQButton = w3.AddButton("🏛️ Do Anubis Quest 🏛️", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    wait(0.25)
    game:GetService("ReplicatedStorage").Events.Quest:FireServer("Anubis")
    wait(0.5)
    hrp.CFrame = CFrame.new(-1525, 62, -1989)
    wait(0.5)
    game:GetService("ReplicatedStorage").Events.Train:FireServer("EnduranceArea")
    wait(1)
    hrp.CFrame = CFrame.new(-1485, 62, -1909)
    wait(0.5)
    game:GetService("ReplicatedStorage").Events.Train:FireServer("Psychic")
    wait(1)
    hrp.CFrame = CFrame.new(-1609, 55, -1774)
    wait(0.5)
    game:GetService("ReplicatedStorage").Events.Train:FireServer("Strength")
    wait(1)
    game:GetService("ReplicatedStorage").Events.Quest:FireServer("Anubis")
    hrp.CFrame = CFrame.new(-412, 71, -108)
end)
local AnubisQToggle = w3.AddToggle("🏛️ AFK Anubis Quest 🏛️", false, function(startafkanubis)
AnubisQTog = startafkanubis
    repeat wait()
        local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        wait(0.25)
        game:GetService("ReplicatedStorage").Events.Quest:FireServer("Anubis")
        wait(0.5)
        hrp.CFrame = CFrame.new(-1525, 62, -1989)
        wait(0.5)
        game:GetService("ReplicatedStorage").Events.Train:FireServer("EnduranceArea")
        wait(1)
        hrp.CFrame = CFrame.new(-1485, 62, -1909)
        wait(0.5)
        game:GetService("ReplicatedStorage").Events.Train:FireServer("Psychic")
        wait(1)
        hrp.CFrame = CFrame.new(-1609, 55, -1774)
        wait(0.5)
        game:GetService("ReplicatedStorage").Events.Train:FireServer("Strength")
        wait(1)
        game:GetService("ReplicatedStorage").Events.Quest:FireServer("Anubis")
        hrp.CFrame = CFrame.new(-412, 71, -108)
    until AnubisQTog == false
end)
local DailyQLabel = w3.AddLabel("📜 Auto Daily Quest 📜")
local StrDailyQToggle = w3.AddToggle("💪 STR Daily Quest 💪", false, function(strdailyquest)
StrDailyQTog = strdailyquest
    repeat wait()
        game:GetService("ReplicatedStorage").Events.Quest:FireServer("DailyStrength")
    until StrDailyQTog == false
end)
local EndDailyQToggle = w3.AddToggle("🛡️ END Daily Quest 🛡️", false, function(enddailyquest)
EndDailyQTog = enddailyquest
    repeat wait()
        game:GetService("ReplicatedStorage").Events.Quest:FireServer("DailyEndurance")
    until EndDailyQTog == false
end)
local PsyDailyQToggle = w3.AddToggle("🔮 PSY Daily Quest 🔮", false, function(psydailyquest)
PsyDailyQTog = psydailyquest
    repeat wait()
        game:GetService("ReplicatedStorage").Events.Quest:FireServer("DailyPsychic")
    until PsyDailyQTog == false
end)
local WeeklyQLabel = w3.AddLabel("📜 Auto Weekly Quest 📜")
local StrWeeklyQToggle = w3.AddToggle("💪 STR Weekly Quest 💪", false, function(strweeklyquest)
StrWeeklyQTog = strweeklyquest
    repeat wait()
        game:GetService("ReplicatedStorage").Events.Quest:FireServer("WeeklyStrength")
    until StrWeeklyQTog == false
end)
local EndWeeklyQToggle = w3.AddToggle("🛡️ END Weekly Quest 🛡️", false, function(endweeklyquest)
EndWeeklyQTog = endweeklyquest
    repeat wait()
        game:GetService("ReplicatedStorage").Events.Quest:FireServer("WeeklyEndurance")
    until EndWeeklyQTog == false
end)
local PsyWeeklyQToggle = w3.AddToggle("🔮 PSY Weekly Quest 🔮", false, function(psyweeklyquest)
PsyWeeklyQTog = psyweeklyquest
    repeat wait()
        game:GetService("ReplicatedStorage").Events.Quest:FireServer("WeeklyPsychic")
    until PsyWeeklyQTog == false
end)
local GoalsLabel = w3.AddLabel("📜 Goals 📜")
local GoalsDropdown = w3.AddDropdown("Select Goal", {
    "TotalEndurance",
    "TotalStrength",
    "TotalPsychic",
    "TotalSpeed",
    "TotalTokens",
    "TotalGems",
    "QuestsCompleted",
    "TimePlayed",
    "ChestOpened",
    "EnemyKills",
    "BossKills"
    }, function(selectedGoal)
        print("Selected: "..selectedGoal)
    chosenGoal = selectedGoal
end)
local GoalsToggle = w3.AddToggle("🔵 Auto Goal 🔵", false, function(startgoalredeem)
GoalsTog = startgoalredeem
    repeat wait()
        game:GetService("ReplicatedStorage").Events.Quest:FireServer(chosenGoal)
    until GoalsTog == false
end)
local w4 = MainUI.AddPage("Auto Buy")
local RFLabel = w4.AddLabel("⚔️ Ranks | Fusions ⚔️")
local RankToggle = w4.AddToggle("🟡 Auto Rank 🟡", false, function(rankF)
rankTog = rankF
    repeat wait()
        game:GetService("ReplicatedStorage").Functions.BuyRank:InvokeServer()
    until rankTog == false
end)
local FusionToggle = w4.AddToggle("🟡 Auto Fusion 🟡", false, function(fusionF)
fusionTog = fusionF
    repeat wait()
        game:GetService("ReplicatedStorage").Functions.BuyFusion:InvokeServer()
    until fusionTog == false
end)
local StatMultiLabel = w4.AddLabel("✖️ Multipliers ✖️")
local StatMultiDropdown = w4.AddDropdown("Chosen Stat Multiplier", {
    "(Choose Multiplier)",
    "StrengthMultiplier",
    "EnduranceMultiplier",
    "PsychicMultiplier",
    "SpeedMultiplier",
    "LuckMultiplier",
    "ChestSpeedMultiplier"
    }, function(chosenStatMultiplierName)
        print("Selected: "..chosenStatMultiplierName)
    chosenMultiplier = chosenStatMultiplierName
end)
local StatMultiToggle = w4.AddToggle("🟡 Auto Multiplier 🟡", false, function(statMultiplierS)
StatMultiTog = statMultiplierS
    repeat wait()
        game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer(chosenMultiplier)
    until StatMultiTog == false
end)
local StatMultiButton = w4.AddButton("🟡 Upgrade Multiplier 🟡", function()
    game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer(chosenMultiplier)
end)
local chestoneLabel = w4.AddLabel("📦 Buy Chest X1 📦")
local chestoneDropdown = w4.AddDropdown("Chosen Chest", {
    "DarkPumpkinChest",
    "BasicChest",
    "VoidChest",
    "ElementalChest",
    "AlienChest",
    "HalloweenChest",
    "LightDarkChest",
    "WinterChest",
    "GalaxyChest",
    "AncientGodChest",
    "HolidayChest"
    }, function(chosenX1Chest)
        print("Selected: "..chosenX1Chest)
    chosenChestX1 = chosenX1Chest
end)
local ChestX1Toggle = w4.AddToggle("🟡 Open Chest X1 🟡", false, function(selectedX1Chest)
ChestX1Tog = selectedX1Chest
    repeat wait()
        game:GetService("ReplicatedStorage").Events.PurchaseItem:FireServer(chosenChestX1)
    until ChestX1Tog == false
end)
local chestthreeLabel = w4.AddLabel("📦 Buy Chest X3 📦")
local chestthreeDropdown = w4.AddDropdown("Chosen Chest", {
    "TripleDarkPumpkinChest",
    "TripleBasicChest",
    "TripleVoidChest",
    "TripleElementalChest",
    "TripleAlienChest",
    "TripleHalloweenChest",
    "TripleLightDarkChest",
    "TripleWinterChest",
    "TripleGalaxyChest",
    "TripleAncientGodChest",
    "TripleHolidayChest"
    }, function(chosenX3Chest)
        print("Selected: "..chosenX3Chest)
    chosenChestX3 = chosenX3Chest
end)
local ChestX3Toggle = w4.AddToggle("🟡 Open Chest X3 🟡", false, function(selectedX3Chest)
ChestX3Tog = selectedX3Chest
    repeat wait()
        game:GetService("ReplicatedStorage").Events.PurchaseItem:FireServer(chosenChestX3)
    until ChestX3Tog == false
end)
local w5 = MainUI.AddPage("Earth TP")
local EarthMiscTPLabel = w5.AddLabel("⚙️ Miscellaneous Teleports ⚙️")
local EarthSpawnTPButton = w5.AddButton("⚪ Spawn ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-412, 71, -108)
end)
local EarthPortalsTPButton = w5.AddButton("⚪ Portals ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-526, 70, -666)
end)
local EarthLeaderboardsTPButton = w5.AddButton("⚪ Leaderboards ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-411, 70, -665)
end)
local EarthDockTPButton = w5.AddButton("⚪ Dock ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(144, 70, -416)
end)
local EarthGoalsTrainerTPButton = w5.AddButton("⚪ Goals Trainer ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(395, 86, -580)
end)
local IslandTPLabel = w5.AddLabel("🏝️ Island Teleports 🏝️")
local DesertIslandTPButton = w5.AddButton("⚪ Desert Island ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1640, 55, -1894)
end)
local LostSeaIslandTPButton = w5.AddButton("⚪ Lost Sea Island ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(995, 52, 690)
end)
local RobotIslandTPButton = w5.AddButton("⚪ Robot Island ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1467, 68, 847)
end)
local NinjaIslandTPButton = w5.AddButton("⚪ Ninja Island ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1050, 55, -1977)
end)
local SkyIslandTPButton = w5.AddButton("⚪ Sky Island ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-252, 2825, -646)
end)
local EarthStrAreaTPLabel = w5.AddLabel("💪 Strength Teleports 💪")
local EarthStrArea1TPButton = w5.AddButton("⚪ 100 Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-295, 70, -161)
end)
local EarthStrArea2TPButton = w5.AddButton("⚪ 1K Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-780, 70, -352)
end)
local EarthStrArea3TPButton = w5.AddButton("⚪ 10K Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-146, 70, -427)
end)
local EarthStrArea4TPButton = w5.AddButton("⚪ 100K Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-960, 70, -170)
end)
local EarthStrArea5TPButton = w5.AddButton("⚪ 5M Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-672, 96, -1139)
end)
local EarthStrArea6TPButton = w5.AddButton("⚪ 500M Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(131, 71, -510)
end)
local EarthStrArea7TPButton = w5.AddButton("⚪ 50B Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1614, 55, -1781)
end)
local EarthStrArea8TPButton = w5.AddButton("⚪ 30T Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1412, 64, -1875)
end)
local EarthStrArea9TPButton = w5.AddButton("⚪ 10Qa Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1142, 54, 939)
end)
local EarthStrArea10TPButton = w5.AddButton("⚪ 25Qi Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1004, 58, 840)
end)
local EarthStrArea11TPButton = w5.AddButton("⚪ 10Sp Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1557, 58, 730)
end)
local EarthStrArea12TPButton = w5.AddButton("⚪ 5N Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1781, 58, 826)
end)
local EarthStrArea13TPButton = w5.AddButton("⚪ 100Dc Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(940, 55, -1903)
end)
local EarthStrArea14TPButton = w5.AddButton("⚪ 6Dd Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1150, 59, -1632)
end)
local EarthStrArea15TPButton = w5.AddButton("⚪ 150Td Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1683, 5876, -966)
end)
local EarthStrArea16TPButton = w5.AddButton("⚪ 150Qui Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1796, 6771, -1061)
end)
local EarthEndAreaTPLabel = w5.AddLabel("🛡️ Endurance Teleports 🛡️")
local EarthEndArea1TPButton = w5.AddButton("⚪ 100 Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-759, 70, -619)
end)
local EarthEndArea2TPButton = w5.AddButton("⚪ 1K Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-743, 70, -398)
end)
local EarthEndArea3TPButton = w5.AddButton("⚪ 10K Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(251, 70, -313)
end)
local EarthEndArea4TPButton = w5.AddButton("⚪ 100K Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(202, 61, -226)
end)
local EarthEndArea5TPButton = w5.AddButton("⚪ 5M Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-630, 81, -35)
end)
local EarthEndArea6TPButton = w5.AddButton("⚪ 500M Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-740, 78, -46)
end)
local EarthEndArea7TPButton = w5.AddButton("⚪ 50B Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1524, 54, -1985)
end)
local EarthEndArea8TPButton = w5.AddButton("⚪ 30T Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1517, 54, -1707)
end)
local EarthEndArea9TPButton = w5.AddButton("⚪ 10Qa Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1293, 43, 833)
end)
local EarthEndArea10TPButton = w5.AddButton("⚪ 25Qi Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(815, 43, 708)
end)
local EarthEndArea11TPButton = w5.AddButton("⚪ 10Sp Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1864, 54, 1205)
end)
local EarthEndArea12TPButton = w5.AddButton("⚪ 5N Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1622, 50, 1257)
end)
local EarthEndArea13TPButton = w5.AddButton("⚪ 100Dc Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1098, 48, -1843)
end)
local EarthEndArea14TPButton = w5.AddButton("⚪ 6Dd Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1174, 56, -1981)
end)
local EarthEndArea15TPButton = w5.AddButton("⚪ 150Td Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(44, 2848, -645)
end)
local EarthEndArea16TPButton = w5.AddButton("⚪ 150Qui Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-468, 2785, -484)
end)
local EarthPsyAreaTPLabel = w5.AddLabel("🔮 Psychic Teleports 🔮")
local EarthPsyArea1TPButton = w5.AddButton("⚪ 1K Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-879, 72, -436)
end)
local EarthPsyArea2TPButton = w5.AddButton("⚪ 10K Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-891, 105, -463)
end)
local EarthPsyArea3TPButton = w5.AddButton("⚪ 100K Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(185, 43, -517)
end)
local EarthPsyArea4TPButton = w5.AddButton("⚪ 5M Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-845, 70, -48)
end)
local EarthPsyArea5TPButton = w5.AddButton("⚪ 500M Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(387, 162, -511)
end)
local EarthPsyArea6TPButton = w5.AddButton("⚪ 50B Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1485, 57, -1905)
end)
local EarthPsyArea7TPButton = w5.AddButton("⚪ 30T Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1423, 56, -1753)
end)
local EarthPsyArea8TPButton = w5.AddButton("⚪ 10Qa Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1000, 55, 961)
end)
local EarthPsyArea9TPButton = w5.AddButton("⚪ 25Qi Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1017, 217, 854)
end)
local EarthPsyArea10TPButton = w5.AddButton("⚪ 10Sp Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1929, 51, 488)
end)
local EarthPsyArea11TPButton = w5.AddButton("⚪ 5N Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1670, 313, 789)
end)
local EarthPsyArea12TPButton = w5.AddButton("⚪ 100Dc Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1312, 57, -1865)
end)
local EarthPsyArea13TPButton = w5.AddButton("⚪ 6Dd Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1021, 57, -1662)
end)
local EarthPsyArea14TPButton = w5.AddButton("⚪ 150Td Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-590, 2850, -652)
end)
local EarthPsyArea15TPButton = w5.AddButton("⚪ 150Qui Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-252, 2872, -963)
end)
local w6 = MainUI.AddPage("Space TP")
local MiscTPLabel = w6.AddLabel("⚙️ Miscellaneous Teleports ⚙️")
local SpaceSpawnTPButton = w6.AddButton("⚪ Spawn ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1898, 210, 1770)
end)
local SpacePortalsTPButton = w6.AddButton("⚪ Portals ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1171, 210, 1570)
end)
local SpaceEarthPortalTPButton = w6.AddButton("⚪ Earth Portal ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1221, 210, 1774)
end)
local SpaceGoalsTrainerTPButton = w6.AddButton("⚪ Goals Trainer ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1116, 210, 1989)
end)
local SpaceTPLabel = w6.AddLabel("🌌 Space Teleports 🌌")
local SpaceCityTPButton = w6.AddButton("⚪ Space City ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(702, 213, 1768)
end)
local CorruptedForestTPButton = w6.AddButton("⚪ Corrupted Forest ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(5168, 440, 4915)
end)
local SpaceGlacialOutpostTPButton = w6.AddButton("⚪ Glacial Outpost ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-759, 445, 5345)
end)
local SpaceVolcanicRuinsTPButton = w6.AddButton("⚪ Volcanic Ruins ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1023, 445, 706)
end)
local BossTPLabel = w6.AddLabel("👾 Boss Teleports 👾")
local NightmareTPButton = w6.AddButton("⚪ Nightmare ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(4028, 376, 3347)
end)
local FrostEntityTPButton = w6.AddButton("⚪ Frost Entity ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1783, 376, 3262)
end)
local VolcagonTPButton = w6.AddButton("⚪ Volcagon ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1260, -173, -98306)
end)
local SpaceStrAreaTPLabel = w6.AddLabel("💪 Strength Teleports 💪")
local SpaceStrArea1TPButton = w6.AddButton("⚪ 10Sp Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1219, 744, 1792)
end)
local SpaceStrArea2TPButton = w6.AddButton("⚪ 150Td Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1157, 1301, 1788)
end)
local SpaceStrArea3TPButton = w6.AddButton("⚪ 40Spd Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(4606, 371, 4936)
end)
local SpaceStrArea4TPButton = w6.AddButton("⚪ 3Ocd Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(4475, 714, 5174)
end)
local SpaceStrArea5TPButton = w6.AddButton("⚪ 900Ocd Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-934, 1164, 5514)
end)
local SpaceStrArea6TPButton = w6.AddButton("⚪ 63Vg Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1350, 894, 4324)
end)
local SpaceStrArea7TPButton = w6.AddButton("⚪ 4Dvg Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1252, 1041, -133)
end)
local SpaceStrArea8TPButton = w6.AddButton("⚪ 8.2QaVg Strength ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-904, 1155, 847)
end)
local SpaceEndAreaTPLabel = w6.AddLabel("🛡️ Endurance Teleports 🛡️")
local SpaceEndArea1TPButton = w6.AddButton("⚪ 10Sp Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1225, 339, 2705)
end)
local SpaceEndArea2TPButton = w6.AddButton("⚪ 150Td Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(558, 149, 1183)
end)
local SpaceEndArea3TPButton = w6.AddButton("⚪ 40Spd Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(5164, 519, 4898)
end)
local SpaceEndArea4TPButton = w6.AddButton("⚪ 3Ocd Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(5481, 404, 5028)
end)
local SpaceEndArea5TPButton = w6.AddButton("⚪ 900Ocd Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-836, 437, 5641)
end)
local SpaceEndArea6TPButton = w6.AddButton("⚪ 63Vg Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-670, 413, 6071)
end)
local SpaceEndArea7TPButton = w6.AddButton("⚪ 4Dvg Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1131, 439, 950)
end)
local SpaceEndArea8TPButton = w6.AddButton("⚪ 8.2QaVg Endurance ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-916, 505, 1571)
end)
local SpacePsyAreaTPLabel = w6.AddLabel("🔮 Psychic Teleports 🔮")
local SpacePsyArea1TPButton = w6.AddButton("⚪ 10Sp Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1897, 206, 2167)
end)
local SpacePsyArea2TPButton = w6.AddButton("⚪ 150Td Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(1679, 299, 1094)
end)
local SpacePsyArea3TPButton = w6.AddButton("⚪ 40Spd Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(4851, 441, 5149)
end)
local SpacePsyArea4TPButton = w6.AddButton("⚪ 3Ocd Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(5014, 440, 5264)
end)
local SpacePsyArea5TPButton = w6.AddButton("⚪ 900Ocd Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-1059, 452, 5539)
end)
local SpacePsyArea6TPButton = w6.AddButton("⚪ 63Vg Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-624, 636, 5463)
end)
local SpacePsyArea7TPButton = w6.AddButton("⚪ 4Dvg Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-491, 437, 901)
end)
local SpacePsyArea8TPButton = w6.AddButton("⚪ 8.2QaVg Psychic ⚪", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = CFrame.new(-463, 1010, 674)
end)