///data_has_chain(instance, ...instances, key)

assert_argument_count(data_has_chain, argument_count, 3, 16);

var instance = argument[0];
var path = "";

var context = instance;
for (var i = 1; i < argument_count - 1; ++i) {
    var key = argument[i];
    
    if (!instance_exists(context)) {
        return false;
    }
    
    context = data_get(instance, key);
}

return true
