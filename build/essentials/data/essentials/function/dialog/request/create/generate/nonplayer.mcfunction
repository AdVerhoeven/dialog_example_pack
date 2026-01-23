data modify storage essentials:teleport self.label set value [{player: {}}, {text: " "}, {text: "@CustomName"}]
data modify storage essentials:teleport self.label[0].player set from entity @s profile
data modify storage essentials:teleport self.label[2].text set string entity @s CustomName
execute store result storage essentials:teleport command_helper.id int 1 run scoreboard players get @s playerid
function essentials:dialog/request/create/generate/action with storage essentials:teleport command_helper
data modify storage essentials:teleport dialog_actions append from storage essentials:teleport self
