///scr_create_device(device, upstream, downstreams, connection)

var device = argument0;
var upstream = argument1;
var downstreams = argument2;
var connection = argument3;

// Get the end of the connection
var xx = scr_connection_x(conneciton, 1);
var yy = scr_connection_y(conneciton, 1);

var device = instance_create(xx, yy, device);

device.upstream = upstream;
device.downstream = downstream;
device.connection = connection;
