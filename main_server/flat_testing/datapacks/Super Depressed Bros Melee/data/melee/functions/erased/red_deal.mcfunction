

execute if entity @s[team=Red] run scoreboard players operation EL_Ability1R debugMode = @s abilityTimer
execute if entity @s[team=Red] run scoreboard players operation EL_Ability2R debugMode = @s ability2Timer

execute if entity @s[team=Blue] run scoreboard players operation EL_Ability1B debugMode = @s abilityTimer
execute if entity @s[team=Blue] run scoreboard players operation EL_Ability2B debugMode = @s ability2Timer

scoreboard players set @s[scores={abilityTimer=5..}] abilityTimer 10
scoreboard players set @s[scores={ability2Timer=5..}] ability2Timer 10

tag @s add red_deal

tellraw @s[tag=red_deal] "It is time to choose. . ."

scoreboard players set @s ability3Timer 700
scoreboard players set @s helperTimer3 100
clear @s minecraft:carrot_on_a_stick{Tags:["ability"]}

