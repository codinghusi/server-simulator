///map_get_kv(map, key)

var map_ = argument0;
var key = argument1;

var hash = map_hash(map_, key);

var slot = map_[hash];

if (is_undefined(slot)) {
    return undefined;
}
else if (is_array(slot)) {
    if (is_array(slot[0])) {
        var length = array_length_1d(slot);
        for (var i = 0; i < length; ++i) {
            var keyvalue = slot[i];
            if (key == kv_key(keyvalue)) {
                return keyvalue;
            }
        }
        return undefined;
    } else {
        if (key == kv_key(slot)) {
            return slot;
        } else {
            return undefined;
        }
    }
}
else {
    error("map_get_kv: map is not in correct format: not undefined or array given on index " + string(hash), true);
}
