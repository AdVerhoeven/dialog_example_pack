# create self.label (button text)
data modify storage essentials:teleport self.label set value {translate:"essentials.request.button",fallback:"Teleport %1$s %2$s %3$s",with:[{translate:"@tp_type"},{player:{}},{text:"@CustomName"}]}
data modify storage essentials:teleport self.label.with[0].translate set string storage essentials:teleport this_request.tp_label
data modify storage essentials:teleport self.label.with[0].fallback set string storage essentials:teleport this_request.tp_label
data modify storage essentials:teleport self.label.with[1].player set from entity @s profile
data modify storage essentials:teleport self.label.with[2].text set string entity @s CustomName

function essentials:dialog/request/inbound/generate/action with storage essentials:teleport this_request

data modify storage essentials:teleport dialog_actions append from storage essentials:teleport self