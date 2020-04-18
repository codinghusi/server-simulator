///scr_create_connection(upstream, downstream, bandwidth)

var upstream = argument0;
var downstream = argument1;
var bandwidth = argument2;

var connection = instance_create(0, 0, obj_connection);

connection.upstream = upstream;
connection.downstream = downstream;
connection.bandwidth = bandwidth;

return connection;
