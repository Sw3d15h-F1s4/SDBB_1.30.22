####
   # givekit.mcfunction (Sting V)
   #
   # Linus Torvalds (and Nathan)
####

clear @s[tag=takedown_use_success] iron_sword{Tags:["eb_norm"]}
clear @s[tag=!takedown_use_success] iron_sword{Tags:["eb_takedown"]}

# Abilities:
replaceitem entity @s[scores={abilityTimer=..0},nbt=!{Inventory:[{tag:{Tags:["venom_takedown"]}}]}] hotbar.1 carrot_on_a_stick{display:{Name:'{"text":"Venomous Takedown","color":"gold","bold":true,"italic":false}',Lore:['{"text":"When activated, Sam shoots","color":"yellow","italic":false}','{"text":"a powerful projectile that homes","color":"yellow","italic":false}','{"text":"in on enemies within ten blocks of Sam.","color":"yellow","italic":false}']},CustomModelData:1010,Tags:["venom_takedown","ability"]}
replaceitem entity @s[scores={ability2Timer=..0},nbt=!{Inventory:[{tag:{Tags:["red_light"]}}]}] hotbar.2 carrot_on_a_stick{display:{Name:'{"text":"Red Light","color":"gold","bold":true,"italic":false}',Lore:['{"text":"When activated, Sam shoots","color":"yellow","italic":false}','{"text":"a powerful projectile that homes","color":"yellow","italic":false}','{"text":"in on enemies within ten blocks of Sam.","color":"yellow","italic":false}']},CustomModelData:1010,Tags:["red_light","ability"]}
replaceitem entity @s[scores={ability3Timer=..0},nbt=!{Inventory:[{tag:{Tags:["every_breath"]}}]}] hotbar.3 carrot_on_a_stick{display:{Name:'{"text":"Every Breath You Take","color":"gold","bold":true,"italic":false}',Lore:['{"text":"When activated, Sam shoots","color":"yellow","italic":false}','{"text":"a powerful projectile that homes","color":"yellow","italic":false}','{"text":"in on enemies within ten blocks of Sam.","color":"yellow","italic":false}']},CustomModelData:1010,Tags:["every_breath","ability"]}

replaceitem entity @s[scores={ultTimer=..0},nbt=!{Inventory:[{tag:{Tags:["sting_ult"]}}]}] hotbar.8 carrot_on_a_stick{display:{Name:'{"text":"Spice of Life","color":"gold","bold":true,"italic":false}',Lore:['{"text":"When activated, Sam shoots","color":"yellow","italic":false}','{"text":"a powerful projectile that homes","color":"yellow","italic":false}','{"text":"in on enemies within ten blocks of Sam.","color":"yellow","italic":false}']},CustomModelData:1010,Tags:["sting_ult"]}

# Optionally, give all kit!
execute if entity @s[tag=takedown_use_success] run replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:iron_sword"}]}] hotbar.0 iron_sword{display:{Name:'[{"text":"Emperor\'s ","color":"#4DBD3C","bold":true,"italic":false},{"text":"Blade","color":"#4E9331"}]'},HideFlags:4,Unbreakable:1b,Tags:["eb_takedown"],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-662233089,-1021423871,-1546239875,10062292],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.3,Operation:1,UUID:[I;250797926,839664073,-1815582053,-958248188],Slot:"mainhand"}]}
execute unless entity @s[tag=takedown_use_success] run replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:iron_sword"}]}] hotbar.0 iron_sword{display:{Name:'[{"text":"Emperor\'s ","color":"#0077FF","bold":true,"italic":false},{"text":"Blade","color":"blue"}]'},HideFlags:4,Unbreakable:1b,Tags:["eb_norm"],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.5,Operation:0,UUID:[I;-662233089,-1021423871,-1546239875,10062292],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.6,Operation:1,UUID:[I;63727295,572804007,-1983067475,1706450925],Slot:"mainhand"}]}

