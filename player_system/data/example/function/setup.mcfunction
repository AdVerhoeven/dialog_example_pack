scoreboard objectives add playerid dummy
scoreboard objectives add selected_player trigger
scoreboard objectives add open_dialog trigger
scoreboard objectives add action trigger
scoreboard objectives add actions dummy Action
scoreboard objectives setdisplay sidebar playerid

scoreboard players set .Teleport actions 1
scoreboard players display name .Teleport actions "Teleport to"
scoreboard players set .Teleport_here actions 2
scoreboard players display name .Teleport_here actions "Teleport here"