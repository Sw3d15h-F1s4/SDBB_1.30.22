##
 # majak_cast.mcfunction
 # Super Sad RP Bros Melee
 #
 # Created by Sw3d15h_F1s4
##
execute if entity @s[team=Red] run summon area_effect_cloud ~ ~1 ~ {Tags:["ray","Red"],Radius:0f,Duration:1200}
execute if entity @s[team=Blue] run summon area_effect_cloud ~ ~1 ~ {Tags:["ray","Blue"],Radius:0f,Duration:1200}
tp @e[tag=ray,limit=1,sort=nearest] @s
tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
scoreboard players set @e[tag=ray,limit=1,sort=nearest] projectileLife 0
scoreboard players set @s abilityTimer 15

playsound sdbb:hibbins.cackle master @a ~ ~ ~ 3