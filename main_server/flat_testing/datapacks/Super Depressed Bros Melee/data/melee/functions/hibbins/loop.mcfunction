##
 # loop.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

scoreboard players add @s projectileLife 1
#enable for homing
#execute if entity @a[distance=0..3,sort=nearest,limit=1,nbt=!{SelectedItem:{tag:{display:{Name:'{"text":"MAJAK ORB"}'}}}}] run tp @s ^ ^ ^1 facing entity @a[distance=0..10,sort=nearest,limit=1,nbt=!{SelectedItem:{tag:{display:{Name:'{"text":"Ray"}'}}}}] feet
#execute unless entity @a[distance=0..3,sort=nearest,limit=1,nbt=!{SelectedItem:{tag:{display:{Name:'{"text":"MAJAK ORB"}'}}}}] run tp @s ^ ^ ^1

# OG SPEED:
tp @s ^ ^ ^1

execute as @s unless block ~ ~ ~ #melee:all_air run scoreboard players set @s projectileLife -500
execute if entity @s[tag=Blue] if entity @e[distance=0..1.75,tag=!ray,team=!Blue] run scoreboard players add @s projectileLife 1000
execute if entity @s[tag=Red] if entity @e[distance=0..1.75,tag=!ray,team=!Red] run scoreboard players add @s projectileLife 1000

#calculate damage for close range players (res 3 i_d 1, 0.5-1 heart of damage thru armor) 0-8 blocks
execute as @s[scores={projectileLife=1000..1012}] if entity @s[tag=Red] run effect give @e[distance=0..2,team=!Red,tag=!ray] resistance 1 2 true
execute as @s[scores={projectileLife=1000..1012}] if entity @s[tag=Red] run effect give @e[distance=0..2,team=!Red,tag=!ray] instant_damage 1 0 true
execute as @s[scores={projectileLife=1000..1012}] if entity @s[tag=Blue] run effect give @e[distance=0..2,team=!Blue,tag=!ray] resistance 1 2 true
execute as @s[scores={projectileLife=1000..1012}] if entity @s[tag=Blue] run effect give @e[distance=0..2,team=!Blue,tag=!ray] instant_damage 1 0 true
# Dust particles for close range on Blue Team
execute if entity @s[scores={projectileLife=..12},tag=Blue] run particle dust 0.596 0.416 0.933 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=..5}]
execute if entity @s[scores={projectileLife=..12},tag=Blue] run particle dust 0.596 0.416 0.933 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=7..}]
execute if entity @s[scores={projectileLife=..12},tag=Blue] run particle dust 0.596 0.416 0.933 1.1 ~ ~ ~ 0 0 0 0.1 1 force @a[scores={heroType=6}]
# Dust particles for close range on Red Team
execute if entity @s[scores={projectileLife=..12},tag=Red] run particle dust 0.859 0.376 0.643 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=..5}]
execute if entity @s[scores={projectileLife=..12},tag=Red] run particle dust 0.859 0.376 0.643 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=7..}]
execute if entity @s[scores={projectileLife=..12},tag=Red] run particle dust 0.859 0.376 0.643 1.1 ~ ~ ~ 0 0 0 0.1 1 force @a[scores={heroType=6}]

#calculate damage for mid range players (res 1 i_d 1, 2.5 - 3 heart of damage thru armor)
execute as @s[scores={projectileLife=1013..1035}] if entity @s[tag=Red] run effect give @e[distance=0..2,team=!Red,tag=!ray] resistance 1 0 true
execute as @s[scores={projectileLife=1013..1035}] if entity @s[tag=Red] run effect give @e[distance=0..2,team=!Red,tag=!ray] instant_damage 1 0 true
execute as @s[scores={projectileLife=1013..1035}] if entity @s[tag=Blue] run effect give @e[distance=0..2,team=!Blue,tag=!ray] resistance 1 0 true
execute as @s[scores={projectileLife=1013..1035}] if entity @s[tag=Blue] run effect give @e[distance=0..2,team=!Blue,tag=!ray] instant_damage 1 0 true
# Dust particles for mid range on Blue team
execute if entity @s[scores={projectileLife=13..35},tag=Blue] run particle dust 0.58 0.286 0.855 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=..5}]
execute if entity @s[scores={projectileLife=13..35},tag=Blue] run particle dust 0.58 0.286 0.855 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=7..}]
execute if entity @s[scores={projectileLife=13..35},tag=Blue] run particle dust 0.58 0.286 0.855 1.1 ~ ~ ~ 0 0 0 0.1 1 force @a[scores={heroType=6}]
# Dust particles for close range on Red Team
execute if entity @s[scores={projectileLife=13..35},tag=Red] run particle dust 0.733 0.18 0.733 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=..5}]
execute if entity @s[scores={projectileLife=13..35},tag=Red] run particle dust 0.733 0.18 0.733 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=7..}]
execute if entity @s[scores={projectileLife=13..35},tag=Red] run particle dust 0.733 0.18 0.733 1.3 ~ ~ ~ 0 0 0 0.1 1 force @a[scores={heroType=6}]

