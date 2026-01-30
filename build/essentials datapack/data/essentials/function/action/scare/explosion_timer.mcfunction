execute if score @s explosion_timer matches 1.. run scoreboard players remove @s explosion_timer 1
execute if score @s explosion_timer matches 0 at @s run function essentials:action/scare/explosion
