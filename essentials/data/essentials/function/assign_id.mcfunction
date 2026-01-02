# Assign the max player ID to the player
# (When this is first ran, .max playerid is not set and read as 0, so the first player gets the ID 0)
scoreboard players operation @s playerid = .max playerid

# Increment the max player ID by one
scoreboard players add .max playerid 1

# For now I also enable the selected_player objective so you can use the dialog
scoreboard players enable @s selected_player

function essentials:dialog/help