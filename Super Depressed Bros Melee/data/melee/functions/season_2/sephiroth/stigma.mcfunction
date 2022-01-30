
scoreboard players set @s abilityTimer 400
clear @s carrot_on_a_stick{Tags:["stigma"]}

execute if entity @s[team=Red] run effect give @e[type=!#melee:undead,distance=0.1..9,team=!Red] poison 3 1 true
execute if entity @s[team=Blue] run effect give @e[type=!#melee:undead,distance=0.1..9,team=!Blue] poison 3 1 true

execute if entity @s[team=Red] run effect give @e[type=#melee:undead,distance=0.1..9,team=!Red] instant_health 1 1 true
execute if entity @s[team=Blue] run effect give @e[type=#melee:undead,distance=0.1..9,team=!Blue] instant_health 1 1 true

execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.329 0.259 0.259 1",Radius:9f}

playsound sdbb:sephiroth.stigma master @a ~ ~ ~ 1