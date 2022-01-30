##
 # exonions.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

execute if entity @s[team=Blue,scores={summonCount=..9}] at @p[team=Red,distance=1..] run summon piglin_brute ~ ~ ~1 {Health:15,Tags:["commie"],Team:Blue,CustomName:'{"text":"The Tsar\'s Left Nut"}',CustomNameVisible:1b,IsImmuneToZombification:1b,HandItems:[{id:"golden_axe",Count:1},{}],HandDropChances:[0,0]}
execute if entity @s[team=Red,scores={summonCount=..9}] at @p[team=Blue,distance=1..] run summon piglin_brute ~ ~ ~1 {Health:15,Tags:["commie"],Team:Red,CustomName:'{"text":"The Tsar\'s Right Nut"}',CustomNameVisible:1b,IsImmuneToZombification:1b,HandItems:[{id:"golden_axe",Count:1},{}],HandDropChances:[0,0]}
scoreboard players add @e[type=piglin_brute,tag=commie] helperTimer 200
scoreboard players set @s ability2Timer 600
clear @s carrot_on_a_stick{Tags:["onions"]}
playsound sdbb:grug_stalin.hiss master @a ~ ~ ~