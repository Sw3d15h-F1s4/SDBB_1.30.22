# Stupid stray in the black bedroom.
# Scrapped attempt at a "Walker" idea.

scoreboard players set @e[tag=estate_trap2,scores={helperTimer=..0}] 60

execute at @e[tag=estate_trap2,limit=1,scores={helperTimer=60}] as @s run effect give @a[distance=..9] blindness 5 0
execute at @e[tag=estate_trap2,limit=1,scores={helperTimer=60}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.220 0.220 0.220 2",CustomNameVisible:0b,Radius:9f,Tags:["estate_trap2"]}
execute at @e[tag=estate_trap2,limit=1,scores={helperTimer=60}] as @s run playsound minecraft:ambient.cave master @a ~ ~ ~