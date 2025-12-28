execute store result storage essentials:teleport this_request.target_id int 1 run scoreboard players get @s playerid
execute store result storage essentials:teleport this_request.source_id int 1 run scoreboard players get @s accept_tp_to
data modify storage essentials:teleport this_request.tp_type set value "to"

function essentials:request/delete with storage essentials:teleport this_request

#teleport to
execute store result score #this playerid run scoreboard players get @s accept_tp_to
tellraw @s [{text:"Teleporting to \""},{selector:"@n[predicate=essentials:match_id]"},{text:"\" because they have ID: "},{score:{name:"*",objective:"selected_player"}}]
tp @s @n[predicate=essentials:match_id]


scoreboard players reset @s accept_tp_to