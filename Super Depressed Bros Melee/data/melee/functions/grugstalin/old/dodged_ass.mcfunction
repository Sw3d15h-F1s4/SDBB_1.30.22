##
 # dodged_ass.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

effect give @s resistance 4 0 true
effect give @s jump_boost 4 0 true
effect give @s speed 4 1 true

particle witch ~ ~ ~ 1 1 1 1 30 normal @a
scoreboard players set @s helperTimer2 400
clear @s minecraft:carrot_on_a_stick{Tags:["dodged_ass"]}
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 