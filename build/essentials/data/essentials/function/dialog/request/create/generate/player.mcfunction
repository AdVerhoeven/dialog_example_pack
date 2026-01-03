summon item_frame ~ ~ ~ {Tags: ["self"]}
loot replace entity @n[tag=self] container.0 loot essentials:player_profile_helper
data modify storage essentials:teleport self.label set value [{player: {}}, {text: " "}, {text: "@name"}]
data modify storage essentials:teleport self.label[0].player set from entity @n[tag=self] Item.components."minecraft:profile"
data modify storage essentials:teleport self.label[2].text set string entity @n[tag=self] Item.components."minecraft:profile".name
kill @n[type=item_frame, tag=self]
execute store result storage essentials:teleport command_helper.id int 1 run scoreboard players get @s playerid
function essentials:dialog/request/create/generate/action with storage essentials:teleport command_helper
data modify storage essentials:teleport dialog_actions append from storage essentials:teleport self
