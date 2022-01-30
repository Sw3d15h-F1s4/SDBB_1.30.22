
# Resets the summon timer.
execute if entity @s[team=Red] run scoreboard players reset GulagSummon_R helperTimer
execute if entity @s[team=Blue] run scoreboard players reset GulagSummon_B helperTimer

# Kills skeletons, depending on your team
execute if entity @s[team=Red] run kill @e[tag=gulag_R]
execute if entity @s[team=Blue] run kill @e[tag=gulag_B]