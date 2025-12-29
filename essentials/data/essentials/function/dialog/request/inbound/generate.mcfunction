# store the current request in the loop in this_request
$data modify storage essentials:teleport this_request set from storage essentials:teleport my_requests[$(id)]

execute store result score #this playerid run data get storage essentials:teleport this_request.source_id

execute as @a[predicate=essentials:match_id] run function essentials:dialog/request/inbound/generate/player
execute as @e[type=mannequin,predicate=essentials:match_id] run function essentials:dialog/request/inbound/generate/nonplayer
execute unless entity @a[predicate=essentials:match_id] unless entity @e[type=mannequin,predicate=essentials:match_id] run say no match found
execute unless entity @a[predicate=essentials:match_id] unless entity @e[type=mannequin,predicate=essentials:match_id] run function essentials:request/delete with storage essentials:teleport this_request