#calculate damage for long range players (res 1 i_d 2, 3.5 hearts of damage thru armor)
execute as @s[scores={projectileLife=1036..1060}] if entity @s[tag=Red] run effect give @e[distance=0..2,team=!Red,tag=!ray] resistance 1 1 true
execute as @s[scores={projectileLife=1036..1060}] if entity @s[tag=Red] run effect give @e[distance=0..2,team=!Red,tag=!ray,type=!#melee:undead] instant_damage 1 1 true
execute as @s[scores={projectileLife=1036..1060}] if entity @s[tag=Blue] run effect give @e[distance=0..2,team=!Blue,tag=!ray] resistance 1 1 true
execute as @s[scores={projectileLife=1036..1060}] if entity @s[tag=Blue] run effect give @e[distance=0..2,team=!Blue,tag=!ray,type=!#melee:undead] instant_damage 1 1 true
# Enchanted hit for Long, to easily indicate its presence. Both teams.
execute if entity @s[scores={projectileLife=36..}] run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.6 2 force @a
# Dust particles Long for Blue team
execute if entity @s[scores={projectileLife=36..},tag=Blue] run particle dust 0.337 0.282 0.812 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=..5}]
execute if entity @s[scores={projectileLife=36..},tag=Blue] run particle dust 0.337 0.282 0.812 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=7..}]
execute if entity @s[scores={projectileLife=36..},tag=Blue] run particle dust 0.337 0.282 0.812 1.1 ~ ~ ~ 0 0 0 0.1 1 force @a[scores={heroType=6}]
# Dust particles Long for Red team
execute if entity @s[scores={projectileLife=36..},tag=Red] run particle dust 0.953 0.024 0.596 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=..5}]
execute if entity @s[scores={projectileLife=36..},tag=Red] run particle dust 0.953 0.024 0.596 1.3 ~ ~ ~ 0 0 0 0.1 5 force @a[scores={heroType=7..}]
execute if entity @s[scores={projectileLife=36..},tag=Red] run particle dust 0.953 0.024 0.596 1.1 ~ ~ ~ 0 0 0 0.1 1 force @a[scores={heroType=6}]


#calculate damage for snipe range players (res 1 i_d 2, 4.5 hearts of damage thru armor)
execute as @s[scores={projectileLife=1061..}] if entity @s[tag=Red] run effect give @e[distance=0..2,team=!Red,tag=!ray] resistance 1 0 true
execute as @s[scores={projectileLife=1061..}] if entity @s[tag=Red] run effect give @e[distance=0..2,team=!Red,tag=!ray,type=!#melee:undead] instant_damage 1 1 true
execute as @s[scores={projectileLife=1061..}] if entity @s[tag=Blue] run effect give @e[distance=0..2,team=!Blue,tag=!ray] resistance 1 0 true
execute as @s[scores={projectileLife=1061..}] if entity @s[tag=Blue] run effect give @e[distance=0..2,team=!Blue,tag=!ray,type=!#melee:undead] instant_damage 1 1 true
#Particles for SNIPE
execute if entity @s[scores={projectileLife=61..1000}] run particle minecraft:soul ~ ~ ~ 0.19 0.13 0.19 0 2 force


execute as @s[scores={projectileLife=1000..}] if entity @s[tag=Red] run effect give @e[distance=0..2,team=!Red,tag=!ray,type=#melee:undead] instant_health 1 2 true
execute as @s[scores={projectileLife=1000..}] if entity @s[tag=Blue] run effect give @e[distance=0..2,team=!Blue,tag=!ray,type=#melee:undead] instant_health 1 2 true
kill @s[scores={projectileLife=100..}]
kill @s[scores={projectileLife=-500}]