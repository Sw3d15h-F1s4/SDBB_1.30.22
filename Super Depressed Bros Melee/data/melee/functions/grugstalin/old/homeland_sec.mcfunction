##
 # stormofmillenium.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##


execute if entity @s[team=Blue] at @p[team=Red,gamemode=!spectator,distance=..25] run summon piglin_brute ~1 ~ ~ {Health:15,Tags:["commie"],Team:Blue,CustomName:'{"text":"The Tsar\'s Left Nut"}',CustomNameVisible:1b,IsImmuneToZombification:1b,HandItems:[{id:"golden_axe",Count:1},{}],HandDropChances:[0,0]}
execute if entity @s[team=Blue] at @p[team=Red,gamemode=!spectator,distance=..25] run summon piglin_brute ~ ~ ~1 {Health:15,Tags:["commie"],Team:Blue,CustomName:'{"text":"The Tsar\'s Lefter Nut"}',CustomNameVisible:1b,IsImmuneToZombification:1b,HandItems:[{id:"golden_axe",Count:1},{}],HandDropChances:[0,0]}
execute if entity @s[team=Blue] at @p[team=Red,gamemode=!spectator,distance=..25] run summon piglin_brute ~-1 ~ ~ {Health:15,Tags:["commie"],Team:Blue,CustomName:'{"text":"The Tsar\'s Lefterer Nut"}',CustomNameVisible:1b,IsImmuneToZombification:1b,HandItems:[{id:"golden_axe",Count:1},{}],HandDropChances:[0,0]}
execute if entity @s[team=Blue] at @p[team=Red,gamemode=!spectator,distance=..25] run summon piglin_brute ~ ~ ~-1 {Health:15,Tags:["commie"],Team:Blue,CustomName:'{"text":"The Tsar\'s Leftest Nut"}',CustomNameVisible:1b,IsImmuneToZombification:1b,HandItems:[{id:"golden_axe",Count:1},{}],HandDropChances:[0,0]}

execute if entity @s[team=Red] at @p[team=Blue,gamemode=!spectator,distance=..25] run summon piglin_brute ~1 ~ ~ {Health:15,Tags:["commie"],Team:Red,CustomName:'{"text":"The Tsar\'s Right Nut"}',CustomNameVisible:1b,IsImmuneToZombification:1b,HandItems:[{id:"golden_axe",Count:1},{}],HandDropChances:[0,0]}
execute if entity @s[team=Red] at @p[team=Blue,gamemode=!spectator,distance=..25] run summon piglin_brute ~ ~ ~1 {Health:15,Tags:["commie"],Team:Red,CustomName:'{"text":"The Tsar\'s Righter Nut"}',CustomNameVisible:1b,IsImmuneToZombification:1b,HandItems:[{id:"golden_axe",Count:1},{}],HandDropChances:[0,0]}
execute if entity @s[team=Red] at @p[team=Blue,gamemode=!spectator,distance=..25] run summon piglin_brute ~-1 ~ ~ {Health:15,Tags:["commie"],Team:Red,CustomName:'{"text":"The Tsar\'s Righterer Nut"}',CustomNameVisible:1b,IsImmuneToZombification:1b,HandItems:[{id:"golden_axe",Count:1},{}],HandDropChances:[0,0]}
execute if entity @s[team=Red] at @p[team=Blue,gamemode=!spectator,distance=..25] run summon piglin_brute ~ ~ ~-1 {Health:15,Tags:["commie"],Team:Red,CustomName:'{"text":"The Tsar\'s Rightest Nut"}',CustomNameVisible:1b,IsImmuneToZombification:1b,HandItems:[{id:"golden_axe",Count:1},{}],HandDropChances:[0,0]}
scoreboard players add @e[type=piglin_brute,tag=commie] helperTimer 200


scoreboard players set @s ultTimer 2400
clear @s carrot_on_a_stick{Tags:["homeland"]}
playsound sdbb:grug_stalin.ussr_theme master @a ~ ~ ~