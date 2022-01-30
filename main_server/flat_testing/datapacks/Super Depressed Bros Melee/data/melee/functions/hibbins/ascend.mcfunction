##
 # ascend.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

effect give @s strength 5 0 true
effect give @s speed 5 0 true
execute if entity @s[team=Red] run effect give @a[team=Blue] glowing 10 0 false
execute if entity @s[team=Blue] run effect give @a[team=Red] glowing 10 0 false
scoreboard players set @s ability2Timer 700
clear @s minecraft:carrot_on_a_stick{Tags:["ascend"]}
playsound sdbb:hibbins.ascension master @a ~ ~ ~ 3