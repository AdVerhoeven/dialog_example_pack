scoreboard players remove $length iterator 1
execute if score $length iterator matches ..-1 run return fail
execute store result storage essentials:pretty id int 1 run scoreboard players get $length iterator
function essentials:debug/select_player_buttons/label with storage essentials:pretty
function essentials:debug/select_player_buttons/loop_labels