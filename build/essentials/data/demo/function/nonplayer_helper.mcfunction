tag @s add non_player_helper
$data modify entity @s CustomName set value $(name)
data modify entity @s Invulnerable set value true
data modify entity @s active_effects append value {id: "resistance", amplifier: 4, duration: -1, show_particles: false}
function essentials:assign_id
$scoreboard players display name @s playerid $(name)
$data modify entity @s profile.texture set value "$(texture)"
tellraw @a ["[", {entity: "@s", nbt: "CustomName"}, "] ", {translate: "hello_world", fallback: "Hello World!"}]
