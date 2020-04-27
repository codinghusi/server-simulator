///map_add(map, other_map)

var map_ = argument0;
var other_map = argument1;
var kvs = map_kvs(other_map);

map_add_kvs(map_, kvs);

return map_;
