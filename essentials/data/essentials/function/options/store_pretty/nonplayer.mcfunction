data modify storage essentials:pretty self.label set value ""
data modify storage essentials:pretty self.label set from entity @s CustomName

execute store result storage essentials:pretty temp.id int 1 run scoreboard players get @s playerid
function essentials:options/store_pretty/command_helper with storage essentials:pretty temp

# DEBUG command
# tellraw @a [{text:"Stored the following data: "},{storage:"essentials:pretty",nbt:"self"}]
data modify storage essentials:pretty players append from storage essentials:pretty self