##
 # givekit.mcfunction
 # Super Sad RP Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

# TO-DO: Add good/functional descriptions to ability, and make transition item whenever Grug uses her Iron Fist alt-fire weapon.

# Stores the result of how many mobs have spawned.
execute store result score @s[team=Red] summonCount if entity @e[tag=commieR]
execute store result score @a[team=Blue] summonCount if entity @e[tag=commieB]

execute store result score @s[team=Red] GS_GulagNum if entity @e[tag=gulag_R]
execute store result score @a[team=Blue] GS_GulagNum if entity @e[tag=gulag_B]

execute store result score R_SaveCount GS_GulagNum if entity @e[tag=initEscape_R]
execute store result score B_SaveCount GS_GulagNum if entity @e[tag=initEscape_B]

execute store result score R_SaveGCount GS_GulagNum if entity @e[tag=gulagEscape_R]
execute store result score B_SaveGCount GS_GulagNum if entity @e[tag=gulagEscape_B]

execute if score R_SaveCount GS_GulagNum > One debugMode at @s run kill @e[limit=1,tag=initEscape_R,sort=random]
execute if score B_SaveCount GS_GulagNum > One debugMode at @s run kill @e[limit=1,tag=initEscape_B,sort=random]

xp set @s[scores={summonCount=0}] 0 levels
xp set @s[scores={summonCount=1}] 1 levels
xp set @s[scores={summonCount=2}] 2 levels
xp set @s[scores={summonCount=3}] 3 levels

execute if score @s[team=Red] summonCount > Three debugMode at @s run kill @e[limit=1,tag=commieR,sort=furthest]
execute if score @s[team=Blue] summonCount > Three debugMode at @s run kill @e[limit=1,tag=commieB,sort=furthest]

#returns grug stalin's kit to her when abilities are up

replaceitem entity @s[scores={abilityTimer=..0},nbt=!{Inventory:[{tag:{Tags:["wealth"]}}]}] hotbar.1 carrot_on_a_stick{display:{Name:'[{"text":"Share the ","color":"dark_red","bold":true,"italic":false},{"text":"Wealth","color":"red","bold":true,"italic":false}]',Lore:['{"text":"Grug uses the legacy tactic","color":"red","italic":false}','{"text":"of self-incineration that her forefathers","color":"red","italic":false}','{"text":"used against Napoléon. Enemies","color":"red","italic":false}','{"text":"and mobs within a four block radius","color":"red","italic":false}','{"text":"will be set ablaze.","color":"red","italic":false}']},CustomModelData:10010,Tags:["wealth","ability"]}
replaceitem entity @s[scores={ability2Timer=..0},nbt=!{Inventory:[{tag:{Tags:["un_harvest"]}}]}] hotbar.2 carrot_on_a_stick{display:{Name:'[{"text":"Unyielding ","color":"dark_red","bold":true,"italic":false},{"text":"Harvest","color":"red","bold":true,"italic":false}]',Lore:['{"text":"Nearby opponents within a","color":"red","italic":false}','{"text":"ten block radius suffer","color":"red","italic":false}','{"text":"movement speed reduction and","color":"red","italic":false}','{"text":"become hungry, due to her lack","color":"red","italic":false}','{"text":"of stable agriculture.","color":"red","italic":false}']},CustomModelData:10010,Tags:["un_harvest","ability"]}
replaceitem entity @s[scores={ability3Timer=..0},nbt=!{Inventory:[{tag:{Tags:["emp_guard"]}}]}] hotbar.3 carrot_on_a_stick{display:{Name:'[{"text":"Power ","color":"red","bold":true,"italic":false},{"text":"of ","color":"ggulag_ray","bold":true,"italic":false},{"text":"Dictatorship","color":"dark_red","bold":true,"italic":false}]',Lore:['{"text":"When activated, three","color":"red","italic":false}','{"text":"Communists joins Grug\'s ranks","color":"red","italic":false}','{"text":"to fight for the commonwealth.","color":"red","italic":false}','{"text":"You may spawn one batch at a time.","color":"#FF0000","italic":false}']},CustomModelData:10010,Tags:["emp_guard","ability"]}


replaceitem entity @s[scores={ultTimer=..0},nbt=!{Inventory:[{tag:{Tags:["gulag"]}}]}] hotbar.8 carrot_on_a_stick{display:{Name:'[{"text":"The ","color":"dark_ggulag_ray","bold":true,"italic":false},{"text":"Gulag","color":"white","bold":true,"italic":false}]',Lore:['{"text":"When activated, four","color":"red","italic":false}','{"text":"of the most powerful military","color":"red","italic":false}','{"text":"personnel of Grug\'s Secret Police","color":"red","italic":false}','{"text":"are tasked to turn so-called","color":"red","italic":false}','{"text":"free-thinkers into swiss cheese!","color":"red","italic":false}']},CustomModelData:1000020,Tags:["gulag"]}

#optionally, gives all kit items.

