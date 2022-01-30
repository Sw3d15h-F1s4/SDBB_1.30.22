##
 # marthgrab.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4/Modified by Nathan
##

# Positions the Liam.

execute if block ^ ^ ^3 #melee:all_air at @s run tp @s ~ ~ ~ ~ 1

execute if block ^ ^ ^3 #melee:all_air at @s run effect give @s mining_fatigue 1 3 true

# Grabs opponent according to team: (Uses Sam's OG command, but modded)
execute if block ^ ^ ^3 #melee:all_air at @s[team=Red] run tp @a[team=Blue,distance=0.1..25,sort=nearest,limit=1,scores={gameState=1..2}] ^ ^ ^3
execute if block ^ ^ ^3 #melee:all_air at @s[team=Blue] run tp @a[team=Red,distance=0.1..25,sort=nearest,limit=1,scores={gameState=1..2}] ^ ^ ^3

execute if block ^ ^ ^3 #melee:all_air at @s at @a[distance=0.1..25,sort=nearest,limit=1,scores={gameState=1}] run particle minecraft:sweep_attack ~ ~ ~ 0.4 1 0.4 0.5 10 force

execute if block ^ ^ ^3 #melee:all_air at @s run scoreboard players add @s abilityTimer 500
execute if block ^ ^ ^3 #melee:all_air at @s run clear @s minecraft:carrot_on_a_stick{Tags:["grab"]}
execute if block ^ ^ ^3 #melee:all_air at @s run playsound sdbb:liam.za_hando master @a ~ ~ ~