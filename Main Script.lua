local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/wa04sy/ui_library_public/main/wall_ui_v2", true))()
local w = library:CreateWindow('⚙️ Stat Menu ⚙️')
w:Section('Autofarm')
local StrB = w:Toggle('💪 Auto Strength 💪', {flag = "strT"})
spawn(function()
    while wait() do
      if w.flags.strT then
              game:GetService("ReplicatedStorage").Events.Train:FireServer("Strength")
          end
     end
end)
local EndB = w:Toggle('🛡️ Auto Endurance 🛡️', {flag = "endT"})
spawn(function()
    while wait() do
      if w.flags.endT then
              game:GetService("ReplicatedStorage").Events.Train:FireServer("Endurance")
          end
     end
end)
local PsyB = w:Toggle('🔮 Auto Psychic 🔮', {flag = "psyT"})
spawn(function()
    while wait() do
      if w.flags.psyT then
              game:GetService("ReplicatedStorage").Events.Train:FireServer("Psychic")
          end
     end
end)
local SSB = w:Toggle('⚔️ Spam Item Skill ⚔️', {flag = "spsk"})
spawn(function()
    while wait() do
      if w.flags.spsk then
              game:GetService("ReplicatedStorage").Events.UseSkill:FireServer("AncientItem",CFrame.new(Vector3.new(math.huge,math.huge,math.huge), Vector3.new(math.huge,math.huge,math.huge)))
          end
     end
end)
local w2 = library:CreateWindow('⚙️ Stat Menu ⚙️')
w2:Section("📜 Auto Quest 📜")
w2:Dropdown("Quests", {
    location = normalQuestChoose;
    flag = "chosenQuest";
    list = {
        "(Choose Quest)";
        "GamesReborn";
        "Anubis";
        "Poseidon";
        "Astro";
        "Terra";
        "Frost";
        "Blaze";
        "Zeus";
        "Frostooth";
        "Santa";
        "Reaper";
    }
 }, function(selectedQuest)
     print("Selected: "..selectedQuest)
 end)
local normalQuest = w2:Toggle('🔴 Auto Quest 🔴', {flag = "normalquests"})
spawn(function()
    while wait() do
      if w2.flags.normalquests then
              game:GetService("ReplicatedStorage").Events.Quest:FireServer(w2.flags.chosenQuest)
          end
     end
end)
w2:Section("📜 Auto Daily Quest 📜")
local StrDailyQuest = w2:Toggle('💪 STR Daily Quest 💪', {flag = "strdailyquest"})
spawn(function()
    while wait() do
      if w2.flags.strdailyquests then
              game:GetService("ReplicatedStorage").Events.Quest:FireServer("DailyStrength")
          end
     end
end)
local EndDailyQuest = w2:Toggle('🛡️ END Daily Quest 🛡️', {flag = "enddailyquests"})
spawn(function()
    while wait() do
      if w2.flags.enddailyquests then
              game:GetService("ReplicatedStorage").Events.Quest:FireServer("DailyEndurance")
          end
     end
end)
local PsyDailyQuest = w2:Toggle('🔮 PSY Daily Quest 🔮', {flag = "psydailyquest"})
spawn(function()
    while wait() do
      if w2.flags.psydailyquests then
              game:GetService("ReplicatedStorage").Events.Quest:FireServer("DailyPsychic")
          end
     end
end)
w2:Section("📜 Auto Weekly Quest 📜")
local StrWeeklyQuest = w2:Toggle('💪 STR Weekly Quest 💪', {flag = "strweeklyquest"})
spawn(function()
    while wait() do
      if w2.flags.strweeklyquest then
              game:GetService("ReplicatedStorage").Events.Quest:FireServer("WeeklyStrength")
          end
     end
end)
local EndWeeklyQuest = w2:Toggle('🛡️ END Weekly Quest 🛡️', {flag = "endweeklyquest"})
spawn(function()
    while wait() do
      if w2.flags.endweeklyquest then
              game:GetService("ReplicatedStorage").Events.Quest:FireServer("WeeklyEndurance")
          end
     end
end)
local PsyWeeklyQuest = w2:Toggle('🔮 PSY Weekly Quest 🔮', {flag = "psyweeklyquest"})
spawn(function()
    while wait() do
      if w2.flags.psyweeklyquest then
              game:GetService("ReplicatedStorage").Events.Quest:FireServer("WeeklyPsychic")
          end
     end
end)
local w3 = library:CreateWindow('⚙️ Buy Menu ⚙️')
w3:Section('⚔️ Ranks | Fusions ⚔️')
local rankT = w3:Toggle('🟡 Auto Rank 🟡', {flag = "rankF"})
spawn(function()
    while wait() do
      if w3.flags.rankF then
        game:GetService("ReplicatedStorage").Functions.BuyRank:InvokeServer()
          end
     end
end)
local fusionT = w3:Toggle('🟡 Auto Fusion 🟡', {flag = "fusionF"})
spawn(function()
    while wait() do
      if w3.flags.fusionF then
        game:GetService("ReplicatedStorage").Functions.BuyFusion:InvokeServer()
          end
     end
end)
w3:Section('✖️ Multipliers ✖️')
w3:Dropdown("Stat Multipliers", {
    location = statMultiplierChoose;
    flag = "chosenMultiplierStat";
    list = {
        "(Choose Multiplier)";
        "StrengthMultiplier";
        "EnduranceMultiplier";
        "PsychicMultiplier";
        "SpeedMultiplier";
        "LuckMultiplier";
        "ChestSpeedMultiplier";
    }
 }, function(chosenStatMultiplierName)
     print("Selected: "..chosenStatMultiplierName)
 end)
