///map_get(map, key, default)

var map_ = argument0;
var key = argument1;
var def = argument2;

var value = ds_map_find_value(map_, key);

if (is_undefined(value)) {
    value = def;
}

return value;
