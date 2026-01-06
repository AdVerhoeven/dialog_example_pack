summon item_frame ~ -400 ~ {UUID: [51919514, 20911219, 51919514, 20911219]}
loot replace entity 03183a9a-013f-1473-0318-3a9a013f1473 container.0 loot essentials:player_profile_helper
data modify storage essentials:teleport self.label set value [{player: {}}, {text: " "}, {text: "@name"}]
data modify storage essentials:teleport self.label[0].player set from entity 03183a9a-013f-1473-0318-3a9a013f1473 Item.components."minecraft:profile"
data modify storage essentials:teleport self.label[2].text set string entity 03183a9a-013f-1473-0318-3a9a013f1473 Item.components."minecraft:profile".name
kill 03183a9a-013f-1473-0318-3a9a013f1473
execute store result storage essentials:teleport command_helper.id int 1 run scoreboard players get @s playerid
function essentials:dialog/request/create/generate/action with storage essentials:teleport command_helper
data modify storage essentials:teleport dialog_actions append from storage essentials:teleport self
