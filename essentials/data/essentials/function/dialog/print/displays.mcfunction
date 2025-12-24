execute store result score $length iterator run data get storage essentials:options players
execute if score $length iterator matches 1.. run function essentials:options/print/loop_displays
execute if score $length iterator matches 0 run tellraw @s [{text:"No single option picker generated yet."}]