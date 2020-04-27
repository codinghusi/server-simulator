///data_set_chain(instance, ...instances, key, value, crash)

assert_argument_count(data_get_chain, argument_count, 4, 16);

var instance = argument[0];
var key = argument[argument_count - 3];
var value = argument[argument_count - 2];
var crash = argument[argument_count - 1];
var path = "";
var lastkey = noone;

var context = instance;
for (var i = 1; i < argument_count - 3; ++i) {
    var key = argument[i];
    
    if (!instance_exists(context)) {
        if (!crash) {
            return noone;
        }
        if (lastkey == noone) {
            error("Couldn't find the first instance given: " + string(instance), true);
        } else {
            error("Couldn't find instance " + path, true);
        }
    }
    
    context = data_get(instance, key);
    
    if (path != "") {
        path += " > ";
    }
    path += key;
    
    lastkey = key;
}

data_set(context, key, value);

return context;
