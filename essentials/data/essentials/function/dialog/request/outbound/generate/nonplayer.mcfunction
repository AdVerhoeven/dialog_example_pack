# create self.label (button text)
data modify storage essentials:teleport self.label set value [{text:"Teleport "},{text:"tp_type"},{text:" "},{player:{}},{text:" "},{text:"name"}]
data modify storage essentials:teleport self.label[1].text set string storage essentials:teleport this_request.tp_type
data modify storage essentials:teleport self.label[3].player set from entity @s profile
data modify storage essentials:teleport self.label[5].text set string entity @s CustomName
function essentials:dialog/request/outbound/generate/action with storage essentials:teleport this_request

data modify storage essentials:teleport dialog_actions append from storage essentials:teleport self