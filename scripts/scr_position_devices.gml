///scr_position_devices(root_device)

var device = argument0;
var downlinks = device.downlinks;
var length = ds_list_size(downlinks);
var width = scr_device_width(device);
var hor_width = 150;
var ver_spacing = 100;
var count = scr_device_active_downlink_count(device);


// width missing in calculation
// width / count gives spacing
//var xx = -floor(width / count);// - width / 2;
var xx = -width;

for (var i = 0; i < length; ++i) {
    var downlink_connection = downlinks[| i];
    if (!downlink_connection || !downlink_connection.downlink) {
        continue;
    }
    var downlink_device = downlink_connection.downlink;
    var device_width = scr_device_width(downlink_device);
    downlink_device.x = device.x + (xx + device_width) / 2 * hor_width;
    downlink_device.y = device.y + ver_spacing;
    scr_position_devices(downlink_device);
    xx += device_width * 2;
}
