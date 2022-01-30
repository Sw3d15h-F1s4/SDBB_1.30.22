##
 # sus.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4/Modified by Nathan
##

# Made them move faster, and has an actual folow range (500, like Bezos)
# Reduced Knockback on stick from 5 to 2.
# Reduced Sharpness from 5 to 3 to compensate for high speed.

execute if entity @s[team=Red] run summon zombie ^-2 ^ ^ {CustomNameVisible:1b,Team:"Red",CustomName:'{"text":"Suspectum Cantavit"}',HandItems:[{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Soggetto Permaloso","color":"dark_red","bold":true}',Lore:['{"text":"sus","color":"dark_red","bold":true,"italic":true,"underlined":true}']},Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:knockback",lvl:2s}]}},{}],ArmorItems:[{},{},{id:"golden_chestplate",Count:1},{id:"minecraft:golden_helmet",Count:1b}],Attributes:[{Name:"generic.follow_range",Base:500},{Name:"generic.movement_speed",Base:0.35}]}
execute if entity @s[team=Red] run summon zombie ^2 ^ ^ {CustomNameVisible:1b,Team:"Red",CustomName:'{"text":"Suspectum Cantavit"}',HandItems:[{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Soggetto Permaloso","color":"dark_red","bold":true}',Lore:['{"text":"sus","color":"dark_red","bold":true,"italic":true,"underlined":true}']},Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:knockback",lvl:2s}]}},{}],ArmorItems:[{},{},{id:"golden_chestplate",Count:1},{id:"minecraft:golden_helmet",Count:1b}],Attributes:[{Name:"generic.follow_range",Base:500},{Name:"generic.movement_speed",Base:0.35}]}
execute if entity @s[team=Red] run summon zombie ^ ^1 ^-2 {CustomNameVisible:1b,Team:"Red",CustomName:'{"text":"Suspectum Cantavit"}',HandItems:[{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Soggetto Permaloso","color":"dark_red","bold":true}',Lore:['{"text":"sus","color":"dark_red","bold":true,"italic":true,"underlined":true}']},Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:knockback",lvl:2s}]}},{}],ArmorItems:[{},{},{id:"golden_chestplate",Count:1},{id:"minecraft:golden_helmet",Count:1b}],Attributes:[{Name:"generic.follow_range",Base:500},{Name:"generic.movement_speed",Base:0.35}]}

execute if entity @s[team=Blue] run summon zombie ^-2 ^ ^ {CustomNameVisible:1b,Team:"Blue",CustomName:'{"text":"Suspectum Cantavit"}',HandItems:[{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Soggetto Permaloso","color":"dark_red","bold":true}',Lore:['{"text":"sus","color":"dark_red","bold":true,"italic":true,"underlined":true}']},Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:knockback",lvl:2s}]}},{}],ArmorItems:[{},{},{id:"golden_chestplate",Count:1},{id:"minecraft:golden_helmet",Count:1b}],Attributes:[{Name:"generic.follow_range",Base:500},{Name:"generic.movement_speed",Base:0.35}]}
execute if entity @s[team=Blue] run summon zombie ^2 ^ ^ {CustomNameVisible:1b,Team:"Blue",CustomName:'{"text":"Suspectum Cantavit"}',HandItems:[{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Soggetto Permaloso","color":"dark_red","bold":true}',Lore:['{"text":"sus","color":"dark_red","bold":true,"italic":true,"underlined":true}']},Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:knockback",lvl:2s}]}},{}],ArmorItems:[{},{},{id:"golden_chestplate",Count:1},{id:"minecraft:golden_helmet",Count:1b}],Attributes:[{Name:"generic.follow_range",Base:500},{Name:"generic.movement_speed",Base:0.35}]}
execute if entity @s[team=Blue] run summon zombie ^ ^1 ^-2 {CustomNameVisible:1b,Team:"Blue",CustomName:'{"text":"Suspectum Cantavit"}',HandItems:[{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Soggetto Permaloso","color":"dark_red","bold":true}',Lore:['{"text":"sus","color":"dark_red","bold":true,"italic":true,"underlined":true}']},Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:knockback",lvl:2s}]}},{}],ArmorItems:[{},{},{id:"golden_chestplate",Count:1},{id:"minecraft:golden_helmet",Count:1b}],Attributes:[{Name:"generic.follow_range",Base:500},{Name:"generic.movement_speed",Base:0.35}]}

scoreboard players set @s ultTimer 2400
clear @s carrot_on_a_stick{Tags:["amogus"]}
playsound sdbb:big_floppa.sussus master @a ~ ~ ~