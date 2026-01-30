# ensure trigger objectives are enabled
scoreboard players enable @a open_dialog

# if the players has a non_zero open_dialog score, check which dialog to open.
execute as @a[scores={open_dialog=1..}] run function essentials:dialog/show