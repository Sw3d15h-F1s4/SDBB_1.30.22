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


# Combo of a hyper grav grab and the forcefield


# I hate Grug :)

execute as @s at @s run tp @e[type=!minecraft:player,type=!armor_stand,type=!painting,type=!end_crystal,type=!lightning_bolt,type=!boat,type=!minecart,type=!spectral_arrow,type=!item_frame,type=!leash_knot,type=!ender_pearl,distance=..5] ^ ^ ^3
execute as @s at @s run effect give @e[type=!minecraft:player,type=!armor_stand,type=!painting,type=!end_crystal,type=!lightning_bolt,type=!boat,type=!minecart,type=!spectral_arrow,type=!item_frame,type=!leash_knot,type=!ender_pearl,distance=..5] minecraft:levitation 5 2 true
execute as @s at @s at @e[type=!minecraft:player,type=!armor_stand,type=!painting,type=!end_crystal,type=!lightning_bolt,type=!boat,type=!minecart,type=!spectral_arrow,type=!item_frame,type=!leash_knot,type=!ender_pearl,distance=0.1..5] run particle minecraft:end_rod ~ ~1 ~ 0.2 0.2 0.2 0.001 10 force

# Make sure the passive isn't useless against players, too

# Red debuff
execute if entity @s[team=Red] at @s run effect give @a[team=Blue,distance=..5] slowness 8 1 false
execute if entity @s[team=Red] at @s run effect give @a[team=Blue,distance=..5] mining_fatigue 8 2 false
execute if entity @s[team=Red] at @s run effect give @a[team=Blue,distance=..5] glowing 8 0 false
execute if entity @s[team=Red] at @a[team=Blue,distance=..5] run particle minecraft:end_rod ~ ~1 ~ 0.2 0.2 0.2 0.001 10 force

#Blue debuff
execute if entity @s[team=Blue] at @s run effect give @a[team=Red,distance=..5] slowness 8 1 false
execute if entity @s[team=Blue] at @s run effect give @a[team=Red,distance=..5] mining_fatigue 8 2 false
execute if entity @s[team=Blue] at @s run effect give @a[team=Red,distance=..5] glowing 8 0 false
execute if entity @s[team=Blue] at @a[team=Red,distance=..5] run particle minecraft:end_rod ~ ~1 ~ 0.2 0.2 0.2 0.001 10 force

# +============

# Enchanced forcefield.


# Anti-cheese. For an ult, it should be better but still
effect give @s mining_fatigue 5 2 false
effect give @s slowness 5 2 false

# Red variant, because we don't want barriers for both sides!
execute at @s[team=Red] run kill @e[type=arrow,distance=..4]

# Red hibbins projectile
execute at @s[team=Red] run kill @e[tag=ray,distance=..4]

# Red rei RGB beam
execute at @s[team=Red] run kill @e[tag=otakuray,distance=..4]

# Red anime prediction, Bezos doesnt watch anime
execute at @s[team=Red] run kill @e[tag=animearrow,distance=..4]

#firework rockets
execute at @s[team=Blue] run kill @e[type=firework_rocket,distance=..4]

# Red Erased Rockets
execute at @s[team=Red] run kill @e[type=armor_stand,name="RL.Armor_Stand",distance=..4]
execute at @s[team=Red] run kill @e[tag=RL.Creeper,distance=..4]

# Splash Potion
execute at @s[team=Red] run kill @e[type=potion,distance=..4]

# KILL HUNTERS ONLY MEANS OF DAMAGING YOU NORMALLY!!
execute at @s[team=Red] run kill @e[type=spectral_arrow,distance=..4]

# ===========


# Blue variant. TF@ spy
execute at @s[team=Blue] run kill @e[type=arrow,distance=..4]

# Red hibbins projectile
execute at @s[team=Blue] run kill @e[tag=ray,distance=..4]

# Red rei RGB beam
execute at @s[team=Blue] run kill @e[tag=otakuray,distance=..4]

# Red anime prediction, Bezos doesnt watch anime
execute at @s[team=Blue] run kill @e[tag=animearrow,distance=..4]

