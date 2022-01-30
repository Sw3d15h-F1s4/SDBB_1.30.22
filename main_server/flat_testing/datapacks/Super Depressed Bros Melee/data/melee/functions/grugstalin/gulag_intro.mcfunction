
# A little scene where the player is able to position themselves in their ideal spot/explore the Gulag map. They get Weakness/Resistance just in case another player shows up.
# A grace period, if you will.

effect give @s blindness 3 255 true
effect give @s slowness 2 255 true
effect give @s resistance 7 255 true
effect give @s weakness 7 255 true

tag @s add gulag_victim

execute if entity @s[team=Blue,tag=gulag_victim] run tp @e[tag=gulag_R] 0 0 0
execute if entity @s[team=Red,tag=gulag_victim] run tp @e[tag=gulag_B] 0 0 0
execute if entity @s[team=Blue,tag=gulag_victim] run kill @e[tag=gulag_R]
execute if entity @s[team=Red,tag=gulag_victim] run kill @e[tag=gulag_B]

scoreboard players set @s[tag=gulag_victim,scores={abilityTimer=..10}] abilityTimer 10
scoreboard players set @s[tag=gulag_victim,scores={ability2Timer=..10}] ability2Timer 10
scoreboard players set @s[tag=gulag_victim,scores={ability3Timer=..10}] ability3Timer 10
scoreboard players set @s[tag=gulag_victim,scores={ultTimer=..10}] ultTimer 10

clear @a[tag=gulag_victim] lingering_potion
clear @a[tag=gulag_victim] carrot_on_a_stick{Tags:["ability"]}

execute as @s[team=Red,tag=gulag_victim] run tp @s 167 4 615 facing 0 0 20000000
execute as @s[team=Blue,tag=gulag_victim] run tp @s 167 4 615 facing 0 0 20000000

execute if entity @s[team=Blue,tag=gulag_victim] run schedule function melee:grugstalin/gulag/event_r 8s
execute if entity @s[team=Red,tag=gulag_victim] run schedule function melee:grugstalin/gulag/event_b 8s