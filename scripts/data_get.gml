///data_get([instance], key, [default])

assert_argument_count(data_get, argument_count, 1, 3);

var key;
var instance = self;
var def = undefined;
var i = argument_count - 1;

switch (argument_count) {
    case 3:
        instance = argument[0];
        key = argument[1];
        def = argument[2];
        break;
    case 2:
        instance = argument[0];
        key = argument[1];
        break;
    case 1:
        key = argument[0];
}

var value = map_get(data(instance), key, def);

if (is_undefined(value)) {
    error("Instance " + string(object_get_name(instance.object_index)) + " has no key '" + string(key) + "'", true);   
}

return value;

