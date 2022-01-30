###
  # sharewealth.mcfunction
  # Super Depressed Bros. Brawl!
  #
  # By Nathan
###

# AOE cloud 
execute at @s[team=Red] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.961 0.384 0.000 1",ReapplicationDelay:2,Radius:7f}
execute at @s[team=Blue] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.961 0.867 0 1",ReapplicationDelay:2,Radius:7f}

# Guard buff
execute at @s[team=Red] run effect give @e[tag=commieR,distance=..7] absorption 15 0
execute at @s[team=Blue] run effect give @e[tag=commieB,distance=..7] absorption 15 0

# No guards present

# Rations acceleration by an inital 5 seconds
execute at @s[scores={summonCount=0..,helperTimer2=101..}] run scoreboard players remove @s helperTimer2 100

execute at @s[team=Red] unless entity @s[scores={summonCount=1..}] run effect give @a[team=Red,distance=0.1..7] absorption 8 0 true
execute at @s[team=Blue] unless entity @s[scores={summonCount=1..}] run effect give @a[team=Blue,distance=0.1..7] absorption 8 0 true

# One guard present.

# Rations acceleration by an additional 5 seconds
execute at @s[scores={summonCount=1..,helperTimer2=201..}] run scoreboard players remove @s helperTimer2 100

execute at @s[team=Red,scores={summonCount=1}] run effect give @a[team=Red,distance=..7] absorption 15 0 true
#execute at @s[team=Red,scores={summonCount=1}] run give @a[team=Red,distance=..7] golden_carrot{display:{Name:'{"text":"Soviet Rations","color":"#963302"}',Lore:['{"text":"A good source of protein","color":"dark_red","italic":false}','{"text":"and patriotism! Now comes","color":"dark_red","italic":false}','{"text":"with extra eggs and leeches!","color":"dark_red","italic":false}']}} 1

execute at @s[team=Blue,scores={summonCount=1}] run effect give @a[team=Blue,distance=..7] absorption 15 0 true
#execute at @s[team=Blue,scores={summonCount=1}] run give @a[team=Blue,distance=..7] golden_carrot{display:{Name:'{"text":"Soviet Rations","color":"#963302"}',Lore:['{"text":"A good source of protein","color":"dark_red","italic":false}','{"text":"and patriotism! Now comes","color":"dark_red","italic":false}','{"text":"with extra eggs and peels!","color":"dark_red","italic":false}']}} 1

# Two guards present.
# Rations acceleration by 15 seconds
execute at @s[scores={summonCount=2,helperTimer2=301..}] run scoreboard players remove @s helperTimer2 100

execute at @s[team=Red,scores={summonCount=2}] run effect give @a[team=Red,distance=..7] absorption 15 1 true
execute at @s[team=Red,scores={summonCount=2}] run effect give @a[team=Red,distance=..7] fire_resistance 5 0 true
#execute at @s[team=Red,scores={summonCount=2}] run give @a[team=Red,distance=..7] golden_carrot{display:{Name:'{"text":"Soviet Rations","color":"#963302"}',Lore:['{"text":"A good source of protein","color":"dark_red","italic":false}','{"text":"and patriotism! Now comes","color":"dark_red","italic":false}','{"text":"with extra eggs and leeches!","color":"dark_red","italic":false}']}} 1

execute at @s[team=Blue,scores={summonCount=2}] run effect give @a[team=Blue,distance=..7] absorption 15 1 true
execute at @s[team=Blue,scores={summonCount=2}] run effect give @a[team=Blue,distance=..7] fire_resistance 5 0 true
#execute at @s[team=Blue,scores={summonCount=2}] run give @a[team=Blue,distance=..7] golden_carrot{display:{Name:'{"text":"Soviet Rations","color":"#963302"}',Lore:['{"text":"A good source of protein","color":"dark_red","italic":false}','{"text":"and patriotism! Now comes","color":"dark_red","italic":false}','{"text":"with extra eggs and peels!","color":"dark_red","italic":false}']}} 1

# Three guards present.
# Rations acceleration by 20 seconds
execute at @s[scores={summonCount=3,helperTimer2=401..}] run scoreboard players remove @s helperTimer2 100

execute at @s[team=Red,scores={summonCount=3}] run effect give @a[team=Red,distance=..7] absorption 15 1 true
execute at @s[team=Red,scores={summonCount=3}] run effect give @a[team=Red,distance=..7] fire_resistance 10 0 true
execute at @s[team=Red,scores={summonCount=3}] run effect give @a[team=Red,distance=..7] luck 3 0 false
execute at @s[team=Red,scores={summonCount=3}] run scoreboard players set @a[team=Red,distance=..7] GS_PoisonIm 60
#execute at @s[team=Red,scores={summonCount=3}] run give @a[team=Red,distance=..7] golden_carrot{display:{Name:'{"text":"Soviet Rations","color":"#963302"}',Lore:['{"text":"A good source of protein","color":"dark_red","italic":false}','{"text":"and patriotism! Now comes","color":"dark_red","italic":false}','{"text":"with extra eggs and leeches!","color":"dark_red","italic":false}']}} 2

execute at @s[team=Blue,scores={summonCount=3}] run effect give @a[team=Blue,distance=..7] absorption 15 1 true
execute at @s[team=Blue,scores={summonCount=3}] run effect give @a[team=Blue,distance=..7] fire_resistance 10 0 true
execute at @s[team=Blue,scores={summonCount=3}] run effect give @a[team=Blue,distance=..7] luck 3 0 false
execute at @s[team=Blue,scores={summonCount=3}] run scoreboard players set @a[team=Blue,distance=..7] GS_PoisonIm 60
#execute at @s[team=Blue,scores={summonCount=3}] run give @a[team=Blue,distance=..7] golden_carrot{display:{Name:'{"text":"Soviet Rations","color":"#963302"}',Lore:['{"text":"A good source of protein","color":"dark_red","italic":false}','{"text":"and patriotism! Now comes","color":"dark_red","italic":false}','{"text":"with extra eggs and peels!","color":"dark_red","italic":false}']}} 2

scoreboard players set @s abilityTimer 600
execute at @s[team=Red] if entity @a[team=Red,distance=0.1..7] run scoreboard players add @s abilityTimer 100
execute at @s[team=Blue] if entity @a[team=Blue,distance=0.1..7] run scoreboard players add @s abilityTimer 100
clear @s carrot_on_a_stick{Tags:["wealth"]}
execute at @s run playsound minecraft:block.beehive.exit master @a ~ ~ ~ 1.1 0.75