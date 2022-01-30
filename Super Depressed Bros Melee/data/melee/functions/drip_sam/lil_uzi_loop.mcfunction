
scoreboard players add @s projectileLife 1

execute unless block ~ ~ ~ #melee:all_air run scoreboard players set @s projectileLife 2000
execute if entity @e[distance=..1,type=!player] run scoreboard players set @s projectileLife 2500
execute if entity @a[distance=..2,nbt=!{SelectedItem:{tag:{Tags:["lil_uzi"]}}}] run scoreboard players set @s projectileLife 3000
execute as @s[scores={projectileLife=2500}] positioned ^ ^ ^ run effect give @e[distance=..1] resistance 1 0 true
execute as @s[scores={projectileLife=2500}] positioned ^ ^ ^ run effect give @e[distance=..1,tag=!undead] instant_damage 1 0 true
execute as @s[scores={projectileLife=2500}] positioned ^ ^ ^ run effect give @e[distance=..1,tag=undead] instant_health 1 0 true
execute as @s[scores={projectileLife=3000}] positioned ^ ^ ^ run scoreboard players set @a[distance=..2,limit=1,sort=nearest] toDamage 2
execute as @s[scores={projectileLife=3000}] positioned ^ ^ ^ run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[nbt={SelectedItem:{tag:{Tags:["lil_uzi"]}}}]
execute as @s positioned ^ ^ ^ unless entity @a[nbt={SelectedItem:{tag:{Tags:["lil_uzi"]}}},distance=..2] run particle ash ~ ~ ~ 0 0 0 10 1 force @a
execute as @s[scores={projectileLife=..50}] positioned ^ ^ ^0.5 run function melee:drip_sam/lil_uzi_loop