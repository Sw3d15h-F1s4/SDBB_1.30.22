

execute as @a[scores={ability=1..,heroType=6,abilityTimer=..0},nbt={SelectedItem:{tag:{Tags:["majak"]}}}] at @s run function melee:hibbins/majak_cast
execute as @a[scores={ability=1,heroType=6,ability2Timer=..0},nbt={SelectedItem:{tag:{Tags:["ascend"]}}}] at @s run function melee:hibbins/ascend
execute as @a[scores={ability=1,heroType=6,ability3Timer=..0},nbt={SelectedItem:{tag:{Tags:["curse"]}}}] at @s run function melee:hibbins/curse
execute as @a[scores={ability=1,heroType=6,ultTimer=..0},nbt={SelectedItem:{tag:{Tags:["universe"]}}}] at @s run function melee:hibbins/comprehension