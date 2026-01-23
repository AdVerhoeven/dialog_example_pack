scoreboard players reset @s open_dialog
scoreboard players enable @s create_tp_here
scoreboard players enable @s create_tp_to
data remove storage essentials:teleport dialog_actions
execute as @e[scores={playerid=1..}, distance=0.1..] run function essentials:dialog/request/create/generate
execute store result score #this iterator run data get storage essentials:teleport dialog_actions
scoreboard players operation #this iterator /= .single_column_limit iterator
scoreboard players add #this iterator 1
scoreboard players operation #this iterator < .max_columns iterator
execute store result storage essentials:teleport columns int 1 run scoreboard players get #this iterator
function essentials:dialog/request/create/show_dialog with storage essentials:teleport
scoreboard players enable @s open_dialog
