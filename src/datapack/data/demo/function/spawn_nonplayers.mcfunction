# This function is meant to be run once to have some nice singleplayer essentials
execute if score #max playerid matches 3.. run return run tellraw @s {translate:"essentials.demo.fake_players.dupe.warning",fallback:"Fake players have already been spawned!",color:red}
# warn-off
execute if entity @n[tag=non_player_helper,type=mannequin] run return run tellraw @s {translate:"essentials.demo.fake_players.dupe.warning",fallback:"Fake players have already been spawned!",color:red}
execute summon mannequin run function demo:nonplayer_helper {name:"Alex",texture:"entity/player/slim/alex"}
execute summon mannequin run function demo:nonplayer_helper {name:"Ari",texture:"entity/player/slim/ari"}
execute summon mannequin run function demo:nonplayer_helper {name:"Efe",texture:"entity/player/slim/efe"}
execute summon mannequin run function demo:nonplayer_helper {name:"Kai",texture:"entity/player/slim/kai"}
execute summon mannequin run function demo:nonplayer_helper {name:"Makena",texture:"entity/player/slim/makena"}
execute summon mannequin run function demo:nonplayer_helper {name:"Noor",texture:"entity/player/slim/noor"}
execute summon mannequin run function demo:nonplayer_helper {name:"Steve",texture:"entity/player/slim/steve"}
execute summon mannequin run function demo:nonplayer_helper {name:"Sunny",texture:"entity/player/slim/sunny"}
execute summon mannequin run function demo:nonplayer_helper {name:"Zuri",texture:"entity/player/slim/zuri"}

spreadplayers ~ ~ 10 50 false @e[distance=0..5,tag=non_player_helper,type=mannequin]