# unfortunately we need a macro to prevent duplicate requests from entering the system.
$execute unless data storage essentials:teleport requests[{source_id:$(source_id),target_id:$(target_id),tp_type:"$(tp_type)"}] run data modify storage essentials:teleport requests append from storage essentials:teleport new_request

# clear new_request storage as it has been added to requests
data remove storage essentials:teleport new_request