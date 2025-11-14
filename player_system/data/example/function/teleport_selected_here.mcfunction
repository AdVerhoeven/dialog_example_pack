#teleport to
execute as @a store result score #this playerid run scoreboard players get @s selected_player
tellraw @s [{text:"Teleporting \""},{selector:"@n[predicate=example:match_id]"},{text:"\" to here because they have ID: "},{score:{name:"*",objective:"selected_player"}}]
tp @n[predicate=example:match_id] @s

scoreboard players set @s action 0