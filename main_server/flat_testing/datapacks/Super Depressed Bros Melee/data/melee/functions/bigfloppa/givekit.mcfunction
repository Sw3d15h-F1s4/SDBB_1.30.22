##
 # givekit.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4/Modified by Nathan
##

# Removed any mention of Absorption in Beast Mode's description, and
# changed the armor (temporarily) to 14 and toughness to 2.  Please test these changes, or change it to what you had Sam!!!

#returns big floppa's kit when his abilities are up
replaceitem entity @s[scores={abilityTimer=..0},nbt=!{Inventory:[{tag:{Tags:["gift"]}}]}] hotbar.1 carrot_on_a_stick{display:{Name:'[{"text":"Gift ","color":"gold","bold":true,"italic":false},{"text":"Giving","color":"dark_red","bold":true,"italic":false}]',Lore:['{"text":"Big Floppa heals nearby teammates","color":"gold","italic":false}','{"text":"within a 15 block radius! The","color":"gold","italic":false}','{"text":"closer a teammate is to Floppa,","color":"gold","italic":false}','{"text":"the more they are healed.","color":"gold","italic":false}']},CustomModelData:4010,Tags:["gift","ability"]}
replaceitem entity @s[scores={ability2Timer=..0},nbt=!{Inventory:[{tag:{Tags:["growler"]}}]}] hotbar.2 carrot_on_a_stick{display:{Name:'[{"text":"Guzzle ","color":"dark_red","bold":true,"italic":false},{"text":"Growler","color":"gold","bold":true,"italic":false}]',Lore:['{"text":"Big Floppa chugs a Guzzle","color":"gold","italic":false}','{"text":"Growler, healing himself","color":"gold","italic":false}','{"text":"depending on the amount of teammates","color":"gold","italic":false}','{"text":"near him. He also grants nearby","color":"gold","italic":false}','{"text":"allies immunity to debuffs towards","color":"gold","italic":false}','{"text":"movement speed and sight.","color":"gold","italic":false}']},CustomModelData:4010,Tags:["growler","ability"]}
replaceitem entity @s[scores={ability3Timer=..0},nbt=!{Inventory:[{tag:{Tags:["gallop"]}}]}] hotbar.3 carrot_on_a_stick{display:{Name:'[{"text":"Gaping ","color":"dark_red","bold":true,"italic":false},{"text":"Gallop","color":"gold","bold":true,"italic":false}]',Lore:['{"text":"Big Floppa dashes towards","color":"gold","italic":false}','{"text":"the nearest teammate he is","color":"gold","italic":false}','{"text":"looking at.","color":"gold","italic":false}']},CustomModelData:4010,Tags:["gallop","ability"]}

replaceitem entity @s[scores={ultTimer=..0},nbt=!{Inventory:[{tag:{Tags:["gjacking"]}}]}] hotbar.8 carrot_on_a_stick{display:{Name:'{"text":"Gjacking 90s!","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Floppa activates his inner-gamer","color":"gold","italic":false}','{"text":"and becomes stronger and faster.","color":"gold","italic":false}','{"text":"Nearby teammates within 7 blocks","color":"gold","italic":false}','{"text":"also share his strength, becoming","color":"gold","italic":false}','{"text":"much faster for a short time.","color":"gold","italic":false}']},CustomModelData:4010,Tags:["gjacking"]}

#optionally, gives all kit items.

replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{tag:{Tags:["glizzy"]}}]}] hotbar.0 warped_fungus_on_a_stick{display:{Name:'{"text":"Giga Glizzy","color":"#EBAE21","bold":true,"italic":false}',Lore:['{"text":"An inedible bratwurst that is","color":"gold","italic":false}','{"text":"used to slap opponents away.","color":"gold","italic":false}','{"text":"When holding right-click, a","color":"red","italic":false}','{"text":"meat aura, that constantly","color":"red","italic":false}','{"text":"heals teammates, surrounds Floppa.","color":"red","italic":false}','{"text":"IF I EXPLAINED IT BAD, CHANGE IT","color":"green","bold":true,"italic":false}']},Tags:["glizzy"],Enchantments:[{id:"minecraft:knockback",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-714306303,1661879113,-1352282132,-250614969],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.55,Operation:1,UUID:[I;1133855250,-1135853285,-1741999046,-926560494],Slot:"mainhand"}]} 1
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:31,Enchantments:[{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I; 0, 319316, 0, 711835],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:5,Operation:0,UUID:[I; 0, 688372, 0, 738919],Slot:"head"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;821913265,1719553528,-1803195926,669663673],Slot:"head"}]}
replaceitem entity @s[scores={gameState=1}] hotbar.4 cooked_beef 64

# Glizzy aura, since detect is being horrible and I don't understand how the ability score works.
execute as @s[scores={fungus_use=1..,helperTimer=..0}] unless entity @s[scores={helperTimer=1..}] run function melee:bigfloppa/glizzy_aura
# Lets the player know when they fully charge their Glizzy Aura!
execute if entity @s[tag=BF_PleaseCharge,scores={helperTimer2=..0}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.14
tag @s[tag=BF_PleaseCharge,scores={helperTimer2=..0}] remove BF_PleaseCharge

# Who's in range of Gift Giving? Find out now by holding the ability!
execute at @s[team=Red,nbt={SelectedItem:{tag:{Tags:["gift"]}}}] at @a[team=Red,distance=0.1..15] run particle end_rod ~ ~ ~ 0.38 0.1 0.38 0.01 2 force @a[scores={heroType=4},team=Red]
execute at @s[team=Blue,nbt={SelectedItem:{tag:{Tags:["gift"]}}}] at @a[team=Blue,distance=0.1..15] run particle end_rod ~ ~ ~ 0.38 0.1 0.38 0.01 2 force @a[scores={heroType=4},team=Blue]