local StatMultiT = w3:Toggle('🟡 Auto Multiplier 🟡', {flag = "statMultiplierS"})
spawn(function()
    while wait() do
      if w3.flags.statMultiplierS then
        game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer(w3.flags.chosenMultiplierStat)
          end
     end
end)
local StatMultiB = w3:Button("🟡 Upgrade Multiplier 🟡", function()
    game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer(w3.flags.chosenMultiplierStat)
end)
w3:Section('📦 Buy Chest X1 📦')
w3:SearchBox("Select Chest X1", {
    location = Chests;
    flag = "selectedChest";
    list = {
        "DarkPumpkinChest";
        "BasicChest";
        "VoidChest";
        "ElementalChest";
        "AlienChest";
        "HalloweenChest";
        "LightDarkChest";
        "FestiveChest";
        "GalaxyChest";
        "AncientGodChest";
    }
 }, function(chosenChest)
 print("Selected: "..chosenChest)
 end)
 local CheB = w3:Toggle('🟡 Open Chest X1 🟡', {flag = "chex1"})
spawn(function()
    while wait() do
      if w3.flags.chex1 then
            game:GetService("ReplicatedStorage").Events.PurchaseItem:FireServer(w3.flags.selectedChest)
          end
     end
end)
w3:Section('📦 Buy Chest X3 📦')
w3:SearchBox("Select Chest X3", {
    location = Chests3;
    flag = "selectedChestX3";
    list = {
        "TripleDarkPumpkinChest";
        "TripleBasicChest";
        "TripleVoidChest";
        "TripleElementalChest";
        "TripleAlienChest";
        "TripleHalloweenChest";
        "TripleLightDarkChest";
        "TripleFestiveChest";
        "TripleGalaxyChest";
        "TripleAncientGodChest";
    }
 }, function(chosenChestX3)
 print("Selected: "..chosenChestX3)
 end)
 local CheB = w3:Toggle('🟡 Open Chest X3 🟡', {flag = "chex3"})
