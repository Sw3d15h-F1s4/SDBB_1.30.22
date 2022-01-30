##
 # ironfist.mcfunction
 # Super Sad RP Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

execute if entity @s[team=Red] run summon area_effect_cloud ~ ~1 ~ {Tags:["iron_fist","Red"],Radius:0f,Duration:1200}
execute if entity @s[team=Blue] run summon area_effect_cloud ~ ~1 ~ {Tags:["iron_fist","Blue"],Radius:0f,Duration:1200}
tp @e[tag=iron_fist,limit=1,sort=nearest] @s
tp @e[tag=iron_fist,limit=1,sort=nearest] ~ ~1.5 ~ ~ 0
scoreboard players set @e[tag=iron_fist,limit=1,sort=nearest] projectileLife 0

# Added instant damage AOE near Grug (2 blocks) so that you can't just run against her:

# Instant damage:
# TODO: USE DX,DY,DZ SO IT ONLY HITS THE FRONT OF GRUG
# No idea how to do it, event after looking to see how
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.949 0.886 0.008 4",ReapplicationDelay:1,Radius:3f}
execute if entity @s[team=Red] at @s run effect give @e[type=!#melee:undead,team=!Red,distance=..3] instant_damage 1 0
execute if entity @s[team=Blue] at @s run effect give @e[type=!#melee:undead,team=!Blue,distance=..3] instant_damage 1 0

execute if entity @s[team=Red] at @s run effect give @e[type=#melee:undead,team=!Red,distance=..3] instant_health 1 0
execute if entity @s[team=Blue] at @s run effect give @e[type=#melee:undead,team=!Blue,distance=..3] instant_health 1 0

# Potentially up the cahrge by 1 second. Doesn't need it rn.
scoreboard players set @s helperTimer 100
clear @s carrot_on_a_stick{Tags:["iron_fist"]}
playsound sdbb:grug_stalin.paper_crumble master @a ~ ~ ~ 3