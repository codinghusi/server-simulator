///map_kvs(map)

var map_ = argument0;
var size = ds_map_size(map_);
var entries = array_create(size);

// TODO: inefficient. Please fix this soon!!11!!!1elf
var key_ = ds_map_find_first(map_);
for (var i = 0; i < size; ++i) {
    var value_ = ds_map_find_value(map_, key_);
    entries[i] = kv(key_, value_);
    key_ = ds_map_find_next(map_, key_);
}

return entries;
