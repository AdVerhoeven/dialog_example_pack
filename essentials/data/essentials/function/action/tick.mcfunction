# ensure trigger objectives are enabled
scoreboard players enable @a action
scoreboard players enable @a create_tp_here
scoreboard players enable @a create_tp_to
scoreboard players enable @a tp_here
scoreboard players enable @a tp_to

# actions
# run the function belonging to the selected action
# execute as @a[scores={action=0}]
execute as @a[scores={action=1}] run function essentials:action/tp_to_selected
execute as @a[scores={action=2}] run function essentials:action/tp_here_selected