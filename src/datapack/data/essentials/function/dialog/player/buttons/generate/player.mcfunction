# create a single action
# {label:<text_component>,action:<action_component>}

# create temporary item_frame entity to help resolve player profile
summon item_frame ~ -400 ~ {UUID:[51919514,20911219,51919514,20911219]}
# resolve profile using loot_table trick
loot replace entity 03183a9a-013f-1473-0318-3a9a013f1473 container.0 loot essentials:player_profile_helper

data modify storage essentials:pretty self.label set value [{player:{}},{text:" "},{text:"@name"}]
data modify storage essentials:pretty self.label[0].player set from entity 03183a9a-013f-1473-0318-3a9a013f1473 Item.components."minecraft:profile"
data modify storage essentials:pretty self.label[2].text set string entity 03183a9a-013f-1473-0318-3a9a013f1473 Item.components."minecraft:profile".name
# delete this helper entity
kill 03183a9a-013f-1473-0318-3a9a013f1473

# store the playerid of @s to generate the action
execute store result storage essentials:pretty command_helper.id int 1 run scoreboard players get @s playerid
# generate action
function essentials:dialog/player/buttons/generate/action with storage essentials:pretty command_helper

# append "self" data to the list of "players"
data modify storage essentials:pretty players append from storage essentials:pretty self