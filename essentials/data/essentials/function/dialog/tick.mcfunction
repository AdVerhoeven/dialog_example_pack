# ensure trigger objectives are enabled
scoreboard players enable @a open_dialog

# if the player wants to open the dialog open it, 
# these dialogs are inline so it requires a function to be run.
execute as @a[scores={open_dialog=1}] run function essentials:dialog/player/singleoption/start
execute as @a[scores={open_dialog=2}] run function essentials:dialog/player/buttons/start
execute as @a[scores={open_dialog=3}] run function essentials:dialog/request/create/start
execute as @a[scores={open_dialog=4}] run function essentials:dialog/request/inbound/start
execute as @a[scores={open_dialog=5}] run function essentials:dialog/help