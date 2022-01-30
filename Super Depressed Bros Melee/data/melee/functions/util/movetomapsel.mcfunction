#run scoreboard setup commands right now.

scoreboard players reset *
scoreboard players set @a ability 0
scoreboard players set @a heroType 0
scoreboard players set Blue TeamScore 0
scoreboard players set Red TeamScore 0
scoreboard players set @a PlayerScore 0
scoreboard players set Blue SmoothTeamScore 0
scoreboard players set Red SmoothTeamScore 0

scoreboard players set @a helperTimer 0
scoreboard players set @a helperTimer2 0
scoreboard players set @a abilityTimer 0
scoreboard players set @a ability2Timer 0
scoreboard players set @a ability3Timer 0
scoreboard players set @a ultTimer 0
scoreboard players set @a trueSephiroth 0
scoreboard players set @a spinTimer 0
scoreboard players set @a ddCooldown 0
scoreboard players set @a gameState 0

scoreboard players set countdown helperTimer -1
scoreboard players set countgoal helperTimer 0


scoreboard players set Sw3d15h_F1s4 modcheck 1
scoreboard players set Hotsuke_UchYeHaw modcheck 1
scoreboard players set G0ld3n_Phant0m modcheck 1


title @a title "Vote for a map!"
title @a subtitle "One at a time, please."

tp @a 331 11 415

scoreboard objectives setdisplay sidebar mapVote

scoreboard players set CherryBlossomValley mapVote 0
scoreboard players set WinterWasteland mapVote 0
scoreboard players set AtWorldsEnd mapVote 0
scoreboard players set MysteryMansion mapVote 0

function melee:util/thirtycount
schedule function melee:util/mapselect 30s