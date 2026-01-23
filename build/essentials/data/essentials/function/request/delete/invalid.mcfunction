tellraw @s {translate: "essentials.request.invalid", fallback: "Found an invalid request and deleted it! Removed: %s", color: "red", with: [{storage: "essentials:teleport", nbt: "this_request", color: "white"}]}
function essentials:request/delete with storage essentials:teleport this_request
