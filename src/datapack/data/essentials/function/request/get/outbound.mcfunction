# Get a list of teleport requests of a player with a given playerid

# clear existing/previous data
data modify storage essentials:teleport my_requests set value []
# get requests for player with playerid id
$data modify storage essentials:teleport my_requests append from storage essentials:teleport requests[{source_id:$(id)}]