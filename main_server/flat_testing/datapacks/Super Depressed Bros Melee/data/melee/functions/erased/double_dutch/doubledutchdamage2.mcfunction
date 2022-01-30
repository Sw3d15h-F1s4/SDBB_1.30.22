
# Turns out you need two identical scripts! It was causing problems because I thought the one function could be called twice!

execute as @e[type=armor_stand,tag=doubledutch,limit=1] at @s run effect give @a[distance=0..1] resistance 1 2 true
execute as @e[type=armor_stand,tag=doubledutch,limit=1] at @s run effect give @a[distance=0..1] instant_damage 1 0 true
execute as @e[type=armor_stand,tag=doubledutch,limit=1] at @s run particle crit ~ ~1 ~ 0 0 0 2 6 force @a

# funny sound to make it more satisfying
execute as @e[type=armor_stand,tag=doubledutch,limit=1] at @s run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~