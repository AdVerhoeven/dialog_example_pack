data modify storage essentials:options self.display set from entity @s CustomName
execute store result storage essentials:options self.id int 1 run scoreboard players get @s playerid
# convert number to string!
data modify storage essentials:options self.id set string storage essentials:options self.id

# DEBUG command
#tellraw @a [{text:"Stored the following data: "},{storage:"example:options",nbt:"self"}]

# append this entity to the list of "players"
data modify storage essentials:options players append from storage essentials:options self