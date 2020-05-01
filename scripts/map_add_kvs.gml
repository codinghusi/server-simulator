///map_add_kvs(map, keyvalues[])

var map_ = argument0;
var keyvalues = argument1;

var length = array_length_1d(keyvalues);
for (var i = 0; i < length; ++i) {
    var keyvalue = keyvalues[i];
    var key = kv_key(keyvalue);
    var value = kv_value(keyvalue);
    var type = kv_type(keyvalue);
    switch(type) {
        case data_type.value:
            ds_map_replace(map_, key, value);
            break;
        case data_type.object:
            ds_map_replace_map(map_, key, value);
            break;
        case data_type.list:
            ds_map_replace_list(map_, key, value);
            break;
        default:
            error("kv: type " + string(type) + " doesn't exist", true);
    }
}

return map_;
