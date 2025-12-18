# create temporary item_frame entity to help resolve player profile
summon item_frame ~ ~ ~ {Tags:["self"]}
# resolve profile using loot_table trick
loot replace entity @n[tag=self] container.0 loot essentials:player_profile_helper
# store player name in temporary "self" storage
data modify storage essentials:pretty self.label set value []
data modify storage essentials:pretty self.label insert 0 value {player:{}}
data modify storage essentials:pretty self.label insert 1 value {text:""}
data modify storage essentials:pretty self.label[0].player set from entity @n[tag=self] Item.components."minecraft:profile"
data modify storage essentials:pretty self.label[1].text set string entity @n[tag=self] Item.components."minecraft:profile".name
# delete helper item_frame
kill @n[tag=self]

# store ID score in temporary "self" storage
execute store result storage essentials:pretty temp.id int 1 run scoreboard players get @s playerid
function essentials:options/store_pretty/command_helper with storage essentials:pretty temp

# DEBUG command:
# tellraw @a [{text:"Stored the following data: "},{storage:"essentials:pretty",nbt:"self"}]

# append "self" data to the list of "players"
data modify storage essentials:pretty players append from storage essentials:pretty self