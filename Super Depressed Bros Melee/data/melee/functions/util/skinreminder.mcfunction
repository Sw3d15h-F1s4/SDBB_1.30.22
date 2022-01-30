
title @a title "Change your skins!"
title @a subtitle "Click the link in chat!"

tellraw @a[gamemode=!spectator] {"text":"Click me to change skins.","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/skinsmenu"},"hoverEvent":{"action":"show_text","contents":[{"text":"CLICK ME!!!","bold":true,"italic":true,"underlined":false,"color":"white"}]}}