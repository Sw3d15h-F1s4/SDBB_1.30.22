#contains phases 1

execute unless entity @a[scores={trueSephiroth=1}] run scoreboard players set @s ultTimer -2
execute unless entity @a[scores={trueSephiroth=1}] run clear @s carrot_on_a_stick{Tags:["one_wing"]}
execute unless entity @a[scores={trueSephiroth=1}] run playsound sdbb:sephiroth.ult_theme master @a ~ ~ ~ 1 1 1
execute unless entity @a[scores={trueSephiroth=1}] run schedule function melee:season_2/sephiroth/one_wing_phase2 17s
execute unless entity @a[scores={trueSephiroth=1}] run scoreboard players set @s trueSephiroth 1