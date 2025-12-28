# create a single action
# {label:<text_component>,action:<action_component>}

# create temporary item_frame entity to help resolve player profile
summon item_frame ~ ~ ~ {Tags:["self"]}
# resolve profile using loot_table trick
loot replace entity @n[tag=self] container.0 loot essentials:player_profile_helper

# create self.label (button text)
data modify storage essentials:teleport self.label set value [{text:"Teleport "},{text:"tp_type"},{text:" "},{player:{}},{text:" "},{text:"name"}]
data modify storage essentials:teleport self.label[1].text set string storage essentials:teleport this_request.tp_type
data modify storage essentials:teleport self.label[3].player set from entity @n[tag=self] Item.components."minecraft:profile"
data modify storage essentials:teleport self.label[5].text set string entity @n[tag=self] Item.components."minecraft:profile".name
# delete helper item_frame
kill @n[type=item_frame,tag=self]

function essentials:dialog/request/inbound/generate/action with storage essentials:teleport this_request

data modify storage essentials:teleport dialog_actions append from storage essentials:teleport self