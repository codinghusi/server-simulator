///scr_create_device(device_data, connection)

var data = argument0;
var device_object = data[device_struct.object];
var connection = argument1;
var downlink_count = data[device_struct.downlink_count];
var additional_data = data[device_struct.additional_data];
var uplink, downlink, downlinks, root;

var device = instance_create(0, 0, device_object);

if (!connection) {
    root = device;
} else {
    root = connection.root;
}

downlinks = ds_list_create();
for (var i = downlink_count - 1; i >= 0; --i) {
    downlinks[| i] = scr_create_connection(root, device, noone, 1); // TODO: Hardcoded
}

if (downlink_count) {
    downlink = downlinks[| 0];
}

// Beginning (Internet, www, cloud)
if (!connection) {
    uplink = noone;
}
// 1. At the end of the connection there is no device so we will be that
// 2. Or we need to go in the middle
else {
    var tmp_downlink = connection.downlink; // could be noone (see 1.)
    connection.downlink = device;
    
    uplink = connection;
    
    if (downlink_count) {
        downlink.downlink = tmp_downlink;
    }
}

device.uplink = uplink;
device.downlinks = downlinks;
device.connection = connection;
device.data = data;


// Position all devices underneath and this one
if (connection) {
    scr_position_devices(root);
    show_debug_message("updating tree");
}

return device;
