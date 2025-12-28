#teleport to
execute store result score #this playerid run scoreboard players get @s selected_player
tellraw @s [{text:"Teleporting \""},{selector:"@n[predicate=essentials:match_id]"},{text:"\" to here because they have ID: "},{score:{name:"*",objective:"selected_player"}}]
tp @n[predicate=essentials:match_id] @s

scoreboard players reset @s action