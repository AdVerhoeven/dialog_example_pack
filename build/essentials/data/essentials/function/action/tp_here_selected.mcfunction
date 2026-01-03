execute store result score #this playerid run scoreboard players get @s selected_player
tellraw @s {translate: "essentials.teleport.here", fallback: 'Teleporting "%1$s" to here because they have ID: %2$s', with: [{score: {name: "*", objective: "selected_player"}}]}
tp @n[predicate=essentials:match_id] @s
scoreboard players reset @s action
