///data_has(key, [instance])

assert_argument_count(data_has, argument_count, 1, 2);

var key;
var instance = self;
var i = argument_count - 1;

switch (argument_count) {
    case 1:
        instance = argument[i--];
    case 0:
        key = argument[i--];
}

map_get(data(instance), key);
