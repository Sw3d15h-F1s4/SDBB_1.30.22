 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4/Modified by Nathan
##

#returns snow meiser's kit when his abilities are up
replaceitem entity @s[scores={abilityTimer=..0},nbt=!{Inventory:[{tag:{Tags:["touch"]}}]}] hotbar.1 carrot_on_a_stick{display:{Name:'[{"text":""},{"text":"Whatever ","bold":true,"italic":false,"color":"aqua"},{"text":"I ","bold":true,"italic":false,"color":"white"},{"text":"Touch","bold":true,"italic":false,"color":"blue"}]'},CustomModelData:12010,Tags:["touch","ability"]}
replaceitem entity @s[scores={ability2Timer=..0},nbt=!{Inventory:[{tag:{Tags:["hisclutch"]}}]}] hotbar.2 carrot_on_a_stick{display:{Name:'[{"text":""},{"text":"His ","bold":true,"italic":false,"color":"aqua"},{"text":"Clutch","bold":true,"italic":false,"color":"blue"}]'},CustomModelData:12010,Tags:["hisclutch","ability"]}
replaceitem entity @s[scores={ability3Timer=..0},nbt=!{Inventory:[{tag:{Tags:["toomuch"]}}]}] hotbar.3 carrot_on_a_stick{display:{Name:'[{"text":""},{"text":"I\'m ","bold":true,"italic":false,"color":"white"},{"text":"Too ","bold":true,"italic":false,"color":"aqua"},{"text":"Much","bold":true,"italic":false,"color":"blue"}]'},CustomModelData:12010,Tags:["toomuch","ability"]}

replaceitem entity @s[scores={ultTimer=..0},nbt=!{Inventory:[{tag:{Tags:["whitechristmas"]}}]}] hotbar.8 carrot_on_a_stick{display:{Name:'[{"text":""},{"text":"Mr. ","bold":true,"italic":true,"color":"blue"},{"text":"White ","bold":true,"italic":true,"color":"white"},{"text":"Christmas","bold":true,"italic":true,"color":"aqua"}]'},CustomModelData:1200020,Tags:["whitechristmas","ability"]}

#optionally, gives all kit items. Or when too much ends.
replaceitem entity @s[scores={gameState=1,helperTimer=..0},nbt=!{Inventory:[{id:"minecraft:diamond_sword",tag:{Tags:["og"]}}]}] hotbar.0 diamond_sword{Tags:["og"],display:{Name:'{"text":"A Slab of Asphalt","color":"dark_gray","bold":true,"italic":false}',Lore:['{"text":"In the abandoned wasteland","color":"blue","italic":false}','{"text":"of the Ice Spikes, Snow Miser","color":"blue","italic":false}','{"text":"accidentally stumbled upon this ","color":"blue","italic":false}','{"text":"ancient weapon while he was","color":"blue","italic":false}','{"text":"looking for Packed Ice.","color":"blue","italic":false}','{"text":"He uses this great power to","color":"blue","italic":false}','{"text":"terrify Christmas shoppers.","color":"blue","italic":false}']},HideFlags:61,Unbreakable:1b,CustomModelData:12001,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:9,Operation:0,UUID:[I; 0, 274351, 0, 768067],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.65,Operation:1,UUID:[I; 0, 805965, 0, 494617],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.2,Operation:1,UUID:[I;-1501020195,-1670954246,-1568947393,1195028394],Slot:"mainhand"}]}

replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:cooked_beef"}]}] hotbar.5 cooked_beef 64
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:31,Enchantments:[{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:12,Operation:0,UUID:[I; 0, 319316, 0, 711835],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:7,Operation:0,UUID:[I; 0, 688372, 0, 738919],Slot:"head"}]}


#particles and blindness for too Much
execute at @e[team=fakeRed,tag=toomuch] run effect give @e[team=!Red,distance=..4] blindness 10 1 true
execute at @e[team=fakeBlue,tag=toomuch] run effect give @e[team=!Blue,distance=..4] blindness 10 1 true

execute at @e[team=fakeRed,tag=toomuch] run particle dust 0.9 0.9 1 10 ~ ~ ~ 2 2 2 0 30 force @a[team=!Red]
execute at @e[team=fakeRed,tag=toomuch] run particle white_ash ~ ~ ~ 2 2 2 0 10 force @a[team=Red]
execute at @e[team=fakeBlue,tag=toomuch] run particle dust 0.9 0.9 1 10 ~ ~ ~ 2 2 2 0 30 force @a[team=!Blue]
execute at @e[team=fakeBlue,tag=toomuch] run particle white_ash ~ ~ ~ 2 2 2 0 10 force @a[team=Blue]

kill @e[tag=toomuch,scores={helperTimer=..0}]

#his clutch wall
execute if entity @e[tag=Red,tag=clutch_root,scores={helperTimer=..0}] run tp @e[tag=Red,tag=clutch_wall] 0 0 0
execute if entity @e[tag=Red,tag=clutch_root,scores={helperTimer=..0}] run kill @e[tag=Red,tag=clutch_wall]
execute if entity @e[tag=Blue,tag=clutch_root,scores={helperTimer=..0}] run tp @e[tag=Blue,tag=clutch_wall] 0 0 0
execute if entity @e[tag=Blue,tag=clutch_root,scores={helperTimer=..0}] run kill @e[tag=Blue,tag=clutch_wall]

#white christmas
execute at @e[team=fakeRed,tag=whitechristmas] run effect give @a[team=!Red,distance=..5] slowness 1 3 true
execute at @e[team=fakeBlue,tag=whitechristmas] run effect give @a[team=!Blue,distance=..5] slowness 1 3 true

execute at @e[team=fakeBlue,tag=whitechristmas] run particle poof ~ ~ ~ 4 1 4 0 20 force @a
execute at @e[team=fakeRed,tag=whitechristmas] run particle poof ~ ~ ~ 4 1 4 0 20 force @a

kill @e[tag=whitechristmas,scores={helperTimer=..0}]