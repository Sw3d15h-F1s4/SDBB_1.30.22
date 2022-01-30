##
 # shutin.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4/Modified by Nathan
##

# Swapped the poop regen for the faster Instant Health.

execute if entity @s[team=Red] run effect give @a[team=Red] instant_health 1 0 true
execute if entity @s[team=Blue] run effect give @a[team=Blue] instant_health 1 0 true

execute if entity @s[team=Red] run effect clear @a[team=Red,distance=0.1..] slowness
execute if entity @s[team=Red] run effect clear @a[team=Red,distance=0.1..] blindness

execute if entity @s[team=Blue] run effect clear @a[team=Blue,distance=0.1..] slowness
execute if entity @s[team=Blue] run effect clear @a[team=Blue,distance=0.1..] blindness

scoreboard players set @s ability2Timer 400
clear @s carrot_on_a_stick{Tags:["shutin"]}

playsound item.lodestone_compass.lock master @a ~ ~ ~ 3