spawn(function()
    while wait() do
      if w3.flags.chex3 then
            game:GetService("ReplicatedStorage").Events.PurchaseItem:FireServer(w3.flags.selectedChestX3)
          end
     end
end)
w3:Section("⭐ Transformations ⭐")
w3:SearchBox("(Choose Transformation)", {
   location = Forms;
   flag = "formChoose";
   list = {
       "Sparks";
       "Ninja";
       "Buff Noob";
       "Golden Guardian";
       "Gem Guardian";
       "Forgotten Knight";
       "Fire Ranger";
       "Galactic Guardian";
       "Ancient Warrior";
       "Shadow Lord";
       "Void Emperor";
       "Forgotten Dragon";
       "Sci-Borg";
       "Ocean God";
       "Eternal Lord";
       "Thunder God";
       "Bounty Hunter";
       "Defender";
       "Superhero";
       "Crook";
       "Supervillain";
       "Werewolf";
       "Minotaur";
       "Gryphon";
       "Phoenix";
       "Yeti";
       "Hydra";
       "Reaper";
       "Dragon Ruler";
       "Skeletal Dragon";
       "Demon Axolotl";
       "Shadow Demon King";
       "Universal Destroyer";
       "Headless Horseman";
       "Demon";
       "Dark Knight";
       "Halloween Lord";
       "Skelemancer";
       "Hellfire Skeleton";
       "The Sinister One";
       "Celestial Overlord";
       "Pumpking God";
       "Elf";
       "Reindeer";
       "Snowman";
       "Festive Ninja";
       "Festive Ruler";
       "Santa";
       "Frostooth";
       "Festive Valkyrie";
       "Frostbit Knight";
       "Ice Golem";
       "Peppermint Penguin";
       "Festive Spirit";
       "Almighty Ruler";

   }
}, function(chosenForm)
print("Selected: "..chosenForm)
end)
local buyFormB = w3:Button("🟡 Buy Form 🟡", function()
    game:GetService("ReplicatedStorage").Functions.BuyTransform:InvokeServer(w3.flags.formChoose)
 end)
 local equipB = w3:Button("🟢 Equip Form 🟢", function()
    game:GetService("ReplicatedStorage").Events.EquipTransform:FireServer(w3.flags.formChoose)
 end)
 local w4 = library:CreateWindow('⚙️ Earth TP Menu ⚙️')
w4:Section('🌎 Earth Teleports 🌎')
local islandTP = {
    ['Desert Island'] = CFrame.new(-1640, 55, -1894);
    ['Lost Sea Island'] = CFrame.new(995, 52, 690);
    ['Robot Island'] = CFrame.new(-1467, 68, 847);
    ['Ninja Island'] = CFrame.new(1050, 55, -1977);
    ['Sky Island'] = CFrame.new(-252, 2825, -646);
    }
w4:Dropdown("Choose Island", {
    location = chooseIsland;
    flag = "chosenIsland";
    list = {
        "(Choose Island)";
        "Desert Island";
        "Lost Sea Island";
        "Robot Island";
        "Ninja Island";
        "Sky Island";
    }
 }, function(selectedIsland)
    print("Selected: "..selectedIsland)
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = islandTP[selectedIsland]
 end)

w4:Section('💪 Strength Teleports 💪')
local earthStrTP = {
    ['100 Strength'] = CFrame.new(-295, 70, -161);
    ['1K Strength'] = CFrame.new(-780, 70, -352);
    ['10K Strength'] = CFrame.new(-146, 70, -427);
    ['100K Strength'] = CFrame.new(-960, 70, -170);
    ['5M Strength'] = CFrame.new(-672, 96, -1139);
    ['500M Strength'] = CFrame.new(-672, 96, -1139);
    ['50B Strength'] = CFrame.new(-672, 96, -1139);
    ['30T Strength'] = CFrame.new(-1412, 64, -1875);
    ['10Qa Strength'] = CFrame.new(1142, 54, 939);
    ['25Qi Strength'] = CFrame.new(1004, 58, 840);
    ['10Sp Strength'] = CFrame.new(-1557, 58, 730);
    ['5N Strength'] = CFrame.new(-1781, 58, 826);
    ['100Dc Strength'] = CFrame.new(940, 55, -1903);
    ['6Dd Strength'] = CFrame.new(1150, 59, -1632);
    ['150Td Strength'] = CFrame.new(-1683, 5876, -966);
    ['150Qui Strength'] = CFrame.new(1796, 6771, -1061);
    }
w4:Dropdown("💪 Choose Area 💪", {
    location = chooseEarthStrArea;
    flag = "chosenEarthStrArea";
    list = {
        "(Choose Area)";
        "100 Strength";
        "1K Strength";
        "10K Strength";
        "100K Strength";
        "5M Strength";
        "500M Strength";
        "50B Strength";
        "30T Strength";
        "10Qa Strength";
        "25Qi Strength";
        "10Sp Strength";
        "5N Strength";
        "100Dc Strength";
        "6Dd Strength";
        "150Td Strength";
        "150Qui Strength";
    }
 }, function(selectedEarthStrArea)
    print("Selected: "..selectedEarthStrArea)
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = earthStrTP[selectedEarthStrArea]
 end)

 w4:Section('🛡️ Endurance Teleports 🛡️')
