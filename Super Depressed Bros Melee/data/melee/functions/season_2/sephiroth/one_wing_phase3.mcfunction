#contains phases 3 and 4


tellraw @a "Sephiroth grows tied of this monotonous world."
tellraw @a "The One Winged Angel uses Supernova!"

tp @a 208 4 666

tp @a[scores={heroType=13,trueSephiroth=1}] 209 10 686

schedule function melee:season_2/sephiroth/one_wing_phase5 45s