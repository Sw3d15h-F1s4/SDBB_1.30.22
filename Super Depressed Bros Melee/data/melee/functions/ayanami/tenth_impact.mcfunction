#Society's Tenth Impact by Sw3d15h_F1s4
#Summons small creepers on each enemy, dealing a little damage. Deadly if close together.

execute if entity @s[team=Red] as @a[team=!Red,gamemode=adventure] at @s run summon creeper ^ ^ ^0.1 {Team:Red,ExplosionRadius:1,Fuse:0,CustomName:'{"text":"SOCIETY\'s 10th IMPACT","color":"dark_red","bold":true}'}
execute if entity @s[team=Blue] as @a[team=!Blue,gamemode=adventure] at @s run summon creeper ^ ^ ^0.1 {Team:Blue,ExplosionRadius:1,Fuse:0,CustomName:'{"text":"SOCIETY\'s 10th IMPACT","color":"dark_blue","bold":true}'}

clear @s carrot_on_a_stick{Tags:["tenth_impact"]}
playsound sdbb:rei_ayanami.tenth_impact master @a ~ ~ ~
scoreboard players set @s ultTimer 2400