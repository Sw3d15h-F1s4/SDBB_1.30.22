##
 # givekit.mcfunction
 # Super Sad Bros Melee
 #
 # Created by HOTSUKE UCH YEEHAW
##

# Rip Oxford Comma 1905-2021

#returns Hotsuke's kit when abilities are up
replaceitem entity @s[scores={abilityTimer=..0},nbt=!{Inventory:[{tag:{Tags:["deadman"]}}]}] hotbar.1 carrot_on_a_stick{display:{Name:'[{"text":"Dead ","color":"white","bold":true,"italic":true},{"text":"Man\'s ","color":"aqua","bold":true,"italic":true},{"text":"Hand","color":"dark_blue","bold":true,"italic":true}]',Lore:['{"text":"Instantly finishes reloading"}','{"text":"the Big Iron"}']},CustomModelData:3010,Tags:["deadman","ability"]}
replaceitem entity @s[scores={ability2Timer=..0},nbt=!{Inventory:[{tag:{Tags:["cgslash"]}}]}] hotbar.2 carrot_on_a_stick{display:{Name:'[{"text":"CG ","color":"dark_blue","bold":true,"italic":true},{"text":"Layer ","color":"aqua","bold":true,"italic":true},{"text":"Slash","color":"white","bold":true,"italic":true}]',Lore:['{"text":"Hotsuke uses his built up speed","color":"#A207F0","italic":false}','{"text":"to break through the animated","color":"#A207F0","italic":false}','{"text":"layer to the CG layer then back.","color":"#A207F0","italic":false}','{"text":"This happens over a span of 7","color":"#A207F0","italic":false}','{"text":"blocks and acts as a teleport","color":"#A207F0","italic":false}','{"text":"allowing for him to get out of","color":"#A207F0","italic":false}','{"text":"of tight situations quickly and","color":"#A207F0","italic":false}','{"text":"he passes through the layers he","color":"#A207F0","italic":false}','{"text":"causes damage to all enemies in his path","color":"#A207F0","italic":false}','{"text":"Hunter made me write this mess","color":"white","italic":true,"strikethrough":true}']},CustomModelData:3010,Tags:["cgslash","ability"]}
replaceitem entity @s[scores={ability3Timer=..0},nbt=!{Inventory:[{tag:{Tags:["auth"]}}]}] hotbar.3 carrot_on_a_stick{display:{Name:'[{"text":"Respect ","color":"dark_blue","bold":true,"italic":true},{"text":"My ","color":"aqua","bold":true,"italic":true},{"text":"Authority","color":"white","bold":true,"italic":true}]',Lore:['{"text":"All enemies within a 6 block radius","color":"#A207F0","italic":false}','{"text":"become overburdened with respect","color":"#A207F0","italic":false}','{"text":"and admiration for Hotsuke\'s poise,","color":"#A207F0","italic":false}','{"text":"slowing them down, inflicting hunger,","color":"#A207F0","italic":false}','{"text":"and making increased jump height","color":"#A207F0","italic":false}','{"text":"and slow falling useless for a short time.","color":"#A207F0","italic":false}']},CustomModelData:3010,Tags:["auth","ability"]}

#optionally, gives all kit items.
#now has power 20 and punch 10
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:crossbow"}]}] hotbar.0 crossbow{display:{Name:'{"text":"Hotsuke\'s Big Iron","color":"dark_blue","bold":true,"italic":false}',Lore:['{"text":"This dangerous pistol has the","color":"dark_purple","italic":false}','{"text":"caliber of a sniper rifle!","color":"dark_purple","italic":false}','{"text":"An exuberant amount of patience","color":"dark_purple","italic":false}','{"text":"and skill is required in order","color":"dark_purple","italic":false}','[{"text":"to master the ","color":"dark_purple","italic":false},{"text":"quick draw.","bold":true}]','{"text":"Reloads faster when standing still."}']},HideFlags:63,Unbreakable:1b,CustomModelData:3001,Enchantments:[{id:"minecraft:power",lvl:20s},{id:"minecraft:punch",lvl:10s},{id:"minecraft:piercing",lvl:20}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I; 0, 442897, 0, 578621],Slot:"mainhand"}]}
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:cooked_beef"}]}] hotbar.4 cooked_beef 64
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;1001,203,4324,534],Slot:"head"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-8,Operation:0,UUID:[I;12324,34234,6565,234234],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:8,Operation:0,UUID:[I;1507818828,318390731,-1838950901,-1311594062],Slot:"head"}]}


#give arrow on kill. change the method to ending his reload timer.
scoreboard players set @s[scores={hotsukeKills=1}] helperTimer 1

# Give arrow on timer. Reloads twice as fast if standing still.
scoreboard players set @s[scores={helperTimer=..-1},nbt=!{Inventory:[{id:"minecraft:tipped_arrow"}]}] helperTimer 900
replaceitem entity @s[scores={helperTimer=0..10},nbt=!{Inventory:[{id:"minecraft:tipped_arrow"}]}] hotbar.7 tipped_arrow{display:{Name:'[{"text":"150mm","color":"dark_blue","bold":true,"italic":false},{"text":" ","color":"white"},{"text":"Caliber","color":"aqua"},{"text":" Round","color":"white"}]',Lore:['{"text":"DooM-style Fighting:","color":"light_purple","italic":false}','[{"text":"Kill your enemies to replenish ammo.","color":"light_purple","italic":false}]','{"text":"\\"Who needs aim hacks and extra","color":"dark_purple","italic":true}','{"text":"ammo when you have raw talent?\\"","color":"dark_purple","italic":true}']},HideFlags:125,CustomPotionColor:2900446,CustomModelData:3001}

#check if player is moving. motion tag doesnt work ask me why. store current position, check against previous, update previous then run again.
#movement check needs to happen on *off* ticks, don't ask me why.
execute as @s[tag=!move_check] run function melee:hotsuke/movecheck
execute store result bossbar hotsuke_reload value run scoreboard players get @s helperTimer
bossbar set hotsuke_reload players @s[scores={helperTimer=0..}]

# Respect Jump Boost removal
scoreboard players remove @a[scores={HS_rsptJBCancel=0..}] HS_rsptJBCancel 1
effect clear @a[scores={HS_rsptJBCancel=90..100}] levitation
effect clear @a[scores={HS_rsptJBCancel=0..}] jump_boost
effect clear @a[scores={HS_rsptJBCancel=0..}] slow_falling

#ult arrow
execute at @e[type=minecraft:spectral_arrow] unless entity @a[scores={heroType=3},distance=0..5] run summon minecraft:lightning_bolt ~ ~ ~ {damage:5.0d}
kill @e[type=minecraft:spectral_arrow,nbt={inGround:1b}]
