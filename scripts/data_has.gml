///data_has(key, [instance])

assert_argument_count(data_has, argument_count, 1, 2);

var key;
var instance = self;
var i = argument_count - 1;

if (argument_count == 1) {
    key = argument[0];
} else {
    instance = argument[0];
    key = argument[1];
}

map_get(data(instance), key);
