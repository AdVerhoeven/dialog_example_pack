execute store result storage essentials:teleport this_request.source_id int 1 run scoreboard players get @s playerid
execute store result storage essentials:teleport this_request.target_id int 1 run scoreboard players get @s delete_my_tp_here
data modify storage essentials:teleport this_request.tp_type set value "here"

function essentials:request/delete with storage essentials:teleport this_request

execute store result score #this playerid run scoreboard players get @s delete_my_tp_here
tellraw @s [{text:"Removed request to teleport \"",color:red},{selector:"@n[predicate=essentials:match_id]",color:white},{text:"\" here",color:red}]

scoreboard players reset @s delete_my_tp_here