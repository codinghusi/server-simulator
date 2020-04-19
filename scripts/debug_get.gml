///debug_get(id)

var instance = string(argument0);

var list = global.debug[? instance];
if (!list) {
    list = ds_list_create();
    global.debug[? instance] = list;
}

var str = "";
var length = ds_list_size(list);
for (var i = 0; i < length; ++i) {
    str += ds_list_find_value(list, i) + "#";
}

return str;
