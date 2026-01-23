# store the current request in the loop in this_request
$data modify storage essentials:teleport this_request set from storage essentials:teleport my_requests[$(id)]

execute store result score #this playerid run data get storage essentials:teleport this_request.target_id

execute as @a[predicate=essentials:match_id] at @s run function essentials:dialog/request/outbound/generate/player
execute as @e[predicate=essentials:match_id,limit=1,type=mannequin] run function essentials:dialog/request/outbound/generate/nonplayer
execute unless entity @a[predicate=essentials:match_id] unless entity @e[predicate=essentials:match_id,limit=1,type=mannequin] run function essentials:request/delete/invalid