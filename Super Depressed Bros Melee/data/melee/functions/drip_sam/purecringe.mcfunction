##
 # purecringe.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

execute at @e[type=!armor_stand,type=!painting,type=!end_crystal,type=!lightning_bolt,type=!boat,type=!minecart,type=!spectral_arrow,type=!item_frame,type=!leash_knot,type=!ender_pearl,type=!area_effect_cloud,distance=0.1..15] run summon arrow ~ ~3 ~ {Fire:100,Motion:[0.0,-4.0,0.0],CustomNameVisible:0b,CustomName:'{"text":"Dream stans"}'}
scoreboard players set @s ultTimer 1800
clear @s carrot_on_a_stick{Tags:["cringe"]}
playsound sdbb:drip_sam.pure_cringe master @a ~ ~ ~