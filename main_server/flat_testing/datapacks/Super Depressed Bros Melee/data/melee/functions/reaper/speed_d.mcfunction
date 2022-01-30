####
   # speed_d.mcfunction
   # Super Depressed Bros. Brawl
   #
#### A Nathan Experience


effect give @s speed 5 2 true
effect give @s mining_fatigue 5 4 true
tag @s add speedD_trail

scoreboard players set @s helperTimer2 100
scoreboard players set @s ability2Timer 500
clear @s minecraft:carrot_on_a_stick{Tags:["speed_d"]}