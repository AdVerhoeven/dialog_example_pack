# ensure trigger objectives are enabled
scoreboard players enable @a action

# actions
# run the function belonging to the selected action
execute as @a[scores={action=1}] run function essentials:action/tp_to_selected
execute as @a[scores={action=2}] run function essentials:action/tp_here_selected
execute as @a[scores={action=3}] run function essentials:dialog/help