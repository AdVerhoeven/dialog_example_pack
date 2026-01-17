scoreboard players reset @s open_dialog
data remove storage essentials:teleport dialog_actions
execute store result storage essentials:teleport this.id int 1 run scoreboard players get @s playerid
function essentials:request/get/outbound with storage essentials:teleport this
execute store result score #length iterator run data get storage essentials:teleport my_requests
scoreboard players set #this iterator 0
function essentials:dialog/request/outbound/loop_requests
execute unless data storage essentials:teleport dialog_actions[0] run tellraw @s [{translate: "essentials.request.outbound.no_requests", fallback: "No outgoing teleport requests found!", color: "red"}]
data get storage essentials:teleport dialog_actions
execute store result score #this iterator run data get storage essentials:teleport dialog_actions
scoreboard players operation #this iterator /= #single_column_limit iterator
scoreboard players add #this iterator 1
scoreboard players operation #this iterator < #max_columns iterator
execute store result storage essentials:teleport columns int 1 run scoreboard players get #this iterator
function essentials:dialog/request/outbound/show_dialog with storage essentials:teleport
data get storage essentials:teleport my_requests
scoreboard players enable @s open_dialog
