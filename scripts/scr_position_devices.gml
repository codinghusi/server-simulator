///scr_position_devices(root_device)

var device = argument0;
var downstreams = device.downstreams;
var length = array_length_1d(downstreams);
var width = scr_device_width(device);
var hor_width = 150;
var ver_spacing = 100;
var count = scr_device_active_downstream_count(device);


// width missing in calculation
// width / count gives spacing
show_debug_message(width);
var xx = -floor(width / count);

for (var i = 0; i < length; ++i) {
    var downstream_connection = downstreams[i];
    if (!downstream_connection || !downstream_connection.downstream) {
        continue;
    }
    var downstream_device = downstream_connection.downstream;
    downstream_device.x = device.x + xx * (hor_width);
    show_debug_message(string(device.y) + "{");
    downstream_device.y = device.y + ver_spacing;
    scr_position_devices(downstream_device);
    show_debug_message("}" + string(device.y));
    xx += scr_device_width(downstream_device) ;
}
