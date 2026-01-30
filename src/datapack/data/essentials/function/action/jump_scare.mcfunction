execute store result score #this playerid run scoreboard players get @s selected_player
execute as @e[predicate=essentials:match_id,limit=1] at @s run function essentials:action/scare/creeper
scoreboard players reset @s action