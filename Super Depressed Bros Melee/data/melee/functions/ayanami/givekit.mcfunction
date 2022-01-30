##
 # givekit.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

#returns ayanami's kit when her abilities are up
replaceitem entity @s[scores={abilityTimer=..0},nbt=!{Inventory:[{tag:{Tags:["goth_asuka"]}}]}] hotbar.1 carrot_on_a_stick{display:{Name:'[{"text":"Goth ","color":"dark_red","bold":true,"italic":false},{"text":"Asuka","color":"aqua","bold":true,"italic":false}]'},CustomModelData:8010,Tags:["goth_asuka","ability"]}
replaceitem entity @s[scores={ability2Timer=..0},nbt=!{Inventory:[{tag:{Tags:["tactical_lrfbc"]}}]}] hotbar.2 carrot_on_a_stick{display:{Name:'[{"text":"Tactical ","color":"dark_aqua","bold":true,"italic":false},{"text":"L.R.F.B.C.","color":"aqua","bold":true,"italic":false}]'},CustomModelData:8011,Tags:["tactical_lrfbc","ability"]}
replaceitem entity @s[scores={ability3Timer=..0},nbt=!{Inventory:[{tag:{Tags:["at_field"]}}]}] hotbar.3 carrot_on_a_stick{display:{Name:'[{"text":"A.T. ","color":"aqua","bold":true,"italic":false},{"text":"Field","color":"dark_aqua","bold":true,"italic":false}]'},CustomModelData:8012,Tags:["at_field","ability"]}

replaceitem entity @s[scores={ultTimer=..0},nbt=!{Inventory:[{tag:{Tags:["tenth_impact"]}}]}] hotbar.8 carrot_on_a_stick{display:{Name:'[{"text":"Tenth ","color":"aqua","bold":true,"italic":false},{"text":"Impact","color":"dark_aqua","bold":true,"italic":false}]'},CustomModelData:800020,Tags:["tenth_impact"]}


# Added -15% movement speed when Rei holds the Otaku Beam. Let's test this change PLEASE!
replaceitem entity @s[scores={gameState=1,summonCount=-1..20},nbt=!{Inventory:[{tag:{Tags:["otaku"]}}]}] hotbar.0 carrot_on_a_stick{display:{Name:'[{"text":"Otaku ","color":"aqua","bold":true,"italic":false},{"text":"Beam","color":"dark_aqua","bold":true,"italic":false}]',Lore:['{"text":"A powerful weapon that shoots","color":"dark_aqua","italic":false}','[{"text":"unstable ","color":"dark_aqua","italic":false},{"text":"ga","color":"dark_red","bold":true},{"text":"m","color":"dark_green","bold":true,"italic":false},{"text":"er","color":"dark_blue","bold":true,"italic":false},{"text":" energy.","color":"dark_aqua","bold":false}]','{"text":"Hold/press right click to charge","color":"#00D6E6","italic":false}','{"text":"the weapon. After charging, you","color":"#00D6E6","italic":false}','{"text":"have five seconds to shoot.","color":"#00D6E6","italic":false}']},CustomModelData:8001,Tags:["otaku"],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.15,Operation:1,UUID:[I;-8158188,-1418834860,-1182179333,-1855619553],Slot:"mainhand"}]}
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:cooked_beef"}]}] hotbar.4 cooked_beef 64
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:31,Enchantments:[{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUID:[I; 0, 319316, 0, 711835],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:5,Operation:0,UUID:[I; 0, 688372, 0, 738919],Slot:"head"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;144510558,-1614658392,-1865705102,1359920759],Slot:"head"}]}

