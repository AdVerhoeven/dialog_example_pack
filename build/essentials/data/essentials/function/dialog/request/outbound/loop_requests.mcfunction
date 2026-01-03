execute unless score $this iterator < $length iterator run return fail
execute store result storage essentials:teleport id int 1 run scoreboard players get $this iterator
function essentials:dialog/request/outbound/generate with storage essentials:teleport
scoreboard players add $this iterator 1
function essentials:dialog/request/outbound/loop_requests
