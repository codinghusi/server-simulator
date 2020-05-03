///map(...keyvalues)

// Internal: [["__map", size], ["key", "value"], ["key2", "value"]]

// var map_ = array("__map");

timer_start("map()");

var size = 20;

var map_ = array_create(size);

map_[0] = array("__map", 0);

for (var i = 1; i < size; ++i) {
    map_[i] = undefined;
}

if (argument_count) {
    var kvs;
    for (var i = argument_count - 1; i >= 0; --i) {
        kvs[i] = argument[i];
    }
    
    map_add_kvs(map_, kvs);
}

timer_end("map()");

return map_;