replaceitem entity @s[scores={summonCount=200..},nbt=!{Inventory:[{tag:{Tags:["ob_crossbow"],Charged:1b}}]}] hotbar.0 crossbow{CustomModelData:8001,display:{Name:'[{"text":"Otaku ","color":"dark_red","bold":true,"italic":false},{"text":"Beam","color":"dark_blue"}]',Lore:['{"text":"A powerful weapon that shoots","color":"dark_aqua","italic":false}','[{"text":"unstable ","color":"dark_aqua","italic":false},{"text":"ga","color":"dark_red","bold":true},{"text":"m","color":"dark_green","bold":true,"italic":false},{"text":"er","color":"dark_blue","bold":true,"italic":false},{"text":" energy.","color":"dark_aqua","bold":false}]','{"text":"You have five seconds to shoot","color":"#00D6E6","italic":false}','{"text":"this charged weapon. The charge","color":"#00D6E6","italic":false}','{"text":"is lost if you delay beyond that.","color":"#00D6E6","italic":false}']},HideFlags:127,Unbreakable:1b,Tags:["ob_crossbow"],Enchantments:[{id:"minecraft:piercing",lvl:1s},{id:"minecraft:quick_charge",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.15,Operation:1,UUID:[I;-1853446769,-768262111,-1286113560,-1314076868],Slot:"mainhand"}]}

#normally gives a blank tipped arrow. But, if its time for mandatory goth transformation hour, give rei a goth bolt instead!
replaceitem entity @s[team=Blue,scores={summonCount=200..},nbt=!{Inventory:[{tag:{Tags:["ob_crossbow"],Charged:1b}}]}] hotbar.7 tipped_arrow{display:{Name:'[{"text":"Monster ","color":"#9BCF47","bold":true,"italic":false},{"text":"Energy Cell","color":"dark_aqua","bold":true,"italic":false}]'},Tags:["rei_ammo"],CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:40,ShowParticles:0b}],CustomPotionColor:59079,CustomModelData:6001,HideFlags:127}
replaceitem entity @s[team=Red,scores={summonCount=200..},nbt=!{Inventory:[{tag:{Tags:["ob_crossbow"],Charged:1b}}]}] hotbar.7 tipped_arrow{display:{Name:'[{"text":"Monster ","color":"#9BCF47","bold":true,"italic":false},{"text":"Energy Cell","color":"dark_aqua","bold":true,"italic":false}]'},Tags:["rei_ammo"],CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:40,ShowParticles:0b}],CustomPotionColor:59078,HideFlags:127,CustomModelData:6001}

replaceitem entity @s[tag=goth_asuka,team=Blue,scores={summonCount=200..},nbt=!{Inventory:[{tag:{Tags:["ob_crossbow"],Charged:1b}}]}] hotbar.7 tipped_arrow{display:{Name:'[{"text":"GOTH ","color":"black","bold":true,"italic":false},{"text":"Monster ","color":"#9BCF47","bold":true,"italic":false},{"text":"Energy Cell","color":"dark_aqua","bold":true,"italic":false}]'},Tags:["rei_ammo"],CustomPotionEffects:[{Id:20b,Amplifier:1b,Duration:40,ShowParticles:0b}],CustomPotionColor:0,HideFlags:127}
replaceitem entity @s[tag=goth_asuka,team=Red,scores={summonCount=200..},nbt=!{Inventory:[{tag:{Tags:["ob_crossbow"],Charged:1b}}]}] hotbar.7 tipped_arrow{display:{Name:'[{"text":"GOTH ","color":"black","bold":true,"italic":false},{"text":"Monster ","color":"#9BCF47","bold":true,"italic":false},{"text":"Energy Cell","color":"dark_aqua","bold":true,"italic":false}]'},Tags:["rei_ammo"],CustomPotionEffects:[{Id:20b,Amplifier:1b,Duration:40,ShowParticles:0b}],CustomPotionColor:1,HideFlags:127}

# A really janky way of checking for when you can redeem your charge. I kinda hate this, but at the same time I don't know how else I'd do it.
# Otherwise, I'd probably do the other (and probably superior) method instead.

execute at @s[scores={helperTimer3=..0,summonCount=150..}] run playsound minecraft:entity.squid.squirt master @s ~ ~ ~ 1 0.6
scoreboard players set @s[scores={helperTimer3=..0}] summonCount 0
clear @s[scores={helperTimer3=..0}] crossbow{Tags:["ob_crossbow"]}
clear @s[scores={helperTimer3=..0}] tipped_arrow

