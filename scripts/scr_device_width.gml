///scr_device_width(device)

var device = argument0;
var downstreams = device.downstreams;
var length = array_length_1d(downstreams);
var width = 0;

for (var i = 0; i < length; ++i) {
    var downstream_connection = downstreams[i];
    if (!downstream_connection || !downstream_connection.downstream) {
        continue;
    }
    var downstream_device = downstream_connection.downstream;
    width += scr_device_width(downstream_device);
}

return max(1, width);