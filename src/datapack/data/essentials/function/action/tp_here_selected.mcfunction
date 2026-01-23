execute store result score #this playerid run scoreboard players get @s selected_player
tellraw @s {translate:"essentials.teleport.here",fallback:"Teleporting \"%1$s\" to here because they have ID: %2$s",with:[{selector:"@e[predicate=essentials:match_id,limit=1]"},{score:{name:"*",objective:"selected_player"}}]}
tp @e[predicate=essentials:match_id,limit=1] @s

scoreboard players reset @s action