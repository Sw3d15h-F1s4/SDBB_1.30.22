##
 # startgame.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

# Mystery
execute if score MysteryMansion mapVote > AtWorldsEnd mapVote if score MysteryMansion mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote > WinterWasteland mapVote run function melee:util/maps/mysterymansion

# Cherry
execute if score AtWorldsEnd mapVote < CherryBlossomValley mapVote if score MysteryMansion mapVote < CherryBlossomValley mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote run function melee:util/maps/cherryblossom

# Winter
execute if score WinterWasteland mapVote > AtWorldsEnd mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote < WinterWasteland mapVote run function melee:util/maps/winterwaste

# At World's
execute if score MysteryMansion mapVote < AtWorldsEnd mapVote if score AtWorldsEnd mapVote > WinterWasteland mapVote if score AtWorldsEnd mapVote > CherryBlossomValley mapVote run function melee:util/maps/atworldsend

# Crust (Tiebreaker) (c = cherry, w = winter, wo = worlds, m - mystery)
execute if score AtWorldsEnd mapVote = CherryBlossomValley mapVote if score MysteryMansion mapVote = CherryBlossomValley mapVote if score CherryBlossomValley mapVote = WinterWasteland mapVote run function melee:util/maps/crust2_tiebreaker
#c/w tie:
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote if score WinterWasteland mapVote > AtWorldsEnd mapVote if score WinterWasteland mapVote > MysteryMansion mapVote run function melee:util/maps/crust2_tiebreaker
#c/wo tie:
execute if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote if score AtWorldsEnd mapVote > WinterWasteland mapVote if score AtWorldsEnd mapVote > MysteryMansion mapVote run function melee:util/maps/crust2_tiebreaker
#c/m tie:
execute if score CherryBlossomValley mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote if score MysteryMansion mapVote > WinterWasteland mapVote if score MysteryMansion mapVote > AtWorldsEnd mapVote run function melee:util/maps/crust2_tiebreaker
#w/wo tie:
execute if score WinterWasteland mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score WinterWasteland mapVote > MysteryMansion mapVote if score AtWorldsEnd mapVote > CherryBlossomValley mapVote if score AtWorldsEnd mapVote > MysteryMansion mapVote run function melee:util/maps/crust2_tiebreaker
#w/m tie:
execute if score WinterWasteland mapVote = MysteryMansion mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score WinterWasteland mapVote > AtWorldsEnd mapVote if score MysteryMansion mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote > AtWorldsEnd mapVote run function melee:util/maps/crust2_tiebreaker
#wo/m tie:
execute if score AtWorldsEnd mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote > CherryBlossomValley mapVote if score AtWorldsEnd mapVote > WinterWasteland mapVote if score MysteryMansion mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote > WinterWasteland mapVote run function melee:util/maps/crust2_tiebreaker
#c/w/wo tie:
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote if score WinterWasteland mapVote > MysteryMansion mapVote if score AtWorldsEnd mapVote > MysteryMansion mapVote run function melee:util/maps/crust2_tiebreaker
#c/w/m tie:
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote = MysteryMansion mapVote if score WinterWasteland mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote if score WinterWasteland mapVote > AtWorldsEnd mapVote if score MysteryMansion mapVote > AtWorldsEnd mapVote run function melee:util/maps/crust2_tiebreaker
#c/wo/m tie:
execute if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote if score AtWorldsEnd mapVote > WinterWasteland mapVote if score MysteryMansion mapVote > WinterWasteland mapVote run function melee:util/maps/crust2_tiebreaker
#w/wo/m tie:
execute if score WinterWasteland mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote = MysteryMansion mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score AtWorldsEnd mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote > CherryBlossomValley mapVote run function melee:util/maps/crust2_tiebreaker


gamemode adventure @a[team=!]
scoreboard players set @a abilityTimer -1
scoreboard players set @a ability2Timer -1
scoreboard players set @a ability3Timer -1
scoreboard players set @a helperTimer -1
scoreboard players set @a helperTimer2 -1
scoreboard players set @a[scores={heroType=..13}] helperTimer3 -1
scoreboard players set @a[scores={heroType=15..}] helperTimer3 -1

