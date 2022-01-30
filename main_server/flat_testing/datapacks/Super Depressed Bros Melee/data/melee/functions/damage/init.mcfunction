scoreboard players set zero newHealth 0
scoreboard players set @s newHealth 0
scoreboard players operation @s newHealth += @s health
scoreboard players operation @s newHealth -= @s toDamage

execute if score @s newHealth matches 20 run attribute @s minecraft:generic.max_health base set 20
execute if score @s newHealth matches 19 run attribute @s minecraft:generic.max_health base set 19
execute if score @s newHealth matches 18 run attribute @s minecraft:generic.max_health base set 18
execute if score @s newHealth matches 17 run attribute @s minecraft:generic.max_health base set 17
execute if score @s newHealth matches 16 run attribute @s minecraft:generic.max_health base set 16
execute if score @s newHealth matches 15 run attribute @s minecraft:generic.max_health base set 15
execute if score @s newHealth matches 14 run attribute @s minecraft:generic.max_health base set 14
execute if score @s newHealth matches 13 run attribute @s minecraft:generic.max_health base set 13
execute if score @s newHealth matches 12 run attribute @s minecraft:generic.max_health base set 12
execute if score @s newHealth matches 11 run attribute @s minecraft:generic.max_health base set 11
execute if score @s newHealth matches 10 run attribute @s minecraft:generic.max_health base set 10
execute if score @s newHealth matches 9 run attribute @s minecraft:generic.max_health base set 9
execute if score @s newHealth matches 8 run attribute @s minecraft:generic.max_health base set 8
execute if score @s newHealth matches 7 run attribute @s minecraft:generic.max_health base set 7
execute if score @s newHealth matches 6 run attribute @s minecraft:generic.max_health base set 6
execute if score @s newHealth matches 5 run attribute @s minecraft:generic.max_health base set 5
execute if score @s newHealth matches 4 run attribute @s minecraft:generic.max_health base set 4
execute if score @s newHealth matches 3 run attribute @s minecraft:generic.max_health base set 3
execute if score @s newHealth matches 2 run attribute @s minecraft:generic.max_health base set 2
execute if score @s newHealth matches 1 run attribute @s minecraft:generic.max_health base set 1
execute if score @s newHealth <= zero newHealth run kill @s
effect give @s instant_health
scoreboard players set @s toDamage 0
tag @s add damageCleanup

schedule function melee:damage/finish 2t