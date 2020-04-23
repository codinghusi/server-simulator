///data_init(data_map, [instance])

assert_argument_count(data_init, argument_count, 1, 2);

var map_ = argument[0];
var instance;

if (argument_count > 1) {
    instance = argument[1];
} else {
    instance = self;
}

map_add(data(instance), map_);
