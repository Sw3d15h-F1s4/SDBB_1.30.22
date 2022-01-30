##
 # setup.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

#create scoreboard objectives if not already present
scoreboard objectives add ability minecraft.used:carrot_on_a_stick
scoreboard objectives add fungus_use minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add crossbowUse minecraft.used:crossbow
scoreboard objectives add damageDealt minecraft.custom:damage_dealt
scoreboard objectives add damageTaken minecraft.custom:damage_taken
scoreboard objectives add currentHealth health
scoreboard objectives add shieldPure minecraft.custom:damage_blocked_by_shield "Shield Damage * 10"
scoreboard objectives add shieldUse minecraft.used:shield
scoreboard objectives add scytheUse minecraft.used:iron_hoe "Reaper Sow Hit"


scoreboard objectives add abilityTimer dummy "1st Ability Cooldown"
scoreboard objectives add ability2Timer dummy "2nd Ability Cooldown"
scoreboard objectives add ability3Timer dummy "3rd Ability Cooldown"
scoreboard objectives add helperTimer dummy "Helper Timer"
scoreboard objectives add helperTimer2 dummy "As if it wasn't enough!"
scoreboard objectives add helperTimer3 dummy "AUGHHHHH!! ANOTHER TIMER"
scoreboard objectives add spinTimer dummy "Miser Spin Timer"
scoreboard objectives add ultTimer dummy "Ultimate Ability Cooldown"
scoreboard objectives add heroType dummy "Hero Condition"
scoreboard objectives add projectileLife dummy "Time of Life for Projectiles"
scoreboard objectives add gameState dummy "Game State 2 sucks"
scoreboard objectives add respawnRes dummy "Timer to Initate Invulnerability"
scoreboard objectives add trueSephiroth dummy "One Winged Angel Condition"
scoreboard objectives add HS_rsptJBCancel dummy "Hotsuke Clear Jump Boost Condition"
scoreboard objectives add SM_suaveMente dummy "General Condition (Recycled)"
scoreboard objectives add BF_PeopleAround dummy "How Many People are near Floppa?"
scoreboard objectives add C3_pHealth dummy "Charne_3 Rat's Plague Health Increase"
scoreboard objectives add DJ_FearDeath dummy "Do You Fear Death Suspension Condition"
scoreboard objectives add GS_PoisonIm dummy "Poison Immunity Time"
scoreboard objectives add GS_GulagNum dummy "How Many Traitors are there?"

scoreboard objectives add shieldDamage dummy "Shield Damage, Calculated"



scoreboard objectives add StV_VTBound dummy "Health needed to take effect"
scoreboard objectives add StV_VTMax dummy "Takedown wearoff"
scoreboard objectives add StV_WeaponUse minecraft.used:iron_sword "Emperor's Blade Left Click"

scoreboard objectives add hotsukeKills playerKillCount "D e s t r u c t i o n!"
scoreboard objectives add killstreak dummy "Who got the Milk?"
scoreboard objectives add killstreakReset deathCount "absolute fool loser dumbass eeehhee"
scoreboard objectives add mapVote dummy "Vote for a Map!"

scoreboard objectives add summonCount dummy "Recycled Scoreboard (Charge and GRUG)"
scoreboard objectives add Status dummy "Hibbins' Estate Door Teleport State"
scoreboard objectives add debugMode dummy "hecker"

scoreboard objectives add snowMeiserSound dummy

bossbar add summon_count "Comrade ConGRUGation"
bossbar set summon_count max 10
bossbar set summon_count style notched_10
bossbar set summon_count color red

scoreboard objectives add b_clonedeath dummy "Bezos Clones' Death March"

scoreboard players set @a ability 0
scoreboard players set @a abilityTimer -1
scoreboard players set @a ability2Timer -1
scoreboard players set @a ability3Timer -1
scoreboard players set @a helperTimer -1
scoreboard players set @a helperTimer2 -1
scoreboard players set @a helperTimer3 -1
scoreboard players set @a spinTimer -1
scoreboard players set @a ultTimer -1
scoreboard players set @a Status 0

#scoreboard players set @a gameState 0
scoreboard players set @a trueSephiroth 0
scoreboard players set @a SM_suaveMente 0
scoreboard players set @a C3_pHealth 0

team add Red "Red Team"
team modify Red color red
team modify Red nametagVisibility hideForOtherTeams
team modify Red collisionRule pushOtherTeams

team add Blue "Blue Team"
team modify Blue color blue
team modify Blue nametagVisibility hideForOtherTeams
team modify Blue collisionRule pushOtherTeams

scoreboard objectives add PlayerScore deathCount "Points Against"
scoreboard objectives add TeamScore dummy "Team Scores"
scoreboard objectives add SmoothTeamScore dummy "Team Scores"

scoreboard players add Goal TeamScore 60

scoreboard objectives add totalWins dummy "Win Count!"

# Determines who gets a key at the end of a match.
# See util/endgame and util/returntolobby
scoreboard objectives add keyGive dummy

scoreboard players add countdown helperTimer 1
scoreboard players set countgoal helperTimer 0

# Cringe baby scoreboards. Remove!
scoreboard objectives remove RL.Use
scoreboard objectives remove RL.Tick

# Numbers, for execute if score comparisons:
# Used for Bill Clinton's shield, and comparing the number of summons Grug has.
scoreboard players set Three debugMode 3



# Team-dependent Rei Charge meters (gone, reduced to atoms!)

# Holtzman's Shield scoreboards!!!!
#
# The motion seems to work, but the arrow seems to keep
# straying to the left (right of Sting), and I have no idea how
# to fix this right now. We decided to scrap this idea, but if it can be fixed please FIX IT
# I'd like Holtzman to work, because it was Sting's entire character.

#scoreboard objectives add StV_Holtzman dummy "Arrow Freeze Timer"
#scoreboard objectives add StV_Motion0 dummy
#scoreboard objectives add StV_Motion1 dummy
#scoreboard objectives add StV_Motion2 dummy


say Super Depressed Bros: Brawl! datapack loaded.
