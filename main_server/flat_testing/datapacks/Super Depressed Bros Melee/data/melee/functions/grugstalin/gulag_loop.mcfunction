##
 # loop.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

scoreboard players add @s projectileLife 1
scoreboard players set @s[scores={helperTimer=..0}] helperTimer 60


#enable for homing
#execute if entity @a[distance=0..3,sort=nearest,limit=1,nbt=!{SelectedItem:{tag:{display:{Name:'{"text":"MAJAK ORB"}'}}}}] run tp @s ^ ^ ^1 facing entity @a[distance=0..10,sort=nearest,limit=1,nbt=!{SelectedItem:{tag:{display:{Name:'{"text":"gulag_ray"}'}}}}] feet
#execute unless entity @a[distance=0..3,sort=nearest,limit=1,nbt=!{SelectedItem:{tag:{display:{Name:'{"text":"MAJAK ORB"}'}}}}] run tp @s ^ ^ ^1

# TO-DO: Add a part that kills every hostile mob and just passes through.


# OG SPEED:
tp @s ^ ^ ^1.6

execute as @s unless block ~ ~ ~ #melee:all_air run scoreboard players set @s projectileLife -500
execute if entity @s[tag=Blue] if entity @a[distance=0..1.75,team=!Blue] run scoreboard players add @s projectileLife 1000
execute if entity @s[tag=Red] if entity @a[distance=0..1.75,team=!Red] run scoreboard players add @s projectileLife 1000

# teleports a player into the gulag, depending on the team that is made.
execute as @s[scores={projectileLife=1000..}] if entity @s[tag=Red] as @a[distance=0..2,team=!Red,tag=!gulag_ray,limit=1,sort=nearest] unless entity @e[tag=initEscape_B] run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:0b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["initEscape_B"],CustomName:'{"text":"Grug Spawnpoint"}'}
execute as @s[scores={projectileLife=1000..}] if entity @s[tag=Blue] as @a[distance=0..2,team=!Blue,tag=!gulag_ray,limit=1,sort=nearest] unless entity @e[tag=initEscape_R] run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:0b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["initEscape_R"],CustomName:'{"text":"Grug Spawnpoint"}'}
execute as @s[scores={projectileLife=1000..}] if entity @s[tag=Red] as @a[distance=0..2,team=!Red,tag=!gulag_ray,limit=1,sort=nearest] run function melee:grugstalin/gulag_intro
execute as @s[scores={projectileLife=1000..}] if entity @s[tag=Blue] as @a[distance=0..2,team=!Blue,tag=!gulag_ray,limit=1,sort=nearest] run function melee:grugstalin/gulag_intro
# Dust particles for close range on Blue Team

# Trail
execute if entity @s[team=Red] run particle dust 0.702 0.671 0.282 2 ^ ^ ^-2 0 0 0 0.1 1 force @a
execute if entity @s[team=Blue] run particle dust 0.702 0.498 0.278 2 ^ ^ ^-2 0 0 0 0.1 1 force @a

execute if entity @s[tag=Blue] run particle dust 0.969 0.925 0.349 4 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=..9}]
execute if entity @s[tag=Blue] run particle dust 0.969 0.925 0.349 4 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=11..}]
execute if entity @s[tag=Blue] run particle dust 0.969 0.925 0.349 1 ~ ~ ~ 0 0 0 0.1 2 force @a[scores={heroType=10}]
# Dust particles for close range on Red Team
execute if entity @s[tag=Red] run particle dust 0.882 0.620 0.341 4 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=..9}]
execute if entity @s[tag=Red] run particle dust 0.882 0.620 0.341 4 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=11..}]
execute if entity @s[tag=Red] run particle dust 0.882 0.620 0.341 1 ~ ~ ~ 0 0 0 0.1 2 force @a[scores={heroType=10}]

#execute if entity @s[scores={helperTimer=28..29}] run stopsound @a * minecraft:block.bell.resonate
execute at @s[scores={helperTimer=58}] as @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 0.7 0.6

#execute as @s[scores={projectileLife=1000..}] if entity @s[tag=Red] run effect give @e[distance=0..2,team=!Red,tag=!gulag_ray,type=#melee:undead] instant_health 1 2 true
#execute as @s[scores={projectileLife=1000..}] if entity @s[tag=Blue] run effect give @e[distance=0..2,team=!Blue,tag=!gulag_ray,type=#melee:undead] instant_health 1 2 true

execute at @s[scores={projectileLife=35..}] run particle soul ~ ~ ~ 0.2 0.2 0.2 0.15 5 force
execute at @s[tag=Red,scores={projectileLife=35..}] run particle flame ~ ~ ~ 0.2 0.2 0.2 0.1 3 force
execute at @s[tag=Blue,scores={projectileLife=35..}] run particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.1 5 force

kill @s[scores={projectileLife=35..}]
kill @s[scores={projectileLife=-500}]