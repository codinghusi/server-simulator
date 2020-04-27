///data_has([instance], key)

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

return map_has(data(instance), key);
