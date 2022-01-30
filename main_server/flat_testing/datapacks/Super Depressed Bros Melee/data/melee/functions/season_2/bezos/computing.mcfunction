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


# Le clear
scoreboard players set @s ability3Timer 400
clear @s minecraft:carrot_on_a_stick{Tags:["computing"]}

# Self buff (instant health)
effect give @s instant_health 1 0

# Ally buffs (within a 7 block radius)
execute at @s[team=Red] run effect give @a[team=Red,distance=0.1..9] minecraft:regeneration 5 1 false
execute at @s[team=Red] run effect give @a[team=Red,distance=0.1..9] minecraft:absorption 10 0 false

execute at @s[team=Blue] run effect give @a[team=Blue,distance=0.1..9] minecraft:regeneration 5 1 false
execute at @s[team=Blue] run effect give @a[team=Blue,distance=0.1..9] minecraft:absorption 10 0 false



# Radius indicator
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dolphin",Radius:9f,Duration:20}
execute at @s as @a[team=Red,distance=0.1..9] run playsound minecraft:weather.rain.above master @a


