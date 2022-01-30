
execute at @e[tag=gulagEscape_R,limit=1] run tp @a[team=Red,tag=gulag_success] ~ ~ ~
execute at @e[tag=gulagEscape_B,limit=1] run tp @a[team=Blue,tag=gulag_success] ~ ~ ~

tag @a[team=Red,tag=gulag_success] remove gulag_victim
tag @a[team=Blue,tag=gulag_success] remove gulag_victim

tag @a[team=Red,tag=gulag_success] remove gulag_success
tag @a[team=Blue,tag=gulag_success] remove gulag_success