
execute at @e[tag=doubledutch,limit=1,sort=nearest] run tp @a[tag=ddvictim,limit=1,sort=nearest, distance=0..2] @e[tag=doubledutch,limit=1,sort=nearest]
execute at @e[tag=doubledutchplayer,limit=1,sort=nearest] run tp @a[tag=ddplayer,limit=1,sort=nearest,distance=0..2] @e[tag=doubledutchplayer,limit=1,sort=nearest]

execute as @a[scores={heroType=5,ddCooldown=..25}] at @a[tag=ddvictim,limit=1,distance=0..5] run particle minecraft:block nether_wart_block ~ ~-1 ~ 0 0 0 10 6 force @a

execute at @a[tag=ddplayer] if entity @a[tag=ddvictim, distance=7..] run function melee:erased/double_dutch/doubledutchcleanup