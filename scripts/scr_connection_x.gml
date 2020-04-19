//scr_connection_x(connection, position)

var connection = argument0;
var position = argument1;

var length = scr_connection_length(connection);
var dir = scr_connection_direction(connection);
var xx = lengthdir_x(length * position, dir);

return connection.upstream.x + xx;
