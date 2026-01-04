scoreboard players set @s open_dialog 0
# allow a player to trigger the selected_player scoreboard
scoreboard players enable @s selected_player
# clear previously used player data
data remove storage essentials:options players
# for all entities/players that match my condition, store their display and id
execute as @e[scores={playerid=1..}] run function essentials:dialog/player/singleoption/generate
# run my inline dialog macro with the players array created
function essentials:dialog/player/singleoption/show_dialog with storage essentials:options
# enable the opening of the dialog again
scoreboard players enable @s open_dialog