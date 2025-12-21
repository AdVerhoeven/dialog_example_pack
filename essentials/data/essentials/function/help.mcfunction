tellraw @s ""
tellraw @s {text: "Essentials Help",bold:true}
tellraw @s [{text: "You can test the player selection dialog using"},{text: "/function essentials:player/start", click_event:{action:"run_command",command:"/function essentials:options/start"}}]
tellraw @s [{text: "For singleplayer use I have also added a helper function that summons a bunch of mannequins"}, {text: "/function essentials:demo/spawn_nonplayers",click_event:{action:"run_command",command:"/function essentials:demo/spawn_nonplayers"}}]