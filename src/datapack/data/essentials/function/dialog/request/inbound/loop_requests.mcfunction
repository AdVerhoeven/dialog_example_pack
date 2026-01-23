# Exit loop if we have reached the last index
# Code equivalent would be: for(int i = 0; i < my_request.Length; i++)
execute unless score #this iterator < #length iterator run return fail

# store the index of my_requests that we are working on
execute store result storage essentials:teleport id int 1 run scoreboard players get #this iterator

# generate button
function essentials:dialog/request/inbound/generate with storage essentials:teleport

# i++
scoreboard players add #this iterator 1
# Loop
function essentials:dialog/request/inbound/loop_requests