#firework rockets
execute at @s[team=Blue] run kill @e[type=firework_rocket,distance=..4]

# Red Erased Rockets
execute at @s[team=Blue] run kill @e[type=armor_stand,name="RL.Armor_Stand",distance=..4]
execute at @s[team=Blue] run kill @e[tag=RL.Creeper,distance=..4]

# Splash Potion
execute at @s[team=Blue] run kill @e[type=potion,distance=..4]

# Anti-Hotsuke
execute at @s[team=Red] run kill @e[type=spectral_arrow,distance=..4]

# ===========

# Particles lol

# Team-specific particles
execute at @s[team=Red] run particle minecraft:angry_villager ^0.5 ^0.5 ^0.5 1 1 1 0 1 force @a
execute at @s[team=Blue] run particle minecraft:witch ^0.5 ^0.5 ^0.5 1 1 1 0 3 force @a

# The s p e e n (-x, +z is the starting position.)

execute at @s[scores={helperTimer=39}] anchored feet run particle minecraft:firework ^ ^1 ^1 0 0 0 0 1 force
execute at @s[scores={helperTimer=37}] anchored feet run particle minecraft:firework ^-0.2 ^1 ^0.8 0 0 0 0 1 force
execute at @s[scores={helperTimer=35}] anchored feet run particle minecraft:firework ^-0.4 ^1 ^0.6 0 0 0 0 1 force
execute at @s[scores={helperTimer=33}] anchored feet run particle minecraft:firework ^-0.6 ^1 ^0.4 0 0 0 0 1 force
execute at @s[scores={helperTimer=31}] anchored feet run particle minecraft:firework ^-0.8 ^1 ^0.2 0 0 0 0 1 force
execute at @s[scores={helperTimer=29}] anchored feet run particle minecraft:firework ^-1 ^1 ^ 0 0 0 0 1 force
# (-x, -z)
execute at @s[scores={helperTimer=27}] anchored feet run particle minecraft:firework ^-0.8 ^1 ^-0.2 0 0 0 0 1 force
execute at @s[scores={helperTimer=25}] anchored feet run particle minecraft:firework ^-0.6 ^1 ^-0.4 0 0 0 0 1 force
execute at @s[scores={helperTimer=23}] anchored feet run particle minecraft:firework ^-0.4 ^1 ^-0.6 0 0 0 0 1 force
execute at @s[scores={helperTimer=21}] anchored feet run particle minecraft:firework ^-0.2 ^1 ^-0.8 0 0 0 0 1 force
execute at @s[scores={helperTimer=19}] anchored feet run particle minecraft:firework ^ ^1 ^-1 0 0 0 0 1 force
# (x, -z)
execute at @s[scores={helperTimer=17}] anchored feet run particle minecraft:firework ^0.2 ^1 ^-0.8 0 0 0 0 1 force
execute at @s[scores={helperTimer=15}] anchored feet run particle minecraft:firework ^0.4 ^1 ^-0.6 0 0 0 0 1 force
execute at @s[scores={helperTimer=13}] anchored feet run particle minecraft:firework ^0.6 ^1 ^-0.4 0 0 0 0 1 force
execute at @s[scores={helperTimer=11}] anchored feet run particle minecraft:firework ^0.8 ^1 ^-0.2 0 0 0 0 1 force
execute at @s[scores={helperTimer=9}] anchored feet run particle minecraft:firework ^1 ^1 ^ 0 0 0 0 1 force
# (x, z)
execute at @s[scores={helperTimer=7}] anchored feet run particle minecraft:firework ^0.8 ^1 ^0.2 0 0 0 0 1 force
execute at @s[scores={helperTimer=5}] anchored feet run particle minecraft:firework ^0.6 ^1 ^0.4 0 0 0 0 1 force
execute at @s[scores={helperTimer=3}] anchored feet run particle minecraft:firework ^0.4 ^1 ^0.6 0 0 0 0 1 force
execute at @s[scores={helperTimer=1}] anchored feet run particle minecraft:firework ^0.2 ^1 ^0.8 0 0 0 0 1 force
# .. and it goes back to the default value of 41 after -1..