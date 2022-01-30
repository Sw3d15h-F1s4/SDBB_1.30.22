##
 # givekit.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

# penalty
clear @s[tag=shield_penalty] shield

# durability "states"
clear @s[scores={shieldDamage=3..}] shield{Tags:["bill_plain"]}
clear @s[scores={shieldDamage=7..}] shield{Tags:["bill_s1"]}
clear @s[scores={shieldDamage=13..}] shield{Tags:["bill_s2"]}
clear @s[scores={shieldDamage=18..}] shield{Tags:["bill_s3"]}

# seamless transition from states
clear @s[tag=bill_sDrain,scores={shieldDamage=13..17}] shield{Tags:["bill_s4"]}
clear @s[tag=bill_sDrain,scores={shieldDamage=7..12}] shield{Tags:["bill_s4"]}
clear @s[tag=bill_sDrain,scores={shieldDamage=3..6}] shield{Tags:["bill_s4"]}
clear @s[tag=bill_sDrain,scores={shieldDamage=..2}] shield{Tags:["bill_s4"]}

clear @s[tag=bill_sDrain,scores={shieldDamage=7..12}] shield{Tags:["bill_s3"]}
clear @s[tag=bill_sDrain,scores={shieldDamage=3..6}] shield{Tags:["bill_s3"]}
clear @s[tag=bill_sDrain,scores={shieldDamage=..2}] shield{Tags:["bill_s3"]}

clear @s[tag=bill_sDrain,scores={shieldDamage=3..6}] shield{Tags:["bill_s2"]}
clear @s[tag=bill_sDrain,scores={shieldDamage=..2}] shield{Tags:["bill_s2"]}

clear @s[tag=bill_sDrain,scores={shieldDamage=..2}] shield{Tags:["bill_s1"]}

#returns bill clinton's kit when his abilities are up
replaceitem entity @s[scores={abilityTimer=..0},nbt=!{Inventory:[{tag:{Tags:["cheater"]}}]}] hotbar.1 carrot_on_a_stick{display:{Name:'[{"text":"Cheater\'s ","color":"blue","bold":true,"italic":false},{"text":"Finesse","color":"red","bold":true,"italic":false}]',Lore:['{"text":"When activated, Bill\'s","color":"dark_red","italic":false}','{"text":"movement and swing speed are","color":"dark_red","italic":false}','{"text":"greatly improved for 5 seconds!","color":"dark_red","italic":false}']},CustomModelData:2010,Tags:["cheater","ability"]}
replaceitem entity @s[scores={ability2Timer=..0},nbt=!{Inventory:[{tag:{Tags:["deceptive"]}}]}] hotbar.2 carrot_on_a_stick{display:{Name:'[{"text":"Deceptive ","color":"red","bold":true,"italic":false},{"text":"Trick","color":"blue","bold":true,"italic":false}]',Lore:['{"text":"Bill uses his ambiguous","color":"dark_red","italic":false}','{"text":"ruse to blind and slow down","color":"dark_red","italic":false}','{"text":"opponents within five blocks","color":"dark_red","italic":false}','{"text":"for 5 seconds.","color":"dark_red","italic":false}']},CustomModelData:2010,Tags:["deceptive","ability"]}
replaceitem entity @s[scores={ability3Timer=0},nbt=!{Inventory:[{tag:{Tags:["lightning"]}}]}] hotbar.3 lingering_potion{Tags:["lightning"],display:{Name:'[{"text":"Bill\'s ","color":"blue","bold":true,"italic":false},{"text":"Lightning","color":"aqua","bold":true,"italic":false}]',Lore:['{"text":"Bill uses his meme \\"powers\\" to","color":"dark_red","italic":false}','{"text":"surround an area in static","color":"dark_red","italic":false}','{"text":"electricity when thrown.","color":"dark_red","italic":false}']},HideFlags:127,CustomModelData:2010,CustomPotionEffects:[{Id:32b,Amplifier:5b,Duration:60}],Potion:"minecraft:water"}
scoreboard players set @s[scores={ability3Timer=-1},nbt=!{Inventory:[{id:"minecraft:lingering_potion"}]}] ability3Timer 600

