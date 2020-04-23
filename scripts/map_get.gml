///map_get(map, key, [default])

var map_ = argument[0];
var key = argument[1];
var def = noone;
if (argument_count < 2) {
    def = argument2;
}
var value;


if (map_has(map_, value)) {
    value = ds_map_find_value(map_, key);
} else {
    value = def;
}

return value;
