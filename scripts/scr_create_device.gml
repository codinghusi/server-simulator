///scr_create_device(device, connection, downstream_count)

var device = argument0;
var connection = argument1;
var downstream_count = argument2;
var upstream, downstream, downstreams;

for (var i = downstream_count - 1; i >= 0; --i) {
    downstreams[i] = noone;
}

var device = instance_create(0, 0, device);

// Beginning (Internet, www, cloud)
if (!connection) {
    upstream = noone;
    downstream = scr_create_connection(device, noone, 1); // TODO: Hardcoded
}
// 1. At the end of the connection there is no device so we will be that
// 2. Or we need to go in the middle
else {
    var tmp_downstream = connection.downstream; // could be none in 1.
    connection.downstream = device;
    
    upstream = connection;
    downstream = scr_create_connection(device, tmp_downstream, 1); // TODO: Hardcoded
   
}

downstreams[0] = downstream;

device.upstream = upstream;
device.downstreams = downstreams;
device.connection = connection;

return device;
