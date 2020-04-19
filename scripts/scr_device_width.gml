///scr_device_width(device)

var device = argument0;
var downlinks = device.downlinks;
var length = ds_list_size(downlinks);
var width = 0;

for (var i = 0; i < length; ++i) {
    var downlink_connection = downlinks[| i];
    if (!downlink_connection || !downlink_connection.downlink) {
        continue;
    }
    var downlink_device = downlink_connection.downlink;
    width += scr_device_width(downlink_device);
}

return max(1, width);
