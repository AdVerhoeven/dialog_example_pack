# create a dialog action (button) for this entity in command storage

execute if entity @s[type=player] at @s run function essentials:dialog/player/buttons/generate/player
execute if entity @s[type=!player] run function essentials:dialog/player/buttons/generate/nonplayer