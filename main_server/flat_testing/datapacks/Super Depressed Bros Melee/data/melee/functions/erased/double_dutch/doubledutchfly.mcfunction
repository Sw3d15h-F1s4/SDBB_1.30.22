# funny sound to make it more satisfying
execute as @e[type=armor_stand,tag=doubledutch,limit=1] at @s run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~

data modify entity @e[tag=doubledutch, limit=1] NoGravity set value 0b
schedule function melee:erased/double_dutch/doubledutchflypart2 1t