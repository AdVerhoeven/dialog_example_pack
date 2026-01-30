# these dialogs are inline so it requires a function to be run.
execute if score @s open_dialog matches 1 run function essentials:dialog/player/singleoption/start
execute if score @s open_dialog matches 2 run function essentials:dialog/player/buttons/start
# run at @s so one can't create a request from self to self
execute if score @s open_dialog matches 3 at @s run function essentials:dialog/request/create/start
execute if score @s open_dialog matches 4 run function essentials:dialog/request/inbound/start
# IMPORTANT: this is a function call, since it MUST reset the open_dialog score
execute if score @s open_dialog matches 5 run function essentials:dialog/help
execute if score @s open_dialog matches 6 run function essentials:dialog/request/outbound/start

scoreboard players reset @s open_dialog