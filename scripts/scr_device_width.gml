///scr_device_width(device)

var dev = argument0;
var downstreams = dev.downstreams;
var length = ds_list_size(downstreams);
var width = 0;

for (var i = 0; i < length; ++i) {
    var downstream_connection = downstreams[| i];
    if (!downstream_connection || !downstream_connection.downstream) {
        continue;
    }
    var downstream_device = downstream_connection.downstream;
    width += scr_device_width(downstream_device);
}

return max(1, width);
