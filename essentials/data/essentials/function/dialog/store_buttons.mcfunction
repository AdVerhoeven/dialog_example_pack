# create a dialog action (button) for this entity in command storage

execute if entity @s[type=player] run function essentials:dialog/store_buttons/player
execute if entity @s[type=!player] run function essentials:dialog/store_buttons/nonplayer