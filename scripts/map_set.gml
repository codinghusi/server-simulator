///map_set(map, key, value)

timer_start("set");

var map_ = argument0;
var key = argument1;
var value = argument2;

assert_map(map_);

var existing_keyvalue = map_get_kv(map_, key);
if (is_undefined(existing_keyvalue)) {
    if (key == "packets") {
        show_debug_message("hi");
    }
    var keyvalue = kv(key, value);
    var hash = map_hash(map_, key);
    var slot = map_[hash];
    if (is_undefined(slot)) {
        map_[@ hash] = keyvalue;
    }
    else if (is_array(slot)) {
        if (is_array(slot[0])) {
            // TODO: implement efficient list
            slot[@ array_length_1d(slot)] = keyvalue;
            show_debug_message("hash collision");
        } else {
            map_[@ hash] = array(slot, keyvalue);
        }
    }
    
    // increase size
    var head = map_[0];
    head[@ 1] += 1;
} else {
    // FIXME: Hardcoded index
    existing_keyvalue[@ 1] = value;
}

timer_end("set");

return map_;
