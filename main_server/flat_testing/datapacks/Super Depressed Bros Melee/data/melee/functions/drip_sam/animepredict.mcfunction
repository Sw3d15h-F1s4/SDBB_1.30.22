##
 # animepredict.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

execute if entity @s[team=Red] run summon area_effect_cloud ^ ^ ^1 {Tags:["animearrow","redteam"],NoGravity:1,Radius:0f,Duration:1200}
execute if entity @s[team=Blue] run summon area_effect_cloud ^ ^ ^1 {Tags:["animearrow","blueteam"],NoGravity:1,Radius:0f,Duration:1200}
tp @e[tag=animearrow,limit=1,sort=nearest] @s
tp @e[tag=animearrow,limit=1,sort=nearest] ~ ~1.5 ~ ~ ~
scoreboard players set @e[tag=animearrow,limit=1,sort=nearest] projectileLife 0
scoreboard players set @a[scores={ability=1..,heroType=1}] abilityTimer 700
clear @s minecraft:carrot_on_a_stick{Tags:["anime"]}
playsound entity.firework_rocket.blast master @a ~ ~ ~