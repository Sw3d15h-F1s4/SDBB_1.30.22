##
 # arrowloop.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

scoreboard players add @s projectileLife 1
tp @s[tag=Red] ~ ~ ~ facing entity @a[distance=0..20,gamemode=!spectator,sort=nearest,limit=1,team=!Red]
tp @s[tag=Blue] ~ ~ ~ facing entity @a[distance=0..20,gamemode=!spectator,sort=nearest,limit=1,team=!Blue]
tp @s ^ ^ ^0.6

execute as @s unless block ~ ~ ~ #melee:all_air run scoreboard players set @s projectileLife 100
execute if entity @a[scores={heroType=6},team=Red] run execute as @s if entity @a[distance=0..1,team=!Red] run scoreboard players set @s projectileLife 1001
execute if entity @a[scores={heroType=6},team=Blue] run execute as @s if entity @a[distance=0..1,team=!Blue] run scoreboard players set @s projectileLife 1001
execute as @s[scores={projectileLife=1001}] if entity @a[scores={heroType=6},team=Red] run effect give @a[distance=0..1.5,team=!Red] instant_damage 1 0 true
execute as @s[scores={projectileLife=1001}] if entity @a[scores={heroType=6},team=Red] run effect give @a[distance=0..1.5,team=!Red] glowing 5 0 true
execute as @s[scores={projectileLife=1001}] if entity @a[scores={heroType=6},team=Red] run effect give @a[distance=0..1.5,team=!Red] slowness 5 0 true

execute as @s[scores={projectileLife=1001}] if entity @a[scores={heroType=6},team=Blue] run effect give @a[distance=0..1.5,team=!Blue] instant_damage 1 0 true
execute as @s[scores={projectileLife=1001}] if entity @a[scores={heroType=6},team=Blue] run effect give @a[distance=0..1.5,team=!Blue] glowing 5 0 true
execute as @s[scores={projectileLife=1001}] if entity @a[scores={heroType=6},team=Blue] run effect give @a[distance=0..1.5,team=!Blue] slowness 5 0 true

kill @s[scores={projectileLife=100..}]

execute if entity @s[tag=Blue] run particle dust 0.125 0.071 0.608 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a
execute if entity @s[tag=Red] run particle dust 0.812 0.027 0.357 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a
particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.6 2 force @a