local earthEndTP = {
    ['100 Endurance'] = CFrame.new(-759, 70, -619);
    ['1K Endurance'] = CFrame.new(-743, 70, -398);
    ['10K Endurance'] = CFrame.new(251, 70, -313);
    ['100K Endurance'] = CFrame.new(202, 61, -226);
    ['5M Endurance'] = CFrame.new(-630, 81, -35);
    ['500M Endurance'] = CFrame.new(-740, 78, -46);
    ['50B Endurance'] = CFrame.new(-1524, 54, -1985);
    ['30T Endurance'] = CFrame.new(-1517, 54, -1707);
    ['10Qa Endurance'] = CFrame.new(1293, 43, 833);
    ['25Qi Endurance'] = CFrame.new(815, 43, 708);
    ['10Sp Endurance'] = CFrame.new(-1864, 54, 1205);
    ['5N Endurance'] = CFrame.new(-1622, 50, 1257);
    ['100Dc Endurance'] = CFrame.new(1098, 48, -1843);
    ['6Dd Endurance'] = CFrame.new(1174, 56, -1981);
    ['150Td Endurance'] = CFrame.new(44, 2848, -645);
    ['150Qui Endurance'] = CFrame.new(-468, 2785, -484);
    }
w4:Dropdown("🛡️ Choose Area 🛡️", {
    location = chooseEarthEndArea;
    flag = "chosenEarthEndArea";
    list = {
        "(Choose Area)";
        "100 Endurance";
        "1K Endurance";
        "10K Endurance";
        "100K Endurance";
        "5M Endurance";
        "500M Endurance";
        "50B Endurance";
        "30T Endurance";
        "10Qa Endurance";
        "25Qi Endurance";
        "10Sp Endurance";
        "5N Endurance";
        "100Dc Endurance";
        "6Dd Endurance";
        "150Td Endurance";
        "150Qui Endurance";
    }
 }, function(selectedEarthEndArea)
    print("Selected: "..selectedEarthEndArea)
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = earthEndTP[selectedEarthEndArea]
 end)

 w4:Section('🔮 Psychic Teleports 🔮')
 local earthPsyTP = {
    ['1K Psychic'] = CFrame.new(-879, 72, -436);
    ['10K Psychic'] = CFrame.new(-891, 105, -463);
    ['100K Psychic'] = CFrame.new(185, 43, -517);
    ['5M Psychic'] = CFrame.new(-845, 70, -48);
    ['500M Psychic'] = CFrame.new(387, 162, -511);
    ['50B Psychic'] = CFrame.new(-1485, 57, -1905);
    ['30T Psychic'] = CFrame.new(-1423, 56, -1753);
    ['10Qa Psychic'] = CFrame.new(1000, 55, 961);
    ['25Qi Psychic'] = CFrame.new(1017, 217, 854);
    ['10Sp Psychic'] = CFrame.new(-1929, 51, 488);
    ['5N Psychic'] = CFrame.new(-1670, 313, 789);
    ['100Dc Psychic'] = CFrame.new(1312, 57, -1865);
    ['6Dd Psychic'] = CFrame.new(1021, 57, -1662);
    ['150Td Psychic'] = CFrame.new(-590, 2850, -652);
    ['150Qui Psychic'] = CFrame.new(-252, 2872, -963);
    }
 w4:Dropdown("🔮 Choose Area 🔮", {
     location = chooseEarthPsyArea;
     flag = "chosenEarthPsyArea";
     list = {
         "(Choose Area)";
         "1K Psychic";
         "10K Psychic";
         "100K Psychic";
         "5M Psychic";
         "500M Psychic";
         "50B Psychic";
         "30T Psychic";
         "10Qa Psychic";
         "25Qi Psychic";
         "10Sp Psychic";
         "5N Psychic";
         "100Dc Psychic";
         "6Dd Psychic";
         "150Td Psychic";
         "150Qui Psychic";
     }
  }, function(selectedEarthPsyArea)
     print("Selected: "..selectedEarthPsyArea)
     local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
     hrp.CFrame = earthPsyTP[selectedEarthPsyArea]
  end)
  w4:Section('⚙️ Misc Teleports ⚙️')
