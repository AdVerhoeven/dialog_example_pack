$data merge entity @s {CustomName:"$(name)",profile:{texture:"$(texture)"},active_effects: [{duration: -1, show_icon: 0b, amplifier: 4b, id: "minecraft:resistance", show_particles: 0b}],Tags:["non_player_helper"]}

# tag @s add non_player_helper
# $data modify entity @s CustomName set value $(name)
# data modify entity @s Invulnerable set value true
# data modify entity @s active_effects append value {id:"resistance",amplifier:4,duration:-1,show_particles:false}
# $data modify entity @s profile.texture set value "$(texture)"

function essentials:assign_id
# give the mannequins a nice scoreboard name
$scoreboard players display name @s playerid $(name)
tellraw @a ["[",{entity:"@s",nbt:"CustomName"},"] ",{translate: "hello_world",fallback: "Hello World!"}]