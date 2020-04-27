///map_decrease(map, keyvalue)

var map_ = argument0;
var keyvalue = argument1;

var key = kv_key(keyvalue);
var amount = kv_value(keyvalue);

map_set(map_, kv(key, map_get(map_, key) - amount));

return map_;
