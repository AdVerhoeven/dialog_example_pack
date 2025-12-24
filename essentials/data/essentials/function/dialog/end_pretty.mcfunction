# Expected input should be { players:[ {label:<text_component>,action:<action_definition>}, ] }

$dialog show @s {type:"minecraft:multi_action",title:"Select a Player",pause:false,exit_action:{label:"Cancel"},actions:$(players)}