replaceitem entity @s[scores={ultTimer=..0},nbt=!{Inventory:[{tag:{Tags:["release"]}}]}] hotbar.8 carrot_on_a_stick{Tags:["release"],display:{Name:'[{"text":"Bill\'s ","color":"red","bold":true,"italic":false},{"text":"Sweet ","color":"aqua","bold":true,"italic":false},{"text":"Release","color":"blue","bold":true,"italic":false}]',Lore:['{"text":"While reminiscing in his","color":"dark_red","italic":false}','{"text":"debauchery, Bill uses the full extent","color":"dark_red","italic":false}','{"text":"of his power to surround a huge","color":"dark_red","italic":false}','{"text":"area in lightning.","color":"dark_red","italic":false}']},CustomModelData:200020}

#gives weapons in case of drop:

# normal
replaceitem entity @s[scores={shieldDamage=..2},tag=!shield_penalty,nbt=!{Inventory:[{id:"minecraft:shield"}]}] hotbar.0 shield{display:{Name:'{"text":"Bill Clinton\'s Lightsaber","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Bill Clintion, taught by","color":"gold","italic":false}','{"text":"Mr. Forsythe of the Gamer","color":"gold","italic":false}','{"text":"Council in a past life, can use","color":"gold","italic":false}','{"text":"cunning percision and raw power","color":"gold","italic":false}','{"text":"to cut opponents down.","color":"gold","italic":false}','[{"text":"Inoltre, è un maschio ","color":"gold"},{"text":"beta","underlined":false,"strikethrough":true},{"text":" sigma.","bold":true,"underlined":false,"strikethrough":false}]']},HideFlags:4,Unbreakable:1b,CustomModelData:2001,Tags:["bill_plain"],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.3d,Operation:1,UUID:[I; 0, 996392, 0, 664398],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I; 0, 700044, 0, 34595],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.45d,Operation:1,UUID:[I; 0, 714799, 0, 763374],Slot:"mainhand"}]}
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:cooked_beef"}]}] hotbar.4 cooked_beef 64

# 5 or less absorbed:
replaceitem entity @s[scores={shieldDamage=3..6},nbt=!{Inventory:[{id:"minecraft:shield"}]}] hotbar.0 shield{display:{Name:'{"text":"Bill Clinton\'s Lightsaber","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Bill Clintion, taught by","color":"gold","italic":false}','{"text":"Mr. Forsythe of the Gamer","color":"gold","italic":false}','{"text":"Council in a past life, can use","color":"gold","italic":false}','{"text":"cunning percision and raw power","color":"gold","italic":false}','{"text":"to cut opponents down.","color":"gold","italic":false}','[{"text":"Inoltre, è un maschio ","color":"gold"},{"text":"beta","underlined":false,"strikethrough":true},{"text":" sigma.","bold":true,"underlined":false,"strikethrough":false}]']},HideFlags:4,Unbreakable:0b,Damage:75,CustomModelData:2001,Tags:["bill_s1"],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.3d,Operation:1,UUID:[I; 0, 996392, 0, 664398],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I; 0, 700044, 0, 34595],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.45d,Operation:1,UUID:[I; 0, 714799, 0, 763374],Slot:"mainhand"}]}
# 10 or less absorbed:
replaceitem entity @s[scores={shieldDamage=7..12},nbt=!{Inventory:[{id:"minecraft:shield"}]}] hotbar.0 shield{display:{Name:'{"text":"Bill Clinton\'s Lightsaber","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Bill Clintion, taught by","color":"gold","italic":false}','{"text":"Mr. Forsythe of the Gamer","color":"gold","italic":false}','{"text":"Council in a past life, can use","color":"gold","italic":false}','{"text":"cunning percision and raw power","color":"gold","italic":false}','{"text":"to cut opponents down.","color":"gold","italic":false}','[{"text":"Inoltre, è un maschio ","color":"gold"},{"text":"beta","underlined":false,"strikethrough":true},{"text":" sigma.","bold":true,"underlined":false,"strikethrough":false}]']},HideFlags:4,Unbreakable:0b,Damage:127,CustomModelData:2001,Tags:["bill_s2"],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.3d,Operation:1,UUID:[I; 0, 996392, 0, 664398],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I; 0, 700044, 0, 34595],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.45d,Operation:1,UUID:[I; 0, 714799, 0, 763374],Slot:"mainhand"}]}
# 15 or less absorbed:
replaceitem entity @s[scores={shieldDamage=13..17},nbt=!{Inventory:[{id:"minecraft:shield"}]}] hotbar.0 shield{display:{Name:'{"text":"Bill Clinton\'s Lightsaber","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Bill Clintion, taught by","color":"gold","italic":false}','{"text":"Mr. Forsythe of the Gamer","color":"gold","italic":false}','{"text":"Council in a past life, can use","color":"gold","italic":false}','{"text":"cunning percision and raw power","color":"gold","italic":false}','{"text":"to cut opponents down.","color":"gold","italic":false}','[{"text":"Inoltre, è un maschio ","color":"gold"},{"text":"beta","underlined":false,"strikethrough":true},{"text":" sigma.","bold":true,"underlined":false,"strikethrough":false}]']},HideFlags:4,Unbreakable:0b,Damage:200,CustomModelData:2001,Tags:["bill_s3"],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.3d,Operation:1,UUID:[I; 0, 996392, 0, 664398],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I; 0, 700044, 0, 34595],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.45d,Operation:1,UUID:[I; 0, 714799, 0, 763374],Slot:"mainhand"}]}
# 24 or less absorbed:
replaceitem entity @s[scores={shieldDamage=18..},nbt=!{Inventory:[{id:"minecraft:shield"}]}] hotbar.0 shield{display:{Name:'{"text":"Bill Clinton\'s Lightsaber","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Bill Clintion, taught by","color":"gold","italic":false}','{"text":"Mr. Forsythe of the Gamer","color":"gold","italic":false}','{"text":"Council in a past life, can use","color":"gold","italic":false}','{"text":"cunning percision and raw power","color":"gold","italic":false}','{"text":"to cut opponents down.","color":"gold","italic":false}','[{"text":"Inoltre, è un maschio ","color":"gold"},{"text":"beta","underlined":false,"strikethrough":true},{"text":" sigma.","bold":true,"underlined":false,"strikethrough":false}]']},HideFlags:4,Unbreakable:0b,Damage:255,CustomModelData:2001,Tags:["bill_s4"],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.3d,Operation:1,UUID:[I; 0, 996392, 0, 664398],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I; 0, 700044, 0, 34595],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.45d,Operation:1,UUID:[I; 0, 714799, 0, 763374],Slot:"mainhand"}]}

