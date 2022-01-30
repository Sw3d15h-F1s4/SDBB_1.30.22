##
 # majak_cast.mcfunction
 # Garthorb cast!!!
 #
 # Created by NATHAN
##

summon area_effect_cloud ~ ~1 ~ {Tags:["garthorb_ray"],Radius:0f,Duration:1200}
#tp @e[tag=garthorb_ray,limit=1,sort=nearest] ~ ~ ~ facing entity @e[tag=estate_trap1,limit=1]

tp @e[tag=garthorb_ray,limit=1,sort=nearest] @s
tp @e[tag=garthorb_ray,limit=1,sort=nearest] ~ ~1.5 ~

scoreboard players set @e[tag=garthorb_ray,limit=1,sort=nearest] projectileLife 0
#scoreboard players set @s helperTimer 40

playsound sdbb:hibbins.cackle master @a ~ ~ ~ 3