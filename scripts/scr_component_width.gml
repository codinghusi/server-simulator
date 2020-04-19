///scr_component_width(component)

var component = argument0;
var downlinks = component.downlinks;
var length = ds_list_size(downlinks);
var width = 0;

for (var i = 0; i < length; ++i) {
    var downlink_connection = downlinks[| i];
    if (!downlink_connection || !downlink_connection.downlink) {
        continue;
    }
    var downlink_component = downlink_connection.downlink;
    width += scr_component_width(downlink_component);
}

return max(1, width);
