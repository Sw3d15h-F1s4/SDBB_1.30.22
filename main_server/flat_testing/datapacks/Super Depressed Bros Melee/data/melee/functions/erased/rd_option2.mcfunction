
execute at @s[team=Red] run effect give @a[team=Red,distance=0.1..9] absorption 20 0 true
execute at @s[team=Red] run effect give @a[team=Red,distance=0.1..9] saturation 1 1 true

execute at @s[team=Blue] run effect give @a[team=Blue,distance=0.1..9] absorption 20 0 true
execute at @s[team=Blue] run effect give @a[team=Blue,distance=0.1..9] saturation 1 1 true

tellraw @s "Good choice."

tag @s remove red_deal
scoreboard players set @s helperTimer3 0
scoreboard players operation @s[team=Red] abilityTimer = EL_Ability1R debugMode
scoreboard players operation @s[team=Blue] ability2Timer = EL_Ability2R debugMode

scoreboard players operation @s[team=Red] abilityTimer = EL_Ability1B debugMode
scoreboard players operation @s[team=Blue] ability2Timer = EL_Ability2B debugMode

clear @s minecraft:carrot_on_a_stick{Tags:["ability"]}