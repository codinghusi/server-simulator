///map_add_kvs(map, keyvalues[])

var map_ = argument0;
var keyvalues = argument1;

var length = array_length_1d(keyvalues);
for (var i = 0; i < length; ++i) {
    var keyvalue = keyvalues[i];
    var key = kv_key(keyvalue);
    var value = kv_value(keyvalue);
    var type = kv_type(keyvalue);
    map_set(map_, key, value, type);
}

return map_;
