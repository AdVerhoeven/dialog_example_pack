summon item_frame ~ ~ ~ {Tags: ["self"]}
loot replace entity @n[tag=self] container.0 loot essentials:player_profile_helper
data modify storage essentials:options self.display set value [{player: {}}, {text: " "}, {text: "Name Placeholder"}]
data modify storage essentials:options self.display[0].player set from entity @n[tag=self] Item.components."minecraft:profile"
data modify storage essentials:options self.display[2].text set string entity @n[tag=self] Item.components."minecraft:profile".name
kill @n[type=item_frame, tag=self]
execute store result storage essentials:options self.id int 1 run scoreboard players get @s playerid
data modify storage essentials:options self.id set string storage essentials:options self.id
data modify storage essentials:options players append from storage essentials:options self
