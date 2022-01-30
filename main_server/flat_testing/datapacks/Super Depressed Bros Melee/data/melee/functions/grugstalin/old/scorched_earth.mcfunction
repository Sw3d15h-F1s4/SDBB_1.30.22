# worse pure cringe!!!! YAY I love copying ability code

# Does the fire stuff.

execute as @s[team=Red] at @e[type=!armor_stand,type=!painting,type=!end_crystal,type=!lightning_bolt,type=!boat,type=!minecart,type=!spectral_arrow,type=!item_frame,type=!leash_knot,type=!ender_pearl,type=!area_effect_cloud,distance=..7,team=!Red] run summon arrow ~ ~3 ~ {Fire:50,CustomNameVisible:0b,Motion:[0.0,-4.0,0.0],CustomName:'{"text":"ноги диктатора"}'}
execute as @s[team=Blue] at @e[type=!armor_stand,type=!painting,type=!end_crystal,type=!lightning_bolt,type=!boat,type=!minecart,type=!spectral_arrow,type=!item_frame,type=!leash_knot,type=!ender_pearl,type=!area_effect_cloud,distance=..7,team=!Blue] run summon arrow ~ ~3 ~ {Fire:50,CustomNameVisible:0b,Motion:[0.0,-4.0,0.0],CustomName:'{"text":"ноги диктатора"}'}

# Radius, will add more unnecessary burning particles when I feel up to it because its midnight yey
summon area_effect_cloud ~ ~ ~ {Particle:"flame",Radius:7f}

# Clears inventory, sets timer, and jwdgnbgfnmbklgfmbvlk;mge;rmvblkremvlrkmvrvr
# SOUNDS
scoreboard players set @s ability2Timer 400
clear @s carrot_on_a_stick{Tags:["scorched"]}
playsound sdbb:grug_stalin.burn master @a ~ ~ ~