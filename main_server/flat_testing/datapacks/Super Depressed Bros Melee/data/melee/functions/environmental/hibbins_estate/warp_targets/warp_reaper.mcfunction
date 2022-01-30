

execute as @p[tag=handlingWarp] at @s if entity @e[distance=..1,tag=warpReaper] run tp @s @e[tag=warpReaper,distance=1..,sort=random,limit=1,tag=!disabled]
execute as @p[tag=handlingWarp] at @s if entity @e[distance=..1,tag=warpToReaper] run tp @s @e[tag=warpReaper,distance=1..,sort=random,limit=1,tag=!disabled]

execute as @p[tag=handlingWarp] at @s if entity @e[distance=..1,tag=warpToReaper] run playsound sdbb:reaper.ui_theme master @a ~ ~ ~ 0.5 1 0.1
execute as @p[tag=handlingWarp] at @s if entity @e[distance=..1,tag=warpToReaper] run tellraw @a ["",{"text":"FUCK","bold":true,"italic":true,"underlined":true,"obfuscated":true,"color":"dark_red"},{"text":" Another Soul is LOST to the REAPER! ","bold":true,"italic":true,"underlined":true,"color":"dark_red"},{"text":"FUCK","bold":true,"italic":true,"underlined":true,"obfuscated":true,"color":"dark_red"},{"text":"\n"},{"text":"Rest in Pieces, ","color":"yellow"},{"selector":"@s","color":"yellow"}]

tag @s remove handlingWarp