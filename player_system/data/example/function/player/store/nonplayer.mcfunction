data modify storage example:options self.display set from entity @s CustomName
execute store result storage example:options self.id int 1 run scoreboard players get @s playerid
# convert number to string!
data modify storage example:options self.id set string storage example:options self.id

# DEBUG command
#tellraw @a [{text:"Stored the following data: "},{storage:"example:options",nbt:"self"}]

# append this entity to the list of "players"
data modify storage example:options players append from storage example:options self