execute store result score #this playerid run scoreboard players get @s selected_player
tellraw @s {translate:"essentials.teleport.to",fallback:"Teleporting to \"%1$s\" because they have ID: %2$s",with:[{selector:"@e[predicate=essentials:match_id,limit=1]"},{score:{name:"*",objective:"selected_player"}}]}
tp @s @e[predicate=essentials:match_id,limit=1]

scoreboard players reset @s action