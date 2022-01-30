#phase 6 of sephiroth's ult

stopsound @a master sdbb:sephiroth.ult_theme

scoreboard players set @a[scores={trueSephiroth=0}] abilityTimer 10
scoreboard players set @a[scores={trueSephiroth=0}] ability2Timer 10
scoreboard players set @a[scores={trueSephiroth=0}] ability3Timer 10
execute as @a unless score @s heroType matches 7 run scoreboard players set @s[scores={trueSephiroth=0}] helperTimer 10
scoreboard players set @a[scores={trueSephiroth=0}] helperTimer2 10

scoreboard players set @a[scores={trueSephiroth=1}] trueSephiroth 0

tellraw @a "<The One Winged Angel> UHGHGHHH"
kill @a[scores={heroType=13}]