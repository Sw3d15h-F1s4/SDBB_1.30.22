#   ('-.  _  .-')     ('-.      .-')      ('-.  _ .-') _   
# _(  OO)( \( -O )   ( OO ).-. ( OO ).  _(  OO)( (  OO) )  
#(,------.,------.   / . --. /(_)---\_)(,------.\     .'_  
# |  .---'|   /`. '  | \-.  \ /    _ |  |  .---',`'--..._) 
# |  |    |  /  | |.-'-'  |  |\  :` `.  |  |    |  |  \  ' 
#(|  '--. |  |_.' | \| |_.'  | '..`''.)(|  '--. |  |   ' | 
# |  .--' |  .  '.'  |  .-.  |.-._)   \ |  .--' |  |   / : 
# |  `---.|  |\  \   |  | |  |\       / |  `---.|  '--'  / 
# `------'`--' '--'  `--' `--' `-----'  `------'`-------'  
#           .-')                                           
#          ( OO ).                                         
#  ,-.-') (_)---\_)                                        
#  |  |OO)/    _ |                                         
#  |  |  \\  :` `.                                         
#  |  |(_/ '..`''.)                                        
# ,|  |_.'.-._)   \                                        
#(_|  |   \       /                                        
#  `--'    `-----'                                         
#             ('-.      .-')    .-') _                     
#            ( OO ).-. ( OO ). (  OO) )                    
# ,--.       / . --. /(_)---\_)/     '._                   
# |  |.-')   | \-.  \ /    _ | |'--...__)                  
# |  | OO ).-'-'  |  |\  :` `. '--.  .--'                  
# |  |`-' | \| |_.'  | '..`''.)   |  |                     
#(|  '---.'  |  .-.  |.-._)   \   |  |                     
# |      |   |  | |  |\       /   |  |                     
# `------'   `--' `--' `-----'    `--'  


# Bare the Remote o' Life, my dear friend.

replaceitem entity @s hotbar.0 powered_rail{CustomModelData:1500021,display:{Name:'[{"text":"L","color":"#43BDE6","bold":true,"italic":false},{"text":"i","color":"#47AFE8","bold":true,"italic":false},{"text":"f","color":"#4BA1EB","bold":true,"italic":false},{"text":"e ","color":"#4F93EE","bold":true,"italic":false},{"text":"R","color":"#5385F0","bold":true,"italic":false},{"text":"e","color":"#5777F3","bold":true,"italic":false},{"text":"m","color":"#5B69F6","bold":true,"italic":false},{"text":"o","color":"#5F5BF8","bold":true,"italic":false},{"text":"t","color":"#634DFB","bold":true,"italic":false},{"text":"e","color":"#673FFE","bold":true,"italic":false}]',Lore:['{"text":"After spending $20 bil on","color":"gray","italic":false}','{"text":"creating a failed game studio,","color":"gray","italic":false}','{"text":"Bezos devised a plan to rewrite reality","color":"gray","italic":false}','{"text":"itself! For the time being, he","color":"gray","italic":false}','{"text":"uses it for petty entertainment.","color":"gray","italic":false}','{"text":"An enchanced forcefield","color":"dark_blue","bold":true,"italic":false}','{"text":"appears when held!","color":"dark_blue","bold":true,"italic":false}']},HideFlags:4,Tags:{}} 1

# The real cooldown is 2700, 135 seconds
# Also sets Bezos to Ult State 1, since Miser and Bezos have similar alts.
scoreboard players set @s ultTimer 3000
scoreboard players set @s SM_suaveMente 1
clear @s carrot_on_a_stick{Tags:["mental-ctrl"]}
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~