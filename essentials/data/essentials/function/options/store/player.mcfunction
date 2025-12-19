# create temporary item_frame entity to help resolve player profile
summon item_frame ~ ~ ~ {Tags:["self"]}
# resolve profile using loot_table trick
loot replace entity @n[tag=self] container.0 loot essentials:player_profile_helper
# store player name in temporary "self" storage
data modify storage essentials:options self.display set value []
data modify storage essentials:options self.display insert 0 value {player:{}}
data modify storage essentials:options self.display insert 1 value {text:" "}
data modify storage essentials:options self.display insert 2 value {text:""}
data modify storage essentials:options self.display[0].player set from entity @n[tag=self] Item.components."minecraft:profile"
data modify storage essentials:options self.display[2].text set string entity @n[tag=self] Item.components."minecraft:profile".name
# delete helper item_frame
kill @n[tag=self]

# store ID score in temporary "self" storage
execute store result storage essentials:options self.id int 1 run scoreboard players get @s playerid
# convert self.id to a string (needed for inline dialog!)
data modify storage essentials:options self.id set string storage essentials:options self.id

# DEBUG command:
# tellraw @a [{text:"Stored the following data: "},{storage:"essentials:options",nbt:"self"}]

# append "self" data to the list of "players"
data modify storage essentials:options players append from storage essentials:options self