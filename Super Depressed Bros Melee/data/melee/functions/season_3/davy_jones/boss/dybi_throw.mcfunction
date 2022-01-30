##
 # dybi_throw.mcfunction  (aka YAAAH YEEET)
 # Super Depressed Bros. Brawl
 # made funny again by Sw3d15h_F1s4
##

#step 4: YEET!

#step 4a: prepare for takeoff! Give back gravity, and start the throw process.(fake)
execute if entity @a[team=Blue,tag=dyfd_victim] run data modify entity @e[tag=dyfd_victim_stand_red,limit=1,sort=nearest] NoGravity set value 0b
execute if entity @a[team=Red,tag=dyfd_victim] run data modify entity @e[tag=dyfd_victim_stand_blue,limit=1,sort=nearest] NoGravity set value 0b

#step 7 (time travel): deal damage
#execute as @a[team=Blue,tag=dyfd_victim] run effect give @s resistance 1 0 true
execute as @a[team=Blue,tag=dyfd_victim] run effect give @s instant_damage 1 0 true
#execute as @a[team=Red,tag=dyfd_victim] run effect give @s resistance 1 0 true
execute as @a[team=Red,tag=dyfd_victim] run effect give @s instant_damage 1 0 true

schedule function melee:season_3/davy_jones/boss/dybi_liftoff 1t