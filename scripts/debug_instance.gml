///debug_instance(id, value)

var instance = string(argument0);
var value = argument1;

var list = global.debug[? instance];
if (!list) {
    list = ds_list_create();
    global.debug[? instance] = list;
}


ds_list_add(list, value);
