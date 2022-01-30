##
 # endgame.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

stopsound @a

scoreboard players reset @a ultTimer
scoreboard players reset @a abilityTimer
scoreboard players reset @a ability2Timer
scoreboard players reset @a ability3Timer
scoreboard players reset @a heroType
scoreboard players reset @a helperTimer
scoreboard players reset @a helperTimer2
scoreboard players reset @a helperTimer3
scoreboard players set countdown helperTimer -1
scoreboard players reset @a killstreak
scoreboard players reset @a killstreakReset
scoreboard players reset @a hotsukeKills

scoreboard players reset @a trueSephiroth
scoreboard players reset @a HS_rsptJBCancel
scoreboard players reset @a SM_suaveMente
scoreboard players reset @a C3_pHealth
scoreboard players reset @a DJ_FearDeath
scoreboard players reset @a summonCount

scoreboard players reset @a Status

clear @a

execute as @a at @s run playsound block.end_portal.spawn master @s ~ ~ ~ 0.7 1 0.7

scoreboard objectives setdisplay sidebar
title @a title [{"text":"=== GAME OVER! ===","bold":true,"underlined":true,"color":"dark_red"}]

#figure out winner in TDM
execute unless score mapType gameState matches 2 if score Red TeamScore > Blue TeamScore run title @a subtitle [{"text":"Red Team Wins!","color":"red"}]
execute unless score mapType gameState matches 2 if score Red TeamScore > Blue TeamScore run scoreboard players add @a[team=Red] totalWins 1
execute unless score mapType gameState matches 2 if score Red TeamScore > Blue TeamScore run scoreboard players add @a[team=Red] keyGive 1

execute unless score mapType gameState matches 2 if score Blue TeamScore > Red TeamScore run title @a subtitle [{"text":"Blue Team Wins!","color":"blue"}]
execute unless score mapType gameState matches 2 if score Blue TeamScore > Red TeamScore run scoreboard players add @a[team=Blue] totalWins 1
execute unless score mapType gameState matches 2 if score Blue TeamScore > Red TeamScore run scoreboard players add @a[team=Blue] keyGive 1

#figure out winner in KOTH
execute if score mapType gameState matches 2 if score Red koth_show > Blue koth_show run title @a subtitle [{"text":"Red Team Wins!","color":"red"}]
execute if score mapType gameState matches 2 if score Red koth_show > Blue koth_show run scoreboard players add @a[team=Red] totalWins 1
execute if score mapType gameState matches 2 if score Red koth_show > Blue koth_show run scoreboard players add @a[team=Red] keyGive 1

execute if score mapType gameState matches 2 if score Red koth_show < Blue koth_show run title @a subtitle [{"text":"Blue Team Wins!","color":"blue"}]
execute if score mapType gameState matches 2 if score Red koth_show < Blue koth_show run scoreboard players add @a[team=Blue] totalWins 1
execute if score mapType gameState matches 2 if score Red koth_show < Blue koth_show run scoreboard players add @a[team=Blue] keyGive 1

scoreboard players reset @a PlayerScore
scoreboard players set countdown helperTimer -1
scoreboard players reset @a gameState
scoreboard players set mapType gameState 0
weather clear

function melee:erased/double_dutch/doubledutchcleanup
tag @a remove dyfd_user
tag @a remove dyfd_victim
tag @a remove spicelife_user
tag @a remove every_breath_use
tag @a remove takedown_user
tag @a remove takedown_use_success

kill @e[type=zombie,name="Suspectum Cantavit"]


spawnpoint @a -9 3 6

schedule function melee:util/returntolobby 8s

kill @e[tag=koth_point]
bossbar set minecraft:koth_display players
bossbar set minecraft:hotsuke_reload players
tag @a remove move_check