execute unless score mapType gameState matches 4 run replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:127,Enchantments:[{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:7,Operation:0,UUID:[I;-1758399438,2105757121,-1682310351,-311564730],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:7,Operation:0,UUID:[I;1422936738,807486112,-1808260850,-335840241],Slot:"head"}]}
execute if score mapType gameState matches 4 run replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:127,Enchantments:[{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:depth_strider",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:7,Operation:0,UUID:[I;-1758399438,2105757121,-1682310351,-311564730],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:7,Operation:0,UUID:[I;1422936738,807486112,-1808260850,-335840241],Slot:"head"}]}

replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:cooked_beef"}]}] hotbar.4 cooked_beef 64

# "RNG" Poison on melee thing: (not tested)
scoreboard players set @s[scores={helperTimer3=..-1}] helperTimer3 60
execute if entity @s[team=Red,scores={StV_WeaponUse=1..,helperTimer3=30..40},nbt={SelectedItem:{id:"minecraft:iron_sword"}}] as @s at @s run effect give @a[team=!Red,distance=..3,limit=1,sort=nearest,scores={damageTaken=1..}] poison 1 2 true
execute if entity @s[team=Blue,scores={StV_WeaponUse=1..,helperTimer3=30..40},nbt={SelectedItem:{id:"minecraft:iron_sword"}}] as @s at @s run effect give @a[team=!Blue,distance=..3,limit=1,sort=nearest,scores={damageTaken=1..}] poison 1 2 true
execute if entity @s[scores={StV_WeaponUse=1..}] run scoreboard players set @s StV_WeaponUse 0
execute at @s[team=Red] as @a[team=!Red,distance=..7,scores={damageTaken=1..}] run scoreboard players set @s damageTaken 0
execute at @s[team=Blue] as @a[team=!Blue,distance=..7,scores={damageTaken=1..}] run scoreboard players set @s damageTaken 0

## Every Breath seeking:
#execute as @s[tag=every_breath_use,team=Red] at @s if entity @a[team=!Red,distance=..9] run tp @s ~ ~ ~ facing entity @a[team=!Red,distance=..9,sort=nearest,limit=1]
#execute as @s[tag=every_breath_use,team=Blue] at @s if entity @a[team=!Blue,distance=..9] run tp @s ~ ~ ~ facing entity @a[team=!Blue,distance=..9,sort=nearest,limit=1]
#execute if score @s helperTimer matches ..-1 run tag @s remove every_breath_use

## VENOMOUS TAKEDOWN:
# We're comparing different scoreboards. If the current health matches or is less/more than the two targets, then stuff happens.
# There are two conditions: Bound and Max. The Bound is the health that is needed to reach to activate the ability.
# If the player heals and reaches the max amount of health or more, then the opportunity to use this ability is taken away.

# If takedown user's health is less or equal to the minimum and they're within the time slot, the ability works and they win.
execute if score @s[tag=takedown_user] currentHealth < @s[tag=takedown_user] StV_VTBound if score @s[tag=takedown_user] helperTimer2 matches 0..100 unless entity @s[tag=takedown_user,scores={killstreakReset=1..}] as @s[tag=takedown_user] run function melee:season_3/sting_v/effects/venom_takedown

# Passives when you're waiting to get hit
effect give @s[tag=takedown_user] slowness 1 1 true
effect give @s[tag=takedown_user] mining_fatigue 1 0 true
effect give @s[tag=takedown_user] resistance 1 0 true

# Three checks:
# If Current >= Max, If you wasted all your time to activate the thing, and If you die.

# Sounds
execute if score @s[tag=takedown_user] currentHealth >= @s[tag=takedown_user] StV_VTMax at @s[tag=takedown_user] run playsound minecraft:entity.parrot.imitate.ender_dragon master @a ~ ~ ~ 1 0.9
execute if score @s helperTimer2 matches ..-1 at @s[tag=takedown_user] run playsound minecraft:entity.parrot.imitate.ender_dragon master @a ~ ~ ~ 1 0.9
execute if score @s killstreakReset matches 1.. at @s[tag=takedown_user] run playsound minecraft:entity.parrot.imitate.ender_dragon master @a ~ ~ ~ 1 0.9

execute if score @s[tag=takedown_user] currentHealth >= @s[tag=takedown_user] StV_VTMax run tag @s remove takedown_user
execute if score @s[tag=takedown_user] helperTimer2 matches ..-1 run tag @s remove takedown_user
execute if score @s[tag=takedown_user] killstreakReset matches 1.. run tag @s remove takedown_user

# Makes sure you don't get the OP Emperor's Blade without using VT
execute if score @s[tag=takedown_use_success] helperTimer2 matches ..-1 run tag @s remove takedown_use_success
execute unless entity @s[tag=takedown_use_success,scores={helperTimer2=0..}] run clear @s iron_sword{Tags:["eb_takedown"]}

## ULT:
# Gives Slowness AOE when activated in order to give the ult that NICE factor,
# instead of being just better Hack the System.

execute at @s[tag=spicelife_user,team=Red] run effect give @a[team=!Red,distance=..7] slowness 1 0 false
execute at @s[tag=spicelife_user,team=Blue] run effect give @a[team=!Blue,distance=..7] slowness 1 0 false

# Removes ult tag when you aren't in the ult
execute unless score @s ultTimer matches 2400..2460 run tag @s remove spicelife_user
