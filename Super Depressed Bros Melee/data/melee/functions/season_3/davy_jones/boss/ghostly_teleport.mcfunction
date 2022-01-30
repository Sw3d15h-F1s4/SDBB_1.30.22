####
   # ghost_teleport.mcfunction
   # Super Depressed Bros. Brawl
   # Created by Nathan
####   

# Teleport will probably randomize based on the helperTimer3 regen,
# so that a skilled player can time their teleports and
# get it right 100% of the time.

#davys ship, 188 35 3001
#ship 3, 265 42 2956
#ship 1, 35 39 2971
#ship 2,  7 36 2852

effect give @s glowing 5 0 false

tp @s[scores={helperTimer3=0..35}] 188 35 3001
tp @s[scores={helperTimer3=36..71}] 265 42 2956
tp @s[scores={helperTimer3=72..106}] 35 39 2971
tp @s[scores={helperTimer3=107..142}] 7 36 2852
tp @s[scores={helperTimer3=143..178}] 188 35 3001
tp @s[scores={helperTimer3=179..214}] 265 42 2956
tp @s[scores={helperTimer3=215..250}] 35 39 2971
tp @s[scores={helperTimer3=251..286}] 7 36 2852


particle minecraft:squid_ink ~ ~ ~ 0.61 0.2 0.61 0.1 20 force
particle minecraft:squid_ink ^ ^0.7 ^ 0.4 0.3 0.4 0.1 5 force

execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"campfire_cosy_smoke",Radius:5f}
particle minecraft:campfire_cosy_smoke ^1 ^0.5 ^ 0.4 0.4 0.4 0.1 5 force
particle minecraft:campfire_cosy_smoke ^-1 ^0.5 ^ 0.4 0.4 0.4 0.1 5 force
particle minecraft:campfire_cosy_smoke ^ ^0.5 ^1 0.4 0.4 0.4 0.1 5 force
particle minecraft:campfire_cosy_smoke ^ ^0.5 ^-1 0.4 0.4 0.4 0.1 5 force

execute at @s[team=Red] run effect give @a[team=!Red,distance=..5] blindness 5 0 false
execute at @s[team=Blue] run effect give @a[team=!Blue,distance=..5] blindness 5 0 false

clear @s carrot_on_a_stick{Tags:["ghost_teleport"]}
scoreboard players set @s helperTimer2 1200