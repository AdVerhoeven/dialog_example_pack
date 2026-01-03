execute store result storage essentials:teleport this_request.target_id int 1 run scoreboard players get @s playerid
execute store result storage essentials:teleport this_request.source_id int 1 run scoreboard players get @s accept_tp_to
data modify storage essentials:teleport this_request.tp_type set value "to"
function essentials:request/delete with storage essentials:teleport this_request
execute store result score #this playerid run scoreboard players get @s accept_tp_to
tellraw @s {translate: "essentials.request.accepted.here", fallback: 'Teleporting "%1$s" to here because they have ID: %2$s', with: [{selector: "@n[predicate=essentials:match_id]"}, {score: {name: "*", objective: "selected_player"}}]}
tp @n[predicate=essentials:match_id] @s
scoreboard players reset @s accept_tp_to
