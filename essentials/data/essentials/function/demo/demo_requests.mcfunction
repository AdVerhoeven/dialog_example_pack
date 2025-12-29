# note that playerids 2-10 need to exist and they must be loaded (for instance the demo mannequins)
tellraw @s [{text:"10 example requests have been created, these examples still rely on actual entities with a playerid score to resolve their labels.\
\nThe fake player demo function can be used to ensure entities with these playerids exist to be resolved.",color:gold}]
data modify storage essentials:teleport new_request set value {target_id:1,source_id:2,tp_type:"to"}
function essentials:request/store_request with storage essentials:teleport new_request
data modify storage essentials:teleport new_request set value {target_id:1,source_id:2,tp_type:"here"}
function essentials:request/store_request with storage essentials:teleport new_request
data modify storage essentials:teleport new_request set value {target_id:1,source_id:3,tp_type:"to"}
function essentials:request/store_request with storage essentials:teleport new_request
data modify storage essentials:teleport new_request set value {target_id:1,source_id:3,tp_type:"here"}
function essentials:request/store_request with storage essentials:teleport new_request
data modify storage essentials:teleport new_request set value {target_id:1,source_id:4,tp_type:"to"}
function essentials:request/store_request with storage essentials:teleport new_request
data modify storage essentials:teleport new_request set value {target_id:1,source_id:5,tp_type:"here"}
function essentials:request/store_request with storage essentials:teleport new_request
data modify storage essentials:teleport new_request set value {target_id:1,source_id:6,tp_type:"to"}
function essentials:request/store_request with storage essentials:teleport new_request
data modify storage essentials:teleport new_request set value {target_id:1,source_id:7,tp_type:"here"}
function essentials:request/store_request with storage essentials:teleport new_request
data modify storage essentials:teleport new_request set value {target_id:1,source_id:8,tp_type:"to"}
function essentials:request/store_request with storage essentials:teleport new_request
data modify storage essentials:teleport new_request set value {target_id:1,source_id:8,tp_type:"here"}
function essentials:request/store_request with storage essentials:teleport new_request