execute unless score mapType gameState matches 4 run replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{AttributeModifiers:[{AttributeName: "generic.armor", Name: "generic.armor", Amount: 10, Operation: 0, UUID: [I; 0, 319316, 0, 711835], Slot: "head"},{AttributeName: "generic.armor_toughness", Name: "generic.armorToughness", Amount: 4, Operation: 0, UUID: [I; 0, 688372, 0, 738919], Slot: "head"}],Unbreakable:1b,HideFlags:31,Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:3}]}
execute if score mapType gameState matches 4 run replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:31,Enchantments:[{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:binding_curse",lvl:1s},{id:"feather_falling",lvl:3}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:10,Operation:0,UUID:[I; 0, 319316, 0, 711835],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I; 0, 688372, 0, 738919],Slot:"head"}]}

#custom for bill

# hit flash and sfx
scoreboard players set @s[scores={killstreakReset=1..}] damageDealt 0


execute if score @s damageDealt > @s SM_suaveMente at @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run playsound sdbb:bill_clinton.lightsaber_hit ambient @a ~ ~ ~ 0.5
execute if score @s[team=Red] damageDealt > @s[team=Red] SM_suaveMente if score BC_DamageB SM_suaveMente > @a[distance=..6,sort=nearest,limit=1,team=Blue] currentHealth at @a[distance=..6,sort=nearest,limit=1,team=Blue] run particle flash ^ ^0.3 ^0.4 0 0 0 1 1 force
execute if score @s[team=Blue] damageDealt > @s[team=Blue] SM_suaveMente if score BC_DamageR SM_suaveMente > @a[distance=..6,sort=nearest,limit=1,team=Red] currentHealth at @a[distance=..6,sort=nearest,limit=1,team=Red] run particle flash ^ ^0.3 ^0.4 0 0 0 1 1 force


scoreboard players operation @s SM_suaveMente = @s damageDealt
execute at @s[team=Red] run scoreboard players operation BC_DamageB SM_suaveMente = @a[distance=..6,sort=nearest,limit=1,team=Blue] currentHealth
execute at @s[team=Blue] run scoreboard players operation BC_DamageR SM_suaveMente = @a[distance=..6,sort=nearest,limit=1,team=Red] currentHealth


execute at @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run playsound sdbb:bill_clinton.lightsaber_hum ambient @a ~ ~ ~ 0.04
execute at @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield"}]}] run playsound sdbb:bill_clinton.lightsaber_hum ambient @a ~ ~ ~ 0.04

# swap onto and off-to the shied sounds. made team variants because of a previous bug
execute at @s[team=Red] unless data storage bill_clinton_r handItem{id:"minecraft:shield",tag:{CustomModelData:2001}}.id unless data entity @s[team=Red] Inventory[{Slot:-106b,id:"minecraft:shield"}] if data entity @s[team=Red] SelectedItem{id:"minecraft:shield",tag:{CustomModelData:2001}} run playsound sdbb:bill_clinton.lightsaber_ignite ambient @s ~ ~ ~ 0.35
execute at @s[team=Blue] unless data storage bill_clinton_b handItem{id:"minecraft:shield",tag:{CustomModelData:2001}}.id unless data entity @s[team=Blue] Inventory[{Slot:-106b,id:"minecraft:shield"}] if data entity @s[team=Blue] SelectedItem{id:"minecraft:shield",tag:{CustomModelData:2001}} run playsound sdbb:bill_clinton.lightsaber_ignite ambient @s ~ ~ ~ 0.35
execute at @s[team=Red] unless data storage bill_clinton_r handItem{id:"minecraft:shield",tag:{CustomModelData:2001}}.id unless data entity @s[team=Red] Inventory[{Slot:-106b,id:"minecraft:shield"}] if data entity @s[team=Red] SelectedItem{id:"minecraft:shield",tag:{CustomModelData:2001}} run tag @s add bill_on
execute at @s[team=Blue] unless data storage bill_clinton_b handItem{id:"minecraft:shield",tag:{CustomModelData:2001}}.id unless data entity @s[team=Blue] Inventory[{Slot:-106b,id:"minecraft:shield"}] if data entity @s[team=Blue] SelectedItem{id:"minecraft:shield",tag:{CustomModelData:2001}} run tag @s add bill_on

execute at @s[team=Red] unless data storage bill_clinton_r handItem{id:"minecraft:shield",tag:{CustomModelData:2001}}.id unless data entity @s[team=Red,tag=bill_on] SelectedItem{id:"minecraft:shield",tag:{CustomModelData:2001}} unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield"}]}] run playsound sdbb:bill_clinton.lightsaber_retract ambient @s[tag=!shield_penalty] ~ ~ ~ 0.35
execute at @s[team=Blue] unless data storage bill_clinton_b handItem{id:"minecraft:shield",tag:{CustomModelData:2001}}.id unless data entity @s[team=Blue,tag=bill_on] SelectedItem{id:"minecraft:shield",tag:{CustomModelData:2001}} unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield"}]}] run playsound sdbb:bill_clinton.lightsaber_retract ambient @s[tag=!shield_penalty] ~ ~ ~ 0.35
execute at @s[team=Red] unless data storage bill_clinton_r handItem{id:"minecraft:shield",tag:{CustomModelData:2001}}.id unless data entity @s[team=Red,tag=bill_on] SelectedItem{id:"minecraft:shield",tag:{CustomModelData:2001}} unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield"}]}] run tag @s remove bill_on
execute at @s[team=Blue] unless data storage bill_clinton_b handItem{id:"minecraft:shield",tag:{CustomModelData:2001}}.id unless data entity @s[team=Blue,tag=bill_on] SelectedItem{id:"minecraft:shield",tag:{CustomModelData:2001}} unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield"}]}] run tag @s remove bill_on

data modify storage bill_clinton_r handItem set from entity @s[team=Red] SelectedItem
data modify storage bill_clinton_b handItem set from entity @s[team=Blue] SelectedItem


execute as @e[type=minecraft:area_effect_cloud,nbt={Effects:[{Id:32b}]}] run function melee:bill_clinton/lightning

execute as @s run function melee:bill_clinton/shield_use