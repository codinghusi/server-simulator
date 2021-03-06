///map(...keyvalues)

var map_ = ds_map_create();

for (var i = 0; i < argument_count; ++i) {
    var keyvalue = argument[i];
    var key = keyvalue[kv_struct.key];
    var value = keyvalue[kv_struct.value];
    ds_map_add(map_, key, value);
}

return map_;
