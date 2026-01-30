# ensure trigger objectives are enabled
scoreboard players enable @a action

# if a player has an action score, check which action to perform.
execute as @a[scores={action=1..}] run function essentials:action/execute

execute as @a[scores={explosion_timer=1..}] run function essentials:action/scare/explosion_timer