
#King of the Hill. One central point, two teams. 
#Each team needs to get to 600 "points" to successfully capture.
#Each team gains 1 point per "net" player they have in the zone per tick. 3 on red and 1 on blue means red gains 2 points per tick.

#Blue needs to get to positive 600. Red needs to get to NEGATIVE 600.

#THERE CAN ONLY BE ONE KOTH POINT IN THE WORLD AT A TIME RIGHT NOW THIS IS INTENTIONAL!

scoreboard players set rate koth_score 0
scoreboard players set red_players koth_score 0
scoreboard players set blue_players koth_score 0

execute store result score blue_players koth_score run execute as @e[tag=koth_point,limit=1] at @s if entity @a[distance=..7,team=Blue]
execute store result score red_players koth_score run execute as @e[tag=koth_point,limit=1] at @s if entity @a[distance=..7,team=Red]

scoreboard players operation rate koth_score += blue_players koth_score
scoreboard players operation rate koth_score -= red_players koth_score

#increase score to a max magnitude of 600 points
scoreboard players set @e[tag=koth_point,scores={koth_score=600..}] koth_score 600
scoreboard players set @e[tag=koth_point,scores={koth_score=..-600}] koth_score -600
execute if entity @e[tag=koth_point] run scoreboard players operation @e[tag=koth_point] koth_score += rate koth_score

#if nobody is around, bring closer to 0 (or bring back to full cap)
execute if score red_players koth_score matches 0 if score blue_players koth_score matches 0 if entity @e[tag=koth_point, scores={koth_score=0..600},tag=!blue_cap,tag=!red_cap] run scoreboard players remove @e[tag=koth_point] koth_score 1
execute if score red_players koth_score matches 0 if score blue_players koth_score matches 0 if entity @e[tag=koth_point, scores={koth_score=-600..-1},tag=!blue_cap,tag=!red_cap] run scoreboard players add @e[tag=koth_point] koth_score 1

execute if score red_players koth_score matches 0 if score blue_players koth_score matches 0 if entity @e[tag=blue_cap,tag=koth_point,scores={koth_point=..600}] run scoreboard players add @e[tag=koth_point] koth_score 1
execute if score red_players koth_score matches 0 if score blue_players koth_score matches 0 if entity @e[tag=red_cap,tag=koth_point,scores={koth_point=-600..}] run scoreboard players remove @e[tag=koth_point] koth_score 1

#if blue or red is in the lead, change color to blue or red
execute if entity @e[tag=koth_point,scores={koth_score=0..}] run bossbar set minecraft:koth_display color blue
execute if entity @e[tag=koth_point,scores={koth_score=..0}] run bossbar set minecraft:koth_display color red
execute if entity @e[tag=koth_point,scores={koth_score=0}] run bossbar set minecraft:koth_display color white

#display MAGNITUDE!
execute if entity @e[tag=koth_point,scores={koth_score=..0}] store result storage koth_data mag int -1 run scoreboard players get @e[tag=koth_point,limit=1] koth_score 
execute if entity @e[tag=koth_point,scores={koth_score=0..}] store result storage koth_data mag int 1 run scoreboard players get @e[tag=koth_point,limit=1] koth_score

execute if entity @e[tag=koth_point,scores={koth_score=0}] run bossbar set minecraft:koth_display value 0
execute store result bossbar minecraft:koth_display value run data get storage koth_data mag 1

#once there's a full cap we game
execute if entity @e[tag=koth_point,scores={koth_score=600..}] run tag @e[tag=koth_point] add blue_cap
execute if entity @e[tag=koth_point,scores={koth_score=..-600}] run tag @e[tag=koth_point] add red_cap
execute if entity @e[tag=koth_point,scores={koth_score=0}] run tag @e[tag=koth_point] remove blue_cap
execute if entity @e[tag=koth_point,scores={koth_score=0}] run tag @e[tag=koth_point] remove red_cap

execute if entity @e[tag=blue_cap] run bossbar set minecraft:koth_display name "BLUE CONTROL"
execute if entity @e[tag=red_cap] run bossbar set minecraft:koth_display name "RED CONTROL"
execute if entity @e[tag=koth_point,scores={koth_score=0}] run bossbar set minecraft:koth_display name "CONTROL"

execute if entity @e[tag=blue_cap] run particle dust 0 0.067 1 1 70 5 747 3 3 3 0.1 8 normal @a
execute if entity @e[tag=red_cap] run particle dust 1 0 0 1 70 5 747 3 3 3 0.1 8 normal @a
execute unless entity @e[tag=blue_cap] unless entity @e[tag=red_cap] run particle dust 1 1 1 1 70 5 747 3 3 3 0.1 8 normal @a

#once there is a full cap add CAPTURE SCORE!!!
execute if entity @e[tag=blue_cap] run scoreboard players add blue_score koth_score 1
execute if entity @e[tag=red_cap] run scoreboard players add red_score koth_score 1

#display scores
scoreboard players operation Blue koth_show = blue_score koth_score
scoreboard players operation Red koth_show = red_score koth_score


#who wins eheheheheh?
execute if score blue_score koth_score matches 3600 run function melee:util/endgame
execute if score red_score koth_score matches 3600 run function melee:util/endgame
