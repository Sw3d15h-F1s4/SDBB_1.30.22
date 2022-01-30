##
 # reset.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

scoreboard players set @a ability 0
scoreboard players set @a crossbowUse 0

scoreboard players remove @a[scores={abilityTimer=0..}] abilityTimer 1
scoreboard players remove @a[scores={ability2Timer=0..}] ability2Timer 1
scoreboard players remove @a[scores={ability3Timer=0..}] ability3Timer 1

scoreboard players remove @e[scores={helperTimer=0..}] helperTimer 1
execute if score countdown helperTimer >= countgoal helperTimer run scoreboard players remove countdown helperTimer 1
execute if score thirtycountdown helperTimer >= countgoal helperTimer run scoreboard players remove thirtycountdown helperTimer 1
scoreboard players remove @a[scores={helperTimer2=0..}] helperTimer2 1
scoreboard players remove @a[scores={helperTimer3=0..}] helperTimer3 1
scoreboard players remove @a[scores={spinTimer=0..}] spinTimer 1
scoreboard players remove @a[scores={ddCooldown=0..}] ddCooldown 1
scoreboard players remove @a[scores={heroType=..3,BF_PeopleAround=0..}] BF_PeopleAround 1
scoreboard players remove @a[scores={heroType=5..,BF_PeopleAround=0..}] BF_PeopleAround 1
scoreboard players remove @a[scores={GS_PoisonIm=0..}] GS_PoisonIm 1

scoreboard players remove @a[scores={ultTimer=0..}] ultTimer 1

# So that the Resistance from respawning doesnt clear as you die, due to how stuff works:
scoreboard players remove @a[scores={respawnRes=0..}] respawnRes 1
scoreboard players set @a[scores={respawnRes=..0}] respawnRes -1

scoreboard players remove @a[scores={snowMeiserSound=0..}] snowMeiserSound 1

execute if entity @a[scores={gameState=1..2}] run function melee:util/giveallkits