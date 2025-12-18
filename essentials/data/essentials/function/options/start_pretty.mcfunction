scoreboard players set @s open_dialog 0

# allow a player to trigger the selected_player scoreboard
scoreboard players enable @s selected_player
# clear previously used player data
data remove storage essentials:pretty players
# for all entities/players that match my condition, store their display and id
execute as @e[scores={playerid=0..}] run function essentials:options/store_pretty
# run my inline dialog macro with the players array created
function essentials:options/end_pretty with storage essentials:pretty

# enable the opening of the dialog again
scoreboard players enable @s open_dialog