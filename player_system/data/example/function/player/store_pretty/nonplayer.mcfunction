data modify storage example:pretty self.label set from entity @s CustomName

execute store result storage example:pretty temp.id int 1 run scoreboard players get @s playerid
function example:player/store_pretty/command_helper with storage example:pretty temp

# DEBUG command
# tellraw @a [{text:"Stored the following data: "},{storage:"example:pretty",nbt:"self"}]
data modify storage example:pretty players append from storage example:pretty self