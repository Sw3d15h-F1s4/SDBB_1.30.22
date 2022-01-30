##
 # loop.mcfunction
 # Garthorb projectile loop!
 #
 # Created by Sw3d15h_F1s4, copied by Nathan
##

scoreboard players add @s projectileLife 1

tp @s ^ ^ ^0.5

execute as @s unless block ~ ~ ~ #melee:all_air run scoreboard players set @s projectileLife -500
execute if entity @e[distance=0..1.75,tag=!garthorb_ray,tag=!estate_trap1] run scoreboard players add @s projectileLife 1000

execute as @s[scores={projectileLife=1000..}] run effect give @e[distance=0..2,tag=!garthorb_ray,tag=!estate_trap1] resistance 1 0 true
execute as @s[scores={projectileLife=1000..}] run effect give @e[distance=0..2,tag=!garthorb_ray,tag=!estate_trap1] instant_damage 1 0 true

particle dust 0.529 0.376 0.812 2 ~ ~ ~ 0 0 0 0.1 5 force @a
particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.6 5 force @a

kill @s[scores={projectileLife=100..}]
kill @s[scores={projectileLife=-500}]
