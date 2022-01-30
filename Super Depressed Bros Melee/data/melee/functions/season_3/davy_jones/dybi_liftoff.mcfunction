

#step 4b: do the fast maths
execute if entity @a[team=Red,tag=dyfd_user,scores={DJ_FearDeath=..0}] positioned 0 0 0 align xyz run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["fastmath_red"]}
execute if entity @a[team=Blue,tag=dyfd_user,scores={DJ_FearDeath=..0}] positioned 0 0 0 align xyz run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["fastmath_blue"]}
execute as @e[tag=fastmath_red] run data modify entity @s Rotation[0] set from entity @a[tag=dyfd_user,team=Red,limit=1,scores={DJ_FearDeath=..0}] Rotation[0]
execute as @e[tag=fastmath_red] run data modify entity @s Rotation[1] set from entity @a[tag=dyfd_user,team=Red,limit=1,scores={DJ_FearDeath=..0}] Rotation[1]
execute as @e[tag=fastmath_blue] run data modify entity @s Rotation[0] set from entity @a[tag=dyfd_user,team=Blue,limit=1,scores={DJ_FearDeath=..0}] Rotation[0]
execute as @e[tag=fastmath_blue] run data modify entity @s Rotation[1] set from entity @a[tag=dyfd_user,team=Blue,limit=1,scores={DJ_FearDeath=..0}] Rotation[1]

#step 4c: here's the math part lmao (adjust the 3 to change strength of throw)
execute as @e[tag=fastmath_red] at @s run tp @e[tag=fastmath_red] ^ ^ ^3
execute as @e[tag=fastmath_blue] at @s run tp @e[tag=fastmath_blue] ^ ^ ^3

#step 4d: apply the motion to the victim's armor stand. change the 0.5 for fun stuff!
execute if entity @a[team=Red,tag=dyfd_user,scores={DJ_FearDeath=..0}] as @e[tag=dyfd_victim_stand_red] run data modify entity @s Motion[0] set from entity @e[tag=fastmath_red,limit=1] Pos[0]
execute if entity @a[team=Red,tag=dyfd_user,scores={DJ_FearDeath=..0}] as @e[tag=dyfd_victim_stand_red] run data modify entity @s Motion[1] set value 1.0d
execute if entity @a[team=Red,tag=dyfd_user,scores={DJ_FearDeath=..0}] as @e[tag=dyfd_victim_stand_red] run data modify entity @s Motion[2] set from entity @e[tag=fastmath_red,limit=1] Pos[2]

execute if entity @a[team=Blue,tag=dyfd_user,scores={DJ_FearDeath=..0}] as @e[tag=dyfd_victim_stand_blue] run data modify entity @s Motion[0] set from entity @e[tag=fastmath_blue,limit=1] Pos[0]
execute if entity @a[team=Blue,tag=dyfd_user,scores={DJ_FearDeath=..0}] as @e[tag=dyfd_victim_stand_blue] run data modify entity @s Motion[1] set value 1.0d
execute if entity @a[team=Blue,tag=dyfd_user,scores={DJ_FearDeath=..0}] as @e[tag=dyfd_victim_stand_blue] run data modify entity @s Motion[2] set from entity @e[tag=fastmath_blue,limit=1] Pos[2]

#step 5: begin cleanup. Party time is over :(
execute if entity @a[team=Blue,tag=dyfd_user,scores={DJ_FearDeath=..0}] run kill @e[tag=dyfd_user_stand_blue]
execute if entity @a[team=Red,tag=dyfd_user,scores={DJ_FearDeath=..0}] run kill @e[tag=dyfd_user_stand_red]
execute if entity @a[team=Blue,tag=dyfd_user,scores={DJ_FearDeath=..0}] run kill @e[tag=fastmath_blue]
execute if entity @a[team=Red,tag=dyfd_user,scores={DJ_FearDeath=..0}] run kill @e[tag=fastmath_red]
execute if entity @a[team=Blue,tag=dyfd_user,scores={DJ_FearDeath=..0}] run tag @a[team=Blue,tag=dyfd_user,scores={DJ_FearDeath=..0}] remove dyfd_user
execute if entity @a[team=Red,tag=dyfd_user,scores={DJ_FearDeath=..0}] run tag @a[team=Red,tag=dyfd_user,scores={DJ_FearDeath=..0}] remove dyfd_user

execute if entity @a[team=Blue,tag=dyfd_victim] run tag @e[tag=dyfd_victim_stand_red, limit=1,sort=nearest] add thrown
execute if entity @a[team=Red,tag=dyfd_victim] run tag @e[tag=dyfd_victim_stand_blue, limit=1,sort=nearest] add thrown
