##
 # warps.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

#handles the funny doors in mystery mansion
#Color Codes:
#Yellow - Lead to Other Yellow Rooms Only (Main Mansion)
#Black - Lead to Other Black Rooms Only (Crypt/Basement)
#White - Leads to Abyss Maze (one way)
#Purple - Leads to Garthorb Room (into garthorb room)
#Red - Leads to the Reaper (one way, only in)
#Other Useful Info:
#Orange means one way door
#spawn can only leave and go to normal
#fish tanks can only leave and go to normal
#all stands have "warpPoint"
#yellow stands have "warpMain" which lets them warp to any "warpMain"
#black stands have "warpCrypt" which lets them warp to any "warpCrypt"
#white stands have "warpToAbyss" which lets them warp ONLY to the other "warpAbyss"
#stands with "warpAbyss" can warp to any warpPoint, provided they are not oneWayOut.
#purple stands have "warpToOrb" which lets them warp ONLY to stands that have "warpOrb"
#red stands have "warpToReaper" which lets them warp ONLY to stands that have "warpReaper"
#stands with "warpReaper" can only warp to "warpReaper"
#stands with "oneWayOut" can not be warped to (only from), stands with "oneWayIn" can not be warped from (only to).
#stands with "disabled" can not be warped to. (but can be warped from for safety reasons).
#"warpOrb" doesn't do anything and is just a marker.

#identify every player in range of a warp stand
execute as @e[tag=warpPoint] at @s run scoreboard players set @a[distance=..1,scores={Status=0}] Status 1
#one by one, handle each player's warp individually (use of @p here is important, also only identifying one player at a time here.)
tag @p[scores={Status=1}] add handlingWarp
#warp to and from warpMain
execute as @p[tag=handlingWarp] at @s if entity @e[distance=..1,tag=warpMain,tag=!oneWayIn] run function melee:environmental/hibbins_estate/warp_targets/warp_main
#warp to and from warpCrypt
execute as @p[tag=handlingWarp] at @s if entity @e[distance=..1,tag=warpCrypt,tag=!oneWayIn] run function melee:environmental/hibbins_estate/warp_targets/warp_crypt
#warp to and from warpReaper (warp to other reaper doors basically lmao, ignore directionality since it do not maater)
execute as @p[tag=handlingWarp] at @s if entity @e[distance=..1,tag=warpReaper] run function melee:environmental/hibbins_estate/warp_targets/warp_reaper
execute as @p[tag=handlingWarp] at @s if entity @e[distance=..1,tag=warpToReaper] run function melee:environmental/hibbins_estate/warp_targets/warp_reaper
#warp to garthorb's room
execute as @p[tag=handlingWarp] at @s if entity @e[distance=..1,tag=warpToOrb] run tp @s @e[tag=warpOrb,tag=!disabled,distance=1..,sort=random,limit=1]
#warp to and from the Abyss
execute as @p[tag=handlingWarp] at @s if entity @e[distance=..1,tag=warpToAbyss] run tp @s @e[tag=warpAbyss,tag=oneWayIn,tag=!disabled,distance=1..,limit=1]
execute as @p[tag=handlingWarp] at @s if entity @e[distance=..1,tag=warpAbyss,tag=!oneWayIn] run tp @s @e[tag=warpPoint,tag=!oneWayOut,tag=!disabled,distance=1..,limit=1,sort=random]
#remove the tag in the same tick
tag @a remove handlingWarp
scoreboard players set @a[scores={Status=1},tag=!handlingWarp] Status 2
execute as @e[scores={Status=2}] at @s unless entity @e[distance=..2,tag=warpPoint] run scoreboard players set @s Status 0