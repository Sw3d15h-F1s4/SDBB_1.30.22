
tellraw @s[team=Red] [{"text":"[","color":"blue","italic":false},{"text":"Otacon","color":"red"},{"text":"]","color":"blue"},{"text":" Rei! Your next shot is contaminated with","color":"white"},{"text":" goth energy!","color":"white","bold":true,"italic":false}]
tellraw @s[team=Blue] [{"text":"[","color":"red","italic":false},{"text":"Otacon","color":"blue"},{"text":"]","color":"red"},{"text":" Rei! Your next shot is contaminated with","color":"white"},{"text":" goth energy!","color":"white","bold":true,"italic":false}]
tag @s add goth_asuka
execute if entity @s[team=Red] run summon armor_stand 0 0 0 {Invisible:1b,NoGravity:1b,Tags:["Red","Goth"]}
execute if entity @s[team=Blue] run summon armor_stand 0 0 0 {Invisible:1b,NoGravity:1b,Tags:["Blue","Goth"]}
execute if entity @s[team=Red] run scoreboard players set @e[tag=Goth,tag=Red] helperTimer 160
execute if entity @s[team=Blue] run scoreboard players set @e[tag=Goth,tag=Blue] helperTimer 160

clear @s carrot_on_a_stick{Tags:["goth_asuka"]}
playsound sdbb:rei_ayanami.goth_asuka master @a ~ ~ ~
scoreboard players set @s abilityTimer 400
scoreboard players set @s helperTimer2 300
