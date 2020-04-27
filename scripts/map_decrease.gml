///map_decrease(map, keyvalue)

var map_ = argument0;
var keyvalue = argument1;

var key = keyvalue[kv_struct.key];
var amount = keyvalue[kv_struct.value];

map_set(map_, kv(key, map_get(map_, key) - amount));

return map_;
