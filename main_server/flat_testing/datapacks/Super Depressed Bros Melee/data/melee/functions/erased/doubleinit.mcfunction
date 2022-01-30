

execute at @s[team=Red] if entity @a[team=!Red,distance=..3,limit=1] run scoreboard players set @s ability3Timer 700
execute at @s[team=Blue] if entity @a[team=!Blue,distance=..3,limit=1] run scoreboard players set @s ability3Timer 700
execute if entity @s[scores={ability3Timer=700}] run clear @s carrot_on_a_stick{Tags:["double"]}

execute at @s[team=Red] if entity @a[team=!Red,distance=..3,limit=1] run function melee:erased/double_dutch/doubledutch
execute at @s[team=Blue] if entity @a[team=!Blue,distance=..3,limit=1] run function melee:erased/double_dutch/doubledutch