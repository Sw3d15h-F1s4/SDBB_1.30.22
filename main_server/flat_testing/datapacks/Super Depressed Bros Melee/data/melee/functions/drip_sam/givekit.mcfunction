##
 # givekit.mcfunction
 # Super Sad RP Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

#this func is like a template for the rest. a couple assumptions are made based on program flow.
#first, this func is ONLY called through util/giveallkits, and @s is the player who is playing this character (or more than one).
#only one character of this type should exist, but code should be designed to not break when there are multiple.
#assumption 3: minecraft's command parser will only perform a command once valid targets have been identified. use of execute if (not have item) should be redundant and offer no server benefit.
#assumption 4: lowering commands/tick = increased performance.


#returns drip sam's kit to him when his when abilities are up
replaceitem entity @s[scores={abilityTimer=..0},nbt=!{Inventory:[{tag:{Tags:["anime"]}}]}] hotbar.1 carrot_on_a_stick{display:{Name:'{"text":"Anime Prediction","color":"gold","bold":true,"italic":false}',Lore:['{"text":"When activated, Sam shoots","color":"yellow","italic":false}','{"text":"a powerful projectile that homes","color":"yellow","italic":false}','{"text":"in on enemies within ten blocks of Sam.","color":"yellow","italic":false}']},CustomModelData:1010,Tags:["anime","ability"]}
replaceitem entity @s[scores={ability2Timer=..0},nbt=!{Inventory:[{tag:{Tags:["hack"]}}]}] hotbar.2 carrot_on_a_stick{display:{Name:'{"text":"Hack the System","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Sam is granted improved","color":"yellow","italic":false}','{"text":"movement speed and damage","color":"yellow","italic":false}','{"text":"reduction for 10 seconds when used!","color":"yellow","italic":false}']},CustomModelData:1010,Tags:["hack","ability"]}
replaceitem entity @s[scores={ability3Timer=..0},nbt=!{Inventory:[{tag:{Tags:["senko"]}}]}] hotbar.3 carrot_on_a_stick{display:{Name:'[{"text":"Senko ","color":"gold","bold":true,"italic":false},{"text":"Mode","color":"white","bold":true,"italic":false}]',Lore:['{"text":"Sam brandishes his fiery blade","color":"yellow","italic":false}','{"text":"for a time, but he can only","color":"yellow","italic":false}','{"text":"use it three times!","color":"yellow","italic":false}']},CustomModelData:1010,Tags:["senko","ability"]}
replaceitem entity @s[scores={ultTimer=..0},nbt=!{Inventory:[{tag:{Tags:["cringe"]}}]}] hotbar.8 carrot_on_a_stick{CustomModelData:100020,Tags:["cringe"],display:{Name:'[{"text":"P","color":"red","bold":true,"italic":false},{"text":"u","color":"light_purple","bold":true,"italic":false},{"text":"r","color":"blue","bold":true,"italic":false},{"text":"e ","color":"green","bold":true,"italic":false},{"text":"C","color":"aqua","bold":true,"italic":false},{"text":"r","color":"yellow","bold":true,"italic":false},{"text":"i","color":"red","bold":true,"italic":false},{"text":"n","color":"light_purple","bold":true,"italic":false},{"text":"g","color":"blue","bold":true,"italic":false},{"text":"e","color":"green","bold":true,"italic":false}]',Lore:['{"text":"Sam watches Dream Manhunt for","color":"yellow","italic":false}','{"text":"for the 100000000000000000th time","color":"yellow","italic":false}','{"text":"and tries to imitate the \\"High IQ\\" ","color":"yellow","italic":false}','{"text":"\\"Goggy\\" snipe by lighting","color":"yellow","italic":false}','{"text":"everyone near him on fire.","color":"yellow","italic":false}']}}

