##
 # curse.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

# Replaced Weakness with Blindness for 5 seconds! Fun!!

execute if entity @s[team=Red] run effect give @a[distance=..10,team=!Red] blindness 5 0 true
execute if entity @s[team=Red] run effect give @a[distance=..10,team=!Red] slowness 10 1 true
execute if entity @s[team=Red] run effect give @a[distance=..10,team=!Red] glowing 10 0 false

execute if entity @s[team=Blue] run effect give @a[distance=..10,team=!Blue] blindness 5 0 true
execute if entity @s[team=Blue] run effect give @a[distance=..10,team=!Blue] slowness 10 1 true
execute if entity @s[team=Blue] run effect give @a[distance=..10,team=!Blue] glowing 10 0 false

# Indicator for players.
title @p[distance=0.1..10,team=!Red] title {"text":"You're cursed!","color":"dark_red","bold":true,"italic":false}
title @p[distance=0.1..10,team=!Blue] title {"text":"You're cursed!","color":"dark_red","bold":true,"italic":false}

execute at @s[team=Red] as @a[distance=..10,team=!Red] run particle minecraft:dragon_breath ~ ~ ~ 0.2 0.7 0.2 0.1 9 force
execute at @s[team=Blue] as @a[distance=..10,team=!Blue] run particle minecraft:dragon_breath ~ ~ ~ 0.2 0.7 0.2 0.1 9 force

execute at @s[team=Red] as @a[distance=..10,team=!Red] run particle minecraft:soul ~ ~ ~ 0 0.7 0.2 0.1 9 force
execute at @s[team=Blue] as @a[distance=..10,team=!Blue] run particle minecraft:soul ~ ~ ~ 0 0.7 0.2 0.1 9 force

# A visual
execute if entity @s[team=Blue] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.580 0.286 0.855 2",Radius:10f,Duration:5}
execute if entity @s[team=Red] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.859 0.125 0.467 2",Radius:10f,Duration:5}
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"soul",Radius:10f}

scoreboard players set @s ability3Timer 500
clear @s minecraft:carrot_on_a_stick{Tags:["curse"]}
playsound sdbb:hibbins.scarlet_curse master @a ~ ~ ~ 3