##
 # giftgiving.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4/Modified by Nathan
##


# Gives effect: Gives buffs/healing depending on how close allies are

# Red team: 
#(2 hearts of healing at a minimum, then 6 hunger points and 10 saturation points(whatever that means), and then 2 instant hearts and resistance for 3 seconds)
execute if entity @s[team=Red] at @s run effect give @a[team=Red,distance=0.1..15] regeneration 5 1 true
execute if entity @s[team=Red] at @s run effect give @a[team=Red,distance=0.1..10] saturation 1 5 true
execute if entity @s[team=Red] at @s run effect give @a[team=Red,distance=0.1..5] instant_health 1 0 true
execute if entity @s[team=Red] at @s run effect give @a[team=Red,distance=0.1..5] resistance 3 0 false

# shows radius if you fail to hit anyone (rare, skill issue)
execute if entity @s[team=Red] at @s unless entity @a[team=Red,distance=0.1..15,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Particle:"item yellow_shulker_box",ReapplicationDelay:2,Radius:15f}

# Shows radius depending on which buff is distributed
execute if entity @s[team=Red] at @s if entity @a[team=Red,distance=0.1..15,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Particle:"item orange_shulker_box",ReapplicationDelay:2,Radius:15f}
execute if entity @s[team=Red] at @s if entity @a[team=Red,distance=0.1..10,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.969 0.435 0 2",ReapplicationDelay:10,Radius:10f}
execute if entity @s[team=Red] at @s if entity @a[team=Red,distance=0.1..5,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.894 0.008 0.008 4",ReapplicationDelay:10,Radius:5f}

# Blue team:
#(2 hearts of healing at a minimum, then 6 hunger points and 10 saturation points(whatever that means), and then 2 instant hearts and resistance for 3 seconds)
execute if entity @s[team=Blue] at @s run effect give @a[team=Blue,distance=0.1..15] regeneration 5 1 true
execute if entity @s[team=Blue] at @s run effect give @a[team=Blue,distance=0.1..10] saturation 1 5 true
execute if entity @s[team=Blue] at @s run effect give @a[team=Blue,distance=0.1..5] instant_health 1 0 true
execute if entity @s[team=Blue] at @s run effect give @a[team=Blue,distance=0.1..5] resistance 3 0 false

# shows radius if you fail to hit anyone (rare, skill issue)
execute if entity @s[team=Blue] at @s unless entity @a[team=Blue,distance=0.1..15,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Particle:"item magenta_shulker_box",ReapplicationDelay:2,Radius:15f}

# Shows radius depending on which buff is distributed
execute if entity @s[team=Blue] at @s if entity @a[team=Blue,distance=0.1..15,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Particle:"item purple_shulker_box",ReapplicationDelay:2,Radius:15f}
execute if entity @s[team=Blue] at @s if entity @a[team=Blue,distance=0.1..10,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.808 0 0.969 2",ReapplicationDelay:10,Radius:10f}
execute if entity @s[team=Blue] at @s if entity @a[team=Blue,distance=0.1..5,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.024 0.008 0.894 4",ReapplicationDelay:10,Radius:5f}

# Affect player gets hearts :) Beef loves his frens
#execute if entity @s[team=Red] at @a[team=Red,distance=0.1..15] run particle minecraft:heart ~ ~ ~ 0.3 1.3 0.3 0.5 4 force
#execute if entity @s[team=Blue] at @a[team=Blue,distance=0.1..15] run particle minecraft:heart ~ ~ ~ 0.3 1.3 0.3 0.5 4 force

# Clears thing, sets thing, particles and plays a funny sound XD
#execute as @s run particle minecraft:heart ~ ~ ~ 0.6 1 0.6 1 5 force
#execute as @s run particle minecraft:end_rod ~ ~ ~ 0.1 1 0.1 0.2 5 force
scoreboard players set @s abilityTimer 500
clear @s minecraft:carrot_on_a_stick{Tags:["gift"]}
# Plays if you fail to hit anyone
execute at @s unless entity @a[team=Red,distance=0.1..15,limit=1,sort=nearest] run playsound minecraft:entity.cat.hurt master @a ~ ~ ~ 1.5
# Plays if you hit someone
execute at @s if entity @a[team=Red,distance=0.1..15,limit=1,sort=nearest] run playsound minecraft:entity.cat.ambient master @a ~ ~ ~ 1.5
