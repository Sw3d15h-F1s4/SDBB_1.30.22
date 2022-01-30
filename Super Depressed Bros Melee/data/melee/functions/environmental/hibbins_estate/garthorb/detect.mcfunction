###
  # detect.mcfunction
  #
  # For Garthorb Environmental trap
###

execute as @e[tag=estate_trap1] at @s run tp @s ~ ~ ~ facing entity @p[distance=..8,scores={gameState=1..},gamemode=!spectator]

execute as @e[tag=estate_trap1,scores={helperTimer=..0}] at @s if entity @a[distance=..8,scores={gameState=1..},gamemode=!spectator,limit=1] run function melee:environmental/hibbins_estate/garthorb/majak_cast
scoreboard players set @e[tag=estate_trap1,scores={helperTimer=..0}] helperTimer 40

execute as @e[tag=garthorb_ray] at @s run function melee:environmental/hibbins_estate/garthorb/loop
