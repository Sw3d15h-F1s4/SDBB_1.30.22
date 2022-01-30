##
 # cheater.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

effect give @s speed 10 1 true
effect give @s haste 10 0 true
scoreboard players set @s abilityTimer 500
clear @s minecraft:carrot_on_a_stick{Tags:["cheater"]}
playsound block.beacon.activate master @a ~ ~ ~ 3
