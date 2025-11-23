# create temporary item_frame entity to help resolve player profile
summon item_frame ~ ~ ~ {Tags:["self"]}
# resolve profile using loot_table trick
loot replace entity @n[tag=self] container.0 loot example:player_profile_helper
# store player name in temporary "self" storage
data modify storage example:options self.display set from entity @n[tag=self] Item.components."minecraft:profile".name
# delete helper item_frame
kill @n[tag=self]

# store ID score in temporary "self" storage
execute store result storage example:options self.id int 1 run scoreboard players get @s playerid
# convert self.id to a string (needed for inline dialog!)
data modify storage example:options self.id set string storage example:options self.id

# DEBUG command:
# tellraw @a [{text:"Stored the following data: "},{storage:"example:options",nbt:"self"}]

# append "self" data to the list of "players"
data modify storage example:options players append from storage example:options self