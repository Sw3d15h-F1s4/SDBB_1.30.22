#Dash towards the nearest teammate. Teammate needs to be more than 5 blocks away, but less than 20. Will only tp forward 7 blocks.

scoreboard players set @s projectileLife 0
execute as @s[team=Red] if entity @a[distance=5..20,team=Red,limit=1,sort=nearest] facing entity @a[distance=5..20,team=Red,limit=1,sort=nearest] eyes rotated ~ 0 at @s positioned ^ ^ ^ run function melee:bigfloppa/galloploop
execute as @s[team=Blue] if entity @a[distance=5..20,team=Blue,limit=1,sort=nearest] facing entity @a[distance=5..20,team=Blue,limit=1,sort=nearest] eyes rotated ~ 0 at @s positioned ^ ^ ^ run function melee:bigfloppa/galloploop

#only clear if the tp will actually go through
execute as @s[team=Red] if entity @a[distance=5..20,team=Red,limit=1,sort=nearest] run scoreboard players set @s ability3Timer 20
execute as @s[team=Red] if entity @a[distance=5..20,team=Red,limit=1,sort=nearest] run clear @s minecraft:carrot_on_a_stick{Tags:["gallop"]}
execute as @s[team=Blue] if entity @a[distance=5..20,team=Blue,limit=1,sort=nearest] run scoreboard players set @s ability3Timer 20
execute as @s[team=Blue] if entity @a[distance=5..20,team=Blue,limit=1,sort=nearest] run clear @s minecraft:carrot_on_a_stick{Tags:["gallop"]}