# Two states: 200 and 150 on summonCount. 200 is the neutral FIRE state. 150 is when you actually commit to loading a shot.
# When you shoot the crossbow as 150, you instantly get transformed to normal.
scoreboard players set @s[scores={summonCount=200..},nbt={Inventory:[{tag:{Tags:["ob_crossbow"],Charged:1b}}]}] summonCount 150
clear @s[scores={summonCount=150}] tipped_arrow
# Brute-force check if the summonCount doesn't work as intended:
clear @s[nbt={Inventory:[{tag:{Tags:["ob_crossbow"],Charged:1b}}]}] tipped_arrow
# Brute-force Shot state in case summonCount doesn't work as intended:
scoreboard players set @s[scores={summonCount=200..},nbt=!{Inventory:[{id:"minecraft:tipped_arrow"}]}] summonCount 150
clear @s[scores={summonCount=150},nbt=!{Inventory:[{tag:{Tags:["ob_crossbow"],Charged:1b}}]}] crossbow{Tags:["ob_crossbow"]}
execute at @s[scores={summonCount=150},nbt=!{Inventory:[{tag:{Tags:["ob_crossbow"],Charged:1b}}]}] run playsound sdbb:rei_ayanami.otaku_laser master @a ~ ~ ~ 3 0.45
execute at @s[scores={summonCount=150},nbt=!{Inventory:[{tag:{Tags:["ob_crossbow"],Charged:1b}}]}] run tag @s remove goth_asuka
scoreboard players set @s[scores={summonCount=150},nbt=!{Inventory:[{tag:{Tags:["ob_crossbow"],Charged:1b}}]}] summonCount 0


# Charge rates. Constantly flip-flops between levels in order to create the illusion of flawless charge.

execute if entity @s[tag=!otaku_charge,scores={summonCount=0}] run xp set @s 0 levels
execute if entity @s[tag=!otaku_charge,scores={summonCount=0}] run xp set @s 0 points

execute if entity @s[tag=otaku_charge,scores={summonCount=1}] run xp set @s 10 levels
execute if entity @s[tag=otaku_charge,scores={summonCount=1}] run xp set @s 3 points

execute if entity @s[tag=otaku_charge,scores={summonCount=2}] run xp set @s 10 levels
execute if entity @s[tag=otaku_charge,scores={summonCount=2}] run xp set @s 6 points

execute if entity @s[tag=otaku_charge,scores={summonCount=3}] run xp set @s 11 levels
execute if entity @s[tag=otaku_charge,scores={summonCount=3}] run xp set @s 10 points

execute if entity @s[tag=otaku_charge,scores={summonCount=4}] run xp set @s 11 levels
execute if entity @s[tag=otaku_charge,scores={summonCount=4}] run xp set @s 13 points

execute if entity @s[tag=otaku_charge,scores={summonCount=5}] run xp set @s 11 levels
execute if entity @s[tag=otaku_charge,scores={summonCount=5}] run xp set @s 16 points

execute if entity @s[tag=otaku_charge,scores={summonCount=6}] run xp set @s 11 levels
execute if entity @s[tag=otaku_charge,scores={summonCount=6}] run xp set @s 19 points

execute if entity @s[tag=otaku_charge,scores={summonCount=7}] run xp set @s 11 levels
execute if entity @s[tag=otaku_charge,scores={summonCount=7}] run xp set @s 21 points

execute if entity @s[tag=otaku_charge,scores={summonCount=8}] run xp set @s 11 levels
execute if entity @s[tag=otaku_charge,scores={summonCount=8}] run xp set @s 23 points

execute if entity @s[tag=otaku_charge,scores={summonCount=9}] run xp set @s 11 levels
execute if entity @s[tag=otaku_charge,scores={summonCount=9}] run xp set @s 26 points

execute if entity @s[scores={summonCount=10..}] run xp set @s 30 levels
execute if entity @s[scores={summonCount=10..}] run xp set @s 111 points
execute if entity @s[scores={summonCount=10..}] run xp set @s 0 levels

tag @s[tag=otaku_charge] remove otaku_charge
xp set @s[tag=!otaku_charge] 0 levels

## REI ARROWS: ##

