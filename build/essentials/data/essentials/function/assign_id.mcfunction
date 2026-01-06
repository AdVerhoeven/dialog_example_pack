execute if score @s playerid matches 1.. run return fail
scoreboard players operation @s playerid = .max playerid
scoreboard players add .max playerid 1
scoreboard players enable @s selected_player
function essentials:dialog/help