# Suave Mente checks (Hotsuke KS Rewards, Rei, Liam, Miser, Davy, Bezos)
scoreboard players set @a[scores={heroType=3}] SM_suaveMente 0
scoreboard players set @a[scores={heroType=8}] SM_suaveMente 0
scoreboard players set @a[scores={heroType=11}] SM_suaveMente 0
scoreboard players set @a[scores={heroType=12}] SM_suaveMente 0
scoreboard players set @a[scores={heroType=14}] SM_suaveMente -1
scoreboard players set @a[scores={heroType=15}] SM_suaveMente 0

# Enables warping on Hibbins' Estate.
execute if score mapType gameState matches 3 run scoreboard players set @a Status 0
execute if score mapType gameState matches 3 run scoreboard players set @e[tag=estate_trap1] helperTimer 60

# Duct Tape Hotsuke fix to not getting arrow when you start. I don't feel like reinventing the wheel with the KS tracking on Hotsuke's givekit.
replaceitem entity @a[scores={heroType=3}] hotbar.7 tipped_arrow{CustomPotionColor:2900446,display:{Name:'[{"text":"150mm","italic":false,"color":"dark_blue"},{"text":" ","color":"white"},{"text":"Caliber","color":"aqua"},{"text":" Round","color":"white"}]',Lore:['[{"text":"Doom Style Fighting,","italic":false,"color":"light_purple"}]','[{"text":"kill your opponents to gain more ammo","italic":false,"color":"light_purple"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Who Needs Aim Hacks and Extra Ammo","italic":false,"color":"dark_purple"}]','[{"text":"When You Have Raw Talent.","italic":false,"color":"dark_purple"}]']},HideFlags:125} 1

function melee:util/giveallkits

scoreboard players set @a[scores={heroType=1}] ultTimer 2400
scoreboard players set @a[scores={heroType=2}] ultTimer 2400
scoreboard players set @a[scores={heroType=3}] ultTimer 0
scoreboard players set @a[scores={heroType=4}] ultTimer 3000
scoreboard players set @a[scores={heroType=5}] ultTimer 2400
scoreboard players set @a[scores={heroType=6}] ultTimer 3300
scoreboard players set @a[scores={heroType=7}] ultTimer 2400
scoreboard players set @a[scores={heroType=8}] ultTimer 2400
scoreboard players set @a[scores={heroType=9}] ultTimer 2400
scoreboard players set @a[scores={heroType=10}] ultTimer 2400
scoreboard players set @a[scores={heroType=11}] ultTimer 2400
scoreboard players set @a[scores={heroType=12}] ultTimer 2200
scoreboard players set @a[scores={heroType=13}] ultTimer 14400
# dead man's chest (playable ult)
scoreboard players set @a[scores={heroType=14,gameState=1}] ultTimer 2700
# captain's call (boss)
scoreboard players set @a[scores={heroType=14,gameState=2}] ultTimer 3600
scoreboard players set @a[scores={heroType=15}] ultTimer 2700
scoreboard players set @a[scores={heroType=16}] ultTimer 2400

# Davy regeneration
scoreboard players set @a[scores={heroType=14}] helperTimer3 140

# Rei Charge reset:
scoreboard players set @a[scores={heroType=8}] summonCount 0

scoreboard players set countdown helperTimer 24000

kill @e[tag=dyfd_victim_stand_red]
kill @e[tag=dyfd_victim_stand_blue]
kill @e[tag=dyfd_user_stand_red]
kill @e[tag=dyfd_user_stand_blue]

tellraw @a "LET THE GAME BEGIN!"

scoreboard players set @a[team=!] gameState 1

scoreboard players reset @a PlayerScore
execute unless score mapType gameState matches 2 run scoreboard objectives setdisplay sidebar SmoothTeamScore
execute if score mapType gameState matches 2 run bossbar set minecraft:koth_display players @a
team join Blue Blue
team join Red Red

scoreboard players set Goal TeamScore 60

execute as @a at @s run playsound sdbb:bg_music music @s

tag @a remove move_check