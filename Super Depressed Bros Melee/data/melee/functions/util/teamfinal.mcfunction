
title @a title "Teams are final!"
title @a subtitle "Begin character selection!"

team join Blue @a[x=337,y=4,z=443,dx=5,dy=3,dz=10,gamemode=!spectator]
team join Red @a[x=331,y=4,z=443,dx=4,dy=3,dz=10,gamemode=!spectator]

# Main character select room (Cherry, Winter, Crust, World's End)
tp @a[team=Red] 339 4 417
tp @a[team=Blue] 339 4 429
# Spectator Main
tp @a[gamemode=spectator] 339 4 417

# Mystery Mansion char select
#execute if score MysteryMansion mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote > WinterWasteland mapVote run tp @a[team=Red] 343 4 393
#execute if score MysteryMansion mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote > WinterWasteland mapVote run tp @a[team=Blue] 343 4 403
# Spectator Mystery
#execute if score MysteryMansion mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote > WinterWasteland mapVote run tp @a[gamemode=spectator] 343 4 403

schedule function melee:util/skinreminder 5s

schedule function melee:util/thirtycount 30s
schedule function melee:util/startgame 60s