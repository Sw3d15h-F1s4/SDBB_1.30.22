##
 # justliam.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

effect give @s glowing 1 0 false
effect give @s resistance 2 0 true
effect give @s speed 2 1 true
scoreboard players set @s[scores={ultTimer=..0}] ultTimer 2400
scoreboard players set @s SM_suaveMente 1
clear @s[scores={ultTimer=2400}] carrot_on_a_stick{Tags:["justliam"]}
playsound sdbb:liam.ult master @a ~ ~ ~