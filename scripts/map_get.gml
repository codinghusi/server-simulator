///map_get(map, key, [default])

var map_ = argument[0];
var key = argument[1];
var def = undefined;
if (argument_count > 2) {
    def = argument[2];
}
var value;


if (map_has(map_, key)) {
    value = ds_map_find_value(map_, key);
} else if (argument_count <= 2) {
    error("Map has no key '" + string(key) + "'", true);
} else {
    value = def;
}

return value;
