#Snow Miser's Too Much ability. Spawns in an armor stand and then continuously displays particles and blinds enemies nearby.

execute if entity @s[team=Red] run summon armor_stand ^ ^ ^3 {Tags:["toomuch"],Team:fakeRed,Invisible:1b,NoGravity:1b}
execute if entity @s[team=Blue] run summon armor_stand ^ ^ ^3 {Tags:["toomuch"],Team:fakeBlue,Invisible:1b,NoGravity:1b}

execute if entity @s[team=Red] run scoreboard players set @e[tag=toomuch,team=fakeRed] helperTimer 180
execute if entity @s[team=Blue] run scoreboard players set @e[tag=toomuch,team=fakeBlue] helperTimer 180

scoreboard players set @s ability3Timer 600
playsound sdbb:snow_miser.toomuch master @a ~ ~ ~
clear @s carrot_on_a_stick{Tags:["toomuch"]}