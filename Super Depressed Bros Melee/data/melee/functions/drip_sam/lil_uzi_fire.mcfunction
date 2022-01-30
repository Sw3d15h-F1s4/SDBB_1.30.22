

execute if entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]},scores={ddCooldown=..0}] run scoreboard players set @s projectileLife 0
execute if entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]},scores={ddCooldown=..0}] run execute as @s at @s positioned ~ ~1.5 ~ run function melee:drip_sam/lil_uzi_loop
execute if entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]},scores={ddCooldown=..0}] run clear @s arrow 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]},scores={ddCooldown=..0}] at @s run playsound sdbb:drip_sam.uzi master @a ~ ~ ~ 1 1 0.1
execute if entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]},scores={ddCooldown=..0}] run scoreboard players set @s ddCooldown 2