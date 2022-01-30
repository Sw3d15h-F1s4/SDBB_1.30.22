#AT Field by Sw3d15h_F1s4
#Creates invisible glowing wall of shulkers (need to retexture innards), 5 wide by 3 tall 3 blocks in front of Rei. Faces perpendicular to Rei.

#prepare root armor stand. root stand is our reference point for the wall and his rotation is our normal vector.
#this armor stand is 3 blocks away from Rei and faces towards her horizontally. We can decide if the wall should "snap" to cardinal directions or not.
execute if entity @s[team=Red] at @s rotated ~ 0 run summon armor_stand ^ ^ ^3 {Tags:["at_root","Red","at_wall"],Invisible:1b,NoGravity:1b}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run tp @e[tag=at_root,tag=Red,limit=1,sort=nearest] ~ ~ ~ facing entity @s[team=Red]
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run tp @e[tag=at_root,limit=1,sort=nearest] ^-2 ^ ^ ~ 0
execute if entity @s[team=Red] run scoreboard players set @e[tag=at_root,tag=Red] helperTimer 200

execute if entity @s[team=Blue] at @s rotated ~ 0 run summon armor_stand ^ ^ ^3 {Tags:["at_root","Blue","at_wall"],Invisible:1b,NoGravity:1b}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run tp @e[tag=at_root,tag=Blue,limit=1,sort=nearest] ~ ~ ~ facing entity @s[team=Blue]
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run tp @e[tag=at_root,limit=1,sort=nearest] ^-2 ^ ^ ~ 0
execute if entity @s[team=Blue] run scoreboard players set @e[tag=at_root,tag=Blue] helperTimer 200

#Blue AT field
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^0 ^0 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^0 ^1 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^0 ^2 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^1 ^0 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^1 ^1 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^1 ^2 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^2 ^0 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^2 ^1 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^2 ^2 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^3 ^0 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^3 ^1 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^3 ^2 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^4 ^0 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^4 ^1 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] at @e[tag=at_root,tag=Blue] run summon armor_stand ^4 ^2 ^0 {Tags:["Blue","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Blue","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}

execute as @e[tag=at_wall,type=shulker,tag=Blue] at @s run tp @s ~ ~ ~ facing entity @a[team=Blue,limit=1,sort=nearest]

#Red AT field
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^0 ^0 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeBlue,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^0 ^1 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^0 ^2 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^1 ^0 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^1 ^1 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^1 ^2 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^2 ^0 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^2 ^1 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^2 ^2 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^3 ^0 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^3 ^1 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^3 ^2 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^4 ^0 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^4 ^1 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}
execute if entity @s[team=Red] at @e[tag=at_root,tag=Red] run summon armor_stand ^4 ^2 ^0 {Tags:["Red","at_wall"],Invisible:1b,NoGravity:1b,Small:1b,Passengers:[{id:"minecraft:shulker",Team:fakeRed,Tags:["Red","at_wall"],Silent:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]}

execute as @e[tag=at_wall,type=shulker,tag=Red] at @s run tp @s ~ ~ ~ facing entity @a[team=Red,limit=1,sort=nearest]

#clear ability set cooldown
clear @s carrot_on_a_stick{Tags:["at_field"]}
playsound sdbb:rei_ayanami.at_field master @a ~ ~ ~
scoreboard players set @s ability3Timer 800