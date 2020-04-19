///scr_device_active_downstream_count(device)

var device = argument0;
var downstreams = device.downstreams;
var length = array_length_1d(downstreams);
var count = 0;

for (var i = 0; i < length; ++i) {
    var downstream_connection = downstreams[i];
    if (!downstream_connection || !downstream_connection.downstream) {
        continue;
    }
    count++;
}
