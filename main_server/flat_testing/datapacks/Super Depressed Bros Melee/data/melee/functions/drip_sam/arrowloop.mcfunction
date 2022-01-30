##
 # arrowloop.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

scoreboard players add @s projectileLife 1

execute if entity @s[tag=redteam] run tp @s ~ ~ ~ facing entity @a[distance=0..10,sort=nearest,limit=1,team=!Red,gamemode=!spectator]
execute if entity @s[tag=blueteam] run tp @s ~ ~ ~ facing entity @a[distance=0..10,sort=nearest,limit=1,team=!Blue,gamemode=!spectator]

tp @s ^ ^ ^0.8

execute as @s unless block ~ ~ ~ #melee:all_air run scoreboard players set @s projectileLife 100
execute if entity @s[tag=redteam] at @s if entity @a[distance=0..1,team=!Red] run scoreboard players set @s projectileLife 1001
execute if entity @s[tag=blueteam] at @s if entity @a[distance=0..1,team=!Blue] run scoreboard players set @s projectileLife 1001
execute as @s[scores={projectileLife=1001}] if entity @s[tag=redteam] run effect give @a[distance=0..1.5,team=!Red] resistance 1 1 true
execute as @s[scores={projectileLife=1001}] if entity @s[tag=redteam] run effect give @a[distance=0..1.5,team=!Red] instant_damage 1 0 true
execute as @s[scores={projectileLife=1001}] if entity @s[tag=blueteam] run effect give @a[distance=0..1.5,team=!Blue] resistance 1 1 true
execute as @s[scores={projectileLife=1001}] if entity @s[tag=blueteam] run effect give @a[distance=0..1.5,team=!Blue] instant_damage 1 0 true
kill @s[scores={projectileLife=64..}]

particle dust 1 0.569 0 2 ~ ~ ~ 0 0 0 0.1 2 force @a