####
   # deadmans_chest.mcfunction
   # Super Depressed Bros. Brawl
   # Created by Nathan
####   

effect give @s strength 10 0 true
effect give @s haste 10 0 true
effect give @s dolphins_grace 10 4 true

execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"campfire_cosy_smoke",Radius:2f}
particle minecraft:squid_ink ~ ~ ~ 0.5 0.1 0.5 0.1 15 force

playsound sdbb:davy_jones.dead_man_chest master @a ~ ~ ~

clear @s carrot_on_a_stick{Tags:["dms_chest"]}
scoreboard players set @s ultTimer 2900