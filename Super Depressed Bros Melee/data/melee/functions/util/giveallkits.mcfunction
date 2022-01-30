##
 # giveallkits.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

# base
execute if entity @a[scores={heroType=1,gameState=1}] as @a[scores={heroType=1,gameState=1}] run function melee:drip_sam/givekit
execute if entity @a[scores={heroType=2,gameState=1}] as @a[scores={heroType=2,gameState=1}] run function melee:bill_clinton/givekit
execute if entity @a[scores={heroType=3,gameState=1}] as @a[scores={heroType=3,gameState=1}] run function melee:hotsuke/givekit
execute if entity @a[scores={heroType=4,gameState=1}] as @a[scores={heroType=4,gameState=1}] run function melee:bigfloppa/givekit
execute if entity @a[scores={heroType=5,gameState=1}] as @a[scores={heroType=5,gameState=1}] run function melee:erased/givekit
execute if entity @a[scores={heroType=6,gameState=1}] as @a[scores={heroType=6,gameState=1}] run function melee:hibbins/givekit
execute if entity @a[scores={heroType=7,gameState=1}] as @a[scores={heroType=7,gameState=1}] run function melee:reaper/givekit
execute if entity @a[scores={heroType=8,gameState=1}] as @a[scores={heroType=8,gameState=1}] run function melee:ayanami/givekit
execute if entity @a[scores={heroType=9,gameState=1}] as @a[scores={heroType=9,gameState=1}] run function melee:sonicnevin/givekit
execute if entity @a[scores={heroType=10,gameState=1}] as @a[scores={heroType=10,gameState=1}] run function melee:grugstalin/givekit
execute if entity @a[scores={heroType=11,gameState=1}] as @a[scores={heroType=11,gameState=1}] run function melee:liam/givekit
execute if entity @a[scores={heroType=12,gameState=1}] as @a[scores={heroType=12,gameState=1}] run function melee:snowmeiser/givekit

#s2
execute if entity @a[scores={heroType=13,gameState=1}] as @a[scores={heroType=13,gameState=1}] run function melee:season_2/sephiroth/givekit
execute if entity @a[scores={heroType=15,gameState=1}] as @a[scores={heroType=15,gameState=1}] run function melee:season_2/bezos/givekit

#s3
execute if entity @a[scores={heroType=14,gameState=1}] as @a[scores={heroType=14,gameState=1}] run function melee:season_3/davy_jones/givekit
execute if entity @a[scores={heroType=16,gameState=1}] as @a[scores={heroType=16,gameState=1}] run function melee:season_3/sting_v/givekit

#ce


#bosses, hunter wanted a separate givekit for b!davy
execute if entity @a[scores={heroType=14,gameState=2}] as @a[scores={heroType=14,gameState=2}] run function melee:season_3/davy_jones/boss/givekit
