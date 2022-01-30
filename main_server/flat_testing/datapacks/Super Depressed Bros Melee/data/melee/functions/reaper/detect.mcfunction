#patched made in heaven on sephiroth's side, also blocked him fromm using it while ult is active.
execute as @a[scores={ability=1,heroType=7,abilityTimer=..0},nbt={SelectedItem:{tag:{Tags:["retreat"]}}}] at @s run function melee:reaper/dubious_retreat
execute as @a[scores={ability=1,heroType=7,ability2Timer=..0},nbt={SelectedItem:{tag:{Tags:["speed_d"]}}}] at @s run function melee:reaper/speed_d
execute as @a[scores={ability=1,heroType=7,ability3Timer=..0},nbt={SelectedItem:{tag:{Tags:["blazing_trails"]}}}] at @s run function melee:reaper/blazing_trails
execute as @a[scores={ability=1,heroType=7,ultTimer=..0},nbt={SelectedItem:{tag:{Tags:["saiyan"]}}}] at @s run function melee:reaper/supersaiyan
