///assert_component(component, crash)

var component = argument0;
var crash = argument1;

var keys = array("name", "description", "object", "subimage", "downlink_count", "slots_available", "speed", "price", "power_consumtion");

assert(
    map_check(component, keys),
    "Component data is not in correct format: " + json_encode(component)
);

