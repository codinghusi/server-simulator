///scr_position_devices(root_device)

var device = argument0;
var downstreams = device.downstreams;
var length = array_length_1d(downstreams);
var width = scr_device_width(device);
var xx = -width / 2;
var yy = 0;

var hor_width = 50;
var ver_spacing = 50;

for (var i = 0; i < length; ++i) {
    var downstream_connection = downstreams[i];
    if (!downstream_connection) {
        continue;
    }
    var downstream_device = downstream_connection.downstream;
    downstream_device.x = xx * hor_width;
    downstream_device.y = yy * ver_spacing;
    scr_position_devices(downstream_device);
    xx += scr_device_width(downstream_device);
    yy++;
}

return width;
