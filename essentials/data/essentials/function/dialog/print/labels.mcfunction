execute store result score $length iterator run data get storage essentials:pretty players
execute if score $length iterator matches 1.. run function essentials:options/print/loop_labels
execute if score $length iterator matches 0 run tellraw @s [{text:"No buttons generated yet"}]