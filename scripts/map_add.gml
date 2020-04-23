///map_add(map, ...keyvalues)

var map_ = argument[0];

for (var i = 1; i < argument_count; ++i) {
    var keyvalue = argument[i];
    var key = keyvalue[kv_struct.key];
    var value = keyvalue[kv_struct.value];
    ds_map_add(map_, key, value);
}

return map_;
