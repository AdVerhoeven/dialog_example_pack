data modify storage essentials:options self.display set value [{player: {}}, {text: " "}, {text: "@CustomName"}]
data modify storage essentials:options self.display[0].player set from entity @s profile
data modify storage essentials:options self.display[2].text set string entity @s CustomName
execute store result storage essentials:options self.id int 1 run scoreboard players get @s playerid
data modify storage essentials:options self.id set string storage essentials:options self.id
data modify storage essentials:options players append from storage essentials:options self
