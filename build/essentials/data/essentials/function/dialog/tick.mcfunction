scoreboard players enable @a open_dialog
execute as @a[scores={open_dialog=1}] run function essentials:dialog/player/singleoption/start
execute as @a[scores={open_dialog=2}] run function essentials:dialog/player/buttons/start
execute as @a[scores={open_dialog=3}] at @s run function essentials:dialog/request/create/start
execute as @a[scores={open_dialog=4}] run function essentials:dialog/request/inbound/start
execute as @a[scores={open_dialog=5}] run function essentials:dialog/help
execute as @a[scores={open_dialog=6}] run function essentials:dialog/request/outbound/start
