scoreboard players remove $length iterator 1
execute if score $length iterator matches ..-1 run return fail
execute store result storage essentials:options id int 1 run scoreboard players get $length iterator
function essentials:debug/select_player_option/display with storage essentials:options
function essentials:debug/select_player_option/loop_displays
