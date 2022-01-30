##
 # ballroomblitz.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

execute at @s run summon lightning_bolt ~ ~ ~
kill @s
scoreboard players set @a[scores={heroType=11},nbt=!{Inventory:[{id:"minecraft:lingering_potion"}]}] ability3Timer 200
playsound sdbb:liam.ballroom_blitz master @a ~ ~ ~