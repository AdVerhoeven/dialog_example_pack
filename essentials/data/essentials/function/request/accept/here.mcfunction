execute store result storage essentials:teleport this_request.target_id int 1 run scoreboard players get @s playerid
execute store result storage essentials:teleport this_request.source_id int 1 run scoreboard players get @s accept_tp_here
data modify storage essentials:teleport this_request.tp_type set value "here"

# teleport here
execute store result score #this playerid run scoreboard players get @s accept_tp_here
tellraw @s [{text:"Teleporting \""},{selector:"@n[predicate=essentials:match_id]"},{text:"\" to here because they have ID: "},{score:{name:"*",objective:"selected_player"}}]
tp @n[predicate=essentials:match_id] @s

# remove request
function essentials:request/delete with storage essentials:teleport this_request

scoreboard players reset @s accept_tp_here