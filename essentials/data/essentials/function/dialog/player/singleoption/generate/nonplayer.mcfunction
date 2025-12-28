# create the option struct.
# e.g. {display:<text_component>,id:<string>}

# create self.display text_component
data modify storage essentials:options self.display set value []
data modify storage essentials:options self.display insert 0 value {player:{}}
data modify storage essentials:options self.display insert 1 value {text:" "}
data modify storage essentials:options self.display insert 2 value {text:""}
data modify storage essentials:options self.display[0].player set from entity @s profile
data modify storage essentials:options self.display[2].text set string entity @s CustomName

# create self.id
execute store result storage essentials:options self.id int 1 run scoreboard players get @s playerid
# convert self.id to a string (needed for inline dialog!)
data modify storage essentials:options self.id set string storage essentials:options self.id

# DEBUG command
#tellraw @a [{text:"Stored the following data: "},{storage:"example:options",nbt:"self"}]

# append this entity to the list of "players"
data modify storage essentials:options players append from storage essentials:options self