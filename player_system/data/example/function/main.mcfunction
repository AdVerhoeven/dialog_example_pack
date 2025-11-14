# if the player wants to open the dialog open it, this dialog is inline so it requires a function to be run.
execute as @a[scores={open_dialog=1}] run function example:player/start
scoreboard players enable @a action
execute as @a[scores={action=1}] run function example:teleport_to_selected
execute as @a[scores={action=2}] run function example:teleport_selected_here