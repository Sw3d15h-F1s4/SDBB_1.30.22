##
 # shotgun.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

# "Hey Nathan, what do you got down there??"
# Uhh.. A smoothie.

tag @e[type=arrow,nbt={Color:9555093}] add Erased_Rocket
kill @e[tag=Erased_Rocket,scores={projectileLife=50..}]

#scoreboard players add @e[tag=Erased_Rocket] projectileLife 1
scoreboard players add @e[tag=Erased_Boom] projectileLife 1

execute as @e[tag=Erased_Rocket] at @s run playsound block.lava.extinguish ambient @a ~ ~ ~ 0.6 0 0 
kill @e[tag=Erased_Rocket,nbt={inGround:1b}]
kill @e[tag=Erased_Rocket,scores={projectileLife=200..}]

execute as @e[tag=Erased_Rocket] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["Erased_Boom"]}
execute if entity @s[team=Red] as @e[tag=Erased_Boom] at @s run particle dust 1 0.89 0.89 2 ~ ~ ~ .1 .1 .1 .01 20 force
execute if entity @s[team=Blue] as @e[tag=Erased_Boom] at @s run particle dust 0.855 0.863 1 2 ~ ~ ~ .1 .1 .1 .01 20 force
execute as @e[tag=Erased_Boom] at @s run particle cloud ~ ~ ~ .15 .15 .15 .02 5 force
execute as @e[tag=Erased_Boom] at @s run particle smoke ~ ~ ~ .25 .25 .25 .01 25 force
kill @e[tag=Erased_Boom,scores={projectileLife=3..}]

execute as @e[tag=Erased_Boom] at @s unless entity @e[tag=Erased_Rocket,distance=..10] run tag @s add Erased_BoomHit
execute as @e[tag=Erased_BoomHit] at @s run particle cloud ~ ~ ~ 2 2 2 .05 999 force
execute as @e[tag=Erased_BoomHit] at @s run particle explosion_emitter ~ ~ ~ 2 2 2 0 1 force
execute as @e[tag=Erased_BoomHit] at @s run summon creeper ~ ~ ~ {CustomName:"{\"text\":\"a rocket\"}",ExplosionRadius:1,Fuse:0,NoAI:1}
kill @e[tag=Erased_BoomHit]