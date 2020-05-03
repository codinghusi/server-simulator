///kv(key, value, [type])

// TODO: remove type

assert_argument_count(kv, argument_count, 2, 3);

enum data_type {
    value,
    list,
    object
}

var key = argument[0];
var value = argument[1];
var type = data_type.value;

if (argument_count > 2) {
    type = argument[2];
}

return array(key, value, type);
