execute store result storage essentials:teleport this_request.target_id int 1 run scoreboard players get @s playerid
execute store result storage essentials:teleport this_request.source_id int 1 run scoreboard players get @s delete_tp_to
data modify storage essentials:teleport this_request.tp_type set value "to"

function essentials:request/delete with storage essentials:teleport this_request

scoreboard players reset @s delete_tp_to