tag @s add non_player_example_helper
$data modify entity @s CustomName set value $(name)
data modify entity @s Invulnerable set value true
data modify entity @s active_effects append value {id:"resistance",amplifier:4,duration:-1,show_particles:false}
function example:assign_id
# give the mannequins a nice scoreboard name
$scoreboard players display name @s playerid $(name)
$data modify entity @s profile.texture set value "$(texture)"
tellraw @a ["[",{entity:"@s",nbt:"CustomName"},"] ",{text: "Hello World!"}]