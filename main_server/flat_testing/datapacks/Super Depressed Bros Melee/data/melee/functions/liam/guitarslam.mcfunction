##
 # guitarslam.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

execute at @s[team=Red] run summon minecraft:armor_stand ~2 ~ ~-2 {Motion:[1.0,0.5,-1.0],Tags:["guitarslam","gs_red"],Invisible:1}
execute at @s[team=Red] run summon minecraft:armor_stand ~2 ~ ~ {Motion:[1.0,0.5,0.0],Tags:["guitarslam","gs_red"],Invisible:1}
execute at @s[team=Red] run summon minecraft:armor_stand ~2 ~ ~2 {Motion:[1.0,0.5,1.0],Tags:["guitarslam","gs_red"],Invisible:1}
execute at @s[team=Red] run summon minecraft:armor_stand ~ ~ ~2 {Motion:[0.0,0.5,1.0],Tags:["guitarslam","gs_red"],Invisible:1}
execute at @s[team=Red] run summon minecraft:armor_stand ~-2 ~ ~2 {Motion:[-1.0,0.5,1.0],Tags:["guitarslam","gs_red"],Invisible:1}
execute at @s[team=Red] run summon minecraft:armor_stand ~-2 ~ ~ {Motion:[-1.0,0.5,0.0],Tags:["guitarslam","gs_red"],Invisible:1}
execute at @s[team=Red] run summon minecraft:armor_stand ~-2 ~ ~-2 {Motion:[-1.0,0.5,-1.0],Tags:["guitarslam","gs_red"],Invisible:1}
execute at @s[team=Red] run summon minecraft:armor_stand ~ ~ ~-2 {Motion:[0.0,0.5,-1.0],Tags:["guitarslam","gs_red"],Invisible:1}

execute at @s[team=Blue] run summon minecraft:armor_stand ~2 ~ ~-2 {Motion:[1.0,0.5,-1.0],Tags:["guitarslam","gs_blue"],Invisible:1}
execute at @s[team=Blue] run summon minecraft:armor_stand ~2 ~ ~ {Motion:[1.0,0.5,0.0],Tags:["guitarslam","gs_blue"],Invisible:1}
execute at @s[team=Blue] run summon minecraft:armor_stand ~2 ~ ~2 {Motion:[1.0,0.5,1.0],Tags:["guitarslam","gs_blue"],Invisible:1}
execute at @s[team=Blue] run summon minecraft:armor_stand ~ ~ ~2 {Motion:[0.0,0.5,1.0],Tags:["guitarslam","gs_blue"],Invisible:1}
execute at @s[team=Blue] run summon minecraft:armor_stand ~-2 ~ ~2 {Motion:[-1.0,0.5,1.0],Tags:["guitarslam","gs_blue"],Invisible:1}
execute at @s[team=Blue] run summon minecraft:armor_stand ~-2 ~ ~ {Motion:[-1.0,0.5,0.0],Tags:["guitarslam","gs_blue"],Invisible:1}
execute at @s[team=Blue] run summon minecraft:armor_stand ~-2 ~ ~-2 {Motion:[-1.0,0.5,-1.0],Tags:["guitarslam","gs_blue"],Invisible:1}
execute at @s[team=Blue] run summon minecraft:armor_stand ~ ~ ~-2 {Motion:[0.0,0.5,-1.0],Tags:["guitarslam","gs_blue"],Invisible:1}

scoreboard players set @s ability2Timer 400
clear @s minecraft:carrot_on_a_stick{Tags:["slam"]}
playsound sdbb:liam.guitar_smash master @a ~ ~ ~