####
   # dutch_recruitment.mcfunction
   # Super Depressed Bros. Brawl
   # Created by Nathan
####   

execute at @s[team=Red] run team join Red @e[type=!player,type=!armor_stand,type=!painting,type=!end_crystal,type=!lightning_bolt,type=!boat,type=!minecart,type=!spectral_arrow,type=!item_frame,type=!leash_knot,type=!ender_pearl,team=!Red,distance=0.1..10]
execute at @s[team=Blue] run team join Blue @e[type=!player,type=!armor_stand,type=!painting,type=!end_crystal,type=!lightning_bolt,type=!boat,type=!minecart,type=!spectral_arrow,type=!item_frame,type=!leash_knot,type=!ender_pearl,team=!Blue,distance=0.1..10]

execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"campfire_cosy_smoke",Radius:5f}
execute at @s[team=Red] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.800 0.545 0.216 1",Radius:10f}
execute at @s[team=Red] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.839 0.839 0.133 1",Radius:10f}

playsound minecraft:block.bell.use master @a ~ ~ ~ 2 0.7 1
clear @s carrot_on_a_stick{Tags:["recruitment"]}
scoreboard players set @s helperTimer 600