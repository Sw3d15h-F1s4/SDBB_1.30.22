##
 # supersaiyan.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

effect give @s health_boost 7 4 true
effect give @s instant_health 1 100 true
effect give @s glowing 7 1 false
effect give @s speed 7 6 true

scoreboard players set @s ultTimer 2400
clear @s carrot_on_a_stick{Tags:["saiyan"]}
playsound sdbb:reaper.ui_theme master @a ~ ~ ~