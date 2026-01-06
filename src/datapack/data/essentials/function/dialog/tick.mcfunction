# ensure trigger objectives are enabled
scoreboard players enable @a open_dialog

# if the player wants to open the dialog open it, 
# these dialogs are inline so it requires a function to be run.
execute as @a[scores={open_dialog=1}] run function essentials:dialog/player/singleoption/start
execute as @a[scores={open_dialog=2}] run function essentials:dialog/player/buttons/start
# run at @s so one can't create a request from self to self
execute as @a[scores={open_dialog=3}] at @s run function essentials:dialog/request/create/start
execute as @a[scores={open_dialog=4}] run function essentials:dialog/request/inbound/start
# IMPORTANT: this is a function call, since it MUST reset the open_dialog score
execute as @a[scores={open_dialog=5}] run function essentials:dialog/help
execute as @a[scores={open_dialog=6}] run function essentials:dialog/request/outbound/start