
say hello

execute as @s run data merge entity @s {NoGravity:0}

execute as @s store result entity @s Motion[0] double 0.0001 run scoreboard players get @s StV_Motion0
execute as @s store result entity @s Motion[1] double 0.0001 run scoreboard players get @s STV_Motion1
execute as @s store result entity @s Motion[2] double 0.0001 run scoreboard players get @s STV_Motion2

tag @s add holtzman_veteran
tag @s remove holtzman_freeze