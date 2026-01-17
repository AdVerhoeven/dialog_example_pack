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
scoreboard objectives modify playerid displayname {translate: "essentials.scoreboard.playerid", fallback: "Player ID"}
scoreboard objectives modify open_dialog displayname {translate: "essentials.scoreboard.open_dialog", fallback: "Open Dialog"}
scoreboard objectives modify action displayname {translate: "essentials.scoreboard.action", fallback: "Trigger Action"}
scoreboard objectives modify actions displayname {translate: "essentials.scoreboard.actions", fallback: "Actions"}
scoreboard objectives modify selected_player displayname {translate: "essentials.scoreboard.selected_player", fallback: "Selected Player"}
execute unless score #max playerid matches 1.. run scoreboard players set #max playerid 1
scoreboard players set #single_column_limit iterator 6
scoreboard players set #max_columns iterator 2
scoreboard players set #Teleport actions 1
scoreboard players display name #Teleport actions {translate: "essentials.actions.tp_to", fallback: "Teleport to"}
scoreboard players set #Teleport_here actions 2
scoreboard players display name #Teleport_here actions {translate: "essentials.actions.tp_here", fallback: "Teleport here"}
