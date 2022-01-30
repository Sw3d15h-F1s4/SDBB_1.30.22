##
 # givekit.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4/Modified by Nathan
##

#returns erased's kit when his abilities are up
replaceitem entity @s[scores={abilityTimer=..0},tag=!red_deal,nbt=!{Inventory:[{tag:{Tags:["pull_orb"]}}]}] hotbar.1 carrot_on_a_stick{display:{Name:'[{"text":"Pull","color":"green","bold":true,"italic":false},{"text":" Orb","color":"dark_green"}]',Lore:['{"text":"Erased pulls out a burning kunai","color":"dark_green","italic":false}','{"text":"spear and violently throws it in","color":"dark_green","italic":false}','{"text":"front of him, pulling a harpooned","color":"dark_green","italic":false}','{"text":"opponent towards him.","color":"dark_green","italic":false}']},CustomModelData:5010,Tags:["pull_orb","ability"]}
replaceitem entity @s[scores={ability2Timer=..0},tag=!red_deal,nbt=!{Inventory:[{tag:{Tags:["nano"]}}]}] hotbar.2 carrot_on_a_stick{display:{Name:'[{"text":"Nanomachines, ","color":"blue","bold":true,"italic":false},{"text":"Son!","color":"aqua","bold":true,"italic":false}]',Lore:['{"text":"When activated, Erased","color":"dark_green","italic":false}','{"text":"rebuilds himself and teammates","color":"dark_green","italic":false}','{"text":"with nanomachines, healing and","color":"dark_green","italic":false}','{"text":"giving fire immunity  everyone","color":"dark_green","italic":false}','{"text":"within ten blocks.","color":"dark_green","italic":false}']},CustomModelData:5010,Tags:["nano","ability"]}
replaceitem entity @s[scores={ability3Timer=..0},nbt=!{Inventory:[{tag:{Tags:["red_deal"]}}]}] hotbar.3 carrot_on_a_stick{display:{Name:'[{"text":"The ","color":"dark_gray","bold":true,"italic":false},{"text":"Red ","color":"dark_red","bold":true,"italic":false},{"text":"Deal","color":"green","bold":true,"italic":false}]',Lore:['{"text":"When activated near an opponent,","color":"dark_green","italic":false}','{"text":"Erased channels his inner Jackie Chan","color":"dark_green","italic":false}','{"text":"and kicks his opponent three times,","color":"dark_green","italic":false}','{"text":"the last one shooting them upwards.","color":"dark_green","italic":false}']},CustomModelData:5010,Tags:["red_deal","ability"]}

replaceitem entity @s[scores={abilityTimer=..0},tag=red_deal,nbt=!{Inventory:[{tag:{Tags:["rd_option1"]}}]}] hotbar.1 carrot_on_a_stick{display:{Name:'[{"text":"Pull","color":"green","bold":true,"italic":false},{"text":" Orb","color":"dark_green"}]',Lore:['{"text":"Erased pulls out a burning kunai","color":"dark_green","italic":false}','{"text":"spear and violently throws it in","color":"dark_green","italic":false}','{"text":"front of him, pulling a harpooned","color":"dark_green","italic":false}','{"text":"opponent towards him.","color":"dark_green","italic":false}']},CustomModelData:5010,Tags:["rd_option1","ability"]}
replaceitem entity @s[scores={abilityTimer=..0},tag=red_deal,nbt=!{Inventory:[{tag:{Tags:["rd_option2"]}}]}] hotbar.2 carrot_on_a_stick{display:{Name:'[{"text":"Pull","color":"green","bold":true,"italic":false},{"text":" Orb","color":"dark_green"}]',Lore:['{"text":"Erased pulls out a burning kunai","color":"dark_green","italic":false}','{"text":"spear and violently throws it in","color":"dark_green","italic":false}','{"text":"front of him, pulling a harpooned","color":"dark_green","italic":false}','{"text":"opponent towards him.","color":"dark_green","italic":false}']},CustomModelData:5010,Tags:["rd_option2","ability"]}

