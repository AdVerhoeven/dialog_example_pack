scoreboard players reset @s open_dialog
scoreboard players enable @s create_tp_here
scoreboard players enable @s create_tp_to
data remove storage essentials:teleport dialog_actions
execute as @e[scores={playerid=1..}] run function essentials:dialog/request/create/generate
function essentials:dialog/request/create/show_dialog with storage essentials:teleport
scoreboard players enable @s open_dialog
