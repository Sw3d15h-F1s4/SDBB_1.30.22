
particle minecraft:cloud ~ ~ ~ 0.5 0 0.5 0 10 force
particle minecraft:smoke ~ ~ ~ 0.5 0 0.5 0 10 force

execute if entity @s[nbt={inGround:1b}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:3,powered:0,ActiveEffects:[{Id:14b,Duration:20,ShowParticles:0b}],CustomName:'{"text":"Black Materia"}'}
scoreboard players add @s projectileLife 1
kill @s[scores={projectileLife=100..}]