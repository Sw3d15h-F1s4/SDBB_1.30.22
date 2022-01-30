#the final phase of sephiroth's ultimage ability

tellraw @a "<Sephiroth> I will never be just a memory..."

execute as @a unless score @s heroType matches 13 at @s run summon arrow ~ ~5 ~-1 {Tags:["SephiArrow"],Motion:[0.0,-1.0,0.0]}
execute as @a unless score @s heroType matches 13 at @s run summon arrow ~ ~5 ~1 {Tags:["SephiArrow"],Motion:[0.0,-1.0,0.0]}
execute as @a unless score @s heroType matches 13 at @s run summon arrow ~1 ~5 ~ {Tags:["SephiArrow"],Motion:[0.0,-1.0,0.0]}
execute as @a unless score @s heroType matches 13 at @s run summon arrow ~-1 ~5 ~ {Tags:["SephiArrow"],Motion:[0.0,-1.0,0.0]}

execute as @a unless score @s heroType matches 13 at @s run summon creeper ~ ~ ~ {CustomName:'{"text":"Supernova"}',Fuse:0,ExplosionRadius:4}

schedule function melee:season_2/sephiroth/one_wing_phase6 20s