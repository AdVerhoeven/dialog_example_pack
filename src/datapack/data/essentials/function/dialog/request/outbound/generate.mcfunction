# store the current request in the loop in this_request
$data modify storage essentials:teleport this_request set from storage essentials:teleport my_requests[$(id)]

execute store result score #this playerid run data get storage essentials:teleport this_request.target_id

execute as @a[predicate=essentials:match_id] run function essentials:dialog/request/outbound/generate/player
execute as @e[type=mannequin,predicate=essentials:match_id] run function essentials:dialog/request/outbound/generate/nonplayer
execute unless entity @a[predicate=essentials:match_id] unless entity @e[type=mannequin,predicate=essentials:match_id] run tellraw @s {translate:"essentials.request.invalid",fallback:"Found an invalid request and deleted it! Removed: %s",color:red,with:[{storage:"essentials:teleport",nbt:"this_request",color:white}]}
execute unless entity @a[predicate=essentials:match_id] unless entity @e[type=mannequin,predicate=essentials:match_id] run function essentials:request/delete with storage essentials:teleport this_request