replaceitem entity @s[scores={helperTimer=..0},nbt=!{Inventory:[{tag:{Tags:["iron_fist"]}}]}] hotbar.0 carrot_on_a_stick{display:{Name:'[{"text":"Iron ","color":"red","bold":true,"italic":false},{"text":"Fist","color":"dark_red","bold":true,"italic":false}]',Lore:['{"text":"A gauntlet of power that","color":"red","italic":false}','{"text":"she uses to mercilessly","color":"red","italic":false}','{"text":"rule over her people.","color":"red","italic":false}','{"text":"When right-clicked, Grug","color":"dark_red","italic":false}','{"text":"shoots a horizontal","color":"dark_red","italic":false}','{"text":"beam of bear traps!","color":"dark_red","italic":false}']},HideFlags:1,CustomModelData:10010,Tags:["iron_fist"],Enchantments:[{id:"minecraft:sharpness",lvl:0s},{id:"minecraft:knockback",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1.5,Operation:0,UUID:[I;1444937975,-1208071379,-1991773691,-2069307399],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.5,Operation:1,UUID:[I;-1520820087,-85702307,-1092901147,1539680379],Slot:"mainhand"}]}
replaceitem entity @s[scores={helperTimer=1..},nbt=!{Inventory:[{tag:{Tags:["iron_fist"]}}]}] hotbar.0 carrot_on_a_stick{display:{Name:'[{"text":"Iron ","color":"#CF8484","bold":true,"italic":false},{"text":"Fist","color":"red","bold":true,"italic":false}]',Lore:['{"text":"A gauntlet of power that","color":"red","italic":false}','{"text":"she uses to mercilessly","color":"red","italic":false}','{"text":"rule over her people.","color":"red","italic":false}','{"text":"It\'s power seems to be drained,","color":"dark_red","italic":false}','{"text":"but its energy will return shortly.","color":"dark_red","italic":false}']},HideFlags:1,CustomModelData:10010,Tags:["gs_weapon"],Enchantments:[{id:"minecraft:sharpness",lvl:0s},{id:"minecraft:knockback",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;1444937975,-1208071379,-1991773691,-2069307399],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.6,Operation:1,UUID:[I;-1520820087,-85702307,-1092901147,1539680379],Slot:"mainhand"}]}
# TO-DO: Think about rations system that is dependent 
#replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:cooked_beef"}]}] hotbar.6 cooked_beef 64
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:127,Enchantments:[{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;1343,5464,23445,4355],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:7,Operation:0,UUID:[I;456,765,2343,776],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:8,Operation:0,UUID:[I;2353,4543,7686,7456],Slot:"head"}]}

replaceitem entity @s[team=Red,scores={helperTimer2=0,summonCount=0}] hotbar.4 golden_carrot{display:{Name:'{"text":"Soviet Rations","color":"#963302"}',Lore:['{"text":"A good source of protein","color":"dark_red","italic":false}','{"text":"and patriotism! Now comes","color":"dark_red","italic":false}','{"text":"with extra eggs and peels!","color":"dark_red","italic":false}']}} 1
replaceitem entity @s[team=Red,scores={helperTimer2=0,summonCount=1}] hotbar.4 golden_carrot{display:{Name:'{"text":"Soviet Rations","color":"#963302"}',Lore:['{"text":"A good source of protein","color":"dark_red","italic":false}','{"text":"and patriotism! Now comes","color":"dark_red","italic":false}','{"text":"with extra eggs and peels!","color":"dark_red","italic":false}']}} 2
replaceitem entity @s[team=Red,scores={helperTimer2=0,summonCount=2}] hotbar.4 golden_carrot{display:{Name:'{"text":"Soviet Rations","color":"#963302"}',Lore:['{"text":"A good source of protein","color":"dark_red","italic":false}','{"text":"and patriotism! Now comes","color":"dark_red","italic":false}','{"text":"with extra eggs and peels!","color":"dark_red","italic":false}']}} 3
replaceitem entity @s[team=Red,scores={helperTimer2=0,summonCount=3}] hotbar.4 golden_carrot{display:{Name:'{"text":"Soviet Rations","color":"#963302"}',Lore:['{"text":"A good source of protein","color":"dark_red","italic":false}','{"text":"and patriotism! Now comes","color":"dark_red","italic":false}','{"text":"with extra eggs and peels!","color":"dark_red","italic":false}']}} 4

scoreboard players set @s[scores={helperTimer2=..-1}] helperTimer2 -1
scoreboard players set @s[scores={helperTimer2=..-1},nbt=!{Inventory:[{id:"minecraft:golden_carrot"}]}] helperTimer2 1200

# Homeland Security alt detection
# Not used anymore, but a good reference if we need to do this trick again. It was a pain to implement in the first place.
#execute at @s[team=Red,nbt={SelectedItem:{tag:{Tags:["homeland"]}}}] at @a[team=!Red,distance=0..25] run particle dust 0.949 0.886 0.008 4 ~ ~ ~ 0.4 0.13 0.4 1 4 force @a[scores={heroType=10},team=Red]
#execute at @s[team=Blue,nbt={SelectedItem:{tag:{Tags:["homeland"]}}}] at @a[team=!Blue,distance=0..25] run particle dust 0.949 0.886 0.008 4 ~ ~ ~ 0.4 0.13 0.4 1 4 force @a[scores={heroType=10},team=Blue]

