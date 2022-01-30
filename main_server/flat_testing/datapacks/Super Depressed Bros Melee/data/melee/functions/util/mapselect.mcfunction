

# Cherry Blossom decision
execute if score AtWorldsEnd mapVote < CherryBlossomValley mapVote if score MysteryMansion mapVote < CherryBlossomValley mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote run title @a title "Cherry Blossom Valley Selected"
execute if score AtWorldsEnd mapVote < CherryBlossomValley mapVote if score MysteryMansion mapVote < CherryBlossomValley mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote run title @a subtitle "Team selection begins in 5s"
execute if score AtWorldsEnd mapVote < CherryBlossomValley mapVote if score MysteryMansion mapVote < CherryBlossomValley mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote run schedule function melee:util/teamsel 5s
execute if score AtWorldsEnd mapVote < CherryBlossomValley mapVote if score MysteryMansion mapVote < CherryBlossomValley mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote run scoreboard players set mapType gameState 1

# Winter Wasteland decision
execute if score WinterWasteland mapVote > AtWorldsEnd mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote < WinterWasteland mapVote run title @a title "Winter Wasteland Selected"
execute if score WinterWasteland mapVote > AtWorldsEnd mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote < WinterWasteland mapVote run title @a subtitle "Team selection begins in 5s"
execute if score WinterWasteland mapVote > AtWorldsEnd mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote < WinterWasteland mapVote run schedule function melee:util/teamsel 5s
execute if score WinterWasteland mapVote > AtWorldsEnd mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote < WinterWasteland mapVote run scoreboard players set mapType gameState 2

# Mystery Mansion, not accessible in normal play.
execute if score MysteryMansion mapVote > AtWorldsEnd mapVote if score MysteryMansion mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote > WinterWasteland mapVote run title @a title "Hibbin's Estate Selected"
execute if score MysteryMansion mapVote > AtWorldsEnd mapVote if score MysteryMansion mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote > WinterWasteland mapVote run title @a subtitle "Team selection begins in 5s"
execute if score MysteryMansion mapVote > AtWorldsEnd mapVote if score MysteryMansion mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote > WinterWasteland mapVote run schedule function melee:util/teamsel 5s
execute if score MysteryMansion mapVote > AtWorldsEnd mapVote if score MysteryMansion mapVote > CherryBlossomValley mapVote if score MysteryMansion mapVote > WinterWasteland mapVote run scoreboard players set mapType gameState 3

# At World's End decision
execute if score MysteryMansion mapVote < AtWorldsEnd mapVote if score AtWorldsEnd mapVote > WinterWasteland mapVote if score AtWorldsEnd mapVote > CherryBlossomValley mapVote run title @a title "At World's End Selected"
execute if score MysteryMansion mapVote < AtWorldsEnd mapVote if score AtWorldsEnd mapVote > WinterWasteland mapVote if score AtWorldsEnd mapVote > CherryBlossomValley mapVote run title @a subtitle "Team selection begins in 5s"
execute if score MysteryMansion mapVote < AtWorldsEnd mapVote if score AtWorldsEnd mapVote > WinterWasteland mapVote if score AtWorldsEnd mapVote > CherryBlossomValley mapVote run schedule function melee:util/teamsel 5s
execute if score MysteryMansion mapVote < AtWorldsEnd mapVote if score AtWorldsEnd mapVote > WinterWasteland mapVote if score AtWorldsEnd mapVote > CherryBlossomValley mapVote run scoreboard players set mapType gameState 4

# Tiebreaker decision (Crust 2):
# These are many commands (~~36~~ 10 of them), thank you Sam for showing me that bug................................................ ಠ_ಠ

# The equals, if every single map has the same number (unlikely for big matches)
execute if score AtWorldsEnd mapVote = CherryBlossomValley mapVote if score MysteryMansion mapVote = CherryBlossomValley mapVote if score CherryBlossomValley mapVote = WinterWasteland mapVote run title @a title "Your match has been decided.."
execute if score AtWorldsEnd mapVote = CherryBlossomValley mapVote if score MysteryMansion mapVote = CherryBlossomValley mapVote if score CherryBlossomValley mapVote = WinterWasteland mapVote run title @a subtitle "Team selection beings in 5s"
execute if score AtWorldsEnd mapVote = CherryBlossomValley mapVote if score MysteryMansion mapVote = CherryBlossomValley mapVote if score CherryBlossomValley mapVote = WinterWasteland mapVote run schedule function melee:util/teamsel 5s
execute if score AtWorldsEnd mapVote = CherryBlossomValley mapVote if score MysteryMansion mapVote = CherryBlossomValley mapVote if score CherryBlossomValley mapVote = WinterWasteland mapVote run scoreboard players set mapType gameState 5

# The 2 set!!!!! There are 6 to choose from:
# (I originally thought I had to implement 32 commands, but i have to do 10. thx hunter for saving me time!!!!!!@Ee3rfgtrhgrtrfd)

