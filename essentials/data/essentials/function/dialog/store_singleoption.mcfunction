# create a dialog singleoption input option for this entity in command storage

execute if entity @s[type=player] run function essentials:dialog/store_options/player
execute if entity @s[type=!player] run function essentials:dialog/store_options/nonplayer