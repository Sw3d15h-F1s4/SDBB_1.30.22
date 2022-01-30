##
 # detect.mcfunction
 # Super Sad Bros Melee
 #
 # Created by Sw3d15h_F1s4
##

#this file too is kind of a template. basically my assumption that less commands/tick = better resulted in this. the ability detection commands are only run if:
#a) the hero exists in game
#b) that hero activated at least 1 ability this tick.
#this way, detect commands only run when needed and 200 commands dont run constantly in main. Unknown if this actually benefits anything.

execute as @a[scores={ability=1,heroType=1,abilityTimer=..0},nbt={SelectedItem:{tag:{Tags:["anime"]}}}] at @s run function melee:drip_sam/animepredict
execute as @a[scores={ability=1,heroType=1,ability2Timer=..0},nbt={SelectedItem:{tag:{Tags:["hack"]}}}] at @s run function melee:drip_sam/hacksystem
execute as @a[scores={ability=1,heroType=1,ability3Timer=..0},nbt={SelectedItem:{tag:{Tags:["senko"]}}}] at @s run function melee:drip_sam/senkomode


execute as @a[scores={ability=1,heroType=1,ability3Timer=..0},nbt={SelectedItem:{tag:{Tags:["lil_uzi"]}}}] at @s run function melee:drip_sam/lil_uzi_fire

execute as @a[scores={ability=1,heroType=1,ultTimer=..0},nbt={SelectedItem:{tag:{Tags:["cringe"]}}}] at @s run function melee:drip_sam/purecringe