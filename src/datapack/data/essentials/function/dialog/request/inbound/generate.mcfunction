# store the current request in the loop in this_request
$data modify storage essentials:teleport this_request set from storage essentials:teleport my_requests[$(id)]

execute store result score #this playerid run data get storage essentials:teleport this_request.source_id

# Because this is the recipient the label should be opposite
execute if data storage essentials:teleport this_request{tp_type:"to"} run data modify storage essentials:teleport this_request.tp_label set value "here"
execute if data storage essentials:teleport this_request{tp_type:"here"} run data modify storage essentials:teleport this_request.tp_label set value "to"

execute as @a[predicate=essentials:match_id] at @s run function essentials:dialog/request/inbound/generate/player
execute as @e[predicate=essentials:match_id,limit=1,type=mannequin] run function essentials:dialog/request/inbound/generate/nonplayer
execute unless entity @a[predicate=essentials:match_id] unless entity @e[predicate=essentials:match_id,limit=1,type=mannequin] run function essentials:request/delete/invalid