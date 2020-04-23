///data([instance])

assert_argument_count(data, argument_count, 0, 1);

var instance;

if (argument_count > 0) {
    instance = argument[0];
} else {
    instance = self;
}

if (is_undefined(instance.my_data)) {
    instance.my_data = map();
}

return instance.my_data;
