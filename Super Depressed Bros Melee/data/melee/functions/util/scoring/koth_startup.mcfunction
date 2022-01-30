
kill @e[tag=koth_point]
execute align xyz positioned 71 6 747.5 run summon minecraft:armor_stand ~-0.5 ~ ~ {NoGravity:1b,Invisible:1b,Tags:["koth_point"]}

scoreboard players set red_score koth_score 0
scoreboard players set blue_score koth_score 0

scoreboard players set Blue koth_show 0
scoreboard players set Red koth_show 0
team join Blue Blue
team join Red Red

scoreboard objectives setdisplay sidebar koth_show

tellraw @a "KING OF THE HILL MODE!"
tellraw @a "CAPTURE THE ASSET AT THE CENTER!"