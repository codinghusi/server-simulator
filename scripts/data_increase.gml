///data_increase([instance], key, amount)

assert_argument_count(data_increase, argument_count, 2, 3);

var key;
var amount;
var instance = self;

switch (argument_count) {
    case 3:
        instance = argument[0];
        key = argument[1];
        amount = argument[2];
        break;
    default:
        key = argument[0];
        amount = argument[1];
}

data_set(instance, key, data_get(instance, key) + amount);
