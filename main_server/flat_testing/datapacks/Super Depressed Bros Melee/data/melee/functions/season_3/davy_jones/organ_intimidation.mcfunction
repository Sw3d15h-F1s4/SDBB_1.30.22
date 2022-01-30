####
   # organ_intimidation.mcfunction
   # Super Depressed Bros. Brawl
   # Created by Nathan
####   

# normal
execute at @s[scores={gameState=..1},team=Red] run effect give @a[distance=..5,team=!Red] minecraft:nausea 12 2 true
execute at @s[scores={gameState=..1},team=Blue] run effect give @a[distance=..5,team=!Blue] minecraft:nausea 12 2 true

execute at @s[scores={gameState=..1},team=Red] run effect give @a[distance=..5,team=!Red] minecraft:slowness 10 0 true
execute at @s[scores={gameState=..1},team=Blue] run effect give @a[distance=..5,team=!Blue] minecraft:slowness 10 0 true

execute at @s[scores={gameState=..1},team=Red] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.929 0.549 0.216 3",Radius:5f}
execute at @s[scores={gameState=..1},team=Blue] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.929 0.784 0.000 3",Radius:5f}

# boss
execute at @s[scores={gameState=2},team=Red] run effect give @a[distance=..7,team=!Red] minecraft:nausea 12 2 true
execute at @s[scores={gameState=2},team=Blue] run effect give @a[distance=..7,team=!Blue] minecraft:nausea 12 2 true

execute at @s[scores={gameState=2},team=Red] run effect give @a[distance=..7,team=!Red] minecraft:slowness 10 1 true
execute at @s[scores={gameState=2},team=Blue] run effect give @a[distance=..7,team=!Blue] minecraft:slowness 10 1 true

execute at @s[scores={gameState=2},team=Red] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.929 0.549 0.216 3",Radius:7f}
execute at @s[scores={gameState=2},team=Blue] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.929 0.784 0.000 3",Radius:7f}
execute at @s[scores={gameState=2}] run summon area_effect_cloud ~ ~ ~ {Particle:"campfire_cosy_smoke",Radius:2f}

# Organ music here
playsound sdbb:davy_jones.organ_int master @a ~ ~ ~

clear @s carrot_on_a_stick{Tags:["organ_i"]}
scoreboard players set @s ability2Timer 500