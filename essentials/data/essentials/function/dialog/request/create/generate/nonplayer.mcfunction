# create self.label (button text)
data modify storage essentials:teleport self.label set value [{player:{}},{text:" "},{text:"CustomName Placeholder"}]
data modify storage essentials:teleport self.label[0].player set from entity @s profile
data modify storage essentials:teleport self.label[2].text set string entity @s CustomName

# store the playerid of @s to generate the action
execute store result storage essentials:teleport command_helper.id int 1 run scoreboard players get @s playerid
# generate action
function essentials:dialog/request/create/generate/action with storage essentials:teleport command_helper

# DEBUG command
# tellraw @a [{text:"Stored the following data: "},{storage:"essentials:pretty",nbt:"self"}]
data modify storage essentials:teleport dialog_actions append from storage essentials:teleport self