scoreboard objectives add playerid dummy
scoreboard objectives add selected_player trigger
scoreboard objectives add open_dialog trigger
scoreboard objectives add action trigger
scoreboard objectives add create_tp_here trigger
scoreboard objectives add create_tp_to trigger
scoreboard objectives add accept_tp_to trigger
scoreboard objectives add accept_tp_here trigger
scoreboard objectives add delete_tp_to trigger
scoreboard objectives add delete_tp_here trigger
scoreboard objectives add iterator dummy
scoreboard objectives add actions dummy Action

scoreboard objectives setdisplay sidebar playerid

execute unless score .max playerid matches 1.. run scoreboard players set .max playerid 1

# setup the various actions
scoreboard players set .Teleport actions 1
scoreboard players display name .Teleport actions "Teleport to"
scoreboard players set .Teleport_here actions 2
scoreboard players display name .Teleport_here actions "Teleport here"