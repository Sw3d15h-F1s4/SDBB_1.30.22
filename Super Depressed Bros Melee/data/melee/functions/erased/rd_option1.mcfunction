
execute at @s[team=Red] run summon armor_stand ~ ~ ~ {Team:"Red",Tags:["erasedShield_R"],CustomName:'{"text":"I\'m too lazy to fully implement this right now."}'}
execute at @s[team=Blue] run summon armor_stand ~ ~ ~ {Team:"Blue",Tags:["erasedShield_B"],CustomName:'{"text":"I\'m too lazy to fully implement this right now."}'}

tellraw @s "Very exquisite choice."

tag @s remove red_deal
scoreboard players set @s helperTimer3 0
scoreboard players operation @s[team=Red] abilityTimer = EL_Ability1R debugMode
scoreboard players operation @s[team=Blue] ability2Timer = EL_Ability2R debugMode

scoreboard players operation @s[team=Red] abilityTimer = EL_Ability1B debugMode
scoreboard players operation @s[team=Blue] ability2Timer = EL_Ability2B debugMode

clear @s minecraft:carrot_on_a_stick{Tags:["ability"]}