///data_get(key, [default], [instance])

assert_argument_count(data_get, argument_count, 1, 3);

var key;
var instance = self;
var def = noone;
var i = argument_count - 1;

switch (argument_count) {
    case 2:
        instance = argument[i--];
    case 1:
        def = argument[i--];
    case 0:
        key = argument[i--];
}

map_get(data(instance), key);
