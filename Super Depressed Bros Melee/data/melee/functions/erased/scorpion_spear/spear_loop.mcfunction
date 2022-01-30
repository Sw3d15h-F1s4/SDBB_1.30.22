# what does the chain do?


scoreboard players add @s projectileLife 1

tp @s ^ ^ ^1.1

execute as @s unless block ~ ~ ~ #melee:all_air run scoreboard players set @s projectileLife -500
execute if entity @s[tag=Blue] if entity @e[distance=0..1.75,tag=!erased_spear,tag=!SpearGrab_UserTeleR,tag=!SpearGrab_UserTeleB,team=!Blue] run scoreboard players add @s projectileLife 1000
execute if entity @s[tag=Red] if entity @e[distance=0..1.75,tag=!erased_spear,tag=!SpearGrab_UserTeleR,tag=!SpearGrab_UserTeleB,team=!Red] run scoreboard players add @s projectileLife 1000


execute as @s[scores={projectileLife=1000..}] if entity @s[tag=Red] run tag @a[distance=0..2,team=!Red,tag=!erased_spear,sort=nearest,limit=1] add SpearGrab_VictimB
execute as @s[scores={projectileLife=1000..}] if entity @s[tag=Blue] run tag @a[distance=0..2,team=!Blue,tag=!erased_spear,sort=nearest,limit=1] add SpearGrab_VictimR

#execute as @s[scores={projectileLife=1000..}] if entity @s[tag=Red] unless entity @e[tag=SpearGrab_VictimTeleB] at @a[distance=0..2,team=!Red,tag=SpearGrab_VictimB,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:0b,NoBasePlate:1b,Tags:["SpearGrab_VictimTeleB"]}
#execute as @s[scores={projectileLife=1000..}] if entity @s[tag=Blue] unless entity @e[tag=SpearGrab_VictimTeleR] at @a[distance=0..2,team=!Blue,tag=SpearGrab_VictimR,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:0b,NoBasePlate:1b,Tags:["SpearGrab_VictimTeleR"]}

particle minecraft:crit ^ ^ ^0.35 0.1 0.1 0.1 0 2 force

# crypto chain! :O
particle block chain[waterlogged=false] ^ ^ ^0.2 0 0 0 1 2 force
particle block chain[waterlogged=false] ^ ^ ^ 0 0 0 1 5 force
particle block chain[waterlogged=false] ^ ^ ^-0.2 0 0 0 1 2 force

#particle dust 0.349 0.329 0.329 2 ^ ^ ^0.2 0 0 0 1 0 force
#particle dust 0.349 0.329 0.329 2 ~ ~ ~ 0 0 0 1 0 force
#particle dust 0.349 0.329 0.329 2 ^ ^ ^-0.2 0 0 0 1 0 force
execute at @s[tag=Red,scores={projectileLife=2..}] run particle minecraft:flame ^ ^ ^-1 0.1 0.1 0.1 0 1 force @a
execute at @s[tag=Blue,scores={projectileLife=2..}] run particle minecraft:soul_fire_flame ^ ^ ^-1 0.1 0.1 0.1 0.1 1 force @a

# Kills the Erased teleporter if it misses/hits the ground
execute if entity @s[tag=Red,scores={projectileLife=-500}] run kill @e[tag=SpearGrab_UserTeleR]
execute if entity @s[tag=Blue,scores={projectileLife=-500}] run kill @e[tag=SpearGrab_UserTeleB]

# Kills the Erased teleporter if it goes through its TOL, and there is nobody with the victim tag
execute if entity @s[tag=Red,scores={projectileLife=14..}] unless entity @a[tag=SpearGrab_VictimB] run kill @e[tag=SpearGrab_UserTeleR]
execute if entity @s[tag=Blue,scores={projectileLife=14..}] unless entity @a[tag=SpearGrab_VictimR] run kill @e[tag=SpearGrab_UserTeleB]

# Removes tags from Erased if missed, or if TOL is exceeded

# Kills le projectile
kill @s[scores={projectileLife=14..}]
kill @s[scores={projectileLife=-500}]
