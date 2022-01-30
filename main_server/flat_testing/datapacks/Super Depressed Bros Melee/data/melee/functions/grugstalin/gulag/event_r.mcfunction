
title @a[tag=gulag_victim,team=Blue] title {"text":"Don't Afraid !!","color":"#EB0000","bold":true,"italic":false}

tag @e[tag=initEscape_B] add gulagEscape_B

#scoreboard players set GulagStart_R debugMode 1
scoreboard players set GulagSummon_R helperTimer 40

#execute if entity @e[tag=gulagEscape_B] run say escape

effect clear @a[tag=gulag_victim,team=Blue] blindness
effect clear @a[tag=gulag_victim,team=Blue] resistance
effect clear @a[tag=gulag_victim,team=Blue] weakness
effect clear @a[tag=gulag_victim,team=Blue] slowness

execute at @a[tag=gulag_victim,team=Blue] run playsound ambient.cave master @a[tag=gulag_victim,team=Blue] ~ ~ ~