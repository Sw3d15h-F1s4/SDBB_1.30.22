##
 # majak_cast.mcfunction
 # Garthorb cast!!!
 #
 # Created by NATHAN
##

execute at @s[team=Red] run summon area_effect_cloud ~ ~1 ~ {Tags:["gulag_ray","Red"],Radius:0f,Duration:1200}
execute at @s[team=Blue] run summon area_effect_cloud ~ ~1 ~ {Tags:["gulag_ray","Blue"],Radius:0f,Duration:1200}

#tp @e[tag=garthorb_gulag_ray,limit=1,sort=nearest] ~ ~ ~ facing entity @e[tag=estate_trap1,limit=1]

tp @e[tag=gulag_ray,tag=Red,limit=1,sort=nearest] @s[team=Red]
tp @e[tag=gulag_ray,tag=Red,limit=1,sort=nearest] ~ ~1.5 ~

tp @e[tag=gulag_ray,tag=Blue,limit=1,sort=nearest] @s[team=Blue]
tp @e[tag=gulag_ray,tag=Blue,limit=1,sort=nearest] ~ ~1.5 ~

execute if entity @s[team=Red] run scoreboard players set @e[tag=gulag_ray,tag=Red,limit=1,sort=nearest] projectileLife 0
execute if entity @s[team=Blue] run scoreboard players set @e[tag=gulag_ray,tag=Blue,limit=1,sort=nearest] projectileLife 0

execute if entity @s[team=Red] run scoreboard players set @e[tag=gulag_ray,tag=Red,limit=1,sort=nearest] helperTimer 0
execute if entity @s[team=Blue] run scoreboard players set @e[tag=gulag_ray,tag=Blue,limit=1,sort=nearest] helperTimer 0

scoreboard players set @s ultTimer 3000
clear @s carrot_on_a_stick{Tags:["gulag"]}

#playsound sdbb:hibbins.cackle master @a ~ ~ ~ 3