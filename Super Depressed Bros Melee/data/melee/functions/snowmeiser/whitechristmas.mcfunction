#white christmas. AOE slowness around a fixed point.

execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["whitechristmas"],Team:fakeRed}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["whitechristmas"],Team:fakeBlue}

execute if entity @s[team=Red] run scoreboard players set @e[tag=whitechristmas,team=fakeRed] helperTimer 200
execute if entity @s[team=Blue] run scoreboard players set @e[tag=whitechristmas,team=fakeBlue] helperTimer 200

scoreboard players set @s ultTimer 24000
playsound sdbb:snow_miser.whitechristmas master @a ~ ~ ~ 
clear @s carrot_on_a_stick{Tags:["whitechristmas"]}