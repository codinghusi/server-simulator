///scr_component_available_downlinks(component)

var component = argument0;
var downlinks = scr_component_used_downlinks(component);
var length = ds_list_size(downlinks);
var count = 0;

var availables = ds_list_create();

for (var i = 0; i < length; ++i) {
    var downlink_connection = downlinks[| i];
    if (scr_downlink_available_in(downlink_connection) != 0) {
        continue;
    }
    ds_list_add(availables, downlink_connection);
}

return availables;
