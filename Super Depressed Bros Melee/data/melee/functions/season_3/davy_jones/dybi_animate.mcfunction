##
 # dybi_animate.mcfunction  (aka YAAAH YEEET)
 # Super Depressed Bros. Brawl
 # made funny again by Sw3d15h_F1s4
##

#the purpose of this function is to show the player "drawn in" to the grab. it will look funny.

#END GOAL: ^-0.3, ^ ^0.5 (looks like u grab their neck), get there in maybe just 20 ticks. 60 steps might be a bit too granular.
#actual numbers are completely arbitrary, nathan.

#red team animate
execute at @a[team=Red,scores={DJ_FearDeath=60}] run tp @e[tag=dyfd_victim_stand_red] ^ ^1 ^3
execute at @a[team=Red,scores={DJ_FearDeath=58}] run tp @e[tag=dyfd_victim_stand_red] ^ ^1 ^2.75
execute at @a[team=Red,scores={DJ_FearDeath=59}] run tp @e[tag=dyfd_victim_stand_red] ^ ^1 ^2.875
execute at @a[team=Red,scores={DJ_FearDeath=57}] run tp @e[tag=dyfd_victim_stand_red] ^ ^1 ^2.625
execute at @a[team=Red,scores={DJ_FearDeath=56}] run tp @e[tag=dyfd_victim_stand_red] ^-0.1 ^1 ^2.5
execute at @a[team=Red,scores={DJ_FearDeath=55}] run tp @e[tag=dyfd_victim_stand_red] ^-0.1 ^1 ^2.375
execute at @a[team=Red,scores={DJ_FearDeath=54}] run tp @e[tag=dyfd_victim_stand_red] ^-0.125 ^1 ^2.25
execute at @a[team=Red,scores={DJ_FearDeath=53}] run tp @e[tag=dyfd_victim_stand_red] ^-0.125 ^1 ^2.125
execute at @a[team=Red,scores={DJ_FearDeath=52}] run tp @e[tag=dyfd_victim_stand_red] ^-0.15 ^1 ^2
execute at @a[team=Red,scores={DJ_FearDeath=51}] run tp @e[tag=dyfd_victim_stand_red] ^-0.15 ^1 ^1.875
execute at @a[team=Red,scores={DJ_FearDeath=50}] run tp @e[tag=dyfd_victim_stand_red] ^-0.175 ^1 ^1.75
execute at @a[team=Red,scores={DJ_FearDeath=49}] run tp @e[tag=dyfd_victim_stand_red] ^-0.2 ^1 ^1.625
execute at @a[team=Red,scores={DJ_FearDeath=48}] run tp @e[tag=dyfd_victim_stand_red] ^-0.225 ^1 ^1.5
execute at @a[team=Red,scores={DJ_FearDeath=47}] run tp @e[tag=dyfd_victim_stand_red] ^-0.25 ^1 ^1.375
execute at @a[team=Red,scores={DJ_FearDeath=46}] run tp @e[tag=dyfd_victim_stand_red] ^-0.25 ^1 ^1.25
execute at @a[team=Red,scores={DJ_FearDeath=45}] run tp @e[tag=dyfd_victim_stand_red] ^-0.275 ^1 ^1.125
execute at @a[team=Red,scores={DJ_FearDeath=44}] run tp @e[tag=dyfd_victim_stand_red] ^-0.275 ^1 ^1
execute at @a[team=Red,scores={DJ_FearDeath=43}] run tp @e[tag=dyfd_victim_stand_red] ^-0.275 ^1 ^0.875
execute at @a[team=Red,scores={DJ_FearDeath=42}] run tp @e[tag=dyfd_victim_stand_red] ^-0.3 ^1 ^0.75
execute at @a[team=Red,scores={DJ_FearDeath=41}] run tp @e[tag=dyfd_victim_stand_red] ^-0.3 ^1 ^0.625
execute at @a[team=Red,scores={DJ_FearDeath=0..40}] run tp @e[tag=dyfd_victim_stand_red] ^-0.3 ^1 ^0.5

#blue team animate
execute at @a[team=Blue,scores={DJ_FearDeath=60}] run tp @e[tag=dyfd_victim_stand_blue] ^ ^1 ^3
execute at @a[team=Blue,scores={DJ_FearDeath=59}] run tp @e[tag=dyfd_victim_stand_blue] ^ ^1 ^2.875
execute at @a[team=Blue,scores={DJ_FearDeath=58}] run tp @e[tag=dyfd_victim_stand_blue] ^ ^1 ^2.75
execute at @a[team=Blue,scores={DJ_FearDeath=57}] run tp @e[tag=dyfd_victim_stand_blue] ^ ^1 ^2.625
execute at @a[team=Blue,scores={DJ_FearDeath=56}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.1 ^1 ^2.5
execute at @a[team=Blue,scores={DJ_FearDeath=55}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.1 ^1 ^2.375
execute at @a[team=Blue,scores={DJ_FearDeath=54}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.125 ^1 ^2.25
execute at @a[team=Blue,scores={DJ_FearDeath=53}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.125 ^1 ^2.125
execute at @a[team=Blue,scores={DJ_FearDeath=52}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.15 ^1 ^2
execute at @a[team=Blue,scores={DJ_FearDeath=51}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.15 ^1 ^1.875
execute at @a[team=Blue,scores={DJ_FearDeath=50}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.175 ^1 ^1.75
execute at @a[team=Blue,scores={DJ_FearDeath=49}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.2 ^1 ^1.625
execute at @a[team=Blue,scores={DJ_FearDeath=48}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.225 ^1 ^1.5
execute at @a[team=Blue,scores={DJ_FearDeath=47}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.25 ^1 ^1.375
execute at @a[team=Blue,scores={DJ_FearDeath=46}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.25 ^1 ^1.25
execute at @a[team=Blue,scores={DJ_FearDeath=45}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.275 ^1 ^1.125
execute at @a[team=Blue,scores={DJ_FearDeath=44}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.275 ^1 ^1
execute at @a[team=Blue,scores={DJ_FearDeath=43}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.275 ^1 ^0.875
execute at @a[team=Blue,scores={DJ_FearDeath=42}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.3 ^1 ^0.75
execute at @a[team=Blue,scores={DJ_FearDeath=41}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.3 ^1 ^0.625
execute at @a[team=Blue,scores={DJ_FearDeath=0..40}] run tp @e[tag=dyfd_victim_stand_blue] ^-0.3 ^1 ^0.5

execute if entity @e[tag=dyfd_victim_stand_red] run tp @a[tag=dyfd_victim,team=!Red] @e[tag=dyfd_victim_stand_red,limit=1,sort=nearest]
execute if entity @e[tag=dyfd_victim_stand_blue] run tp @a[tag=dyfd_victim,team=!Blue] @e[tag=dyfd_victim_stand_blue,limit=1,sort=nearest]

#regardless, decrement counter by 1 and prepare next "frame"
scoreboard players remove @a[scores={DJ_FearDeath=0..}] DJ_FearDeath 1
execute unless entity @s[scores={DJ_FearDeath=..-1}] run schedule function melee:season_3/davy_jones/dybi_animate 1t