# This may be a mess 

# Sets up the armor stand that suspends the opponent
execute at @s[team=Red] unless entity @e[tag=SpearGrab_VictimTeleR] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:0b,NoBasePlate:1b,Tags:["SpearGrab_VictimTeleR"]}
execute at @s[team=Blue] unless entity @e[tag=SpearGrab_VictimTeleB] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:0b,NoBasePlate:1b,Tags:["SpearGrab_VictimTeleB"]}

say geet over here!!!!!11



# Yoink!!
#scoreboard players set @e[tag=SpearGrab_VictimTeleR,limit=1] projectileLife -100
#scoreboard players set @e[tag=SpearGrab_VictimTeleR,limit=1,scores={projectileLife=..-99}] projectileLife 0
#scoreboard players set @e[tag=SpearGrab_VictimTeleB,limit=1] projectileLife -100
#scoreboard players set @e[tag=SpearGrab_VictimTeleB,limit=1,scores={projectileLife=..-99}] projectileLife 0

#scoreboard players add @e[tag=SpearGrab_VictimTeleR,scores={projectileLife=0..},limit=1] projectileLife 1
#scoreboard players add @e[tag=SpearGrab_VictimTeleR,scores={projectileLife=0..},limit=1] projectileLife 1

# Where the teleporting commences
#tp @a[tag=SpearGrab_VictimR] @e[tag=SpearGrab_VictimTeleR,limit=1]
#tp @a[tag=SpearGrab_VictimB] @e[tag=SpearGrab_VictimTeleB,limit=1]


















# The animated teleportation..
#execute positioned as @a[tag=SpearGrab_UserR,limit=1] as @a[tag=SpearGrab_UserR,limit=1] run tp @e[tag=SpearGrab_VictimTeleR,limit=1,scores={projectileLife=5..8}] ^ ^ ^3
#execute positioned as @a[tag=SpearGrab_UserR,limit=1] as @a[tag=SpearGrab_UserR,limit=1] run tp @e[tag=SpearGrab_VictimTeleR,limit=1,scores={projectileLife=9..12}] ^ ^ ^2.8
#execute positioned as @a[tag=SpearGrab_UserR,limit=1] as @a[tag=SpearGrab_UserR,limit=1] run tp @e[tag=SpearGrab_VictimTeleR,limit=1,scores={projectileLife=13..16}] ^ ^ ^2.7
#execute positioned as @a[tag=SpearGrab_UserR,limit=1] as @a[tag=SpearGrab_UserR,limit=1] run tp @e[tag=SpearGrab_VictimTeleR,limit=1,scores={projectileLife=17..20}] ^ ^ ^2.6
#execute positioned as @a[tag=SpearGrab_UserR,limit=1] as @a[tag=SpearGrab_UserR,limit=1] run tp @e[tag=SpearGrab_VictimTeleR,limit=1,scores={projectileLife=21..24}] ^ ^ ^2.5
#execute positioned as @a[tag=SpearGrab_UserR,limit=1] as @a[tag=SpearGrab_UserR,limit=1] run tp @e[tag=SpearGrab_VictimTeleR,limit=1,scores={projectileLife=25..28}] ^ ^ ^2.4
#execute positioned as @a[tag=SpearGrab_UserR,limit=1] as @a[tag=SpearGrab_UserR,limit=1] run tp @e[tag=SpearGrab_VictimTeleR,limit=1,scores={projectileLife=29..31}] ^ ^ ^2.3
#execute positioned as @a[tag=SpearGrab_UserR,limit=1] as @a[tag=SpearGrab_UserR,limit=1] run tp @e[tag=SpearGrab_VictimTeleR,limit=1,scores={projectileLife=32..35}] ^ ^ ^2.2
#execute positioned as @a[tag=SpearGrab_UserR,limit=1] as @a[tag=SpearGrab_UserR,limit=1] run tp @e[tag=SpearGrab_VictimTeleR,limit=1,scores={projectileLife=36..40}] ^ ^ ^2

#execute positioned as @a[tag=SpearGrab_UserB,limit=1] as @a[tag=SpearGrab_UserB,limit=1] run tp @e[tag=SpearGrab_VictimTeleB,limit=1,scores={projectileLife=5..8}] ^ ^ ^3
#execute positioned as @a[tag=SpearGrab_UserB,limit=1] as @a[tag=SpearGrab_UserB,limit=1] run tp @e[tag=SpearGrab_VictimTeleB,limit=1,scores={projectileLife=9..12}] ^ ^ ^2.8
#execute positioned as @a[tag=SpearGrab_UserB,limit=1] as @a[tag=SpearGrab_UserB,limit=1] run tp @e[tag=SpearGrab_VictimTeleB,limit=1,scores={projectileLife=13..16}] ^ ^ ^2.7
#execute positioned as @a[tag=SpearGrab_UserB,limit=1] as @a[tag=SpearGrab_UserB,limit=1] run tp @e[tag=SpearGrab_VictimTeleB,limit=1,scores={projectileLife=17..20}] ^ ^ ^2.6
#execute positioned as @a[tag=SpearGrab_UserB,limit=1] as @a[tag=SpearGrab_UserB,limit=1] run tp @e[tag=SpearGrab_VictimTeleB,limit=1,scores={projectileLife=21..24}] ^ ^ ^2.5
#execute positioned as @a[tag=SpearGrab_UserB,limit=1] as @a[tag=SpearGrab_UserB,limit=1] run tp @e[tag=SpearGrab_VictimTeleB,limit=1,scores={projectileLife=25..28}] ^ ^ ^2.4
#execute positioned as @a[tag=SpearGrab_UserB,limit=1] as @a[tag=SpearGrab_UserB,limit=1] run tp @e[tag=SpearGrab_VictimTeleB,limit=1,scores={projectileLife=29..31}] ^ ^ ^2.3
#execute positioned as @a[tag=SpearGrab_UserB,limit=1] as @a[tag=SpearGrab_UserB,limit=1] run tp @e[tag=SpearGrab_VictimTeleB,limit=1,scores={projectileLife=32..35}] ^ ^ ^2.2
#execute positioned as @a[tag=SpearGrab_UserB,limit=1] as @a[tag=SpearGrab_UserB,limit=1] run tp @e[tag=SpearGrab_VictimTeleB,limit=1,scores={projectileLife=36..40}] ^ ^ ^2

