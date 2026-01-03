data modify storage essentials:teleport my_requests set value []
$data modify storage essentials:teleport my_requests append from storage essentials:teleport requests[{target_id:$(id)}]
