##
 # sweetrelease.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

summon minecraft:potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Duration:60,Id:32,Amplifier:5}]}},Motion:[0.0,0.0,0.6]}
summon minecraft:potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Duration:60,Id:32,Amplifier:5}]}},Motion:[0.6,0.0,0.6]}
summon minecraft:potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Duration:60,Id:32,Amplifier:5}]}},Motion:[-0.6,0.0,0.6]}
summon minecraft:potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Duration:60,Id:32,Amplifier:5}]}},Motion:[0.0,0.0,-0.6]}
summon minecraft:potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Duration:60,Id:32,Amplifier:5}]}},Motion:[0.6,0.0,-0.6]}
summon minecraft:potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Duration:60,Id:32,Amplifier:5}]}},Motion:[-0.6,0.0,-0.6]}
summon minecraft:potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Duration:60,Id:32,Amplifier:5}]}},Motion:[0.0,0.0,0.0]}
summon minecraft:potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Duration:60,Id:32,Amplifier:5}]}},Motion:[0.6,0.0,0.0]}
summon minecraft:potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Duration:60,Id:32,Amplifier:5}]}},Motion:[-0.6,0.0,0.0]}

scoreboard players set @s ultTimer 2600
clear @s carrot_on_a_stick{Tags:["release"]}
playsound sdbb:bill_clinton.moan_ult master @a ~ ~ ~