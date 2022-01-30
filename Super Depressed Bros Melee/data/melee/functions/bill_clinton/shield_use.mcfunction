
# State varaibles. Using the billShield variable since its already there. :^)
scoreboard players set billState0 StV_VTMax 0
scoreboard players set billState1 StT_VTBound 5
scoreboard players set billState3 StV_VTBound 15
scoreboard players set billState4 StV_VTBound 20

# sets the raw values to divide by/check
scoreboard players set billShield StV_VTBound 10
scoreboard players set billShield StV_VTMax 25

# Depletes stored damage over time
scoreboard players remove @s[scores={helperTimer=..0,shieldPure=0..}] shieldPure 10
scoreboard players remove @s[scores={helperTimer=..0,shieldDamage=0..}] shieldDamage 1

scoreboard players set @s[scores={shieldPure=..0}] shieldPure 0
scoreboard players set @s[scores={shieldDamage=..0}] shieldDamage 0

# hit reg, and proper translation
scoreboard players operation @s shieldDamage = @s shieldPure
execute if score @s shieldUse matches 1.. at @s run particle flash ^ ^0.5 ^0.5 0 1 0 1 1 force @a
execute if score @s shieldUse matches 1.. run scoreboard players set @s[tag=!shield_penalty] helperTimer 60
execute if score @s shieldDamage = @s shieldPure run scoreboard players operation @s shieldDamage /= billShield StV_VTBound

# seamless durability addition:
tag @s[scores={shieldUse=1..}] remove bill_sDrain
execute if score @s helperTimer matches ..0 run tag @s add bill_sDrain
execute if score @s shieldDamage matches ..0 if score @s helperTimer matches ..0 run tag @s[tag=bill_sDrain] remove bill_sDrain

# actual penalty
execute if score @s shieldDamage >= billShield StV_VTMax run scoreboard players set @s[tag=!shield_penalty] helperTimer 100
execute if score @s shieldDamage >= billShield StV_VTMax at @s[tag=!shield_penalty] run playsound sdbb:bill_clinton.lightsaber_break master @a ~ ~ ~ 1.5

execute if score @s shieldDamage >= billShield StV_VTMax run tag @s[tag=!shield_penalty] add shield_penalty

# removing penalty
tag @s[tag=shield_penalty,scores={helperTimer=..0}] remove shield_penalty

# scoreboard junk
scoreboard players set @s[tag=shield_penalty] shieldDamage 0
scoreboard players set @s[tag=shield_penalty] shieldPure 0
scoreboard players set @s shieldUse 0

