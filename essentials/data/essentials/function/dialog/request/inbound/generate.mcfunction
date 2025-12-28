# store the current request in the loop in this_request
$data modify storage essentials:teleport this_request set from storage essentials:teleport my_requests[$(id)]

execute store result score #this playerid run data get storage essentials:teleport this_request.source_id

execute as @e[predicate=essentials:match_id] if entity @s[type=player] run function essentials:dialog/request/inbound/generate/player
execute as @e[predicate=essentials:match_id] if entity @s[type=!player] run function essentials:dialog/request/inbound/generate/nonplayer