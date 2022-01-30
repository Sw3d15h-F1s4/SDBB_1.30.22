
#here goes the wackiest ult ive ever made
scoreboard players set @a[scores={trueSephiroth=0}] abilityTimer 1000000
scoreboard players set @a[scores={trueSephiroth=0}] ability2Timer 1000000
scoreboard players set @a[scores={trueSephiroth=0}] ability3Timer 1000000
execute as @a unless score @s heroType matches 7 run scoreboard players set @s[scores={trueSephiroth=0}] helperTimer 1000000
scoreboard players set @a[scores={trueSephiroth=0}] helperTimer2 1000000

effect give @a[scores={trueSephiroth=0}] blindness 10 1 true
effect give @a[scores={trueSephiroth=0}] slowness 10 255 true
effect give @a[scores={trueSephiroth=0}] jump_boost 10 128 true
effect give @a[scores={trueSephiroth=0}] weakness 10 255 true
effect give @a[scores={trueSephiroth=0}] mining_fatigue 10 255 true

tellraw @a [{"text":"One Winged Angel joined the game","color":"yellow"}]
title @a times 100 100 100
title @a title [{"text":"Sephiroth Descends","bold":true,"italic":true,"color":"dark_red"}]

schedule function melee:season_2/sephiroth/one_wing_phase3 8s