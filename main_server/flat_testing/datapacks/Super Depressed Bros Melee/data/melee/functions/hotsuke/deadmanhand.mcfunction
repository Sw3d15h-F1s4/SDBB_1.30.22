

execute if entity @s[scores={helperTimer=1..}] run scoreboard players set @s helperTimer 1
execute if entity @s[scores={helperTimer=1..}] run scoreboard players set @s abilityTimer 900
execute if entity @s[scores={helperTimer=1..}] run clear @s carrot_on_a_stick{Tags:["deadman"]}
execute unless entity @s[scores={helperTimer=1..}] run tellraw @s "I can't fit another bullet in!"