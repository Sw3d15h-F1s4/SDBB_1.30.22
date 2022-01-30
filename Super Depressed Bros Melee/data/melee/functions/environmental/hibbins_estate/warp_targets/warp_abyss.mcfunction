
execute if entity @e[distance=..1,tag=warpReaper] run tp @s @e[tag=warpReaper,distance=1..,sort=random,limit=1,tag=!disabled]
execute if entity @e[distance=..1,tag=warpToReaper] run tp @s @e[tag=warpReaper,sort=random,limit=1,tag=!disabled]

tag @s remove handlingWarp