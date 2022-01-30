##
 # givekit.mcfunction
 # Super Sad RP Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

#returns mistress hibbins' kit to her when abilities are up
replaceitem entity @s[scores={ability2Timer=..0},nbt=!{Inventory:[{tag:{Tags:["ascend"]}}]}] hotbar.2 carrot_on_a_stick{display:{Name:'{"text":"A S C E N S I O N","color":"light_purple","bold":true,"italic":false}',Lore:['{"text":"When activated, Hibbins channels","color":"dark_purple","italic":false}','{"text":"cosmic energy to not only","color":"light_purple","italic":false}','{"text":"increase movement speed and damage","color":"dark_purple","italic":false}','{"text":"for 5 seconds, but she is also given","color":"light_purple","italic":false}','{"text":"insight into where her opponents are!","color":"dark_purple","italic":false}']},CustomModelData:6010,Tags:["ascend","ability"]}
replaceitem entity @s[scores={ability3Timer=..0},nbt=!{Inventory:[{tag:{Tags:["curse"]}}]}] hotbar.3 carrot_on_a_stick{display:{Name:'[{"text":"Scarlet ","color":"dark_red","bold":true,"italic":false},{"text":"CURSE","color":"dark_purple","bold":true,"italic":false}]',Lore:['{"text":"Mistress Hibbins reveals","color":"dark_purple","italic":false}','{"text":"a nearby opponent within 10 blocks,","color":"light_purple","italic":false}','{"text":"and cripples their sight","color":"dark_purple","italic":false}','{"text":"and movement.","color":"light_purple","italic":false}']},CustomModelData:6010,Tags:["curse","ability"]}

replaceitem entity @s[scores={ultTimer=..0},nbt=!{Inventory:[{tag:{Tags:["universe"]}}]}] hotbar.8 carrot_on_a_stick{display:{Name:'{"text":"Universal Comprehension","color":"dark_purple","italic":false,"obfuscated":true}',Lore:['{"text":"Hibbins becomes intertwined with","color":"dark_purple","bold":true,"italic":false,"obfuscated":true}','{"text":"the universe, and creates an exotic","color":"dark_purple","bold":true,"italic":false,"obfuscated":true}','{"text":"chestpiece onto herself, shoots two","color":"dark_purple","bold":true,"italic":false,"obfuscated":true}','{"text":"meteorites that seek an opponent,","color":"dark_purple","bold":true,"italic":false,"obfuscated":true}','{"text":"and gains great strength for 15 seconds!","color":"dark_purple","bold":true,"italic":false,"obfuscated":true}']},CustomModelData:600020,Tags:["universe"]}

#optionally, gives all kit items.
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:diamond_sword"}]}] hotbar.0 diamond_sword{display:{Name:'{"text":"Limpest of Foils","color":"white","bold":true,"italic":false}',Lore:['{"text":"A weak sword only ideal in the","color":"white","italic":false}','{"text":"most dire of situations.","color":"white","italic":false}']},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"knockback",lvl:2}],CustomModelData:6001,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I; 0, 858230, 0, 815687],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.2d,Operation:1,UUID:[I; 0, 478490, 0, 312045],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;297914230,-670675150,-1600259095,-1541925943],Slot:"mainhand"}]}
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{tag:{Tags:["majak"]}}]}] hotbar.1 carrot_on_a_stick{display:{Name:'[{"text":"M","color":"light_purple","bold":true,"italic":false},{"text":"A","color":"dark_purple","bold":true,"italic":false},{"text":"J","color":"light_purple","bold":true,"italic":false},{"text":"A","color":"dark_purple","bold":true,"italic":false},{"text":"K ","color":"light_purple","bold":true,"italic":false},{"text":"O","color":"dark_purple","bold":true,"italic":false},{"text":"R","color":"light_purple","bold":true,"italic":false},{"text":"B","color":"dark_purple","bold":true,"italic":false}]',Lore:['{"text":"When right clicked, this","color":"dark_purple","italic":false}','{"text":"ominous orb shoots out","color":"light_purple","italic":false}','{"text":"a purple blast of MAJAK.","color":"dark_purple","italic":false}','{"text":"When right click is held down, it","color":"light_purple","italic":false}','{"text":"shoots every 3/4th second.","color":"dark_purple","italic":false}']},HideFlags:2,CustomModelData:6002,Tags:["majak"],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.15,Operation:1,UUID:[I;792597235,-784118739,-1235651302,-1706845013],Slot:"mainhand"}]}
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:cooked_beef"}]}] hotbar.4 cooked_beef 64


execute unless score mapType gameState matches 4 run replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{AttributeModifiers:[{AttributeName: "generic.armor", Name: "generic.armor", Amount: 8, Operation: 0, UUID: [I; 0, 319316, 0, 711835], Slot: "head"},{AttributeName: "generic.armor_toughness", Name: "generic.armorToughness", Amount: 6, Operation: 0, UUID: [I; 0, 688372, 0, 738919], Slot: "head"}],Unbreakable:1b,HideFlags:31,Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:3}]}
execute if score mapType gameState matches 4 run replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:31,Enchantments:[{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:binding_curse",lvl:1s},{id:"feather_falling",lvl:3}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUID:[I; 0, 319316, 0, 711835],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:6,Operation:0,UUID:[I; 0, 688372, 0, 738919],Slot:"head"}]}

# Standard majak guts, runs loop as the projectile..
execute as @e[tag=ray] at @s run function melee:hibbins/loop

# Ult guts
execute as @a[scores={heroType=6,ultTimer=2900}] run clear @s diamond_chestplate
execute as @e[tag=h_ult1] at @s run function melee:hibbins/ultorb_loop
execute as @e[tag=h_ult2] at @s run function melee:hibbins/ultorb_loop
# h_ult1 is the summoner's left, h_ult2 is the summoner's right