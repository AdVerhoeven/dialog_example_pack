# generate a dialog that allows selection of a single ID from a list/array called players

# Expected input should be { players:[ {display:<text_component>,id:<int>}, ] }

$dialog show @s {type:"minecraft:confirmation",title:"Macro Generated Player Selection List",pause:false,inputs:[{type:"minecraft:single_option",key:"id",label:"Target Player",options:$(players)}],yes:{label:"Confirm",action:{type:"minecraft:dynamic/run_command",template:"trigger selected_player set \u0024(id)"}},no:{label:"Cancel"}}