##
 # purecringe.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

execute at @a[distance=1..10] run summon arrow ~ ~3 ~ {Fire:100,Motion:[0.0,-4.0,0.0]}
scoreboard players set @s ultTimer 1800
clear @s carrot_on_a_stick{Tags:["cringe"]}
playsound sdbb:drip_sam.pure_cringe master @a ~ ~ ~