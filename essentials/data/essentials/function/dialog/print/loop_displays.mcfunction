scoreboard players remove $length iterator 1
execute if score $length iterator matches ..-1 run return fail
execute store result storage essentials:options id int 1 run scoreboard players get $length iterator
function essentials:options/print/display with storage essentials:options
function essentials:options/print/loop_displays