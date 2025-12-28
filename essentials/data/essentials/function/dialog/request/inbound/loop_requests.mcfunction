# Exit loop if we have reached the last index
execute unless score $this iterator < $length iterator run return fail
tellraw @s {score:{name:"$this",objective:"iterator"}}
execute store result storage essentials:teleport id int 1 run scoreboard players get $this iterator

function essentials:dialog/request/inbound/generate with storage essentials:teleport

# Increase index
scoreboard players add $this iterator 1
# Loop
function essentials:dialog/request/inbound/loop_requests