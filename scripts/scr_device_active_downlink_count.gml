///scr_device_active_downlink_count(device)

var device = argument0;
var downlinks = device.downlinks;
var length = ds_list_size(downlinks);
var count = 0;

for (var i = 0; i < length; ++i) {
    var downlink_connection = downlinks[| i];
    if (!downlink_connection || !downlink_connection.downlink) {
        continue;
    }
    count++;
}
