##
 # selfkit.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

clear @s

scoreboard players set @s[scores={gameState=..1}] gameState 1
scoreboard players set @s[scores={gameState=3..}] gameState 1

scoreboard players set @s abilityTimer 0
scoreboard players set @s ability2Timer 0
scoreboard players set @s ultTimer -1
scoreboard players set @s ability3Timer 0
scoreboard players set @s helperTimer 0
scoreboard players set @s helperTimer2 0
scoreboard players set @s helperTimer3 0
scoreboard players set @s summonCount 0

# Clickable debug view prompt
tellraw @s [{"text":"Do you want debug view? ","color":"dark_gray","bold":true},{"text":"[Yes] ","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Shows ability cooldowns and killstreak!","color":"gold","italic":true}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p debugMode 1"}},{"text":"[No]","color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"Disables debug view when clicked!","color":"gray","italic":true}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p debugMode 0"}}]

# Hotsuke give arrow, because the current iteration didnt take into account that KS is actually incorrect. This is Scotch Tape.
replaceitem entity @s[scores={heroType=3}] hotbar.7 tipped_arrow{display:{Name:'[{"text":"150mm","color":"dark_blue","bold":true,"italic":false},{"text":" ","color":"white"},{"text":"Caliber","color":"aqua"},{"text":" Round","color":"white"}]',Lore:['{"text":"DooM-style Fighting:","color":"light_purple","italic":false}','[{"text":"Kill your enemies to replenish ammo.","color":"light_purple","italic":false}]','{"text":"\\"Who needs aim hacks and extra","color":"dark_purple","italic":true}','{"text":"ammo when you have raw talent?\\"","color":"dark_purple","italic":true}']},HideFlags:125,CustomPotionColor:2900446}
scoreboard players set @s killstreak 0

# Suave Mente checks
scoreboard players set @s[scores={heroType=8}] SM_suaveMente 0
scoreboard players set @s[scores={heroType=11}] SM_suaveMente 0
scoreboard players set @s[scores={heroType=12}] SM_suaveMente 0
scoreboard players set @s[scores={heroType=14}] SM_suaveMente 0
scoreboard players set @s[scores={heroType=15}] SM_suaveMente 0

function melee:util/giveallkits
