///data_init([instance], data_map)

assert_argument_count(data_init, argument_count, 1, 2);

var map_ = argument[0];
var instance = self;

switch (argument_count) {
    case 2:
        instance = argument[0];
        map_ = argument[1];
        break;
    default:
        map_ = argument[0];
}

map_add(data(instance), map_);
