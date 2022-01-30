##
 # un_harvest.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

execute at @s[team=Red] run effect give @a[distance=..7,team=!Red] blindness 5 0 true
execute at @s[team=Red] run effect give @a[distance=..7,team=!Red] slowness 10 1 true
execute at @s[team=Red] run effect give @a[distance=..7,team=!Red] hunger 10 1 true

execute at @s[team=Blue] run effect give @a[distance=..7,team=!Blue] blindness 5 0 true
execute at @s[team=Blue] run effect give @a[distance=..7,team=!Blue] slowness 10 1 true
execute at @s[team=Blue] run effect give @a[distance=..7,team=!Blue] hunger 10 1 true

# Summon buff
execute at @s[team=Red] run effect give @e[tag=commieR,distance=..7] speed 8 1 false
execute at @s[team=Blue] run effect give @e[tag=commieB,distance=..7] speed 8 1 false

# Immunity for teammates.
#execute at @s[team=Red] run scoreboard players set @a[team=Red,distance=0.1..10] GS_PoisonIm 60
#execute at @s[team=Blue] run scoreboard players set @a[team=Blue,distance=0.1..10] GS_PoisonIm 60

# Indicator for players.
execute as @s[team=Red] run title @a[distance=..7,team=!Red] title {"text":"Poor Harvests...","color":"dark_red","bold":true,"italic":false}
execute as @s[team=Blue] run title @a[distance=..7,team=!Blue] title {"text":"Poor Harvests...","color":"dark_red","bold":true,"italic":false}


# TO-DO: Change particles to not be hibbins
execute at @s[team=Red] as @a[distance=..7,team=!Red] run particle minecraft:dragon_breath ~ ~ ~ 0.2 0.7 0.2 0.1 9 force
execute at @s[team=Blue] as @a[distance=..7,team=!Blue] run particle minecraft:dragon_breath ~ ~ ~ 0.2 0.7 0.2 0.1 9 force

execute at @s[team=Red] as @a[distance=..7,team=!Red] run particle minecraft:soul ~ ~ ~ 0 0.7 0.2 0.1 9 force
execute at @s[team=Blue] as @a[distance=..7,team=!Blue] run particle minecraft:soul ~ ~ ~ 0 0.7 0.2 0.1 9 force

# A visual
execute if entity @s[team=Blue] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.506 0.431 0.216 2",Radius:7f,Duration:5}
execute if entity @s[team=Red] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.725 0.486 0.043 2",Radius:7f,Duration:5}
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"smoke",Radius:7f}

# 30 seconds, 40 seconds if hit
scoreboard players set @s ability2Timer 600
execute at @s[team=Red] if entity @a[team=!Red,distance=..7] run scoreboard players add @s ability2Timer 100
execute at @s[team=Blue] if entity @a[team=!Blue,distance=..7] run scoreboard players add @s ability2Timer 100
clear @s minecraft:carrot_on_a_stick{Tags:["un_harvest"]}
playsound sdbb:grug_stalin.hiss master @a ~ ~ ~ 3