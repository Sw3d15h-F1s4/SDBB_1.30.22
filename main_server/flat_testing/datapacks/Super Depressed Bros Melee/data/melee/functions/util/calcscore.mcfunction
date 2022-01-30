
scoreboard players set Blue TeamScore 0
scoreboard players operation Blue TeamScore += @a[team=Red] PlayerScore
scoreboard players set Red TeamScore 0
scoreboard players operation Red TeamScore += @a[team=Blue] PlayerScore

scoreboard players operation Red SmoothTeamScore = Red TeamScore
scoreboard players operation Blue SmoothTeamScore = Blue TeamScore

execute if score Red TeamScore >= Goal TeamScore run function melee:util/endgame
execute if score Blue TeamScore >= Goal TeamScore run function melee:util/endgame