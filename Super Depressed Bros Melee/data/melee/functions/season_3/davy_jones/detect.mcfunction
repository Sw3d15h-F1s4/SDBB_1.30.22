# Davy only uses helperTimer3 for the passives, but he uses standard 3 abiltiy timers.

execute as @a[tag=!dyfd_victim,scores={gameState=1,ability=1,heroType=14,abilityTimer=..0},nbt={SelectedItem:{tag:{Tags:["believe_death"]}}}] at @s run function melee:season_3/davy_jones/dybi_death
execute as @a[scores={gameState=1,ability=1,heroType=14,ability2Timer=..0},nbt={SelectedItem:{tag:{Tags:["organ_i"]}}}] at @s run function melee:season_3/davy_jones/organ_intimidation
execute as @a[scores={gameState=1,ability=1,heroType=14,ability3Timer=..0},nbt={SelectedItem:{tag:{Tags:["buckshot"]}}}] at @s run function melee:season_3/davy_jones/buckshot
execute as @a[scores={gameState=1,ability=1,heroType=14,ultTimer=..0},nbt={SelectedItem:{tag:{Tags:["dms_chest"]}}}] at @s run function melee:season_3/davy_jones/deadmans_chest