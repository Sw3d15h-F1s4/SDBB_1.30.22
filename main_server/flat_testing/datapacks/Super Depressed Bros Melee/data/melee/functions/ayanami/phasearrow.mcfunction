#this function "phases" an arrow through blocks in the direction it is heading.
#it performs this by correcting the facing direction of an arrow in motion.
#the arrow's motion data is transferred to an armor stand's position.
#the armor stand now is teleported to face 0,0,0. This gives us a rotation vector parallel to,
#but in the oppposite direction of, the arrow's motion. Then we can just tp the arrow "backwards" by x blocks along this rotation.

summon armor_stand 0.0 0.0 0.0 {Invisible:1b,NoGravity:1b,Tags:["arrow_fastmath"]}
summon armor_stand 0.0 0.0 0.0 {Invisible:1b,NoGravity:1b,Tags:["arrow_original"]}
data modify entity @e[tag=arrow_fastmath,limit=1] Pos set from entity @s Motion
data modify entity @e[tag=arrow_original,limit=1] Rotation set from entity @s Rotation
execute as @e[tag=arrow_fastmath] at @s run tp @s ~ ~ ~ facing 0.0 0.0 0.0

data modify entity @s Rotation set from entity @e[tag=arrow_fastmath,limit=1] Rotation
execute at @s run tp @s ^ ^ ^-5
data modify entity @s Rotation set from entity @e[tag=arrow_original,limit=1] Rotation
data modify entity @s Motion set from entity @e[tag=arrow_fastmath,limit=1] Pos

kill @e[tag=arrow_original]
kill @e[tag=arrow_fastmath]

