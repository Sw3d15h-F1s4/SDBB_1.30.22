##
 # selflove.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

# Resets this scoreboard before it works to prevent bugs and double-Beef errors.
scoreboard players set @s BF_PeopleAround 0

# People have score in order to both show who contributes to his healing, and the cooldown the immunity has
execute at @s[team=Red] run scoreboard players set @a[team=Red,distance=0.1..7] BF_PeopleAround 60
execute at @s[team=Blue] run scoreboard players set @a[team=Blue,distance=0.1..7] BF_PeopleAround 60

execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dolphin",Radius:7f}

execute if entity @s[team=Red] as @a[team=Red,scores={BF_PeopleAround=1..}] run scoreboard players add @a[team=Red,scores={heroType=4}] BF_PeopleAround 1
execute if entity @s[team=Blue] as @a[team=Blue,scores={BF_PeopleAround=1..}] run scoreboard players add @a[team=Blue,scores={heroType=4}] BF_PeopleAround 1

# 2 and a half hearts
effect give @s[scores={BF_PeopleAround=1}] regeneration 3 2 true
effect give @s[scores={BF_PeopleAround=1..}] resistance 1 0 true

# 4 hearts
effect give @s[scores={BF_PeopleAround=2}] regeneration 5 2 true

# essentially a full heal
effect give @s[scores={BF_PeopleAround=3..}] regeneration 8 2 true

# 2 extra hearts
effect give @s[scores={BF_PeopleAround=4}] absorption 10 0 true

# 4 extra hearts
effect give @s[scores={BF_PeopleAround=5..}] absorption 10 1 true

# Debug
#title @s actionbar [{"text":"Amount: "},{"score":{"name":"@s","objective":"BF_PeopleAround"}}]

# Le particle for indication, and stuff
# Also, there's a givekit section that clears the slowness instantly
execute as @s run particle minecraft:dolphin ~ ~ ~ 0.5 0.3 0.5 0.2 60 force
scoreboard players set @s ability2Timer 500
clear @s minecraft:carrot_on_a_stick{Tags:["growler"]}
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 3

# Adds an additional 5 seconds if the ability successfully hits.
scoreboard players add @s[scores={BF_PeopleAround=1..}] ability2Timer 100
