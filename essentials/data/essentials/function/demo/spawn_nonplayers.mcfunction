# This function is meant to be run once to have some nice singleplayer essentials
execute if entity @n[tag=non_player_helper] run return run tellraw @s "Fake players have already been spawned."
tellraw @a "Summoning in fake player mannequins"
execute summon mannequin run function essentials:demo/nonplayer_helper {name:"Alex",texture:"entity/player/slim/alex"}
execute summon mannequin run function essentials:demo/nonplayer_helper {name:"Ari",texture:"entity/player/slim/ari"}
execute summon mannequin run function essentials:demo/nonplayer_helper {name:"Efe",texture:"entity/player/slim/efe"}
execute summon mannequin run function essentials:demo/nonplayer_helper {name:"Kai",texture:"entity/player/slim/kai"}
execute summon mannequin run function essentials:demo/nonplayer_helper {name:"Makena",texture:"entity/player/slim/makena"}
execute summon mannequin run function essentials:demo/nonplayer_helper {name:"Noor",texture:"entity/player/slim/noor"}
execute summon mannequin run function essentials:demo/nonplayer_helper {name:"Steve",texture:"entity/player/slim/steve"}
execute summon mannequin run function essentials:demo/nonplayer_helper {name:"Sunny",texture:"entity/player/slim/sunny"}
execute summon mannequin run function essentials:demo/nonplayer_helper {name:"Zuri",texture:"entity/player/slim/zuri"}