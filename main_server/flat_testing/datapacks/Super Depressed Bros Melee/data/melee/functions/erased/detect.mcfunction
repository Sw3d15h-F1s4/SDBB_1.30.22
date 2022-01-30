
execute as @a[tag=!red_deal,scores={ability=1,heroType=5,abilityTimer=..0},nbt={SelectedItem:{tag:{Tags:["pull_orb"]}}}] at @s run function melee:erased/pull_orb
execute as @a[tag=!red_deal,scores={ability=1,heroType=5,ability2Timer=..0},nbt={SelectedItem:{tag:{Tags:["nano"]}}}] at @s run function melee:erased/nanomachines
execute as @a[scores={ability=1,heroType=5,ability3Timer=..0},nbt={SelectedItem:{tag:{Tags:["red_deal"]}}}] at @s run function melee:erased/red_deal

execute as @a[tag=red_deal,scores={ability=1,heroType=5,abilityTimer=..0},nbt={SelectedItem:{tag:{Tags:["rd_option1"]}}}] at @s run function melee:erased/rd_option1
execute as @a[tag=red_deal,scores={ability=1,heroType=5,ability2Timer=..0},nbt={SelectedItem:{tag:{Tags:["rd_option2"]}}}] at @s run function melee:erased/rd_option2

execute as @a[scores={ability=1,heroType=5,ultTimer=..0},nbt={SelectedItem:{tag:{Tags:["erased_is_last"]}}}] at @s run function melee:erased/erased_is_last