##
 # passive_abilities.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

# SPAWN CAMPING PASSIVE:
# 3 second invulnerability upon respawn (meh)
# Grug, Miser, Bezos

# TO-DO FOR RESPAWN INVULNERABILITY:
# TIME IT ON A PER-MAP BASIS, AND RETHINK TIMES FOR CHARACTERS DUE TO WILD CHANGES

#grug
effect give @a[scores={respawnRes=0..1,heroType=10}] resistance 3 255

#miser
effect give @a[scores={respawnRes=0..1,heroType=12}] resistance 3 255

#bezos
effect give @a[scores={respawnRes=0..1,heroType=15}] resistance 3 255

# 2 second invulnerability upon respawn (normal)
# Sam, Hotsuke, Floppa, Davy, Rei

# Sam
effect give @a[scores={respawnRes=0..1,heroType=1}] resistance 2 255

# Hotsuke
effect give @a[scores={respawnRes=0..1,heroType=3}] resistance 2 255

# Floppa
effect give @a[scores={respawnRes=0..1,heroType=4}] resistance 2 255

# Rei
effect give @a[scores={respawnRes=0..1,heroType=8}] resistance 2 255

# Davy (Playable)
effect give @a[scores={respawnRes=0..1,heroType=14,gameState=1}] resistance 2 255


# 1 second invulnerability upon respawn (the speed chars)
# Bill, Erased, Hibbins, Reaper, Nevin/Charne, Liam, Sephiroth, B!Davy, Sting

#bill
effect give @a[scores={respawnRes=0..1,heroType=2}] resistance 1 255

#erased
effect give @a[scores={respawnRes=0..1,heroType=5}] resistance 1 255

#hibbins
effect give @a[scores={respawnRes=0..1,heroType=6}] resistance 1 255

#reaper
effect give @a[scores={respawnRes=0..1,heroType=7}] resistance 1 255

#charne
effect give @a[scores={respawnRes=0..1,heroType=9}] resistance 1 255

#liam
effect give @a[scores={respawnRes=0..1,heroType=11}] resistance 1 255

#sephiroth
effect give @a[scores={respawnRes=0..1,heroType=13}] resistance 1 255

#Davy (boss)
effect give @a[scores={respawnRes=0..1,heroType=14,gameState=2}] resistance 1 255

#Sting V
effect give @a[scores={respawnRes=0..1,heroType=16}] resistance 1 255

#drip sam's passives
effect give @a[scores={heroType=1,gameState=1}] minecraft:jump_boost 1 0 true
# Dripping AOE. The effected player drips, and Sam drips if a nearby player is affected.
execute at @a[team=Red,scores={heroType=1,gameState=1}] run effect give @a[team=!Red,distance=..6] minecraft:slowness 1 0 true
execute at @a[team=Blue,scores={heroType=1,gameState=1}] run effect give @a[team=!Blue,distance=..6] minecraft:slowness 1 0 true
execute at @a[team=Red,scores={heroType=1,gameState=1}] at @a[team=!Red,distance=..6,nbt={ActiveEffects:[{Id:2b}]},scores={gameState=1}] run particle minecraft:falling_lava ~ ~ ~ 0.4 0.62 0.4 0.5 4 force @a
execute at @a[team=Blue,scores={heroType=1,gameState=1}] at @a[team=!Blue,distance=..6,nbt={ActiveEffects:[{Id:2b}]},scores={gameState=1}] run particle minecraft:falling_water ~ ~ ~ 0.4 0.62 0.4 0.5 4 force @a
execute at @a[team=Red,scores={heroType=1,gameState=1}] if entity @a[team=!Red,distance=..6,nbt={ActiveEffects:[{Id:2b}]},scores={gameState=1}] run particle minecraft:falling_lava ~ ~ ~ 0.4 0.62 0.4 0.5 4 force @a
execute at @a[team=Blue,scores={heroType=1,gameState=1}] if entity @a[team=!Blue,distance=..6,nbt={ActiveEffects:[{Id:2b}]},scores={gameState=1}] run particle minecraft:falling_water ~ ~ ~ 0.4 0.62 0.4 0.5 4 force @a


#hotsuke's passives
effect give @a[scores={heroType=3,gameState=1}] minecraft:jump_boost 1 0 true
effect give @a[scores={heroType=3,gameState=1}] minecraft:speed 1 1 true

#big floppa's passives