# A.T. Field Phasing: 
# 59079 is blue team, #59078 is red. 0 is blue 1 is red also.
execute as @e[type=arrow,nbt={Color:59079}] at @s if entity @e[type=shulker,tag=Blue,distance=..4] run function melee:ayanami/phasearrow
execute as @e[type=arrow,nbt={Color:59078}] at @s if entity @e[type=shulker,tag=Red,distance=..4] run function melee:ayanami/phasearrow
execute as @e[type=arrow,nbt={Color:0}] at @s if entity @e[type=shulker,tag=Red,distance=..4] run function melee:ayanami/phasearrow
execute as @e[type=arrow,nbt={Color:1}] at @s if entity @e[type=shulker,tag=Red,distance=..4] run function melee:ayanami/phasearrow

# Normal:
execute at @e[type=arrow,nbt={Color:59079},scores={projectileLife=..3}] run particle dust 1 0 0 2 ~ ~ ~ 0 0 0 0.1 1 force @a
execute at @e[type=arrow,nbt={Color:59079},scores={projectileLife=3..}] run particle dust 1 0 0 3 ~ ~ ~ 0 0 0 0.1 1 force @a
execute at @e[type=arrow,nbt={Color:59079},scores={projectileLife=3..}] run particle dust 0 1 0 3 ~ ~ ~ 0 0 0 0.1 1 force @a
execute at @e[type=arrow,nbt={Color:59079},scores={projectileLife=3..}] run particle dust 0 0 1 3 ~ ~ ~ 0 0 0 0.1 1 force @a

execute at @e[type=arrow,nbt={Color:59078},scores={projectileLife=..3}] run particle dust 1 0 0 2 ~ ~ ~ 0 0 0 0.1 1 force @a
execute at @e[type=arrow,nbt={Color:59078},scores={projectileLife=3..}] run particle dust 1 0 0 3 ~ ~ ~ 0 0 0 0.1 1 force @a
execute at @e[type=arrow,nbt={Color:59078},scores={projectileLife=3..}] run particle dust 0 1 0 3 ~ ~ ~ 0 0 0 0.1 1 force @a
execute at @e[type=arrow,nbt={Color:59078},scores={projectileLife=3..}] run particle dust 0 0 1 3 ~ ~ ~ 0 0 0 0.1 1 force @a

# Goth:
execute at @e[type=arrow,nbt={Color:0},scores={projectileLife=3..}] run particle dust 0 0 0 3 ~ ~ ~ 0 0 0 0.1 1 force @a
execute at @e[type=arrow,nbt={Color:0},scores={projectileLife=3..}] run particle dust 0 0 0 3 ~ ~ ~ 0 0 0 0.1 1 force @a
execute at @e[type=arrow,nbt={Color:0},scores={projectileLife=3..}] run particle dust 0 0 0 3 ~ ~ ~ 0 0 0 0.1 1 force @a

execute at @e[type=arrow,nbt={Color:1},scores={projectileLife=3..}] run particle dust 0 0 0 3 ~ ~ ~ 0 0 0 0.1 1 force @a
execute at @e[type=arrow,nbt={Color:1},scores={projectileLife=3..}] run particle dust 0 0 0 3 ~ ~ ~ 0 0 0 0.1 1 force @a
execute at @e[type=arrow,nbt={Color:1},scores={projectileLife=3..}] run particle dust 0 0 0 3 ~ ~ ~ 0 0 0 0.1 1 force @a

#arrows heal teammates on hit:
execute as @e[type=arrow,nbt={Color:59079}] at @s if entity @a[team=Blue,distance=..1] run effect give @a[team=Blue,distance=..1] regeneration 1 3 false
execute as @e[type=arrow,nbt={Color:59079}] at @s if entity @a[team=Blue,distance=..1] run kill @s
execute as @e[type=arrow,nbt={Color:59078}] at @s if entity @a[team=Red,distance=..1] run effect give @a[team=Red,distance=..1] regeneration 1 3 false
execute as @e[type=arrow,nbt={Color:59078}] at @s if entity @a[team=Red,distance=..1] run kill @s


## ABILITIES: ##

## Grenade:

# Time of Life for effect (Only decreases when on the ground)
scoreboard players set @e[tag=lrfbc,tag=Red,type=armor_stand,nbt=!{OnGround:1b}] helperTimer 200
scoreboard players set @e[tag=lrfbc,tag=Blue,type=armor_stand,nbt=!{OnGround:1b}] helperTimer 200

