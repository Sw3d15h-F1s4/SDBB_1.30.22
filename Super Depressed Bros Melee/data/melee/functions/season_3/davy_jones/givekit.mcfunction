##
 # givekit.mcfunction
 # Super Depressed Bros. Brawl
 # by G0lden_Phant0m/Sw3d15h_F1s4
##

# Land penalty passives
execute as @a[scores={heroType=14,gameState=1,ultTimer=..2700}] at @s unless block ~ ~ ~ water run effect give @s slowness 2 2 true
execute as @a[scores={heroType=14,gameState=1,ultTimer=..2700}] at @s unless block ~ ~ ~ water run effect give @s weakness 1 0 true

# give ability item
replaceitem entity @s[scores={abilityTimer=..0},nbt=!{Inventory:[{tag:{Tags:["believe_death"]}}]}] hotbar.1 carrot_on_a_stick{CustomModelData:14010,display:{Name:'[{"text":"Do You ","color":"#34822F","bold":true,"italic":false},{"text":"Fear ","color":"dark_gray","bold":true,"italic":false},{"text":"Death?","color":"#DEBB00"}]',Lore:['{"text":"Davy Jones grabs the closest stowaway","color":"#008F2B","italic":false}','{"text":"and suspends them in the air.","color":"#008F2B","italic":false}','{"text":"After intimidating them, he","color":"#008F2B","italic":false}','{"text":"throws them away like a ragdoll.","color":"#008F2B","italic":false}']},Tags:["believe_death","ability"]}
replaceitem entity @s[scores={ability2Timer=..0},nbt=!{Inventory:[{tag:{Tags:["organ_i"]}}]}] hotbar.2 carrot_on_a_stick{CustomModelData:14020,display:{Name:'[{"text":"Organ ","color":"#34822F","bold":true,"italic":false},{"text":"Intimidation","color":"#DEBB00"}]',Lore:['{"text":"Music, seemingly out of nowhere,","color":"#008F2B","italic":false}','{"text":"starts to play around Davy Jones.","color":"#008F2B","italic":false}','{"text":"His aura, along with the music, become","color":"#008F2B","italic":false}','{"text":"so vile and fishy that opponents","color":"#008F2B","italic":false}','{"text":"near him start to get seasick.","color":"#008F2B","italic":false}']},Tags:["organ_i","ability"]}
replaceitem entity @s[scores={ability3Timer=..0},nbt=!{Inventory:[{tag:{Tags:["buckshot"]}}]}] hotbar.3 carrot_on_a_stick{CustomModelData:14030,display:{Name:'[{"text":"Buck","color":"#34822F","bold":true,"italic":false},{"text":"shot","color":"#DEBB00"}]',Lore:['{"text":"Davy Jones pulls out a","color":"#008F2B","italic":false}','{"text":"flintlock pistol, being able to","color":"#008F2B","italic":false}','{"text":"gun down fat landlubbers,","color":"#008F2B","italic":false}','{"text":"for a short time, from a","color":"#008F2B","italic":false}','{"text":"far away distance.","color":"#008F2B","italic":false}']},Tags:["buckshot","ability"]}

replaceitem entity @s[scores={ultTimer=..0},nbt=!{Inventory:[{tag:{Tags:["dms_chest"]}}]}] hotbar.8 carrot_on_a_stick{CustomModelData:1400020,display:{Name:'[{"text":"Dead ","color":"#34822F","bold":true,"italic":false},{"text":"Man\'s ","color":"dark_gray","bold":true,"italic":false},{"text":"Chest","color":"#DEBB00"}]',Lore:['{"text":"Davy Jone\'s ten year wait","color":"#008F2B","italic":false}','{"text":"is up, at last! He temporarily","color":"#008F2B","italic":false}','{"text":"loses his slowness on land, and","color":"#008F2B","italic":false}','{"text":"receives an extraordinary power","color":"#008F2B","italic":false}','{"text":"and swing speed boost!","color":"#008F2B","italic":false}']},Tags:["dms_chest"]}

# Optionally, give them they full kit!
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:golden_sword"}]}] hotbar.0 golden_sword{display:{Name:'{"text":"Davy\'s Cutlass","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"The blade of Davy Jones","color":"blue","italic":false}','{"text":"is able to cut through","color":"blue","italic":false}','{"text":"the toughest of armor.","color":"blue","italic":false}']},HideFlags:127,Unbreakable:1b,CustomModelData:14001,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:sweeping",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;459608476,1376471778,-1878586685,1902256243],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.25,Operation:1,UUID:[I;-2107563355,-1428862211,-2079760488,904933336],Slot:"mainhand"}]}

replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:cooked_beef"}]}] hotbar.4 cooked_beef 64

# Button: 13 armor, 7 tough, 6 more health, proc 1, feather 2, resp. and aqua aff. 50, HAS CUSTOM MODEL
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:127,CustomModelData:2100,Enchantments:[{id:"minecraft:feather_falling",lvl:2s},{id:"minecraft:respiration",lvl:50s},{id:"minecraft:aqua_affinity",lvl:50s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:6,Operation:0,UUID:[I;-717271567,-1796914499,-1766907475,1285263008],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:13,Operation:0,UUID:[I;-307219298,228543947,-2081368279,-148285901],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:7,Operation:0,UUID:[I;1337718285,662916689,-2058955864,-728488221],Slot:"head"}]}


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
#resetting timer, add +3 seconds because of regen (effective 5 sec, real 10)
execute if score @s helperTimer3 matches -2..-1 run scoreboard players set @s helperTimer3 200
#heal
execute if score @s[team=Red] helperTimer3 matches 0 run effect give @a[scores={heroType=14},team=Red] regeneration 5 1 true
execute if score @s[team=Blue] helperTimer3 matches 0 run effect give @a[scores={heroType=14},team=Blue] regeneration 5 1 true
#particle
execute if score @s helperTimer3 matches 0 at @s run particle minecraft:dolphin ~ ~ ~ 0.3 0.8 0.3 0.1 50 force