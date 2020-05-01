///map_set(map, key, value, [type])

assert_argument_count(map_set, argument_count, 3, 4);

var map_ = argument[0];
var key = argument[1];
var value = argument[2];
var type = data_type.value;

if (argument_count > 3) {
    type = argument[3];
}

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

return map_;
