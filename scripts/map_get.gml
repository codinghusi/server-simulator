///map_get(map, key, [default])

timer_start("get");

var map_ = argument[0];
var key = argument[1];
var def = undefined;
if (argument_count > 2) {
    def = argument[2];
}
var value;

var keyvalue = map_get_kv(map_, key);

if (!is_undefined(keyvalue)) {
    value = kv_value(keyvalue);
} else if (argument_count <= 2) {
    error("Map has no key '" + string(key) + "'", true);
} else {
    value = def;
}

timer_end("get");

return value;
