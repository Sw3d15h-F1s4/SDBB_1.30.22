##
 # cgslash.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

execute if block ^ ^1 ^7 #melee:all_air run clear @s carrot_on_a_stick{Tags:["cgslash"]}
execute if block ^ ^1 ^7 #melee:all_air run scoreboard players set @s ability2Timer 400
execute if block ^ ^1 ^7 #melee:all_air run scoreboard players set @s projectileLife 0
execute if block ^ ^1 ^7 #melee:all_air at @s positioned ~ ~1.5 ~ run function melee:hotsuke/cgloop
execute if block ^ ^1 ^7 #melee:all_air run tp @s ^ ^1 ^7


execute if block ^ ^1 ^7 #melee:all_air run playsound entity.evoker.cast_spell master @a ~ ~ ~ 3