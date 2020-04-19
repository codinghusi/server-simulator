///scr_device_active_downstream_count(device)

var dev = argument0;
var downstreams = dev.downstreams;
var length = ds_list_size(downstreams);
var count = 0;

for (var i = 0; i < length; ++i) {
    var downstream_connection = downstreams[| i];
    if (!downstream_connection || !downstream_connection.downstream) {
        continue;
    }
    count++;
}
