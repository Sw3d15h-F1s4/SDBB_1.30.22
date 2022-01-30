##
 # assimilation.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4/Modified by Nathan
##

# New and improved Rat's Plague, based on the idea of getting more health the more people you infect!

# Assigns opponents this to detect how many people there are!
execute at @s[team=Red] run scoreboard players set @a[team=Blue,distance=0.1..5] b_clonedeath 3
execute at @s[team=Blue] run scoreboard players set @a[team=Red,distance=0.1..5] b_clonedeath 3

# Gives Poison
execute if entity @s[team=Red] run effect give @e[type=!#melee:undead,distance=0..5,team=!Red] poison 5 1 true
execute if entity @s[team=Blue] run effect give @e[type=!#melee:undead,distance=0..5,team=!Blue] poison 5 1 true

# Gives Slowness
execute if entity @s[team=Red] run effect give @e[type=!#melee:undead,distance=0..5,team=!Red] slowness 5 2 true
execute if entity @s[team=Blue] run effect give @e[type=!#melee:undead,distance=0..5,team=!Blue] slowness 5 2 true

# The mobs will be killed!!!!
execute if entity @s[team=Red] run effect give @e[type=#melee:undead,distance=0..5,team=!Red] instant_health 1 0 true
execute if entity @s[team=Blue] run effect give @e[type=#melee:undead,distance=0..5,team=!Blue] instant_health 1 0 true

execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"mycelium",Radius:5f,Duration:20}
playsound entity.ghast.scream master @a ~ ~ ~ 3

# Counts how many players Nevin infected
execute as @a[team=Blue,scores={b_clonedeath=3}] run scoreboard players add @a[team=Red,scores={heroType=9}] C3_pHealth 1
execute as @a[team=Red,scores={b_clonedeath=3}] run scoreboard players add @a[team=Blue,scores={heroType=9}] C3_pHealth 1

# Health Boost guts:

# Infects one person, 1v1 scenarios (2 hearts, instant healing)
execute if entity @s[scores={C3_pHealth=1}] run effect give @s health_boost 10 0 true
execute if entity @s[scores={C3_pHealth=1}] run effect give @s instant_health 1 0 true

# Infects two people, smaller groups (Reg 2 for 5, 4 hearts)
execute if entity @s[scores={C3_pHealth=2}] run effect give @s health_boost 10 1 true
execute if entity @s[scores={C3_pHealth=2}] run effect give @s regeneration 5 1 true

# Infects three people, normal groups (REGENERATION CAPS AT AMPLIFIER 3 HERE!)
execute if entity @s[scores={C3_pHealth=3}] run effect give @s health_boost 10 2 true
execute if entity @s[scores={C3_pHealth=3..}] run effect give @s regeneration 5 2 true

# Infects four or more people, massive groups. (Health Boost limit is 8 hearts!)
execute if entity @s[scores={C3_pHealth=4..}] run effect give @s health_boost 10 3 true

# Set timer, and clear ability.

execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 1.000 0.000 0.765 1",Radius:5f}

scoreboard players set @s abilityTimer 600
clear @s carrot_on_a_stick{Tags:["assimilation"]}

