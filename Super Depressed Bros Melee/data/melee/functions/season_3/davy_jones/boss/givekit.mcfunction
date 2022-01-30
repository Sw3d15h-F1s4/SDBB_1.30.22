##
 # givekit.mcfunction
 # Super Depressed Bros. Brawl
 #
 # Created by Nathan
##

execute as @a[scores={heroType=14,gameState=2}] at @s unless block ~ ~ ~ water run effect give @s slowness 2 2 true

replaceitem entity @s[scores={abilityTimer=..0},nbt=!{Inventory:[{tag:{Tags:["believe_death"]}}]}] hotbar.1 carrot_on_a_stick{CustomModelData:14010,display:{Name:'[{"text":"Do You ","color":"#34822F","bold":true,"italic":false},{"text":"Fear ","color":"dark_gray","bold":true,"italic":false},{"text":"Death?","color":"#DEBB00"}]',Lore:['{"text":"Davy Jones grabs the closest stowaway","color":"#008F2B","italic":false}','{"text":"and suspends them in the air.","color":"#008F2B","italic":false}','{"text":"After intimidating them, he throws","color":"#008F2B","italic":false}','{"text":"tosses them away like a ragdoll.","color":"#008F2B","italic":false}']},Tags:["believe_death","ability"]}
replaceitem entity @s[scores={ability2Timer=..0},nbt=!{Inventory:[{tag:{Tags:["organ_i"]}}]}] hotbar.2 carrot_on_a_stick{CustomModelData:14020,display:{Name:'[{"text":"Organ ","color":"#34822F","bold":true,"italic":false},{"text":"Intimidation","color":"#DEBB00"}]',Lore:['{"text":"Music, seemingly out of nowhere,","color":"#008F2B","italic":false}','{"text":"starts to play around Davy Jones.","color":"#008F2B","italic":false}','{"text":"His aura, because of the music, is so","color":"#008F2B","italic":false}','{"text":"vile and fishy that opponents near","color":"#008F2B","italic":false}','{"text":"him start to get seasick.","color":"#008F2B","italic":false}']},Tags:["organ_i","ability"]}
replaceitem entity @s[scores={ability3Timer=..0},nbt=!{Inventory:[{tag:{Tags:["buckshot"]}}]}] hotbar.3 carrot_on_a_stick{CustomModelData:14030,display:{Name:'[{"text":"Buck","color":"#34822F","bold":true,"italic":false},{"text":"shot","color":"#DEBB00"}]',Lore:['{"text":"Davy Jones pulls out a","color":"#008F2B","italic":false}','{"text":"flintlock pistol, being able to","color":"#008F2B","italic":false}','{"text":"gun down fat landlubbers,","color":"#008F2B","italic":false}','{"text":"for a short time, from a","color":"#008F2B","italic":false}','{"text":"far away distance.","color":"#008F2B","italic":false}']},Tags:["buckshot","ability"]}
replaceitem entity @s[scores={helperTimer=..0},nbt=!{Inventory:[{tag:{Tags:["recruitment"]}}]}] hotbar.4 carrot_on_a_stick{CustomModelData:14040,display:{Name:'[{"text":"Dutchman ","color":"#34822F","bold":true,"italic":false},{"text":"Recruitment","color":"#DEBB00"}]',Lore:['{"text":"When activated, all summoned","color":"#008F2B","italic":false}','{"text":"mobs within a 15 block radius of","color":"#008F2B","italic":false}','{"text":"Davy Jones join his crew, becoming","color":"#008F2B","italic":false}','{"text":"traitors to their former masters.","color":"#008F2B","italic":false}']},Tags:["recruitment","ability"]}
replaceitem entity @s[scores={helperTimer2=..0},nbt=!{Inventory:[{tag:{Tags:["ghost_teleport"]}}]}] hotbar.5 carrot_on_a_stick{CustomModelData:14050,display:{Name:'[{"text":"Ghostly ","color":"#34822F","bold":true,"italic":false},{"text":"Teleportation","color":"#DEBB00"}]',Lore:['{"text":"Davy decomposes into smoke, and travels","color":"#008F2B","italic":false}','{"text":"to a random vessel within At","color":"#008F2B","italic":false}','{"text":"World\'s End. Anyone that sees","color":"#008F2B","italic":false}','{"text":"him arrive will temporarily blinded.","color":"#008F2B","italic":false}']},Tags:["ghost_teleport","ability"]}


replaceitem entity @s[scores={ultTimer=..0},nbt=!{Inventory:[{tag:{Tags:["captains_call"]}}]}] hotbar.8 carrot_on_a_stick{CustomModelData:1400030,display:{Name:'[{"text":"Captain\'s ","color":"#34822F","bold":true,"italic":false},{"text":"Call","color":"#DEBB00"}]',Lore:['{"text":"Using his haunted power, he brings","color":"#008F2B","italic":false}','{"text":"forth his pirate crew to aid him","color":"#008F2B","italic":false}','{"text":"in battle. One crewmember spawns","color":"#008F2B","italic":false}','{"text":"at every opponent, and near","color":"#008F2B","italic":false}','{"text":"Davy Jones to guard him.","color":"#008F2B","italic":false}']},Tags:["captains_call"]}

