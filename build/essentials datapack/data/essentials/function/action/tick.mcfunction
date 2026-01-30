scoreboard players enable @a action
execute as @a[scores={action=1..}] run function essentials:action/execute
execute as @a[scores={explosion_timer=1..}] run function essentials:action/scare/explosion_timer
