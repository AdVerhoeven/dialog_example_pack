scoreboard players set @s open_dialog 0
scoreboard players enable @s selected_player
data remove storage essentials:options players
execute as @e[scores={playerid=1..}] run function essentials:dialog/player/singleoption/generate
function essentials:dialog/player/singleoption/show_dialog with storage essentials:options
data remove storage essentials:options players
scoreboard players enable @s open_dialog