# Cherry and Winter tie:
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote run title @a title "Your match has been decided.."
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote run title @a subtitle "Team selection beings in 5s"
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote run schedule function melee:util/teamsel 5s
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote run scoreboard players set mapType gameState 5

# Cherry and Worlds tie:
execute if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote run title @a title "Your match has been decided.."
execute if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote run title @a subtitle "Team selection beings in 5s"
execute if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote run schedule function melee:util/teamsel 5s
execute if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote run scoreboard players set mapType gameState 5

# Cherry and Mystery tie:
execute if score CherryBlossomValley mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote run title @a title "Your match has been decided.."
execute if score CherryBlossomValley mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote run title @a subtitle "Team selection beings in 5s"
execute if score CherryBlossomValley mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote run schedule function melee:util/teamsel 5s
execute if score CherryBlossomValley mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote run scoreboard players set mapType gameState 5

# Winter and Worlds tie:
execute if score WinterWasteland mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score WinterWasteland mapVote > MysteryMansion mapVote run title @a title "Your match has been decided.."
execute if score WinterWasteland mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score WinterWasteland mapVote > MysteryMansion mapVote run title @a subtitle "Team selection beings in 5s"
execute if score WinterWasteland mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score WinterWasteland mapVote > MysteryMansion mapVote run schedule function melee:util/teamsel 5s
execute if score WinterWasteland mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score WinterWasteland mapVote > MysteryMansion mapVote run scoreboard players set mapType gameState 5

# Winter and Mystery tie:
execute if score WinterWasteland mapVote = MysteryMansion mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score WinterWasteland mapVote > AtWorldsEnd mapVote run title @a title "Your match has been decided.."
execute if score WinterWasteland mapVote = MysteryMansion mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score WinterWasteland mapVote > AtWorldsEnd mapVote run title @a subtitle "Team selection beings in 5s"
execute if score WinterWasteland mapVote = MysteryMansion mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score WinterWasteland mapVote > AtWorldsEnd mapVote run schedule function melee:util/teamsel 5s
execute if score WinterWasteland mapVote = MysteryMansion mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote if score WinterWasteland mapVote > AtWorldsEnd mapVote run scoreboard players set mapType gameState 5

# Worlds and Mystery 
execute if score AtWorldsEnd mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote > CherryBlossomValley mapVote if score AtWorldsEnd mapVote > WinterWasteland mapVote run title @a title "Your match has been decided.."
execute if score AtWorldsEnd mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote > CherryBlossomValley mapVote if score AtWorldsEnd mapVote > WinterWasteland mapVote run title @a subtitle "Team selection beings in 5s"
execute if score AtWorldsEnd mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote > CherryBlossomValley mapVote if score AtWorldsEnd mapVote > WinterWasteland mapVote run schedule function melee:util/teamsel 5s
execute if score AtWorldsEnd mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote > CherryBlossomValley mapVote if score AtWorldsEnd mapVote > WinterWasteland mapVote run scoreboard players set mapType gameState 5

# 3 sets, three maps tie with each other. There are 4 to choose from:

# Cherry, Winter, and Worlds tie
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote run title @a title "Your match has been decided.."
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote run title @a subtitle "Team selection beings in 5s"
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote run schedule function melee:util/teamsel 5s
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote > MysteryMansion mapVote run scoreboard players set mapType gameState 5

# Cherry, Winter, and Mystery tie
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote = MysteryMansion mapVote if score WinterWasteland mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote run title @a title "Your match has been decided.."
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote = MysteryMansion mapVote if score WinterWasteland mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote run title @a subtitle "Team selection beings in 5s"
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote = MysteryMansion mapVote if score WinterWasteland mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote run schedule function melee:util/teamsel 5s
execute if score CherryBlossomValley mapVote = WinterWasteland mapVote if score CherryBlossomValley mapVote = MysteryMansion mapVote if score WinterWasteland mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > AtWorldsEnd mapVote run scoreboard players set mapType gameState 5

# Cherry, Worlds, and Mystery tie
execute if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote run title @a title "Your match has been decided.."
execute if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote run title @a subtitle "Team selection beings in 5s"
execute if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote run schedule function melee:util/teamsel 5s
execute if score CherryBlossomValley mapVote = AtWorldsEnd mapVote if score CherryBlossomValley mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote = MysteryMansion mapVote if score CherryBlossomValley mapVote > WinterWasteland mapVote run scoreboard players set mapType gameState 5

# Winter, Worlds, and Mystery tie
execute if score WinterWasteland mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote = MysteryMansion mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote run title @a title "Your match has been decided.."
execute if score WinterWasteland mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote = MysteryMansion mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote run title @a subtitle "Team selection beings in 5s"
execute if score WinterWasteland mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote = MysteryMansion mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote run schedule function melee:util/teamsel 5s
execute if score WinterWasteland mapVote = AtWorldsEnd mapVote if score WinterWasteland mapVote = MysteryMansion mapVote if score AtWorldsEnd mapVote = MysteryMansion mapVote if score WinterWasteland mapVote > CherryBlossomValley mapVote run scoreboard players set mapType gameState 5