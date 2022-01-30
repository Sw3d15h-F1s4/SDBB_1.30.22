##
 # comprehension.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

effect give @s strength 16 1 false
effect give @s glowing 2 0 false
effect give @s slowness 1 2 true
replaceitem entity @s armor.chest diamond_chestplate

# Red team
execute if entity @s[team=Red] run summon area_effect_cloud ^1.2 ^ ^ {Tags:["h_ult1","Red"],Radius:0f,Duration:1200}
execute if entity @s[team=Red] run summon area_effect_cloud ^-1.2 ^ ^ {Tags:["h_ult2","Red"],Radius:0f,Duration:1200}

# Blue team
execute if entity @s[team=Blue] run summon area_effect_cloud ^1.2 ^ ^ {Tags:["h_ult1","Blue"],Radius:0f,Duration:1200}
execute if entity @s[team=Blue] run summon area_effect_cloud ^-1.2 ^ ^ {Tags:["h_ult2","Blue"],Radius:0f,Duration:1200}

# Left (h_ult1)
tp @e[tag=h_ult1,limit=1,sort=nearest] @s
tp @e[tag=h_ult1,limit=1,sort=nearest] ^1.2 ^1.5 ^

# Right (h_ult2)
tp @e[tag=h_ult2,limit=1,sort=nearest] @s
tp @e[tag=h_ult2,limit=1,sort=nearest] ^-1.2 ^1.5 ^

scoreboard players set @s ultTimer 3300
clear @s minecraft:carrot_on_a_stick{Tags:["universe"]}
playsound sdbb:hibbins.universal_comprehension master @a ~ ~ ~ 3