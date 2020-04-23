///data_get_chain(instance, ...instances, key, crash)

assert_argument_count(data_get_chain, argument_count, 3, 16);

var instance = argument[0];
var path = "";

var context = instance;
for (var i = 1; i < argument_count; ++i) {
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
    
    context = data_get(key, noone, instance);
    
    if (path != "") {
        path += " > ";
    }
    path += key;
}

return context;