# Optionally, give them they full kit!
replaceitem entity @s[scores={gameState=2},nbt=!{Inventory:[{id:"minecraft:golden_sword"}]}] hotbar.0 golden_sword{display:{Name:'{"text":"Davy\'s Cutlass","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"The blade of Davy Jones","color":"blue","italic":false}','{"text":"is able to cut through","color":"blue","italic":false}','{"text":"the toughest of armor.","color":"blue","italic":false}']},HideFlags:127,Unbreakable:1b,CustomModelData:14001,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:sweeping",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;459608476,1376471778,-1878586685,1902256243],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:2,Operation:0,UUID:[I;-1610730460,1486571596,-1603744704,-419900723],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.3,Operation:1,UUID:[I;-2107563355,-1428862211,-2079760488,904933336],Slot:"mainhand"}]}

replaceitem entity @s[scores={gameState=2},nbt=!{Inventory:[{id:"minecraft:cooked_beef"}]}] hotbar.6 cooked_beef 64

# Button: 13 armor, 7 tough, 6 more health, proc 1, feather 2, resp. and aqua aff. 50, 20 EXTRA HEARTS, HAS CUSTOM MODEL
replaceitem entity @s[scores={gameState=2},nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:127,CustomModelData:2100,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:feather_falling",lvl:2s},{id:"minecraft:respiration",lvl:50s},{id:"minecraft:aqua_affinity",lvl:50s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:40,Operation:0,UUID:[I;-717271567,-1796914499,-1766907475,1285263008],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:13,Operation:0,UUID:[I;-307219298,228543947,-2081368279,-148285901],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:7,Operation:0,UUID:[I;1337718285,662916689,-2058955864,-728488221],Slot:"head"}]}

# Death March for the drowned
execute as @e[type=drowned,tag=dj_cptcllmob] run scoreboard players add @s b_clonedeath 1
kill @e[type=drowned,tag=dj_cptcllmob,scores={b_clonedeath=500..}]

# Do you fear death Guts got rekt lmao
execute if entity @s[team=Blue] at @e[tag=dyfd_victim_stand_blue] if entity @a[tag=dyfd_victim,distance=5..,team=!Blue] run tag @a[team=!Blue,tag=dyfd_victim] remove dyfd_victim
execute if entity @s[team=Red] at @e[tag=dyfd_victim_stand_red] if entity @a[tag=dyfd_victim,distance=5..,team=!Red] run tag @a[team=!Red,tag=dyfd_victim] remove dyfd_victim
#lock the enemy in place as long as there is an enemy stand user:
execute if entity @e[tag=dyfd_victim_stand_red] run tp @a[tag=dyfd_victim,team=!Red] @e[tag=dyfd_victim_stand_red,limit=1,sort=nearest]
execute if entity @e[tag=dyfd_victim_stand_blue] run tp @a[tag=dyfd_victim,team=!Blue] @e[tag=dyfd_victim_stand_blue,limit=1,sort=nearest]
#lock davy in place but allow free look:
execute if entity @s[team=Blue] at @e[tag=dyfd_user_stand_blue] run tp @s ~ ~ ~
execute if entity @s[team=Red] at @e[tag=dyfd_user_stand_red] run tp @s ~ ~ ~
#cleanup when done:
execute if entity @s[team=Red,scores={DJ_FearDeath=..0}] run kill @e[tag=dyfd_victim_stand_red,nbt={OnGround:1b},tag=thrown]
execute if entity @s[team=Blue,scores={DJ_FearDeath=..0}] run kill @e[tag=dyfd_victim_stand_blue,nbt={OnGround:1b},tag=thrown]
execute unless entity @e[tag=dyfd_victim_stand_blue] run tag @a[team=!Blue] remove dyfd_victim
execute unless entity @e[tag=dyfd_victim_stand_red] run tag @a[team=!Red] remove dyfd_victim

execute at @e[tag=thrown] as @e[tag=thrown] if block ~ ~ ~ water run scoreboard players add @e[tag=thrown] projectileLife 1
kill @e[tag=dyfd_victim_stand,scores={projectileLife=10..}]


# Clears crossbow and arrow, time of 10 seconds before it clears
scoreboard players remove @s SM_suaveMente 1
scoreboard players set @s[scores={SM_suaveMente=-2..-1}] SM_suaveMente -1
execute if entity @s[scores={SM_suaveMente=-1..0}] run clear @s minecraft:crossbow{Tags:["dj_flintlock"]}
execute if entity @s[scores={SM_suaveMente=-1..0}] run clear @s minecraft:firework_rocket{Tags:["dj_flintlockammo"]}

# Regen passive:
#resetting timer
execute if score @s helperTimer3 matches -2..-1 run scoreboard players set @s helperTimer3 280
#heal
execute if score @s[team=Red] helperTimer3 matches 0 run effect give @a[scores={heroType=14},team=Red] instant_health 1 0 true
execute if score @s[team=Blue] helperTimer3 matches 0 run effect give @a[scores={heroType=14},team=Blue] instant_health 1 0 true
#particle
execute if score @s helperTimer3 matches 0 at @s run particle minecraft:dolphin ~ ~ ~ 0.3 0.8 0.3 0.1 50 force
execute if score @s helperTimer3 matches 0 at @s run particle minecraft:bubble_pop ~ ~ ~ 0.5 1 0.5 0 20 force