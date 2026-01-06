# if the player already has an ID, short-circuit out of this function
execute if score @s playerid matches 1.. run return fail

# Assign the max player ID to the player
scoreboard players operation @s playerid = .max playerid

# Increment the max player ID by one
scoreboard players add .max playerid 1

# For now I also enable the selected_player objective so you can use the dialog
scoreboard players enable @s selected_player

function essentials:dialog/help