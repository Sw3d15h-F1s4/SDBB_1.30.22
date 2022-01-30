

# Radius (and possibly healing) decreases as Floppa continues to use the ability, until it eventually does nothing

#tag @s[tag=BF_PleaseCharge] remove BF_PleaseCharge

scoreboard players set @s fungus_use 0
scoreboard players set @s helperTimer 5
scoreboard players add @s[scores={helperTimer2=..110}] helperTimer2 10

# 6 block range, early charge. is the ideal range if a good floppa maintains their glizzy aura
execute at @s[team=Red,scores={helperTimer2=..10}] run effect give @a[distance=0.1..6,team=Red,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 2 2 false
execute at @s[team=Blue,scores={helperTimer2=..10}] run effect give @a[distance=0.1..6,team=Blue,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 2 2 false
execute at @s[team=Red,scores={helperTimer2=..10}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 1.000 0.478 0.478 2",Radius:6f}
execute at @s[team=Blue,scores={helperTimer2=..10}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.478 0.808 1 2",Radius:6f}

# Shows that targets are getting healed
execute at @s[team=Red,scores={helperTimer2=..10}] at @a[distance=0.1..6,team=Red,nbt={ActiveEffects:[{Id:10b}]}] run playsound minecraft:block.conduit.ambient.short master @a ~ ~ ~ 2 0.9
execute at @s[team=Red,scores={helperTimer2=..10}] at @a[distance=0.1..6,team=Red,nbt={ActiveEffects:[{Id:10b}]}] run particle minecraft:heart ^ ^0.5 ^ 0.3 0.7 0.3 0.3 2 force
execute at @s[team=Blue,scores={helperTimer2=..10}] at @a[distance=0.1..6,team=Blue,nbt={ActiveEffects:[{Id:10b}]}] run playsound minecraft:block.conduit.ambient.short master @a ~ ~ ~ 2 0.9
execute at @s[team=Blue,scores={helperTimer2=..10}] at @a[distance=0.1..6,team=Blue,nbt={ActiveEffects:[{Id:10b}]}] run particle minecraft:heart ^ ^0.5 ^ 0.3 0.7 0.3 0.3 2 force



# 5 block range, typical if someone is spamming the ability
execute at @s[team=Red,scores={helperTimer2=11..30}] run effect give @a[distance=0.1..5,team=Red,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 2 2 false
execute at @s[team=Blue,scores={helperTimer2=11..30}] run effect give @a[distance=0.1..5,team=Blue,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 2 2 false
execute at @s[team=Red,scores={helperTimer2=11..30}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.886 0.427 0.427 2",Radius:5f}
execute at @s[team=Blue,scores={helperTimer2=11..30}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.427 0.714 0.878 2",Radius:5f}

# Shows that targets are getting healed
execute at @s[team=Red,scores={helperTimer2=11..30}] at @a[distance=0.1..5,team=Red,nbt={ActiveEffects:[{Id:10b}]}] run playsound minecraft:block.conduit.ambient.short master @a ~ ~ ~ 2 0.9
execute at @s[team=Red,scores={helperTimer2=11..30}] at @a[distance=0.1..5,team=Red,nbt={ActiveEffects:[{Id:10b}]}] run particle minecraft:heart ^ ^0.5 ^ 0.3 0.7 0.3 0.3 2 force
execute at @s[team=Blue,scores={helperTimer2=11..30}] at @a[distance=0.1..5,team=Blue,nbt={ActiveEffects:[{Id:10b}]}] run playsound minecraft:block.conduit.ambient.short master @a ~ ~ ~ 2 0.9
execute at @s[team=Blue,scores={helperTimer2=11..30}] at @a[distance=0.1..5,team=Blue,nbt={ActiveEffects:[{Id:10b}]}] run particle minecraft:heart ^ ^0.5 ^ 0.3 0.7 0.3 0.3 2 force



# 4 blocks. starts to show that it ACTUALLY drains!
execute at @s[team=Red,scores={helperTimer2=31..50}] run effect give @a[distance=0.1..4,team=Red,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 2 2 false
execute at @s[team=Blue,scores={helperTimer2=31..50}] run effect give @a[distance=0.1..4,team=Blue,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 2 2 false
execute at @s[team=Red,scores={helperTimer2=31..50}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.78 0.365 0.365 2",Radius:4f}
execute at @s[team=Blue,scores={helperTimer2=31..50}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.361 0.612 0.761 2",Radius:4f}

# Shows that targets are getting healed
execute at @s[team=Red,scores={helperTimer2=31..50}] at @a[distance=0.1..4,team=Red,nbt={ActiveEffects:[{Id:10b}]}] run playsound minecraft:block.conduit.ambient.short master @a ~ ~ ~ 2 0.9
execute at @s[team=Red,scores={helperTimer2=31..50}] at @a[distance=0.1..4,team=Red,nbt={ActiveEffects:[{Id:10b}]}] run particle minecraft:heart ^ ^0.5 ^ 0.3 0.7 0.3 0.3 2 force
execute at @s[team=Blue,scores={helperTimer2=31..50}] at @a[distance=0.1..4,team=Blue,nbt={ActiveEffects:[{Id:10b}]}] run playsound minecraft:block.conduit.ambient.short master @a ~ ~ ~ 2 0.9
execute at @s[team=Blue,scores={helperTimer2=31..50}] at @a[distance=0.1..4,team=Blue,nbt={ActiveEffects:[{Id:10b}]}] run particle minecraft:heart ^ ^0.5 ^ 0.3 0.7 0.3 0.3 2 force



# 3 blocks. this alt-fire of the weapon starts to turn useless
execute at @s[team=Red,scores={helperTimer2=51..60}] run effect give @a[distance=0.1..3,team=Red,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 2 2 false
execute at @s[team=Blue,scores={helperTimer2=51..60}] run effect give @a[distance=0.1..3,team=Blue,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 2 2 false
execute at @s[team=Red,scores={helperTimer2=51..60}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.6 0.282 0.282 1",Radius:3f}
execute at @s[team=Blue,scores={helperTimer2=51..60}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.31 0.525 0.655 1",Radius:3f}


# Shows that targets are getting healed. Covers both variants of 3 block range
execute at @s[team=Red,scores={helperTimer2=51..70}] at @a[distance=0.1..3,team=Red,nbt={ActiveEffects:[{Id:10b}]}] run playsound minecraft:block.conduit.ambient.short master @a ~ ~ ~ 2 0.9
execute at @s[team=Red,scores={helperTimer2=51..70}] at @a[distance=0.1..3,team=Red,nbt={ActiveEffects:[{Id:10b}]}] run particle minecraft:heart ^ ^0.5 ^ 0.3 0.7 0.3 0.3 2 force
execute at @s[team=Blue,scores={helperTimer2=51..70}] at @a[distance=0.1..3,team=Blue,nbt={ActiveEffects:[{Id:10b}]}] run playsound minecraft:block.conduit.ambient.short master @a ~ ~ ~ 2 0.9
execute at @s[team=Blue,scores={helperTimer2=51..70}] at @a[distance=0.1..3,team=Blue,nbt={ActiveEffects:[{Id:10b}]}] run particle minecraft:heart ^ ^0.5 ^ 0.3 0.7 0.3 0.3 2 force




# 3 blocks. decreased healing. PLEASE STOP USING THIS IN A BRAINDEAD WAY
execute at @s[team=Red,scores={helperTimer2=61..70}] run effect give @a[distance=0.1..3,team=Red,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 5 1 false
execute at @s[team=Blue,scores={helperTimer2=61..70}] run effect give @a[distance=0.1..3,team=Blue,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 5 1 false
execute at @s[team=Red,scores={helperTimer2=61..70}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.459 0.224 0.224 1",Radius:3f}
execute at @s[team=Blue,scores={helperTimer2=61..70}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.247 0.412 0.506 1",Radius:3f}




# 2 blocks. top 10 photos taken moments before disaster
execute at @s[team=Red,scores={helperTimer2=71..90}] run effect give @a[distance=0.1..2,team=Red,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 5 1 false
execute at @s[team=Blue,scores={helperTimer2=71..90}] run effect give @a[distance=0.1..2,team=Blue,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 5 1 false
execute at @s[team=Red,scores={helperTimer2=71..90}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.333 0.165 0.165 2",Radius:2f}
execute at @s[team=Blue,scores={helperTimer2=71..90}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.157 0.251 0.306 2",Radius:2f}
execute at @s[scores={helperTimer2=71..80}] run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 0.5 0.5
execute at @s[scores={helperTimer2=81..90}] run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 0.7 0.2

# Shows that targets are getting healed. actually plays for both 2 block range variants.
execute at @s[team=Red,scores={helperTimer2=71..90}] at @a[distance=0.1..2,team=Red,nbt={ActiveEffects:[{Id:10b}]}] run playsound minecraft:block.conduit.ambient.short master @a ~ ~ ~ 2 0.9
execute at @s[team=Red,scores={helperTimer2=71..90}] at @a[distance=0.1..2,team=Red,nbt={ActiveEffects:[{Id:10b}]}] run particle minecraft:heart ^ ^0.5 ^ 0.3 0.7 0.3 0.3 2 force
execute at @s[team=Blue,scores={helperTimer2=71..90}] at @a[distance=0.1..2,team=Blue,nbt={ActiveEffects:[{Id:10b}]}] run playsound minecraft:block.conduit.ambient.short master @a ~ ~ ~ 2 0.9
execute at @s[team=Blue,scores={helperTimer2=71..90}] at @a[distance=0.1..2,team=Blue,nbt={ActiveEffects:[{Id:10b}]}] run particle minecraft:heart ^ ^0.5 ^ 0.3 0.7 0.3 0.3 2 force



# At this point, the player realizes that you can't use it forever.
execute at @s[scores={helperTimer2=90..}] run particle minecraft:smoke ~ ~ ~ 0.4 0.9 0.4 0.05 10 force
execute at @s[scores={helperTimer2=90..}] run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 0.25 1.7

tag @s[scores={helperTimer2=15..}] add BF_PleaseCharge