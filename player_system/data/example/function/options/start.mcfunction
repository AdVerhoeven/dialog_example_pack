scoreboard players set @s open_dialog 0
# allow a player to trigger the selected_player scoreboard
scoreboard players enable @s selected_player
# clear previously used player data
data remove storage example:options players
# for all entities/players that match my condition, store their display and id
execute as @e[scores={playerid=0..}] run function example:options/store
# run my inline dialog macro with the players array created
function example:options/end with storage example:options
# enable the opening of the dialog again
scoreboard players enable @s open_dialog