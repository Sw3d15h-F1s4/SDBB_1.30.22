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


#Team-specific summon command. 12 heath, >2 damage, faster movement husks. Hopefully they're retextured.
execute as @a[scores={heroType=15},team=Red] run summon husk ~ ~1 ~ {Silent:1b,CustomNameVisible:1b,Team:"Red",LeftHanded:1b,Health:12f,IsBaby:0b,Tags:["Beanos"],CustomName:'{"text":"\\"Jeff Bezos\\""}',HandItems:[{id:'minecraft:golden_sword',Count:1b,tag:{AttributeModifiers:[{AttributeName:'generic.attack_damage',Name:'generic.attack_damage',Amount:1,Operation:0,UUID:[I;-526597068,1501777484,-1865140475,2096489129],Slot:'mainhand'}]}},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.3}]}
execute as @a[scores={heroType=15},team=Blue] run summon husk ~ ~1 ~ {Silent:1b,CustomNameVisible:1b,Team:"Blue",LeftHanded:1b,Health:12f,IsBaby:0b,Tags:["Beanos"],CustomName:'{"text":"\\"Jeff Bezos\\""}',HandItems:[{id:'minecraft:golden_sword',Count:1b,tag:{AttributeModifiers:[{AttributeName:'generic.attack_damage',Name:'generic.attack_damage',Amount:1,Operation:0,UUID:[I;-526597068,1501777484,-1865140475,2096489129],Slot:'mainhand'}]}},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.follow_range,Base:500},{Name:generic.movement_speed,Base:0.3}]}

#Clears the sucker, and gives you 10 seconds before using again.
scoreboard players set @a[scores={ability=1..,heroType=15}] abilityTimer 200
clear @s minecraft:carrot_on_a_stick{Tags:["duplication"]}

#a e s t h e t i c
particle minecraft:crimson_spore ^ ^1 ^ 0 1 0 1 20 force
playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 1 1.1