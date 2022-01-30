##
 # cheater.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

execute if entity @s[team=Red] run effect give @a[distance=..5,team=Blue] blindness 5 1 true
execute if entity @s[team=Red] run effect give @a[distance=..5,team=Blue] slowness 5 1 true

execute if entity @s[team=Blue] run effect give @a[distance=..5,team=Red] blindness 5 1 true
execute if entity @s[team=Blue] run effect give @a[distance=..5,team=Red] slowness 5 1 true

# Visual indicator
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.000 0.569 1.000 1",Radius:5f}

scoreboard players set @s ability2Timer 400
clear @s minecraft:carrot_on_a_stick{Tags:["deceptive"]}
playsound block.beacon.power_select master @a ~ ~ ~ 3