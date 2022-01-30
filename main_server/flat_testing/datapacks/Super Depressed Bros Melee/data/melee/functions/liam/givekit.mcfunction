##
 # givekit.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

#returns Liam's kit when abilities are up
replaceitem entity @s[scores={abilityTimer=..0},nbt=!{Inventory:[{tag:{Tags:["grab"]}}]}] hotbar.1 carrot_on_a_stick{display:{Name:'[{"text":"Marth\'s ","color":"dark_blue","bold":true,"italic":false},{"text":"Grab","color":"red","bold":true,"italic":false}]',Lore:['{"text":"Liam pulls the nearest","color":"gray","italic":false}','{"text":"opponent, within a 25 block","color":"gray","italic":false}','{"text":"radius, towards him.","color":"gray","italic":false}']},CustomModelData:11010,Tags:["grab","ability"]}
replaceitem entity @s[scores={ability2Timer=..0},nbt=!{Inventory:[{tag:{Tags:["slam"]}}]}] hotbar.2 carrot_on_a_stick{display:{Name:'[{"text":"Guitar ","color":"gold","bold":true,"italic":false},{"text":"SLAM","color":"yellow","bold":true,"italic":false}]',Lore:['{"text":"When activated, Liam slams","color":"gray","italic":false}','{"text":"the ground to push all enemies ","color":"gray","italic":false}','{"text":"away from him!","color":"gray","italic":false}']},HideFlags:127,CustomModelData:11010,Tags:["slam","ability"]}
replaceitem entity @s[scores={ability3Timer=0},nbt=!{Inventory:[{tag:{Tags:["blitz"]}}]}] hotbar.3 minecraft:lingering_potion{display:{Name:'[{"text":"Ballroom ","color":"gold","bold":true,"italic":false},{"text":"Blitz","color":"aqua","bold":true,"italic":false}]',Lore:['{"text":"When this thrown potion hits the","color":"gray","italic":false}','{"text":"ground, a bolt of lightning","color":"gray","italic":false}','{"text":"strikes where it landed.","color":"gray","italic":false}']},HideFlags:127,CustomModelData:11010,Tags:["blitz"],Potion:"minecraft:luck"}
scoreboard players set @s[scores={ability3Timer=..0,},nbt=!{Inventory:[{id:"minecraft:lingering_potion"}]}] ability3Timer 200

replaceitem entity @s[scores={ultTimer=..0},nbt=!{Inventory:[{tag:{Tags:["justliam"]}}]}] hotbar.8 carrot_on_a_stick{display:{Name:'[{"text":"Just ","color":"white","bold":true,"italic":false},{"text":"Liam","color":"#808080","bold":true,"italic":false}]',Lore:['{"text":"When activated, all opponents","color":"gray","italic":false}','{"text":"are forced to look at the now","color":"gray","italic":false}','{"text":"glowing Liam! He is also granted","color":"gray","italic":false}','{"text":"greater speed and damage","color":"gray","italic":false}','{"text":"reduction for five seconds.","color":"gray","italic":false}']},CustomModelData:1100020,Tags:["justliam"]}
#optionally, gives all kit items.
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:diamond_shovel"}]}] hotbar.0 diamond_shovel{display:{Name:'{"text":"Liam\'s Guitar","color":"dark_red","bold":true,"italic":false,"obfuscated":false}',Lore:['{"text":"A bold weapon for a bold man.","color":"gray","italic":false}','{"text":"With its heaviness, you are able","color":"gray","italic":false}','[{"text":"to ","color":"gray","italic":false},{"text":"a","color":"gold","bold":true,"italic":false,"obfuscated":true},{"text":"WHACK","color":"gold","bold":true,"italic":false},{"text":"a","color":"gold","bold":true,"italic":false,"obfuscated":true},{"text":" people into oblivion.","color":"gray","italic":false}]','{"text":"Does he actually play it?","color":"gray","italic":false,"strikethrough":true}']},HideFlags:4,Unbreakable:1b,CustomModelData:11001,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I; 0, 7274, 0, 170051],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.55,Operation:1,UUID:[I; 0, 570092, 0, 86105],Slot:"mainhand"}]}
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:cooked_beef"}]}] hotbar.4 cooked_beef 64

execute unless score mapType gameState matches 4 run replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:31,Enchantments:[{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:7,Operation:0,UUID:[I; 0, 319316, 0, 711835],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I; 0, 688372, 0, 738919],Slot:"head"}]}
execute if score mapType gameState matches 4 run replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:31,Enchantments:[{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:7,Operation:0,UUID:[I; 0, 319316, 0, 711835],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I; 0, 688372, 0, 738919],Slot:"head"}]}

# Marth's Grab detection, hold to see particle beneath nearby opponents
execute at @s[team=Red,nbt={SelectedItem:{tag:{Tags:["grab"]}}}] at @a[team=!Red,distance=0..25] run particle minecraft:end_rod ~ ~ ~ 0.5 0.1 0.5 0.01 2 force @a[scores={heroType=11},team=Red]
execute at @s[team=Blue,nbt={SelectedItem:{tag:{Tags:["grab"]}}}] at @a[team=!Blue,distance=0..25] run particle minecraft:end_rod ~ ~ ~ 0.5 0.1 0.5 0.01 2 force @a[scores={heroType=11},team=Blue]

# Liam Alt, Suave Mente check added
execute as @a[scores={heroType=11,SM_suaveMente=1}] run function melee:liam/justliam
scoreboard players set @s[scores={ultTimer=..2300,SM_suaveMente=1}] SM_suaveMente 0

execute if entity @s[team=Red,scores={SM_suaveMente=1}] as @a[team=!Red] at @s run tp @s ~ ~ ~ facing entity @a[team=!Blue,scores={heroType=11},limit=1] eyes
execute if entity @s[team=Blue,scores={SM_suaveMente=1}] as @a[team=!Blue] at @s run tp @s ~ ~ ~ facing entity @a[team=!Red,scores={heroType=11},limit=1] eyes

execute as @e[tag=guitarslam,sort=random] at @s run function melee:liam/guitarloop
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:luck"}] at @s run function melee:liam/ballroomblitz
