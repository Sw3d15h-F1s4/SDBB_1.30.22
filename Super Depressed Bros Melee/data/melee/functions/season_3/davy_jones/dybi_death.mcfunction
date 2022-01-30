##
 # dybi_death.mcfunction  (aka YAAAH YEEET)
 # Super Depressed Bros. Brawl
 # made funny again by Sw3d15h_F1s4
##

# force kill check
execute as @s[team=Red] run kill @e[tag=dyfd_victim_stand_red]
execute as @s[team=Blue] run kill @e[tag=dyfd_victim_stand_blue]
execute as @s[team=Red] run kill @e[tag=dyfd_user_stand_red]
execute as @s[team=Blue] run kill @e[tag=dyfd_user_stand_blue]

#step 1: identify the problems, namely your opponents and the problem between your ears
tag @s add dyfd_user
execute if entity @s[team=Red] run tag @p[team=!Red,distance=..3] add dyfd_victim
execute if entity @s[team=Blue] run tag @p[team=!Blue,distance=..3] add dyfd_victim

execute if entity @s[team=Red] at @a[tag=dyfd_victim] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["dyfd_victim_stand","dyfd_victim_stand_red"],Invisible:1b,CustomNameVisible:0b}
execute if entity @s[team=Blue] at @a[tag=dyfd_victim] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["dyfd_victim_stand","dyfd_victim_stand_blue"],Invisible:1b,CustomNameVisible:0b}

#step 2: prepare the "yaaaah." No attacks allowed, no abilities, just pure "get fucked" action.

#step 2a: prevent davy from cheese

execute if entity @a[tag=dyfd_victim] run effect give @s weakness 3 255 true
execute if entity @a[tag=dyfd_victim] run effect give @s resistance 3 255 true
execute if entity @a[tag=dyfd_victim] run scoreboard players add @s ability2Timer 60
execute if entity @a[tag=dyfd_victim] run scoreboard players add @s ability3Timer 60

#step 2b: prevent oppoent from cheese
effect give @a[tag=dyfd_victim] weakness 3 255 true 
scoreboard players add @a[tag=dyfd_victim] abilityTimer 60
scoreboard players add @a[tag=dyfd_victim] ability2Timer 60
scoreboard players add @a[tag=dyfd_victim] ability3Timer 60
scoreboard players add @a[tag=dyfd_victim] helperTimer 60
scoreboard players add @a[tag=dyfd_victim] helperTimer2 60
#scoreboard players add @a[scores={heroType=14},tag=dyfd_victim] abilityTimer 25
clear @a[tag=dyfd_victim] arrow
clear @a[tag=dyfd_victim] tipped_arrow
#step 2c: get ready for the yaah (tp enemy player and start the sound effect)
execute at @s[team=Blue] run tp @a[tag=dyfd_victim_stand_blue] ^ ^ ^3
execute at @s[team=Red] run tp @a[tag=dyfd_victim_stand_red] ^ ^ ^3
#step 2d: do the basic ability things
execute if entity @a[tag=dyfd_victim] run playsound sdbb:davy_jones.fear_death master @a ~ ~ ~ 1 1
execute if entity @a[tag=dyfd_victim] run scoreboard players set @s DJ_FearDeath 60
execute if entity @a[tag=dyfd_victim] run scoreboard players set @s abilityTimer 760
execute if entity @a[tag=dyfd_victim] run clear @s carrot_on_a_stick{Tags:["believe_death"]}
execute if entity @a[tag=dyfd_victim] if entity @s[team=Red] run summon armor_stand ~ ~ ~ {Tags:["dyfd_user_stand_red"],Invisible:1b}
execute if entity @a[tag=dyfd_victim] if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {Tags:["dyfd_user_stand_blue"],Invisible:1b}

execute unless entity @a[tag=dyfd_victim] run tag @s remove dyfd_user

#step 3: YAAAH
execute if entity @a[tag=dyfd_victim] run function melee:season_3/davy_jones/dybi_animate

#step 4: YEEEEEET
execute if entity @a[tag=dyfd_victim] run schedule function melee:season_3/davy_jones/dybi_throw 60t
execute if entity @a[tag=dyfd_victim] if entity @s[scores={gameState=2}] run schedule function melee:season_3/davy_jones/boss/dybi_throw 60t