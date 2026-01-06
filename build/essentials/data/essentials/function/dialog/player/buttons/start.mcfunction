scoreboard players set @s open_dialog 0
scoreboard players enable @s selected_player
data remove storage essentials:pretty players
execute as @e[scores={playerid=1..}] run function essentials:dialog/player/buttons/generate
function essentials:dialog/player/buttons/show_dialog with storage essentials:pretty
scoreboard players enable @s open_dialog
