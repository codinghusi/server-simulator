///scr_component_used_downlinks(component)

var component = argument0;
var downlinks = data_get(component, "downlinks");
var length = ds_list_size(downlinks);
var count = 0;

var used = ds_list_create();

for (var i = 0; i < length; ++i) {
    var downlink_connection = downlinks[| i];
    if (!data_has_chain(downlink_connection, "downlink")) {
        continue;
    }
    ds_list_add(used, downlink_connection);
}

return used;
