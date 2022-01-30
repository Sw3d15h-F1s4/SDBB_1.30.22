##
 # givekit.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4/Grim death time fix by Nathan
##

#returns reaper's kit when his abilities are up

replaceitem entity @s[scores={abilityTimer=..0},nbt=!{Inventory:[{tag:{Tags:["retreat"]}}]}] hotbar.1 carrot_on_a_stick{display:{Name:'[{"text":"Dubious ","color":"white","bold":true,"italic":false},{"text":"Retreat","color":"black","bold":true,"italic":false}]',Lore:['{"text":"Reaper uses the gravity of","color":"dark_red","italic":false}','{"text":"his massive ego to bring","color":"dark_red","italic":false}','{"text":"all players, including teammates,","color":"dark_red","italic":false}','{"text":"towards him.","color":"dark_red","italic":false}']},CustomModelData:7010,Tags:["retreat","ability"]}
replaceitem entity @s[scores={ability2Timer=..0},nbt=!{Inventory:[{tag:{Tags:["speed_d"]}}]}] hotbar.2 carrot_on_a_stick{display:{Name:'[{"text":"Speed ","color":"white","bold":true,"italic":false},{"text":"Demon","color":"black","bold":true,"italic":false}]',Lore:['{"text":"Reaper uses the gravity of","color":"dark_red","italic":false}','{"text":"his massive ego to bring","color":"dark_red","italic":false}','{"text":"all players, including teammates,","color":"dark_red","italic":false}','{"text":"towards him.","color":"dark_red","italic":false}']},CustomModelData:7010,Tags:["speed_d","ability"]}
replaceitem entity @s[scores={ability3Timer=..0},nbt=!{Inventory:[{tag:{Tags:["blazing_trails"]}}]}] hotbar.3 carrot_on_a_stick{display:{Name:'[{"text":"Blazing ","color":"yellow","bold":true,"italic":false},{"text":"Trails","color":"black","bold":true,"italic":false}]',Lore:['{"text":"Reaper uses the gravity of","color":"dark_red","italic":false}','{"text":"his massive ego to bring","color":"dark_red","italic":false}','{"text":"all players, including teammates,","color":"dark_red","italic":false}','{"text":"towards him.","color":"dark_red","italic":false}']},CustomModelData:7010,Tags:["blazing_trails","ability"]}


replaceitem entity @s[scores={ultTimer=..0},nbt=!{Inventory:[{tag:{Tags:["saiyan"]}}]}] hotbar.8 carrot_on_a_stick{display:{Name:'[{"text":"Super ","color":"white","bold":true,"italic":false},{"text":"Saiyan","color":"yellow","bold":true,"italic":false}]',Lore:['{"text":"Reaper is finally able to","color":"yellow","italic":false}','{"text":"put his screaming and squating","color":"yellow","italic":false}','{"text":"practice to good use by supercharging","color":"yellow","italic":false}','{"text":"his health and speed for 7 seconds.","color":"yellow","italic":false}']},CustomModelData:700020,Tags:["saiyan"]}

#optionally, gives all kit items.
replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:iron_hoe"}]}] hotbar.0 iron_hoe{display:{Name:'{"text":"Scythe of The Fallen One","color":"#3D3D3D","bold":true,"italic":false}',Lore:['{"text":"A powerful scythe found","color":"dark_purple","italic":false}','{"text":"by a lost Wither Skeleton.","color":"dark_purple","italic":false}']},HideFlags:45,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6.5,Operation:0,UUID:[I; 0, 382087, 0, 915416],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.25,Operation:1,UUID:[I; 0, 421281, 0, 616594],Slot:"mainhand"}]}

#replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:cooked_beef"}]}] hotbar.4 cooked_beef 64

replaceitem entity @s[scores={gameState=1},nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] armor.head oak_button{HideFlags:31,Enchantments:[{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:11,Operation:0,UUID:[I; 0, 319316, 0, 711835],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:7,Operation:0,UUID:[I; 0, 688372, 0, 738919],Slot:"head"}]}
