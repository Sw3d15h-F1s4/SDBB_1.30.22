#raycast loop. Essentially makes capsule (round end cylinder) detect box in direction beef is looking Up to 7 blocks.
scoreboard players add @s projectileLife 1

#detect if we hit a block.
execute unless block ~ ~ ~ #melee:all_air run scoreboard players add @s projectileLife 1000

#if we didn't hit a block, look forwards.
execute if entity @s[scores={projectileLife=..14}] positioned ^ ^ ^0.5 run function melee:bigfloppa/galooploop

#if we did hit a block, go back a little and tp there. Or if we reached maximum TP range.
execute if entity @s[scores={projectileLife=15..}] positioned ^ ^ ^-1 run tp @s ~ ~ ~