# GET OVER HERE!!!!!!!!!

# Too bad, it's not balanced to have rockets while chaining.
# This isn't Double Dutch 2. To compensate, the rockets come back a bit faster.
execute if entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow"}]}] run scoreboard players set @s helperTimer 61
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:tipped_arrow"}]},scores={helperTimer=..60}] run scoreboard players set @s helperTimer 61
clear @s tipped_arrow

execute if entity @s[team=Red] run summon area_effect_cloud ~ ~1 ~ {Tags:["erased_spear","Red"],Radius:0f,Duration:1200}
execute if entity @s[team=Blue] run summon area_effect_cloud ~ ~1 ~ {Tags:["erased_spear","Blue"],Radius:0f,Duration:1200}
tp @e[tag=erased_spear,limit=1,sort=nearest] @s
tp @e[tag=erased_spear,limit=1,sort=nearest] ~ ~1.5 ~
scoreboard players set @e[tag=erased_spear,limit=1,sort=nearest] projectileLife 0

tag @s[team=Red] add SpearGrab_UserR
tag @s[team=Blue] add SpearGrab_UserB

# Summons thing that puts Erased in place.
execute at @s[tag=SpearGrab_UserR] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:0b,NoBasePlate:1b,Tags:["SpearGrab_UserTeleR"]}
execute at @s[tag=SpearGrab_UserB] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:0b,NoBasePlate:1b,Tags:["SpearGrab_UserTeleB"]}

# The armor stand faces the player's direction
tp @e[tag=SpearGrab_UserTeleR,limit=1,sort=nearest] @s[team=Red]
tp @e[tag=SpearGrab_UserTeleB,limit=1,sort=nearest] @s[team=Blue]

# Sets TOL for the teleportation thing
execute at @s[tag=SpearGrab_UserR] run scoreboard players set @e[tag=SpearGrab_UserTeleR] projectileLife 0
execute at @s[tag=SpearGrab_UserB] run scoreboard players set @e[tag=SpearGrab_UserTeleB] projectileLife 0

scoreboard players set @s ability2Timer 100
clear @s carrot_on_a_stick{Tags:["scorpion_spear"]}
playsound sdbb:hibbins.cackle master @a ~ ~ ~ 3