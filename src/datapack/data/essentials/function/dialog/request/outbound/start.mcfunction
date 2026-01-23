scoreboard players reset @s open_dialog

# clear previously used player data
data remove storage essentials:teleport dialog_actions

# TODO: add dialog generator
execute store result storage essentials:teleport this.id int 1 run scoreboard players get @s playerid
# get inbound requests
function essentials:request/get/outbound with storage essentials:teleport this
# store number of requests in my_request
execute store result score #length iterator run data get storage essentials:teleport my_requests
scoreboard players set #this iterator 0

# generate dialog
function essentials:dialog/request/outbound/loop_requests

# cancel if no requests exist
execute unless data storage essentials:teleport dialog_actions[0] run tellraw @s [{translate:"essentials.request.outbound.no_requests",fallback:"No outgoing teleport requests found!",color:red}]

# calculate number of columns
data get storage essentials:teleport dialog_actions
execute store result score #this iterator run data get storage essentials:teleport dialog_actions
scoreboard players operation #this iterator /= #single_column_limit iterator
scoreboard players add #this iterator 1
scoreboard players operation #this iterator < #max_columns iterator
# set number of columns
execute store result storage essentials:teleport columns int 1 run scoreboard players get #this iterator
#tellraw @s {score:{name:"#this",objective:"iterator"}}
function essentials:dialog/request/outbound/show_dialog with storage essentials:teleport

data get storage essentials:teleport my_requests

# enable the opening of the dialog again
scoreboard players enable @s open_dialog