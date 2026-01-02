execute as @e[tag=non_player_helper,limit=1] on origin run tellraw @a {translate:"essentials.demo.cleanup.warning",fallback:"Cleaned up all fake players that were loaded. Warning! The %s score now has a gap! Any fake players in unloaded chunks remain.",with:[{translate:"essentials.scoreboard.playerid",fallback:"Player ID"}],color:red}
kill @e[tag=non_player_helper]
