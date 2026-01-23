# generates an action
# {type:"run_command",command:<command>}

data modify storage essentials:pretty self.action.type set value "run_command"
# set the command to trigger selectedplayer with the id value (playerid) of this action
$data modify storage essentials:pretty self.action.command set value "trigger selected_player set $(id)"