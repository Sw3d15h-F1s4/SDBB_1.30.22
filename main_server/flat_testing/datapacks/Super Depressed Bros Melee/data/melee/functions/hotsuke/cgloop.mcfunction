
scoreboard players add @s projectileLife 1

execute if entity @s[team=Red] positioned ^ ^ ^ run effect give @e[distance=..3,team=!Red] resistance 1 0 true
execute if entity @s[team=Red] positioned ^ ^ ^ run effect give @e[distance=..3,type=!#melee:undead,team=!Red] instant_damage 1 0 true
execute if entity @s[team=Red] positioned ^ ^ ^ run effect give @e[distance=..3,type=#melee:undead,team=!Red] instant_health 1 1 true

execute if entity @s[team=Blue] positioned ^ ^ ^ run effect give @e[distance=..3,team=!Blue] resistance 1 0 true
execute if entity @s[team=Blue] positioned ^ ^ ^ run effect give @e[distance=..3,type=!#melee:undead,team=!Blue] instant_damage 1 0 true
execute if entity @s[team=Blue] positioned ^ ^ ^ run effect give @e[distance=..3,type=#melee:undead,team=!Blue] instant_health 1 1 true
execute as @s positioned ^ ^ ^ run particle sweep_attack ~ ~ ~ 0 0 0 1 1 force @a
execute as @s[scores={projectileLife=..14}] positioned ^ ^ ^0.5 run function melee:hotsuke/cgloop