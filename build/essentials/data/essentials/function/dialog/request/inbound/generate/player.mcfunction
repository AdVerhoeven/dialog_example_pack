summon item_frame ~ ~ ~ {Tags: ["self"]}
loot replace entity @n[tag=self] container.0 loot essentials:player_profile_helper
data modify storage essentials:teleport self.label set value {translate: "essentials.request.button", fallback: "Teleport %1$s %2$s %3$s", with: [{translate: "@tp_type"}, {player: {}}, {text: "@name"}]}
data modify storage essentials:teleport self.label.with[0].translate set string storage essentials:teleport this_request.tp_label
data modify storage essentials:teleport self.label.with[0].fallback set string storage essentials:teleport this_request.tp_label
data modify storage essentials:teleport self.label.with[1].player set from entity @n[tag=self] Item.components."minecraft:profile"
data modify storage essentials:teleport self.label.with[2].text set string entity @n[tag=self] Item.components."minecraft:profile".name
kill @n[type=item_frame, tag=self]
function essentials:dialog/request/inbound/generate/action with storage essentials:teleport this_request
data modify storage essentials:teleport dialog_actions append from storage essentials:teleport self