local miscEarthTP = {
    ['Spawn'] = CFrame.new(-412, 71, -108);
    ['Portals'] = CFrame.new(-526, 70, -666);
    ['Leaderboards'] = CFrame.new(-411, 70, -665);
    ['Dock'] = CFrame.new(144, 70, -416);
    ['Goals Trainer'] = CFrame.new(395, 86, -580);
    }
w4:Dropdown("Choose Location", {
    location = chooseEarthLocation;
    flag = "chosenEarthLocation";
    list = {
        "(Choose Location)";
        "Spawn";
        "Portals";
        "Leaderboards";
        "Dock";
        "Goals Trainer";
    }
 }, function(selectedEarthLocation)
    print("Selected: "..selectedEarthLocation)
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = miscEarthTP[selectedEarthLocation]
 end)
 local w5 = library:CreateWindow('⚙️ Space TP Menu ⚙️')
w5:Section('🌌 Space Teleports 🌌')
local spaceTP = {
    ['Spacy City'] = CFrame.new(702, 213, 1768);
    ['Corrupted Forest'] = CFrame.new(5168, 440, 4915);
    ['Glacial Outpost'] = CFrame.new(-759, 445, 5345);
    ['Volcanic Ruins'] = CFrame.new(-1023, 445, 706);
    }
w5:Dropdown("Choose Place", {
    location = chooseSpacePlace;
    flag = "chosenSpacePlace";
    list = {
        "(Choose Place)";
        "Space City";
        "Corrupted Forest";
        "Glacial Outpost";
        "Volcanic Ruins";
    }
 }, function(selectedSpacePlace)
    print("Selected: "..selectedSpacePlace)
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = spaceTP[selectedSpacePlace]
 end)
 w5:Section('💪 Strength Teleports 💪')
local spaceStrTP = {
    ['10Sp Strength'] = CFrame.new(1219, 744, 1792);
    ['150Td Strength'] = CFrame.new(1157, 1301, 1788);
    ['40Spd Strength'] = CFrame.new(4606, 371, 4936);
    ['3Ocd Strength'] = CFrame.new(4475, 714, 5174);
    ['900Ocd Strength'] = CFrame.new(-934, 1164, 5514);
    ['63Vg Strength'] = CFrame.new(-1350, 894, 4324);
    ['4Dvg Strength'] = CFrame.new(-1252, 1041, -133);
    ['8.2QaVg Strength'] = CFrame.new(-904, 1155, 847);
    }
w5:Dropdown("💪 Choose Area 💪", {
    location = chooseSpaceStrArea;
    flag = "chosenSpaceStrArea";
    list = {
        "(Choose Area)";
        "10Sp Strength";
        "150Td Strength";
        "40Spd Strength";
        "3Ocd Strength";
        "900Ocd Strength";
        "63Vg Strength";
        "4Dvg Strength";
        "8.2QaVg Strength";
    }
 }, function(selectedSpaceStrArea)
    print("Selected: "..selectedSpaceStrArea)
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = spaceStrTP[selectedSpaceStrArea]
 end)

 w5:Section('🛡️ Endurance Teleports 🛡️')
local spaceEndTP = {
    ['10Sp Endurance'] = CFrame.new(1225, 339, 2705);
    ['150Td Endurance'] = CFrame.new(558, 149, 1183);
    ['40Spd Endurance'] = CFrame.new(5164, 519, 4898);
    ['3Ocd Endurance'] = CFrame.new(5481, 404, 5028);
    ['900Ocd Endurance'] = CFrame.new(-836, 437, 5641);
    ['63Vg Endurance'] = CFrame.new(-670, 413, 6071);
    ['4Dvg Endurance'] = CFrame.new(-1131, 439, 950);
    ['8.2QaVg Endurance'] = CFrame.new(-916, 505, 1571);
    }
