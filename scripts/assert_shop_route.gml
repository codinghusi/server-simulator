///assert_shop_route(route, crash)

var route = argument0;
var crash = argument1;

var keys = array("type", "items");

assert(
    !map_check(route, keys),
    "Route data is not in correct format: " + json_encode(route)
);

