tp @a -9 3 6

# Gives key, and resets key value
give @a[scores={keyGive=1}] tripwire_hook{display:{Name:'{"text":"Key","color":"gold","bold":true}',Lore:['{"text":"Use at the","color":"dark_green"}','{"text":"Loot Wheel","color":"dark_green"}']}} 1
scoreboard players reset @a[scores={keyGive=1}] keyGive

team leave @a
gamemode adventure @a