#replaceitem entity @s[scores={ultTimer=0}] hotbar.8 splash_potion{display:{Name:'[{"text":"He\'s ","color":"blue","bold":true,"italic":false},{"text":"Always ","color":"red","bold":true,"italic":false},{"text":"LAST","color":"dark_red","bold":true,"italic":false}]',Lore:['[{"text":"In the quest to ","color":"red","italic":false},{"text":"ALWAYS BE LAST,","bold":true,"italic":false}]','{"text":"Erased is desperate enough to","color":"red","italic":false}','{"text":"use this evil concoction that is","color":"red","italic":false}','{"text":"so potent, it has the capacity to","color":"red","bold":false,"italic":false}','{"text":"kill almost any opponent, if aimed correctly.","color":"red","italic":false}']},HideFlags:127,CustomPotionEffects:[{Id:6b,Amplifier:2b,Duration:60,ShowParticles:0b},{Id:7b,Amplifier:2b,Duration:60,ShowParticles:0b}],CustomPotionColor:655360}
#scoreboard players set @s[scores={ultTimer=..0},nbt=!{Inventory:[{id:"minecraft:splash_potion"}]}] ultTimer 2400

#optionally, gives all kit items.
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:bow"}]}] hotbar.0 bow{display:{Name:'[{"text":"Soft ","color":"gray","bold":true,"italic":false},{"text":"Machine","color":"dark_green"}]',Lore:['{"text":"A shotgun that shoots explosive","color":"dark_red","bold":false,"italic":false}','{"text":"rockets, being able to hit","color":"dark_red","bold":false,"italic":false}','{"text":"multiple enemies at once.","color":"dark_red","bold":false,"italic":false}']},HideFlags:127,Unbreakable:1b,CustomModelData:5001,Enchantments:[{id:"minecraft:punch",lvl:2s}]}
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:cooked_beef"}]}] hotbar.5 cooked_beef 64
replaceitem entity @s[scores={gameState=1,helperTimer2=..0},tag=!nano_upgrade,nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{AttributeModifiers:[{AttributeName: "generic.armor", Name: "generic.armor", Amount: 9, Operation: 0, UUID: [I; 0, 319316, 0, 711835], Slot: "head"},{AttributeName: "generic.armor_toughness", Name: "generic.armorToughness", Amount: 8, Operation: 0, UUID: [I; 0, 688372, 0, 738919], Slot: "head"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,Slot:"head",UUID:[I;123,34234,654432,2243]}],Unbreakable:1b,HideFlags:31,Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:3},{id:"blast_protection",lvl:8}]}
replaceitem entity @s[scores={gameState=1,helperTimer2=1..},tag=nano_upgrade,nbt=!{Inventory:[{id:"minecraft:stone_button"}]}] armor.head stone_button{AttributeModifiers:[{AttributeName: "generic.armor", Name: "generic.armor", Amount: 12, Operation: 0, UUID: [I; 0, 319316, 0, 711835], Slot: "head"},{AttributeName: "generic.armor_toughness", Name: "generic.armorToughness", Amount: 8, Operation: 0, UUID: [I; 0, 688372, 0, 738919], Slot: "head"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,Slot:"head",UUID:[I;123,34234,654432,2243]}],Unbreakable:1b,HideFlags:31,Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:3},{id:"blast_protection",lvl:8}]}

scoreboard players set @s[scores={helperTimer=-1},nbt=!{Inventory:[{id:"minecraft:tipped_arrow"}]}] helperTimer 120
replaceitem entity @s[scores={helperTimer=0}] hotbar.7 tipped_arrow{display:{Name:'{"text":"Large Shotgun \\"Shell\\"","color":"#969696","bold":true,"italic":false}'},HideFlags:127,CustomPotionEffects:[{Id:6b,Amplifier:0b,Duration:0}],CustomPotionColor:9555093} 4

tag @s[tag=nano_upgrade,scores={helperTimer2=..0}] remove nano_upgrade

# Red Deal jank:
scoreboard players add @s[tag=red_deal] ability3Timer 1

tellraw @s[tag=red_deal,scores={helperTimer3=..0}] "Sorry, but you didn't choose in time."
execute at @s[tag=red_deal,scores={helperTimer3=..0}] run summon creeper ~ ~ ~ {CustomName:"{\"text\":\"indecision\"}",ExplosionRadius:1,Fuse:0,NoAI:1}
kill @s[tag=red_deal,scores={helperTimer3=..0}]
tag @s[tag=red_deal,scores={helperTimer3=..0}] remove red_deal

# Rocket guts here:
execute as @s run function melee:erased/shotgun