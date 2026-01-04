execute store result storage essentials:teleport this_request.target_id int 1 run scoreboard players get @s playerid
execute store result storage essentials:teleport this_request.source_id int 1 run scoreboard players get @s accept_tp_here
data modify storage essentials:teleport this_request.tp_type set value "here"

# teleport here
execute store result score #this playerid run scoreboard players get @s accept_tp_here
tellraw @s {translate:"essentials.request.accepted.to",fallback:"Teleporting to \"%1$s\" because they have ID: %2$s",with:[{selector:"@n[predicate=essentials:match_id]"},{score:{name:"*",objective:"selected_player"}}]}
tp @s @n[predicate=essentials:match_id]

# remove request
function essentials:request/delete with storage essentials:teleport this_request

scoreboard players reset @s accept_tp_here