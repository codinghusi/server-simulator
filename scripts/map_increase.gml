///map_increase(map, key, amount)

// TODO: default for amount

var map_ = argument0;
var key = argument1;
var amount = argument2;

map_set(map_, kv(key, map_get(map_, key) + amount));

return map_;
