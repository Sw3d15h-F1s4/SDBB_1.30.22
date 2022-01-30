#Throws small projectile that heals where it lands. Can be any entity, for now I'm making it an armor stand.

execute if entity @s[team=Red] at @s rotated ~ 0 positioned ^ ^ ^1 run summon armor_stand ~ ~ ~ {Invisible:0b,Tags:["lrfbc","Red","new"],CustomName:'{"text":"TACTICAL LRFBC","color":"red"}',CustomNameVisible:0b}
execute if entity @s[team=Blue] at @s rotated ~ 0 positioned ^ ^ ^1 run summon armor_stand ~ ~ ~ {Invisible:0b,Tags:["lrfbc","Blue","new"],CustomName:'{"text":"TACTICAL LRFBC","color":"blue"}',CustomNameVisible:0b}
#scoreboard players set @e[tag=lrfbc,tag=new] helperTimer 160
tag @e[tag=new,tag=lrfbc] remove new 


#begin fast math (no way!!!!)
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["rei_fastmath"]}
tp @e[tag=rei_fastmath] ~ ~ ~ ~ ~
tp @e[tag=rei_fastmath] 0.0 0.0 0.0 ~ ~
execute as @e[tag=rei_fastmath] at @s run tp ^ ^ ^2.8

#math complete, store values.
execute if entity @s[team=Red] run data modify entity @e[tag=lrfbc,limit=1,tag=Red] Motion set from entity @e[tag=rei_fastmath,limit=1] Pos
execute if entity @s[team=Blue] run data modify entity @e[tag=lrfbc,limit=1,tag=Blue] Motion set from entity @e[tag=rei_fastmath,limit=1] Pos
kill @e[tag=rei_fastmath]

#check givekit func for actual healing loop and particles.
clear @s carrot_on_a_stick{Tags:["tactical_lrfbc"]}
playsound sdbb:rei_ayanami.tactical_lrfbc master @a ~ ~ ~
#playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 1.3 0.9
scoreboard players set @s ability2Timer 600