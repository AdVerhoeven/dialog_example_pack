# create a single action
# {label:<text_component>,action:<action_component>}

# create temporary item_frame entity to help resolve player profile
summon item_frame ~ -400 ~ {UUID:[51919514,20911219,51919514,20911219]}
# resolve profile using loot_table trick
loot replace entity 03183a9a-013f-1473-0318-3a9a013f1473 container.0 loot essentials:player_profile_helper

# create self.label (button text)
data modify storage essentials:teleport self.label set value {translate:"essentials.request.button",fallback:"Teleport %1$s %2$s %3$s",with:[{translate:"@tp_type"},{player:{}},{text:"@name"}]}
data modify storage essentials:teleport self.label.with[0].translate set string storage essentials:teleport this_request.tp_label
data modify storage essentials:teleport self.label.with[0].fallback set string storage essentials:teleport this_request.tp_label
data modify storage essentials:teleport self.label.with[1].player set from entity 03183a9a-013f-1473-0318-3a9a013f1473 Item.components."minecraft:profile"
data modify storage essentials:teleport self.label.with[2].text set string entity 03183a9a-013f-1473-0318-3a9a013f1473 Item.components."minecraft:profile".name

# delete helper item_frame
kill 03183a9a-013f-1473-0318-3a9a013f1473

function essentials:dialog/request/inbound/generate/action with storage essentials:teleport this_request

data modify storage essentials:teleport dialog_actions append from storage essentials:teleport self