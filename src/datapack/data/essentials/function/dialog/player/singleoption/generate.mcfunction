# create a dialog singleoption input option for this entity in command storage

execute if entity @s[type=player] at @s run function essentials:dialog/player/singleoption/generate/player
execute if entity @s[type=!player] run function essentials:dialog/player/singleoption/generate/nonplayer