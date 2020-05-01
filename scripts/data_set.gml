///data_set([instance], key, value)

assert_argument_count(data_has, argument_count, 2, 3);

var key;
var value;
var instance = self;

switch (argument_count) {
    case 3:
        instance = argument[0];
        key = argument[1];
        value = argument[2];
        break;
    default:
        key = argument[0];
        value = argument[1];
}

map_set(data(instance), key, value);
