data modify storage essentials:pretty self.label set value [{player: {}}, {text: " "}, {text: "CustomName Placeholder"}]
data modify storage essentials:pretty self.label[0].player set from entity @s profile
data modify storage essentials:pretty self.label[2].text set string entity @s CustomName
execute store result storage essentials:pretty command_helper.id int 1 run scoreboard players get @s playerid
function essentials:dialog/player/buttons/generate/action with storage essentials:pretty command_helper
data modify storage essentials:pretty players append from storage essentials:pretty self
