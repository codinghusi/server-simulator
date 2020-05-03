///to_json(value)

return "disabled";

var value = argument0;
var result;

if (is_map(value)) {
    result = map_encode(value);
}
else if (is_array(value)) {
    result = array_encode(value);
}
else if (is_string(value)) {
    result = string_encode(value);
}
else {
    result = string(value);
}

return result;
