///scr_create_connection(root, upstream, downstream, bandwidth)

var root = argument0;
var upstream = argument1;
var downstream = argument2;
var bandwidth = argument3;

var connection = instance_create(0, 0, obj_connection);

connection.upstream = upstream;
connection.downstream = downstream;
connection.bandwidth = bandwidth;
connection.root = root;

return connection;
