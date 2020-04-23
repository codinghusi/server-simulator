///data_set(key, value, [instance])

assert_argument_count(data_has, argument_count, 2, 3);

var key = argument[0];
var value;
var instance = self;

if (argument_count > 1) {
    instance = argument[1];
}

map_set(data(instance), kv(key, value));
