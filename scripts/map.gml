///map(...keyvalues)

var map_ = ds_map_create();

if (argument_count) {
    var kvs;
    for (var i = argument_count - 1; i >= 0; --i) {
        kvs[i] = argument[i];
    }
    
    map_add_kvs(map_, kvs);
}

return map_;