# Actual cooldown plays whenever the grenade stops doing its thing.
execute if entity @e[tag=lrfbc,tag=Red] run scoreboard players set @s[team=Red] ability2Timer 600
execute if entity @e[tag=lrfbc,tag=Blue] run scoreboard players set @s[team=Red] ability2Timer 600

#healing and particles for tactical long range family bundle classic (will likely be toned down on scoreboard, easy enough to do with a timer).:
execute if entity @s[team=Red] as @e[tag=lrfbc,tag=Red,nbt={OnGround:1b}] at @s run effect give @a[team=Red,distance=..4,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 3 0
execute if entity @s[team=Red] as @e[tag=lrfbc,tag=Red,nbt={OnGround:1b}] at @s run effect give @a[team=Red,distance=..4,nbt=!{ActiveEffects:[{Id:10b}]}] saturation 3 0
execute if entity @s[team=Blue] as @e[tag=lrfbc,tag=Blue,nbt={OnGround:1b}] at @s run effect give @a[team=Blue,distance=..4,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 3 0
execute if entity @s[team=Blue] as @e[tag=lrfbc,tag=Blue,nbt={OnGround:1b}] at @s run effect give @a[team=Blue,distance=..4,nbt=!{ActiveEffects:[{Id:10b}]}] saturation 3 0

execute at @e[tag=lrfbc,tag=Red,nbt={OnGround:1b},nbt=!{Motion:[0d]}] run playsound minecraft:block.bone_block.break master @a ~ ~ ~ 0.2
execute at @e[tag=lrfbc,tag=Blue,nbt={OnGround:1b},nbt=!{Motion:[0d]}] run playsound minecraft:block.bone_block.break master @a ~ ~ ~ 0.2

execute as @e[tag=lrfbc,tag=Blue,nbt={OnGround:1b,Motion:[0d]}] at @s unless entity @e[tag=lrfbc_particleB] run summon area_effect_cloud ~ ~ ~ {Radius:4.0f,Duration:160,RadiusPerTick:0.0f,Particle:"minecraft:dust 0 0.518 1 0.88",Tags:["lrfbc_particleB"]}
execute as @e[tag=lrfbc,tag=Red,nbt={OnGround:1b,Motion:[0d]}] at @s unless entity @e[tag=lrfbc_particleR] run summon area_effect_cloud ~ ~ ~ {Radius:4.0f,Duration:160,RadiusPerTick:0.0f,Particle:"minecraft:dust 1 0.682 0 0.88",Tags:["lrfbc_particleR"]}
execute if entity @e[tag=lrfbc,tag=Red,scores={helperTimer=..0}] run kill @e[tag=lrfbc_particleR]
execute if entity @e[tag=lrfbc,tag=Blue,scores={helperTimer=..0}] run kill @e[tag=lrfbc_particleB]
execute if entity @e[tag=lrfbc,tag=Red,scores={helperTimer=..0}] at @e[tag=lrfbc,tag=Red,scores={helperTimer=..0}] run particle explosion ~ ~ ~ 0.3 0.5 0.3 0.4 2 force
execute if entity @e[tag=lrfbc,tag=Blue,scores={helperTimer=..0}] at @e[tag=lrfbc,tag=Blue,scores={helperTimer=..0}] run particle explosion ~ ~ ~ 0.3 0.5 0.3 0.4 2 force
kill @e[tag=lrfbc,scores={helperTimer=..0}]


## A.T. Field:

#kill overdue at field
execute if entity @e[tag=at_root,scores={helperTimer=..0},tag=Blue] run kill @e[tag=at_wall,tag=Blue]
execute if entity @e[tag=at_root,scores={helperTimer=..0},tag=Red] run kill @e[tag=at_wall,tag=Red]


## Goth Asuka:
# mandatory goth transformation hour:

# Particles for Goth Moment
execute at @s[scores={helperTimer2=1..}] run particle minecraft:squid_ink ~ ~ ~ 0.35 0.25 0.35 0.01 1 normal

# Stops particles
execute if entity @e[type=arrow,nbt={Color:1}] run scoreboard players set @s[team=Red] helperTimer2 0
execute if entity @e[type=arrow,nbt={Color:0}] run scoreboard players set @s[team=Blue] helperTimer2 0
execute if entity @s[team=Red,scores={helperTimer2=..0}] if entity @e[tag=Goth,tag=Red,scores={helperTimer=160}] run playsound minecraft:entity.parrot.imitate.wither master @s ~ ~ ~ 1.1 0.9
execute if entity @s[team=Blue,scores={helperTimer2=..0}] if entity @e[tag=Goth,tag=Blue,scores={helperTimer=160}] run playsound minecraft:entity.parrot.imitate.wither master @s ~ ~ ~ 1.1 0.9


# Limit for how long you can hold the Goth Transform for. (15 seconds, look in Goth func.)
execute if entity @s[team=Red,scores={helperTimer2=..0}] run kill @e[tag=Goth,tag=Red,scores={helperTimer=160}]
execute if entity @s[team=Red,scores={helperTimer2=..0}] run kill @e[tag=Goth,tag=Blue,scores={helperTimer=160}]

# Actual cooldown plays whenever the grenade stops doing its thing.
execute if entity @e[tag=Goth,tag=Red] run scoreboard players set @s[team=Red] abilityTimer 400
execute if entity @e[tag=Goth,tag=Blue] run scoreboard players set @s[team=Red] abilityTimer 400

# Teleports AOE Armor Stand to arrow when shot, and constantly sets its TOL until the arrow no longer exists.
# Also detects whether to stop the Goth Asuka particles by dictating if the arrow has been shot, and still exists.
execute if entity @s[tag=goth_asuka,team=Red] run scoreboard players set @e[tag=Red,tag=Goth] helperTimer 160
execute if entity @s[tag=goth_asuka,team=Blue] run scoreboard players set @e[tag=Blue,tag=Goth] helperTimer 160
execute at @e[type=arrow,nbt={Color:1}] run tp @e[tag=Red,tag=Goth] ~ ~ ~
execute at @e[type=arrow,nbt={Color:0}] run tp @e[tag=Blue,tag=Goth] ~ ~ ~
kill @e[tag=Goth,scores={helperTimer=..0}]

# Applies range particle effects
execute at @e[tag=Goth,tag=Red] unless entity @e[nbt={Color:1}] unless entity @s[tag=goth_asuka] unless entity @e[tag=goth_auraR] run summon area_effect_cloud ~ ~ ~ {Particle:"sneeze",Radius:4f,RadiusPerTick:0f,Duration:160,Tags:["goth_auraR"]}
execute at @e[tag=Goth,tag=Blue] unless entity @e[nbt={Color:0}] unless entity @s[tag=goth_asuka] unless entity @e[tag=goth_auraB] run summon area_effect_cloud ~ ~ ~ {Particle:"sneeze",Radius:4f,RadiusPerTick:0f,Duration:160,Tags:["goth_auraB"]}

execute at @e[tag=Goth,tag=Red] unless entity @e[nbt={Color:1}] unless entity @s[tag=goth_asuka] run effect give @a[team=!Red,distance=..4] wither 1 0 true
execute at @e[tag=Goth,tag=Red] unless entity @e[nbt={Color:1}] unless entity @s[tag=goth_asuka] run effect give @a[team=!Red,distance=..4] mining_fatigue 1 0 true
execute at @e[tag=Goth,tag=Red] unless entity @e[nbt={Color:1}] unless entity @s[tag=goth_asuka] run effect give @a[team=!Red,distance=..4] slowness 1 0 true

execute at @e[tag=Goth,tag=Blue] unless entity @e[nbt={Color:0}] run effect give @a[team=!Blue,distance=..4] wither 1 0 true
execute at @e[tag=Goth,tag=Blue] unless entity @e[nbt={Color:0}] run effect give @a[team=!Blue,distance=..4] mining_fatigue 1 0 true
execute at @e[tag=Goth,tag=Blue] unless entity @e[nbt={Color:0}] run effect give @a[team=!Blue,distance=..4] slowness 1 0 true