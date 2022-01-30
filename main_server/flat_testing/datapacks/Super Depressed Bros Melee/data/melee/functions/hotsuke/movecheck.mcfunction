execute if entity @s[scores={gameState=1}] run tag @s add move_check
execute if entity @s[scores={gameState=0}] run tag @s remove move_check

execute store result score @s posX run data get entity @s Pos[0]
execute store result score @s posY run data get entity @s Pos[1]
execute store result score @s posZ run data get entity @s Pos[2]

execute if score @s posX = @s poscheckX if score @s posY = @s poscheckY if score @s posZ = @s poscheckZ run scoreboard players remove @s[scores={helperTimer=0..}] helperTimer 4

execute store result score @s poscheckX run data get entity @s Pos[0]
execute store result score @s poscheckY run data get entity @s Pos[1]
execute store result score @s poscheckZ run data get entity @s Pos[2]

execute if entity @s[scores={gameState=1}] run schedule function melee:hotsuke/movecheck_helper 4t