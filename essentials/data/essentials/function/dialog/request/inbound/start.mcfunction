scoreboard players reset @s open_dialog

# clear previously used player data
data remove storage essentials:teleport dialog_actions

# TODO: add dialog generator
execute store result storage essentials:teleport this.id int 1 run scoreboard players get @s playerid
# get inbound requests
function essentials:request/get/inbound with storage essentials:teleport this
# store number of requests in my_request
execute store result score $length iterator run data get storage essentials:teleport my_requests
scoreboard players set $this iterator 0

# generate dialog
function essentials:dialog/request/inbound/loop_requests

function essentials:dialog/request/inbound/show_dialog with storage essentials:teleport

# enable the opening of the dialog again
scoreboard players enable @s open_dialog