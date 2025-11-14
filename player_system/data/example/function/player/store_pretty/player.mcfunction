# create temporary item_frame entity to help resolve player profile
summon item_frame ~ ~ ~ {Tags:["self"]}
# resolve profile using loot_table trick
loot replace entity @n[tag=self] container.0 loot example:player_profile_helper
# store player name in temporary "self" storage
data modify storage example:pretty self.label set from entity @n[tag=self] Item.components."minecraft:profile".name
# delete helper item_frame
kill @n[tag=self]

# store ID score in temporary "self" storage
execute store result storage example:pretty temp.id int 1 run scoreboard players get @s playerid
function example:player/store_pretty/command_helper with storage example:pretty temp

# DEBUG command:
#tellraw @a [{text:"Stored the following data: "},{storage:"example:pretty",nbt:"self"}]

# append "self" data to the list of "players"
data modify storage example:pretty players append from storage example:pretty self