#gives weapons in case of being dropped
replaceitem entity @s[nbt=!{Inventory:[{tag:{Tags:["lil_uzi"]}}]}] hotbar.0 crossbow{display:{Name:'{"text":"Lil Uzi","color":"green","bold":true,"italic":false}',Lore:['{"text":"Bullets shot have a ","color":"dark_green","italic":false}','{"text":"limited range of 15 blocks.","color":"dark_green","italic":false}','{"text":"\\"Tin Goes Spi kack\'","color":"gray","bold":false,"italic":true}','{"text":"ka ka ka ka ka","color":"gray","italic":true}','{"text":"no ketchup only sauce","color":"gray","italic":true}','{"text":"raw sauce\\"","color":"gray","italic":true}']},HideFlags:31,Unbreakable:1b,CustomModelData:1001,Tags:["lil_uzi"],Enchantments:[{id:"minecraft:quick_charge",lvl:5s}]}
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:cooked_beef"}]}] hotbar.4 cooked_beef 64
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{AttributeModifiers:[{AttributeName: "generic.armor", Name: "generic.armor", Amount: 8, Operation: 0, UUID: [I; 0, 408864, 0, 98952], Slot: "head"},{AttributeName: "generic.armor_toughness", Name: "generic.armorToughness", Amount: 10, Operation: 0, UUID: [I; 0, 982768, 0, 726483], Slot: "head"}],Unbreakable:1b,HideFlags:31,Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:3}]}

#custom for drip sam
replaceitem entity @s[team=Red,scores={helperTimer2=0}] hotbar.7 tipped_arrow{display:{Name:'{"text":"Shot of Drip","color":"red","bold":true,"italic":false}'},HideFlags:127,CustomPotionEffects:[{Id:12b,Amplifier:0b,Duration:0}],CustomPotionColor:15477533,CustomModelData:1001} 5
replaceitem entity @s[team=Blue,scores={helperTimer2=0}] hotbar.7 tipped_arrow{display:{Name:'{"text":"Shot of Drip","color":"blue","bold":true,"italic":false}'},HideFlags:127,CustomPotionEffects:[{Id:12b,Amplifier:0b,Duration:0}],CustomPotionColor:2825708,CustomModelData:1001} 5

scoreboard players set @s[scores={helperTimer2=-1},nbt=!{Inventory:[{id:"minecraft:tipped_arrow"}]}] helperTimer2 80

#execute at @e[type=arrow,nbt={CustomPotionEffects:[{Id:12b}]},scores={projectileLife=5..}] run particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 3 force @a

execute at @e[type=arrow,nbt={Color:15477533,CustomPotionEffects:[{Id:12b}]},scores={projectileLife=5..}] run particle minecraft:block lava[level=11] ~ ~ ~ 0.12 0.12 0.12 3 15 force
execute at @e[type=arrow,nbt={Color:2825708,CustomPotionEffects:[{Id:12b}]},scores={projectileLife=5..}] run particle minecraft:block water[level=11] ~ ~ ~ 0.12 0.12 0.12 3 15 force
execute at @e[type=arrow,nbt={CustomPotionEffects:[{Id:12b}]},scores={projectileLife=5..}] run playsound minecraft:entity.player.splash master @a ~ ~ ~ 0.5 0.9
kill @e[type=arrow,nbt={CustomPotionEffects:[{Id:12b}]},scores={projectileLife=5..}]
execute if entity @s[scores={helperTimer=0}] run clear @s minecraft:golden_sword

execute at @s[team=Red,nbt={SelectedItem:{tag:{Tags:["cringe"]}}}] at @e[type=!armor_stand,type=!painting,type=!end_crystal,type=!lightning_bolt,type=!boat,type=!minecart,type=!spectral_arrow,type=!item_frame,type=!leash_knot,type=!ender_pearl,type=!area_effect_cloud,distance=0.1..15,team=!Red] run particle flame ~ ~ ~ 0.5 0.12 0.5 0.01 5 force @a
execute at @s[team=Blue,nbt={SelectedItem:{tag:{Tags:["cringe"]}}}] at @e[type=!armor_stand,type=!painting,type=!end_crystal,type=!lightning_bolt,type=!boat,type=!minecart,type=!spectral_arrow,type=!item_frame,type=!leash_knot,type=!ender_pearl,type=!area_effect_cloud,distance=0.1..15,team=!Blue] run particle soul_fire_flame ~ ~ ~ 0.5 0.12 0.5 0.01 5 force @a

execute if entity @s[nbt={Inventory:[{id:"minecraft:golden_sword"}]}] run scoreboard players set @s ability3Timer 450
