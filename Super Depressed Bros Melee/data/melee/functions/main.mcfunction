##
 # main.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

#give all passive Abilities
execute if entity @a[scores={gameState=1..2}] run function melee:passive_abilities

#Drip Sam's Abilities
execute if entity @a[scores={heroType=1,ability=1}] run function melee:drip_sam/detect
execute as @e[tag=animearrow] at @s run function melee:drip_sam/arrowloop

#Bill Clinton's Abilities
execute if entity @a[scores={heroType=2,ability=1}] run function melee:bill_clinton/detect

#Hotsuke's Abilities
execute if entity @a[scores={heroType=3,ability=1}] run function melee:hotsuke/detect

#Big Floppa's Abilities
execute if entity @a[scores={heroType=4,ability=1}] run function melee:bigfloppa/detect

#Erased's Abilities
execute if entity @a[scores={heroType=5,ability=1}] run function melee:erased/detect
execute if entity @a[scores={heroType=5}] run function melee:erased/shotgun

#Mistress Hibbins' Abilities
execute if entity @a[scores={heroType=6,ability=1}] run function melee:hibbins/detect

#Reaper's Abilities
execute if entity @a[scores={heroType=7,ability=1}] run function melee:reaper/detect

#Rei Ayanami's Abilities
execute if entity @a[scores={heroType=8,ability=1}] run function melee:ayanami/detect

#Sonic Nevin's Abilities
execute if entity @a[scores={heroType=9,ability=1}] run function melee:sonicnevin/detect

#Grug Stalin's Abilities
execute if entity @a[scores={heroType=10,ability=1}] run function melee:grugstalin/detect

#Liam's Abilities
execute if entity @a[scores={heroType=11,ability=1}] run function melee:liam/detect

#Snow Meiser's Abilities
execute if entity @a[scores={heroType=12,ability=1}] run function melee:snowmeiser/detect

# Season 2
#Sephiroth's abilities
execute if entity @a[scores={heroType=13,ability=1}] run function melee:season_2/sephiroth/detect

#Bezos' abilities
execute if entity @a[scores={heroType=15,ability=1}] run function melee:season_2/bezos/detect

# Season 3
# Davy Jones' abilities
execute if entity @a[scores={heroType=14,ability=1,gameState=1}] run function melee:season_3/davy_jones/detect

# Harkonnen/Sting's abilities
execute if entity @a[scores={heroType=16,ability=1}] run function melee:season_3/sting_v/detect

# Bosses
# Davy Jones' abilities
execute if entity @a[scores={heroType=14,ability=1,gameState=2}] run function melee:season_3/davy_jones/boss/detect

#Environment (Stuff that is map dependent, like traps)

# Hibbins' Estate / Mystery Mansion:
execute if score mapType gameState matches 3 if entity @e[tag=estate_trap1] run function melee:environmental/hibbins_estate/garthorb/detect
execute if score mapType gameState matches 3 run function melee:environmental/hibbins_estate/warps

#Calculate total team scores
execute if entity @a[scores={gameState=1..2}] run function melee:util/calcscore

#Reset Players Ability scores and return items
function melee:reset 

#deal with arrows and other funkiness
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=trident,nbt={inGround:1b}]
execute as @e[type=arrow,nbt=!{NoGravity:1b}] run data modify entity @s NoGravity set value 1b
scoreboard players add @e[type=arrow] projectileLife 1
scoreboard players add @e[type=firework_rocket] projectileLife 1
kill @e[type=arrow,scores={projectileLife=100..}]
kill @e[type=firework_rocket,scores={projectileLife=100..}]

# Sam damage: (2 hearts on Bill/basically everyone)
execute as @e[type=arrow,nbt={Color:15477533}] run data merge entity @s {damage:1.3} 
execute as @e[type=arrow,nbt={Color:2825708}] run data merge entity @s {damage:1.3}

# Hotsuke crits on always (for consistent one shots on not tanks.)
execute as @e[type=arrow,nbt={Color:2900446}] run data merge entity @s {crit:1b} 
execute as @e[type=arrow,nbt={Color:2900446}] run data merge entity @s {damage:100.0} 

# Debug mode view
execute as @a[scores={debugMode=1}] run title @s actionbar [{"text":"A1: "},{"score":{"name":"@s","objective":"abilityTimer"}},{"text":" A2: "},{"score":{"name":"@s","objective":"ability2Timer"}},{"text":" A3: "},{"score":{"name":"@s","objective":"ability3Timer"}},{"text":" H1: "},{"score":{"name":"@s","objective":"helperTimer"}},{"text":" H2: "},{"score":{"name":"@s","objective":"helperTimer2"}},{"text":" ULT: "},{"score":{"name":"@s","objective":"ultTimer"}},{"text":" KS: "},{"score":{"name":"@s","objective":"killstreak"}}]

# KILLSTREAK SHENGANIGHANS:

#calculate killstreaks and shit like that
scoreboard players add @a[scores={hotsukeKills=1..}] killstreak 1

title @a[scores={hotsukeKills=1..,killstreak=2}] actionbar {"text":"Double Kill","color":"red"}
title @a[scores={hotsukeKills=1..,killstreak=3}] actionbar {"text":"Triple Kill","color":"red"}
title @a[scores={hotsukeKills=1..,killstreak=4}] actionbar {"text":"Overkill!","color":"red"}
title @a[scores={hotsukeKills=1..,killstreak=5}] actionbar {"text":"Killtacular!","color":"red"}
title @a[scores={hotsukeKills=1..,killstreak=6}] actionbar {"text":"Killtrocity!","color":"red","bold":true,"italic":false}
title @a[scores={hotsukeKills=1..,killstreak=7}] actionbar {"text":"Killamanjaro!","color":"red","bold":true,"italic":false}
title @a[scores={hotsukeKills=1..,killstreak=8}] actionbar {"text":"Killtastrophe!","color":"red","bold":true,"italic":false}
title @a[scores={hotsukeKills=1..,killstreak=9}] actionbar {"text":"Killpocalypse!","color":"red","bold":true,"italic":false}
title @a[scores={hotsukeKills=1..,killstreak=10}] actionbar {"text":"Killionaire!","color":"red","bold":true,"italic":false}
title @a[scores={hotsukeKills=1..,killstreak=11}] actionbar {"text":"Rampage!!","color":"#E119F7","bold":true,"italic":false}
title @a[scores={hotsukeKills=1..,killstreak=12}] actionbar {"text":"Extermination!!","color":"dark_purple","bold":true,"italic":false}
title @a[scores={hotsukeKills=1..,killstreak=13}] actionbar {"text":"Untouchable!!","color":"dark_purple","bold":true,"italic":false}
title @a[scores={hotsukeKills=1..,killstreak=14}] actionbar {"text":"INVINCIBLE!!","color":"#4F1E8F","bold":true,"italic":false}
#execute if entity @a[scores={hotsukeKills=1..,killstreak=14}] at @s run playsound entity.enderman.teleport master @a[scores={hotsukeKills=1..,killstreak=14}] ~ ~ ~ 1 0.6
execute at @a[scores={hotsukeKills=1..,killstreak=14}] run playsound entity.enderman.teleport master @a ~ ~ ~ 1 0.6
title @a[scores={hotsukeKills=1..,killstreak=15}] actionbar [{"text":".|O","color":"dark_blue","bold":true,"italic":false,"obfuscated":true},{"text":" GOD LIKE ","color":"dark_purple","obfuscated":false},{"text":"o|.","color":"dark_blue","obfuscated":true}]
execute at @a[scores={hotsukeKills=1..,killstreak=15}] run playsound entity.illusioner.prepare_mirror master @a ~ ~ ~ 1 0.8
title @a[scores={hotsukeKills=1..,killstreak=16..}] actionbar [{"text":".|","color":"#25173B","bold":true,"italic":false,"obfuscated":true},{"text":"|O","color":"dark_purple","bold":true,"italic":false,"obfuscated":true},{"text":" THE COSMIC HORROR ","color":"#6E0000","bold":true,"italic":false,"obfuscated":false},{"text":"O|","color":"dark_purple","bold":true,"italic":false,"obfuscated":true},{"text":"|.","color":"#25173B","bold":true,"italic":false,"obfuscated":true}]
execute at @a[scores={hotsukeKills=1..,killstreak=16..}] run playsound sdbb:hibbins.longstrider master @a ~ ~ ~ 1 1

scoreboard players reset @a[scores={hotsukeKills=1..}] hotsukeKills
scoreboard players set @a[scores={killstreakReset=1..}] respawnRes 5
scoreboard players reset @a[scores={killstreakReset=1..}] killstreak
scoreboard players reset @a[scores={killstreakReset=1..}] killstreakReset

execute if entity @a[tag=move_check,scores={gameState=0}] run tag @a[tag=move_check,scores={gameState=0}] remove move_check
execute if entity @a[tag=move_check,scores={heroType=4..}] run tag @a[tag=move_check,scores={heroType=4..}] remove move_check
execute if entity @a[tag=move_check,scores={heroType=1..2}] run tag @a[tag=move_check,scores={heroType=1..2}] remove move_check

# Tells players how much time is left.
execute if score countdown helperTimer matches 6000 run tellraw @a "5 minutes left!"
execute if score countdown helperTimer matches 12000 run tellraw @a "10 minutes left!"
execute if score countdown helperTimer matches 2400 run tellraw @a "2 minutes left!"
execute if score countdown helperTimer matches 1200 run tellraw @a "1 minute left!"
# This one below is pain :)
execute if score countdown helperTimer matches 600 run function melee:util/thirtycount
execute if score countdown helperTimer matches 0 run function melee:util/endgame

execute as @e[tag=koth_point] at @s run function melee:util/scoring/koth