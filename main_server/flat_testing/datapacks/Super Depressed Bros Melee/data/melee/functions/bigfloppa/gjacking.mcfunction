##
 # beastmode.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4/Modified by Nathan
##

# Gives self-buffs
effect give @s strength 5 0 true
effect give @s speed 5 0 true
effect give @s haste 5 0 true
effect give @s jump_boost 5 0 true
effect give @s glowing 5 0 true

# Team-buff (Character-specific)

### RED: ###
# Sam
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=1}] speed 5 1 true
# Bill
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=2}] haste 5 1 true
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=2}] speed 5 0 true
# Hotsuke (May just be Speed 2, and reduce Speed passive)
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=3}] jump_boost 5 1 true
# Erased (PLEASE TEST THIS EFFECT! NOT GOING OFF OF EXACT SPEED, MAY BE OP)
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=5}] speed 5 3 true
# Hibbins
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=6}] haste 5 0 true
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=6}] speed 5 0 true
# Reaper (PLEASE TEST, NOT BASED ON REAL NUMBERS)
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=7}] haste 5 1 true
# Rei
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=8}] speed 5 1 true
# Charne (Please test, i wanted to make him a little bit different)
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=9}] haste 5 0 true
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=9}] jump_boost 5 1 true
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=9}] slow_falling 8 0 true
# Grug
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=10}] speed 5 1 true
# Liam (PLEASE TEST, NOT BASED ON REAL NUMBERS)
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=11}] speed 5 0 true
# Snow Miser (PLEASE TEST, NOT BASED ON REAL NUMBERS)
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=12}] speed 5 2 true
# Sephiroth
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=13}] jump_boost 5 0 true
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=13}] haste 5 0 true
# Bezos
execute at @s[team=Red] run effect give @s[team=Red,scores={heroType=15}] speed 5 0 true

### BLUE: ###
# Sam
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=1}] speed 5 1 true
# Bill
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=2}] haste 5 1 true
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=2}] speed 5 0 true
# Hotsuke
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=3}] jump_boost 5 1 true
# Erased (PLEASE TEST THIS EFFECT! NOT GOING OFF OF EXACT SPEED, MAY BE OP)
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=5}] speed 5 3 true
# Hibbins
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=6}] haste 5 0 true
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=6}] speed 5 0 true
# Reaper (PLEASE TEST, NOT BASED ON REAL NUMBERS)
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=7}] haste 5 1 true
# Rei
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=8}] speed 5 1 true
# Charne (Please test, i wanted to make him a little bit different)
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=9}] haste 5 0 true
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=9}] jump_boost 5 1 true
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=9}] slow_falling 8 0 true
# Grug
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=10}] speed 5 1 true
# Liam (PLEASE TEST, NOT BASED ON REAL NUMBERS)
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=11}] speed 5 1 true
# Snow Miser (PLEASE TEST, NOT BASED ON REAL NUMBERS)
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=12}] speed 5 2 true
# Sephiroth
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=13}] jump_boost 5 0 true
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=13}] haste 5 0 true
# Bezos
execute at @s[team=Blue] run effect give @s[team=Blue,scores={heroType=15}] speed 5 2 true


# Davy Jones and Sting will be done on a later date

# Funny particle and other stuff
execute as @s run particle minecraft:angry_villager ~ ~ ~ 0.6 1.1 0.6 0.8 7 force
scoreboard players set @s ultTimer 3000
clear @s minecraft:carrot_on_a_stick{Tags:["gjacking"]}
execute at @s run playsound sdbb:big_floppa.beastmode master @a ~ ~ ~
playsound minecraft:item.totem.use master @a ~ ~ ~ 3
