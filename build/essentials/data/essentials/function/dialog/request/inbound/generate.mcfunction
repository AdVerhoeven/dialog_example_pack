$data modify storage essentials:teleport this_request set from storage essentials:teleport my_requests[$(id)]
execute store result score #this playerid run data get storage essentials:teleport this_request.source_id
execute if data storage essentials:teleport this_request{tp_type: "to"} run data modify storage essentials:teleport this_request.tp_label set value "here"
execute if data storage essentials:teleport this_request{tp_type: "here"} run data modify storage essentials:teleport this_request.tp_label set value "to"
execute as @a[predicate=essentials:match_id] run function essentials:dialog/request/inbound/generate/player
execute as @e[type=mannequin, predicate=essentials:match_id] run function essentials:dialog/request/inbound/generate/nonplayer
execute unless entity @a[predicate=essentials:match_id] unless entity @e[type=mannequin, predicate=essentials:match_id] run tellraw @s {translate: "essentials.request.invalid", fallback: "Found an invalid request and deleted it! Removed: %s", color: "red", with: [{storage: "essentials:teleport", nbt: "this_request", color: "white"}]}
execute unless entity @a[predicate=essentials:match_id] unless entity @e[type=mannequin, predicate=essentials:match_id] run function essentials:request/delete with storage essentials:teleport this_request
