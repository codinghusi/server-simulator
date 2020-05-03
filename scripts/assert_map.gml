///assert_map(map)

var map_ = argument0;

assert(
    is_map(map_),
    "Given value is not a map: " + to_json(map_)
);

