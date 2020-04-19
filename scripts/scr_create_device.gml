///scr_create_device(device_data, connection)

var data = argument0;
var device_object = data[device_struct.object];
var connection = argument1;
var downstream_count = data[device_struct.downstream_count];
var additional_data = data[device_struct.additional_data];
var upstream, downstream, downstreams, root;

var device = instance_create(0, 0, device_object);

if (!connection) {
    root = device;
} else {
    root = connection.root;
}

// downstreams[0] = noone;
for (var i = downstream_count - 1; i >= 0; --i) {
    downstreams[i] = scr_create_connection(root, device, noone, 1);
}

downstream = downstreams[0];

// Beginning (Internet, www, cloud)
if (!connection) {
    upstream = noone;
    downstream = downstream;
}
// 1. At the end of the connection there is no device so we will be that
// 2. Or we need to go in the middle
else {
    var tmp_downstream = connection.downstream; // could be none in 1.
    connection.downstream = device;
    
    upstream = connection;
    downstream.downstream = tmp_downstream; // TODO: Hardcoded   
}

device.upstream = upstream;
device.downstreams = downstreams;
device.connection = connection;
device.data = data;

// Position all devices underneath and this one
if (connection) {
    scr_position_devices(root);
    show_debug_message("updating tree");
}

return device;
