
title @a[tag=gulag_victim,team=Red] title {"text":"Don't Afraid !!","color":"#EB0000","bold":true,"italic":false}

tag @e[tag=initEscape_R] add gulagEscape_R

#scoreboard players set GulagStart_B debugMode 1
scoreboard players set GulagSummon_B helperTimer 40

#execute if entity @e[tag=gulagEscape_R] run say escape

effect clear @a[tag=gulag_victim,team=Red] blindness
effect clear @a[tag=gulag_victim,team=Red] resistance
effect clear @a[tag=gulag_victim,team=Red] weakness
effect clear @a[tag=gulag_victim,team=Red] slowness

execute at @a[tag=gulag_victim,team=Red] run playsound ambient.cave master @a[tag=gulag_victim,team=Red] ~ ~ ~