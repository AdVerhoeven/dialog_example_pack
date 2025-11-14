scoreboard players enable @s selected_player
# clear previously used player data
data remove storage example:pretty players
# for all entities/players that match my condition, store their display and id
execute as @e[scores={playerid=0..}] run function example:player/store_pretty
# run my inline dialog macro with the players array created
function example:player/end_pretty with storage example:pretty