##
 # respectauth.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

execute at @s[team=Red] run effect give @a[team=!Red,distance=..6] slowness 5 3 true
execute at @s[team=Blue] run effect give @a[team=!Blue,distance=..6] slowness 5 3 true

execute at @s[team=Red] run effect give @a[team=!Red,distance=..6] hunger 5 255 true
execute at @s[team=Blue] run effect give @a[team=!Blue,distance=..6] hunger 5 255 true

execute at @s[team=Red] run scoreboard players set @a[team=!Red,distance=..6] HS_rsptJBCancel 100
execute at @s[team=Blue] run scoreboard players set @a[team=!Blue,distance=..6] HS_rsptJBCancel 100

# Visual indiciator
execute at @s[team=Red] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.808 0.475 1 2",Radius:6f}
execute at @s[team=Blue] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.055 0.000 0.800 2",Radius:6f}

scoreboard players set @s ability3Timer 500
clear @s carrot_on_a_stick{Tags:["auth"]}
playsound entity.evoker.prepare_summon master @a ~ ~ ~ 3