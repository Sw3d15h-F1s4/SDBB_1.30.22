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

# Beanos debuff, because it would be a broken offensive tool!
effect give @s mining_fatigue 3 7 false
effect give @s slowness 3 1 false

# Red variant, because we don't want barriers for both sides!
execute at @s[team=Red] run kill @e[type=arrow,distance=..4]

# Red hibbins projectile
execute at @s[team=Red] run kill @e[tag=ray,distance=..4]

# Red rei RGB beam
execute at @s[team=Red] run kill @e[tag=otakuray,distance=..4]

# Red anime prediction, Bezos doesnt watch anime
execute at @s[team=Red] run kill @e[tag=animearrow,distance=..4]

# Red Erased Rockets
execute at @s[team=Red] run kill @e[type=armor_stand,name=RL.Armor_Stand,distance=..4]
execute at @s[team=Red] run kill @e[tag=RL.Creeper,distance=..4]

# Splash Potion (He can still be hit, though)
#execute at @s[team=Red] run kill @e[type=lingering_potion,distance=..1]
#execute at @s[team=Red] run kill @e[type=splash_potion,distance=..1]


# ===========


# Blue variant. TF@ spy
execute at @s[team=Blue] run kill @e[type=arrow,distance=..4]

# Red hibbins projectile
execute at @s[team=Blue] run kill @e[tag=ray,distance=..4]

# Red rei RGB beam
execute at @s[team=Blue] run kill @e[tag=otakuray,distance=..4]

# Red anime prediction, Bezos doesnt watch anime
execute at @s[team=Blue] run kill @e[tag=animearrow,distance=..4]

# Red Erased Rockets
execute at @s[team=Blue] run kill @e[type=armor_stand,name=RL.Armor_Stand,distance=..4]
execute at @s[team=Blue] run kill @e[tag=RL.Creeper,distance=..4]

# Splash Potion (can still be hit because skill)
#execute at @s[team=Blue] run kill @e[type=lingering_potion,distance=..1]
#execute at @s[team=Blue] run kill @e[type=splash_potion,distance=..1]


# ===========

# Particles lol

# Team-specific particles
execute at @s[team=Red] run particle minecraft:flame ^0.5 ^0.5 ^0.5 1 1 1 0 1 force @a
execute at @s[team=Blue] run particle minecraft:soul_fire_flame ^0.5 ^0.5 ^0.5 1 1 1 0 1 force @a

# The s p e e n (-x, +z is the starting position.)

execute at @s[scores={helperTimer=39}] anchored feet run particle minecraft:witch ^ ^1 ^1 0 0 0 0 1 force
execute at @s[scores={helperTimer=37}] anchored feet run particle minecraft:witch ^-0.2 ^1 ^0.8 0 0 0 0 1 force
execute at @s[scores={helperTimer=35}] anchored feet run particle minecraft:witch ^-0.4 ^1 ^0.6 0 0 0 0 1 force
execute at @s[scores={helperTimer=33}] anchored feet run particle minecraft:witch ^-0.6 ^1 ^0.4 0 0 0 0 1 force
execute at @s[scores={helperTimer=31}] anchored feet run particle minecraft:witch ^-0.8 ^1 ^0.2 0 0 0 0 1 force
execute at @s[scores={helperTimer=29}] anchored feet run particle minecraft:witch ^-1 ^1 ^ 0 0 0 0 1 force
# (-x, -z)
execute at @s[scores={helperTimer=27}] anchored feet run particle minecraft:witch ^-0.8 ^1 ^-0.2 0 0 0 0 1 force
execute at @s[scores={helperTimer=25}] anchored feet run particle minecraft:witch ^-0.6 ^1 ^-0.4 0 0 0 0 1 force
execute at @s[scores={helperTimer=23}] anchored feet run particle minecraft:witch ^-0.4 ^1 ^-0.6 0 0 0 0 1 force
execute at @s[scores={helperTimer=21}] anchored feet run particle minecraft:witch ^-0.2 ^1 ^-0.8 0 0 0 0 1 force
execute at @s[scores={helperTimer=19}] anchored feet run particle minecraft:witch ^ ^1 ^-1 0 0 0 0 1 force
# (x, -z)
execute at @s[scores={helperTimer=17}] anchored feet run particle minecraft:witch ^0.2 ^1 ^-0.8 0 0 0 0 1 force
execute at @s[scores={helperTimer=15}] anchored feet run particle minecraft:witch ^0.4 ^1 ^-0.6 0 0 0 0 1 force
execute at @s[scores={helperTimer=13}] anchored feet run particle minecraft:witch ^0.6 ^1 ^-0.4 0 0 0 0 1 force
execute at @s[scores={helperTimer=11}] anchored feet run particle minecraft:witch ^0.8 ^1 ^-0.2 0 0 0 0 1 force
execute at @s[scores={helperTimer=9}] anchored feet run particle minecraft:witch ^1 ^1 ^ 0 0 0 0 1 force
# (x, z)
execute at @s[scores={helperTimer=7}] anchored feet run particle minecraft:witch ^0.8 ^1 ^0.2 0 0 0 0 1 force
execute at @s[scores={helperTimer=5}] anchored feet run particle minecraft:witch ^0.6 ^1 ^0.4 0 0 0 0 1 force
execute at @s[scores={helperTimer=3}] anchored feet run particle minecraft:witch ^0.4 ^1 ^0.6 0 0 0 0 1 force
execute at @s[scores={helperTimer=1}] anchored feet run particle minecraft:witch ^0.2 ^1 ^0.8 0 0 0 0 1 force
# .. and it goes back to the default value of 41 after -1..