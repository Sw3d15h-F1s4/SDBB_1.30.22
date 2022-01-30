##
 # guitarloop.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

# Prevents getting trapped in water....
scoreboard players add @s projectileLife 1


execute at @s run tp @a[sort=random,distance=0..2,scores={heroType=..10}] ~ ~ ~
execute at @s run tp @a[sort=random,distance=0..2,scores={heroType=12..}] ~ ~ ~

# Liam specific stuff
execute at @s[tag=gs_red] run tp @a[sort=random,distance=0..2,team=!Red,scores={heroType=11}] ~ ~ ~
execute at @s[tag=gs_blue] run tp @a[sort=random,distance=0..2,team=!Blue,scores={heroType=11}] ~ ~ ~

kill @s[nbt={OnGround:1b}]
kill @s[scores={projectileLife=30..}]

# Just in case Repulse Ignore is needed again.
#execute at @s run tp @a[sort=random,distance=0..2,nbt=!{Inventory:[{tag:{display:{Name:'{"text":"Repulse Ignore"}'}}}]}] ~ ~ ~