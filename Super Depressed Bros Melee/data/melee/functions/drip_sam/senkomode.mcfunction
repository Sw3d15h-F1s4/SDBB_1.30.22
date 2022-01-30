##
 # senkomode.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

scoreboard players set @s ability3Timer 450
replaceitem entity @s hotbar.3 golden_sword{display:{Name:'[{"text":"Nerd\'s ","color":"gold","bold":true,"italic":true},{"text":"Wakizashi","color":"white","bold":true,"italic":true}]',Lore:['{"text":"Only granted to the most","color":"yellow","italic":false}','{"text":"capable of the Nerd Guild.","color":"yellow","bold":false,"italic":false}','{"text":"\\"Capable\\" is the key word here.","color":"yellow","italic":true}']},Damage:29,Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;12345,8327546,3273674,3823285],Slot:"mainhand"}]}
playsound entity.vex.death master @a ~ ~ ~ 3
scoreboard players set @s helperTimer 100