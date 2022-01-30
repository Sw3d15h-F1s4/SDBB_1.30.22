####
   # buckshot.mcfunction
   # Super Depressed Bros. Brawl
   # Created by Nathan
####   

# 2 total ammo, one already in gun and one bullet
replaceitem entity @s hotbar.3 crossbow{CustomModelData:14030,display:{Name:'{"text":"Davy\'s Flintlock Pistol","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"A well-worn pistol that","color":"blue","italic":false}','{"text":"has served Davy Jones for","color":"blue","italic":false}','{"text":"generations. He believes it","color":"blue","italic":false}','{"text":"to be fairly accurate.","color":"blue","italic":false}']},HideFlags:127,Unbreakable:1b,Tags:["dj_flintlock"],Enchantments:[{id:"minecraft:multishot",lvl:1s},{id:"minecraft:quick_charge",lvl:1s}],ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;16727813,16749059,16768256],FadeColors:[I;16760425,16768399,16776074,16770756]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;16727813,16749059,16768256],FadeColors:[I;16760425,16777215,16776074,16770756]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;16727813,16749059,16768256],FadeColors:[I;16760425,16768399,16776074,16770756]}]}}}],Charged:1b}
replaceitem entity @s weapon.offhand firework_rocket{display:{Name:'{"text":"Flintlock Ammo","color":"#CCBA5E","bold":true,"italic":false}'},HideFlags:127,Tags:["dj_flintlockammo"],Fireworks:{Flight:1b,Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;16727813,16749059,16768256],FadeColors:[I;16760425,16768399,16776074,16770756]}]}} 1

clear @s carrot_on_a_stick{Tags:["buckshot"]}
scoreboard players set @s ability3Timer 600
# After this hits 0, clears arrows and flintlock
scoreboard players set @s SM_suaveMente 100