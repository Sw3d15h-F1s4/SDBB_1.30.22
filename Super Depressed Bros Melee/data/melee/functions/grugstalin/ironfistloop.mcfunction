##
 # ironfistloop.mcfunction
 # Super Sad RP Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

scoreboard players add @s projectileLife 1

tp @s ^ ^ ^1

execute as @s at @s unless block ~ ~ ~ #melee:all_air run scoreboard players set @s projectileLife -500



execute as @s[scores={projectileLife=2..20}] at @s run summon evoker_fangs ~ ~-0.9 ~ {Tags:["newfangled"]}
execute as @s[scores={projectileLife=2..20}] at @s run summon evoker_fangs ^0.7 ^-0.9 ^ {Tags:["newfangled"]}
execute as @s[scores={projectileLife=2..20}] at @s run summon evoker_fangs ^-0.7 ^-0.9 ^ {Tags:["newfangled"]}

execute if entity @s[tag=Red] as @e[tag=newfangled] run data modify entity @s Owner set from entity @a[team=Red,scores={heroType=10},limit=1] UUID
execute if entity @s[tag=Blue] as @e[tag=newfangled] run data modify entity @s Owner set from entity @a[team=Blue,scores={heroType=10},limit=1] UUID

tag @e[tag=newfangled] remove newfangled

kill @s[scores={projectileLife=20..}]
kill @s[scores={projectileLife=-500}]