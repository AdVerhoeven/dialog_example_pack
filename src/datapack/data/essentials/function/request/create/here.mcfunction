execute store result storage essentials:teleport new_request.source_id int 1 run scoreboard players get @s playerid
execute store result storage essentials:teleport new_request.target_id int 1 run scoreboard players get @s create_tp_here
data modify storage essentials:teleport new_request.tp_type set value "here"
function essentials:request/store_request with storage essentials:teleport new_request
data remove storage essentials:teleport new_request
scoreboard players reset @s create_tp_here
scoreboard players enable @s create_tp_here