#bill clinton's passives
effect give @a[scores={heroType=2,gameState=1}] slowness 1 0 true
effect give @a[tag=!shield_penalty,nbt=!{SelectedItem:{id:"minecraft:shield"}},scores={heroType=2,gameState=1}] minecraft:jump_boost 1 2 true
# shield penalty passives
effect give @a[tag=shield_penalty,scores={heroType=2,gameState=1}] slowness 2 2 true
effect give @a[tag=shield_penalty,scores={heroType=2,gameState=1}] mining_fatigue 2 2 true

#erased's passives
effect give @a[scores={heroType=5,gameState=1}] minecraft:slow_falling 1 0 true
effect give @a[scores={heroType=5,gameState=1}] minecraft:slowness 1 1 true

#mistress hibbins' passives
effect give @a[scores={heroType=6,gameState=1}] minecraft:slow_falling 1 0 true
effect give @a[scores={heroType=6,gameState=1}] minecraft:regeneration 3 0 true

#the reaper's passives
effect give @a[scores={heroType=7,gameState=1}] minecraft:speed 1 0 true
effect give @a[scores={heroType=7,gameState=1}] minecraft:fire_resistance 1 0 true
execute if score mapType gameState matches 4 run effect give @a[scores={heroType=7,gameState=1}] minecraft:dolphins_grace 1 2 true

#rei ayanami's passives
effect give @a[scores={heroType=8,gameState=1}] minecraft:jump_boost 1 0 true

#sonic nevin's passives
execute if score mapType gameState matches 4 run effect give @a[scores={heroType=9,gameState=1}] minecraft:dolphins_grace 1 1 true

#grug stalin's passives
effect give @a[scores={heroType=10,gameState=1}] minecraft:slowness 1 0 true

#liam's passives
effect give @a[scores={heroType=11,gameState=1}] minecraft:saturation 1 1 true

#snow miser passives

# season 2
#sephiroth passives
effect give @a[scores={heroType=13,gameState=1}] minecraft:mining_fatigue 1 0 true
effect give @a[scores={heroType=13,gameState=1}] minecraft:resistance 1 0 true
effect give @a[scores={heroType=13,gameState=1}] minecraft:speed 1 1 true

#Bezos' Passives
effect give @a[scores={heroType=15,gameState=1}] minecraft:slowness 1 0 true

# season 3
#davy passives (playable)
effect give @a[scores={heroType=14,gameState=1}] minecraft:dolphins_grace 5 2 true
effect give @a[scores={heroType=14,gameState=1}] minecraft:conduit_power 5 0 true
# The land penalties is handled in his givekit. Sorry!

#davy passives (boss)
effect give @a[scores={heroType=14,gameState=2}] minecraft:dolphins_grace 5 2 true
effect give @a[scores={heroType=14,gameState=2}] minecraft:conduit_power 5 0 true
# Instead of applying weakness and strength on land, Weakness is just removed and Strength is given in the water..
execute as @a[scores={heroType=14,gameState=2}] at @s if block ~ ~ ~ water run effect give @s strength 1 0 true
# Clears wither and blindness, I hope Hunter knows what he's doing
effect clear @a[scores={heroType=14,gameState=2}] blindness
effect clear @a[scores={heroType=14,gameState=2}] wither
# The instant health and glowing garbage is handled in his givekit. Sorry!

# Immunities:
# Slow/Blind Immunity (Growler ability)
effect clear @a[scores={heroType=..3,BF_PeopleAround=1..}] slowness
effect clear @a[scores={heroType=5..,BF_PeopleAround=1..}] blindness
execute at @a[scores={heroType=..3,BF_PeopleAround=1..}] run particle firework ~ ~ ~ 0.5 0.4 0.5 0.01 1 force
execute at @a[scores={heroType=5..,BF_PeopleAround=1..}] run particle firework ~ ~ ~ 0.5 0.4 0.5 0.01 1 force

# Poison Immunity (Share the Wealth)
execute at @a[scores={GS_PoisonIm=1..}] run particle witch ~ ~ ~ 0.3 0.2 0.3 0.12 4 force
effect clear @a[scores={GS_PoisonIm=1..}] poison

#Dust colors for teams
execute as @a[team=Red,scores={gameState=1}] at @s run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.1 0.2 0.1 0 3 normal @a[team=!Red]
execute as @a[team=Blue,scores={gameState=1}] at @s run particle minecraft:dust 0 0 1 1 ~ ~1 ~ 0.1 0.2 0.1 0 3 normal @a[team=!Blue]

kill @e[type=item]
#bossbar set summon_count players @a[scores={heroType=10,gameState=1}]
