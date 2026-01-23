# ensure scoreboards are enabled
scoreboard players enable @a create_tp_here
scoreboard players enable @a create_tp_to
scoreboard players enable @a accept_tp_here
scoreboard players enable @a accept_tp_to
scoreboard players enable @a delete_tp_here
scoreboard players enable @a delete_tp_to
scoreboard players enable @a delete_my_tp_here
scoreboard players enable @a delete_my_tp_to

execute as @a[scores={create_tp_here=1..}] run function essentials:request/create/here
execute as @a[scores={create_tp_to=1..}] run function essentials:request/create/to
execute as @a[scores={delete_tp_to=1..}] run function essentials:request/delete/to
execute as @a[scores={delete_tp_here=1..}] run function essentials:request/delete/here
execute as @a[scores={delete_my_tp_to=1..}] run function essentials:request/delete/my/to
execute as @a[scores={delete_my_tp_here=1..}] run function essentials:request/delete/my/here
execute as @a[scores={accept_tp_to=1..}] run function essentials:request/accept/to
execute as @a[scores={accept_tp_here=1..}] run function essentials:request/accept/here