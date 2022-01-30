##
 # lightning.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

execute at @s if entity @s[type=minecraft:area_effect_cloud,nbt={Effects:[{Id:32b}],Particle:"minecraft:entity_effect"}] run playsound sdbb:bill_clinton.moan_normal hostile @a ~ ~ ~
data modify entity @s[type=minecraft:area_effect_cloud,nbt={Effects:[{Id:32b}],Particle:"minecraft:entity_effect"}] Particle set value "minecraft:dust -1 1 1 10"
execute if entity @a[scores={heroType=2},team=Blue] as @s at @s run effect give @e[nbt={ActiveEffects:[{Id:32b}]},team=!Blue,type=!#melee:undead,nbt=!{ActiveEffects:[{Id:20b}]}] wither 5 4 true
execute if entity @a[scores={heroType=2},team=Red] as @s at @s run effect give @e[nbt={ActiveEffects:[{Id:32b}]},team=!Red,type=!#melee:undead,nbt=!{ActiveEffects:[{Id:20b}]}] wither 5 4 true

execute if entity @a[scores={heroType=2},team=Red] as @s at @s run effect give @e[type=#melee:undead,nbt={ActiveEffects:[{Id:32b}]},team=!Red,nbt=!{ActiveEffects:[{Id:20b}]}] instant_health 1 0 true
execute if entity @a[scores={heroType=2},team=Blue] as @s at @s run effect give @e[type=#melee:undead,nbt={ActiveEffects:[{Id:32b}]},team=!Blue,nbt=!{ActiveEffects:[{Id:20b}]}] instant_health 1 0 true