///scr_component_width(component)

var component = argument0;
var downlinks = scr_component_used_downlinks(component);
var length = ds_list_size(downlinks);
var width = 0;

for (var i = 0; i < length; ++i) {
    var downlink_connection = downlinks[| i];
    var downlink_component = data_get(downlink_connection, "downlink");
    width += scr_component_width(downlink_component);
}

ds_list_destroy(downlinks) //Lars jagt Memoryleaks
return max(1, width);
