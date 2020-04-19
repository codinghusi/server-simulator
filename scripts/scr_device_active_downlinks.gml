///scr_device_active_downlinks(device)

var device = argument0;
var downlinks = device.downlinks;
var length = ds_list_size(downlinks);
var count = 0;

var actives = ds_list_create();

for (var i = 0; i < length; ++i) {
    var downlink_connection = downlinks[| i];
    if (!downlink_connection || !downlink_connection.downlink) {
        continue;
    }
    ds_list_add(actives, downlink_connection);
}

return actives;
