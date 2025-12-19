# if the player wants to open the dialog open it, 
# these dialogs are inline so it requires a function to be run.
execute as @a[scores={open_dialog=1}] run function essentials:options/start
execute as @a[scores={open_dialog=2}] run function essentials:options/start_pretty

# ensure players are allowed to trigger the action scoreboard
scoreboard players enable @a action
execute as @a[scores={action=1}] run function essentials:action/teleport_to_selected
execute as @a[scores={action=2}] run function essentials:action/teleport_selected_here