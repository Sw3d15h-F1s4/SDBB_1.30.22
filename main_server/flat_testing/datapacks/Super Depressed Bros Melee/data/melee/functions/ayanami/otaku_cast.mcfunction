##
 # otaku_cast.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

tag @s add otaku_charge

effect give @s slowness 1 0 true

# Helper Timer tests when this ability can trigger again. Helper Timer 3 determines when the charge value can be reset back to 0.
scoreboard players add @s[scores={summonCount=..20,gameState=1}] summonCount 1
#playsound minecraft:entity.husk.converted_to_zombie master @a ~ ~ ~
scoreboard players set @s[scores={summonCount=..20,gameState=1}] helperTimer 2
scoreboard players set @s[scores={summonCount=..19,gameState=1}] helperTimer3 30

#stopsound @s master minecraft:block.respawn_anchor.ambient

playsound minecraft:entity.guardian.attack master @s[scores={summonCount=1,gameState=1}] ~ ~ ~ 1 1
playsound minecraft:entity.guardian.attack master @s[scores={summonCount=2,gameState=1}] ~ ~ ~ 1 0.9
playsound minecraft:entity.guardian.attack master @s[scores={summonCount=3,gameState=1}] ~ ~ ~ 1 0.8
playsound minecraft:entity.guardian.attack master @s[scores={summonCount=4,gameState=1}] ~ ~ ~ 1 0.7
playsound minecraft:entity.guardian.attack master @s[scores={summonCount=5,gameState=1}] ~ ~ ~ 1 0.6
playsound minecraft:entity.guardian.attack master @s[scores={summonCount=6,gameState=1}] ~ ~ ~ 1 0.5
playsound minecraft:entity.guardian.attack master @s[scores={summonCount=7,gameState=1}] ~ ~ ~ 1 0.4
playsound minecraft:entity.guardian.attack master @s[scores={summonCount=8,gameState=1}] ~ ~ ~ 1 0.3
playsound minecraft:entity.guardian.attack master @s[scores={summonCount=9,gameState=1}] ~ ~ ~ 1 0.2

stopsound @s[scores={summonCount=10..,gameState=1}] master entity.guardian.attack
playsound minecraft:entity.illusioner.mirror_move master @s[scores={summonCount=10,gameState=1}] ~ ~ ~ 1 0.5

scoreboard players set @s[scores={summonCount=10..,gameState=1}] summonCount 200
scoreboard players set @s[scores={summonCount=10..,gameState=1}] helperTimer3 100

# Sam-proofing the machine
tellraw @s[scores={gameState=..0}] {"text":"GO IN GAME STATE 1, NOOB!!!!!!! I LITERALLY MADE SELFKIT BETTER FOR ISSUES LIKE THIS, SAM!!!!!!!!!!!! IF YOU'RE TOO LAZY TO RUN THE COMMAND, JUST PRESS THIS MESSAGE YOU xXx_n00byNOOB_xXX!!!!!!!!!!!!!!!!!!!!!","color":"dark_red","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to become wise. . .","bold":false,"italic":true}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s gameState 1"}}
playsound minecraft:entity.cow.hurt master @s[scores={gameState=..0}] ~ ~ ~ 1

tellraw @s[scores={gameState=3..}] {"text":"GO IN GAME STATE 1, NOOB!!!!!!! I LITERALLY MADE SELFKIT BETTER FOR ISSUES LIKE THIS, SAM!!!!!!!!!!!! IF YOU'RE TOO LAZY TO RUN THE COMMAND, JUST PRESS THIS MESSAGE YOU xXx_n00byNOOB_xXX!!!!!!!!!!!!!!!!!!!!!","color":"dark_red","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to become wise. . .","bold":false,"italic":true}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s gameState 1"}}
playsound minecraft:entity.cow.hurt master @s[scores={gameState=3..}] ~ ~ ~ 1

# You wanted Boss Davy, but got Rei Ayanami instead. Common mistake.
tellraw @s[scores={gameState=2}] {"text":"Boss Rei is coming out in 2023. Until then, play the normal version.","color":"#0091A1","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to become disappointed. . . (Thanks Nathan :( )","bold":false,"italic":true}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s gameState 1"}}
playsound minecraft:entity.splash_potion.break master @s[scores={gameState=2}] ~ ~ ~ 1


#summon area_effect_cloud ~ ~1 ~ {Tags:["otakuray"],Duration:1200,Radius:0f}
#tp @e[tag=otakuray,limit=1,sort=nearest] @s
#tp @e[tag=otakuray,limit=1,sort=nearest] ~ ~1.5 ~
#scoreboard players set @s projectileLife 0

#scoreboard players set @s helperTimer 15
#playsound sdbb:rei_ayanami.otaku_laser hostile @a ~ ~ ~ 3
