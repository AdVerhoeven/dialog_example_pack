scoreboard players reset @s open_dialog

# allow a player to trigger the selected_player scoreboard
scoreboard players enable @s tp_here
scoreboard players enable @s tp_to
# clear previously used player data
data remove storage essentials:teleport dialog_actions
# for all entities/players that match my condition, store their display and id
execute as @e[scores={playerid=1..}] run function essentials:dialog/request/create/generate
# run my inline dialog macro with the players array created
function essentials:dialog/request/create/show_dialog with storage essentials:teleport

# enable the opening of the dialog again
scoreboard players enable @s open_dialog