w5:Dropdown("🛡️ Choose Area 🛡️", {
    location = chooseSpaceEndArea;
    flag = "chosenSpaceEndArea";
    list = {
        "(Choose Area)";
        "10Sp Endurance";
        "150Td Endurance";
        "40Spd Endurance";
        "3Ocd Endurance";
        "900Ocd Endurance";
        "63Vg Endurance";
        "4Dvg Endurance";
        "8.2QaVg Endurance";
    }
 }, function(selectedSpaceEndArea)
    print("Selected: "..selectedSpaceEndArea)
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = spaceEndTP[selectedSpaceEndArea]
 end)

 w5:Section('🔮 Psychic Teleports 🔮')
 local spacePsyTP = {
    ['10Sp Psychic'] = CFrame.new(1897, 206, 2167);
    ['150Td Psychic'] = CFrame.new(1679, 299, 1094);
    ['40Spd Psychic'] = CFrame.new(4851, 441, 5149);
    ['3Ocd Psychic'] = CFrame.new(5014, 440, 5264);
    ['900Ocd Psychic'] = CFrame.new(-1059, 452, 5539);
    ['63Vg Psychic'] = CFrame.new(-624, 636, 5463);
    ['4Dvg Psychic'] = CFrame.new(-512, 392, 906);
    ['8.2QaVg Psychic'] = CFrame.new(-463, 1010, 674);
    }
 w5:Dropdown("🔮 Choose Area 🔮", {
     location = chooseSpacePsyArea;
     flag = "chosenSpacePsyArea";
     list = {
        "(Choose Area)";
        "10Sp Psychic";
        "150Td Psychic";
        "40Spd Psychic";
        "3Ocd Psychic";
        "900Ocd Psychic";
        "63Vg Psychic";
        "4Dvg Psychic";
        "8.2QaVg Psychic";
    }
  }, function(selectedSpacePsyArea)
     print("Selected: "..selectedSpacePsyArea)
     local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
     hrp.CFrame = spacePsyTP[selectedSpacePsyArea]
  end)
  w5:Section('⚙️ Misc Teleports ⚙️')
local miscSpaceTP = {
    ['Spawn'] = CFrame.new(1898, 210, 1770);
    ['Portals'] = CFrame.new(1171, 210, 1570);
    ['Earth Portal'] = CFrame.new(1221, 210, 1774);
    }
w5:Dropdown("Choose Location", {
    location = chooseSpaceLocation;
    flag = "chosenSpaceLocation";
    list = {
        "(Choose Location)";
        "Spawn";
        "Portals";
        "Earth Portal";
    }
 }, function(selectedSpaceLocation)
    print("Selected: "..selectedSpaceLocation)
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = miscSpaceTP[selectedSpaceLocation]
 end)
 w5:Section('👾 Boss Teleports 👾')
local BossTP = {
    ['Nightmare'] = CFrame.new(4028, 376, 3347);
    ['Frost Entity'] = CFrame.new(-1783, 376, 3262);
    ['Volcagon'] = CFrame.new(1260, -173, -98306);
    }
w5:Dropdown("Choose Boss", {
    location = chooseBossLocation;
    flag = "chosenBossLocation";
    list = {
        "(Choose Boss)";
        "Nightmare";
        "Frost Entity";
        "Volcagon";
    }
 }, function(selectedBossLocation)
    print("Selected: "..selectedBossLocation)
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    hrp.CFrame = BossTP[selectedBossLocation]
 end)
 local w6 = library:CreateWindow('⚙️ Misc Menu ⚙️')
w6:Section('Misc Functions')
local diswB = w6:Button("🔄 Switch Dimensions 🔄", function()
    game:GetService("ReplicatedStorage").Events.ChangeDimension:FireServer()
 end)
local colMCB = w6:Button("💎 Collect MiniChests 💎", function()
local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game.Workspace.MiniChests:GetChildren()) do
wait(.5)
fireclickdetector(v.ClickDetector, 150)
hrp.CFrame = v.CFrame
end
end)
local earthchestsb = w6:Button("🌎 Collect Earth Chests 🌎", function()
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
end)
local spacechestsb = w6:Button("🌌 Collect Space Chests 🌌", function()
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
end)
w6:Section('Extra Functions')
local afkb = w6:Button("💤 Anti AFK 💤", function()
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
end)
local iyb = w6:Button("Infinite Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
local cxb = w6:Button("CMD-X", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end)
print("SPFS GUI has loaded successfully")
wait(5)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "SPFS GUI";
    Text = "has loaded successfully, Enjoy!";
})