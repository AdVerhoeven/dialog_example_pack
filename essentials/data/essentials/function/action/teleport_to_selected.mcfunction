#teleport to
execute store result score #this playerid run scoreboard players get @s selected_player
tellraw @s [{text:"Teleporting to \""},{selector:"@n[predicate=essentials:match_id]"},{text:"\" because they have ID: "},{score:{name:"*",objective:"selected_player"}}]
tp @s @n[predicate=essentials:match_id]

scoreboard players set @s action 0