
tag @s add gulag_success

title @s title {"text":"You're Winner !!","color":"gold","bold":true,"italic":false}
execute at @a[tag=gulag_success] run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1.3

schedule function melee:grugstalin/gulag/teleport 3s
