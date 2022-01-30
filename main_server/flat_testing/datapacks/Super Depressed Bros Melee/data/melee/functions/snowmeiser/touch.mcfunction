#Whatever i Touch: Weapon deals less damage but has increased knockback. Snow miser's movement penalty is reduced.

replaceitem entity @s hotbar.0 diamond_sword{display:{Name:'{"text":"WHATEVER I TOUCH","color":"dark_gray","bold":true,"italic":false}',Lore:['{"text":"In the abandoned wasteland","color":"blue","italic":false}','{"text":"of the Ice Spikes, Snow Miser","color":"blue","italic":false}','{"text":"accidentally stumbled upon this ","color":"blue","italic":false}','{"text":"ancient weapon while he was","color":"blue","italic":false}','{"text":"looking for Packed Ice.","color":"blue","italic":false}','{"text":"He uses this great power to","color":"blue","italic":false}','{"text":"terrify Christmas shoppers.","color":"blue","italic":false}']},Enchantments:[{id:"knockback",lvl:2}],HideFlags:61,Unbreakable:1b,CustomModelData:12001,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I; 0, 274351, 0, 768067],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.65,Operation:1,UUID:[I; 0, 805965, 0, 494617],Slot:"mainhand"}]}

scoreboard players set @s helperTimer 120
scoreboard players set @s abilityTimer 600
playsound sdbb:snow_miser.touch master @a ~ ~ ~
clear @s carrot_on_a_stick{Tags:["touch"]}