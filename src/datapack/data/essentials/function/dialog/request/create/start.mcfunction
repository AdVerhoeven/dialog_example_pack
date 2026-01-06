scoreboard players reset @s open_dialog

# allow a player to trigger the tp request scoreboard objectives
scoreboard players enable @s create_tp_here
scoreboard players enable @s create_tp_to

# clear possible faulty data
data remove storage essentials:teleport dialog_actions

# for all entities/players that match my condition, store their display and id
execute as @e[scores={playerid=1..}] run function essentials:dialog/request/create/generate

# calculate number of columns
execute store result score #this iterator run data get storage essentials:teleport dialog_actions
scoreboard players operation #this iterator /= .single_column_limit iterator
scoreboard players add #this iterator 1
scoreboard players operation #this iterator < .max_columns iterator

# set number of columns
execute store result storage essentials:teleport columns int 1 run scoreboard players get #this iterator

# run my inline dialog macro with the players array created
function essentials:dialog/request/create/show_dialog with storage essentials:teleport

# enable the opening of the dialog again
scoreboard players enable @s open_dialog