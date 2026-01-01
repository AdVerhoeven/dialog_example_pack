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
scoreboard objectives add delete_my_tp_to trigger
scoreboard objectives add delete_my_tp_here trigger
scoreboard objectives add iterator dummy
scoreboard objectives add actions dummy

# Separate display names so they can be updated on reload
scoreboard objectives modify playerid displayname {translate:"essentials.scoreboard.playerid",fallback:"Player ID"}
scoreboard objectives modify open_dialog displayname {translate:"essentials.scoreboard.open_dialog",fallback:"Open Dialog"}
scoreboard objectives modify action displayname {translate:"essentials.scoreboard.action",fallback:"Trigger Action"}
scoreboard objectives modify actions displayname {translate:"essentials.scoreboard.actions",fallback:"Actions"}

# scoreboard objectives setdisplay sidebar playerid

execute unless score .max playerid matches 1.. run scoreboard players set .max playerid 1

# we will calculate the number of columns based on the .single_column_limit
scoreboard players set .single_column_limit iterator 6

# unfortunately, any column count greater than 2 can result in unclickable buttons and invisible buttons
scoreboard players set .max_columns iterator 2

# setup the various actions
scoreboard players set .Teleport actions 1
scoreboard players display name .Teleport actions {translate:"essentials.actions.tp_to",fallback:"Teleport to"}
scoreboard players set .Teleport_here actions 2
scoreboard players display name .Teleport_here actions {translate:"essentials.actions.tp_here",fallback:"Teleport here"}