execute as @e[tag=iron_fist] at @s run function melee:grugstalin/ironfistloop
execute as @e[tag=gulag_ray] at @s run function melee:grugstalin/gulag_loop

# Gulag:
# Helps with operations, and comparing numbers.
scoreboard players set One debugMode 1

# Allows use of death pit for Hibbins
effect clear @a[tag=gulag_victim] slow_falling
effect clear @a[tag=gulag_victim] levitation

effect clear @a[tag=gulag_success] slow_falling
effect clear @a[tag=gulag_success] levitation

# Triggers the success mcfunctions before the validation for mobs actually spawning is set to 0.
execute if score @s[team=Red] GS_GulagNum matches ..0 if score GS_ConfirmR debugMode matches 1 as @a[tag=gulag_victim,team=Blue] unless entity @a[tag=gulag_victim,tag=gulag_success,team=Blue] run function melee:grugstalin/gulag/success
execute if score @s[team=Blue] GS_GulagNum matches ..0 if score GS_ConfirmB debugMode matches 1 as @a[tag=gulag_victim,team=Red] unless entity @a[tag=gulag_victim,tag=gulag_success,team=Blue] run function melee:grugstalin/gulag/success

# Constantly applies one tick of ability so that their actual ability timers are retained.
execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,tag=gulag_victim,scores={heroType=..5}] abilityTimer 1
execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,tag=gulag_victim,scores={heroType=7..}] abilityTimer 1
execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,tag=gulag_victim] ability2Timer 1
execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,tag=gulag_victim] ability3Timer 1
execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,tag=gulag_victim] ultTimer 1

execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,tag=gulag_victim,scores={heroType=..5}] abilityTimer 1
execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,tag=gulag_victim,scores={heroType=7..}] abilityTimer 1
execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,tag=gulag_victim] ability2Timer 1
execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,tag=gulag_victim] ability3Timer 1
execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,tag=gulag_victim] ultTimer 1

execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,tag=gulag_success,scores={heroType=..5}] abilityTimer 1
execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,tag=gulag_success,scores={heroType=..7}] ability2Timer 1
execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,tag=gulag_victim] ability2Timer 1
execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,tag=gulag_success] ability3Timer 1
execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,tag=gulag_success] ultTimer 1

execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,tag=gulag_success,scores={heroType=..5}] abilityTimer 1
execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,tag=gulag_success,scores={heroType=7..}] abilityTimer 1
execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,tag=gulag_success] ability2Timer 1
execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,tag=gulag_success] ability3Timer 1
execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,tag=gulag_success] ultTimer 1

# Summon sequence
execute if score GulagSummon_R helperTimer matches 0..40 run function melee:grugstalin/gulag/summon_r
execute if score GulagSummon_B helperTimer matches 0..40 run function melee:grugstalin/gulag/summon_b
execute if score GulagSummon_R helperTimer matches 0..40 run scoreboard players remove GulagSummon_R helperTimer 1
execute if score GulagSummon_B helperTimer matches 0..40 run scoreboard players remove GulagSummon_B helperTimer 1
execute if score GulagSummon_R helperTimer matches ..-1 run scoreboard players reset GulagSummon_R helperTimer
execute if score GulagSummon_B helperTimer matches ..-1 run scoreboard players reset GulagSummon_B helperTimer

# Force-loads 

# Cleans up 
execute as @s[team=Red] if entity @a[tag=gulag_victim,team=Blue,scores={killstreakReset=1..}] run function melee:grugstalin/gulag/cleanup
execute as @s[team=Blue] if entity @a[tag=gulag_victim,team=Red,scores={killstreakReset=1..}] run function melee:grugstalin/gulag/cleanup

# Removes Gulag tags and respawn armor stand whenever killed/a Gulag victory is secured.
execute unless entity @a[team=Red,tag=gulag_victim] run kill @e[tag=gulagEscape_R]
execute unless entity @a[team=Blue,tag=gulag_victim] run kill @e[tag=gulagEscape_B]
execute if entity @a[tag=gulag_victim,scores={killstreakReset=1..},team=Red] run kill @e[tag=gulagEscape_R]
execute if entity @a[tag=gulag_victim,scores={killstreakReset=1..},team=Blue] run kill @e[tag=gulagEscape_B]
execute as @a[tag=gulag_victim,scores={killstreakReset=1..}] run tag @s remove gulag_victim

# Makes sure mobs actually spawned, so that the Winner functions properly work.
execute if score @s[team=Red] GS_GulagNum matches ..0 run scoreboard players reset GS_ConfirmR debugMode
execute if score @s[team=Blue] GS_GulagNum matches ..0 run scoreboard players reset GS_ConfirmB debugMode

execute if score @s[team=Red] GS_GulagNum matches 1.. run scoreboard players set GS_ConfirmR debugMode 1
execute if score @s[team=Blue] GS_GulagNum matches 1.. run scoreboard players set GS_ConfirmB debugMode 1