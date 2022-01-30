
# I should maybe make this a,, uhh.. Fungus Stick.
execute as @a[scores={ability=1,heroType=10,helperTimer=..0},nbt={SelectedItem:{tag:{Tags:["iron_fist"]}}}] at @s run function melee:grugstalin/ironfist

execute as @a[scores={ability=1,heroType=10,abilityTimer=..0},nbt={SelectedItem:{tag:{Tags:["wealth"]}}}] at @s run function melee:grugstalin/sharewealth
execute as @a[scores={ability=1,heroType=10,ability2Timer=..0},nbt={SelectedItem:{tag:{Tags:["un_harvest"]}}}] at @s run function melee:grugstalin/un_harvest
execute as @a[scores={ability=1,heroType=10,ability3Timer=..0},nbt={SelectedItem:{tag:{Tags:["emp_guard"]}}}] at @s run function melee:grugstalin/emp_guard

execute as @a[scores={ability=1,heroType=10,ultTimer=..0},nbt={SelectedItem:{tag:{Tags:["gulag"]}}}] at @s run function melee:grugstalin/gulag_cast