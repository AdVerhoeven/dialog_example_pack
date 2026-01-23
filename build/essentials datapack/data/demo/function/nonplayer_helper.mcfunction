$data merge entity @s {CustomName:"$(name)",profile:{texture:"$(texture)"},active_effects: [{duration: -1, show_icon: 0b, amplifier: 4b, id: "minecraft:resistance", show_particles: 0b}],Tags:["non_player_helper"]}
function essentials:assign_id
$scoreboard players display name @s playerid $(name)
tellraw @a ["[", {entity: "@s", nbt: "CustomName"}, "] ", {translate: "hello_world", fallback: "Hello World!"}]
