///scr_create_dev(dev_data, connection)

var data = argument0;
var dev_object = data[device_struct.object];
var connection = argument1;
var downstream_count = data[device_struct.downstream_count];
var additional_data = data[device_struct.additional_data];
var upstream, downstream, downstreams, root;

var dev = instance_create(0, 0, dev_object);

if (!connection) {
    root = dev;
} else {
    root = connection.root;
}

downstreams = ds_list_create();
for (var i = downstream_count - 1; i >= 0; --i) {
    downstreams[| i] = scr_create_connection(root, dev, noone, 1); // TODO: Hardcoded
}

if (downstream_count) {
    downstream = downstreams[| 0];
}

// Beginning (Internet, www, cloud)
if (!connection) {
    upstream = noone;
}
// 1. At the end of the connection there is no device so we will be that
// 2. Or we need to go in the middle
else {
    var tmp_downstream = connection.downstream; // could be noone (see 1.)
    connection.downstream = dev;
    
    upstream = connection;
    
    if (downstream_count) {
        downstream.downstream = tmp_downstream;
    }
}

dev.upstream = upstream;
dev.downstreams = downstreams;
dev.connection = connection;
dev.data = data;


// Position all devs underneath and this one
if (connection) {
    scr_position_devices(root);
    show_debug_message("updating tree");
}

return dev;
