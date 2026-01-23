execute if score @s playerid matches 1.. run return fail
scoreboard players operation @s playerid = #max playerid
scoreboard players add #max playerid 1
function essentials:dialog/help
