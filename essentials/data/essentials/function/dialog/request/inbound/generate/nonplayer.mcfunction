# create self.label (button text)
data modify storage essentials:teleport self.label set value []
data modify storage essentials:teleport self.label insert 0 value {player:{}}
data modify storage essentials:teleport self.label insert 1 value {text:" "}
data modify storage essentials:teleport self.label insert 2 value {text:""}
data modify storage essentials:teleport self.label[0].player set from entity @s profile
data modify storage essentials:teleport self.label[2].text set string entity @s CustomName

function essentials:dialog/request/inbound/generate/action with storage essentials:teleport this_request

data modify storage essentials:teleport dialog_actions append from storage essentials:teleport self