playsound sdbb:erased.double_dutch master @a ~ ~ ~ 1 1 0.1
#clear @s tipped_arrow
summon armor_stand ^ ^2 ^2 {Invisible:1b,Tags:["doubledutch"],NoGravity:1b}
data modify entity @e[tag=doubledutch,limit=1] Rotation set from entity @p[distance=1..5] Rotation

execute if entity @s[team=Blue] at @s run tag @a[distance=..3,team=!Blue,limit=1] add ddvictim
execute if entity @s[team=Red] at @s run tag @a[distance=..3,team=!Red,limit=1] add ddvictim

execute if entity @s[team=Blue] at @s run tp @a[distance=..3,team=!Blue,tag=ddvictim,limit=1] @e[tag=doubledutch,limit=1,sort=nearest]
execute if entity @s[team=Red] at @s run tp @a[distance=..3,team=!Red,tag=ddvictim,limit=1] @e[tag=doubledutch,limit=1,sort=nearest]

summon armor_stand ~ ~0.5 ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["doubledutchplayer"]}
data modify entity @e[tag=doubledutchplayer,limit=1] Rotation set from entity @s Rotation
tp @s @e[tag=doubledutchplayer,limit=1,sort=nearest]
tag @s add ddplayer
scoreboard players set @s ddCooldown 40

schedule function melee:erased/double_dutch/doubledutchdamage 9t
schedule function melee:erased/double_dutch/doubledutchdamage2 20t
schedule function melee:erased/double_dutch/doubledutchfly 26t
schedule function melee:erased/double_dutch/doubledutchcleanup 35t

