data modify storage essentials:options self.display set value []
data modify storage essentials:options self.display insert 0 value {player:{}}
data modify storage essentials:options self.display insert 1 value {text:" "}
data modify storage essentials:options self.display insert 2 value {text:""}
data modify storage essentials:options self.display[0].player set from entity @s profile
data modify storage essentials:options self.display[2].text set string entity @s CustomName
execute store result storage essentials:options self.id int 1 run scoreboard players get @s playerid
# convert number to string!
data modify storage essentials:options self.id set string storage essentials:options self.id

# DEBUG command
#tellraw @a [{text:"Stored the following data: "},{storage:"example:options",nbt:"self"}]

# append this entity to the list of "players"
data modify storage essentials:options players append from storage essentials:options self