///scr_position_devices(root_device)

var dev = argument0;
var downstreams = dev.downstreams;
var length = ds_list_size(downstreams);
var width = scr_device_width(dev);
var hor_width = 150;
var ver_spacing = 100;
var count = scr_device_active_downstream_count(dev);


// width missing in calculation
// width / count gives spacing
//var xx = -floor(width / count);// - width / 2;
var xx = -width;

for (var i = 0; i < length; ++i) {
    var downstream_connection = downstreams[| i];
    if (!downstream_connection || !downstream_connection.downstream) {
        continue;
    }
    var downstream_device = downstream_connection.downstream;
    var device_width = scr_device_width(downstream_device);
    downstream_device.x = dev.x + (xx + device_width) / 2 * hor_width;
    downstream_device.y = dev.y + ver_spacing;
    scr_position_devices(downstream_device);
    xx += device_width * 2;
}
