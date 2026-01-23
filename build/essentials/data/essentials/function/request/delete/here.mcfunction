execute store result storage essentials:teleport this_request.target_id int 1 run scoreboard players get @s playerid
execute store result storage essentials:teleport this_request.source_id int 1 run scoreboard players get @s delete_tp_here
data modify storage essentials:teleport this_request.tp_type set value "here"
function essentials:request/delete with storage essentials:teleport this_request
execute store result score #this playerid run scoreboard players get @s delete_tp_here
tellraw @s [{translate: "essentials.request.deleted.here", fallback: 'Removed request to teleport to "%s"', color: "red", with: [{selector: "@e[predicate=essentials:match_id,limit=1]", color: "white"}]}]
scoreboard players reset @s delete_tp_here
