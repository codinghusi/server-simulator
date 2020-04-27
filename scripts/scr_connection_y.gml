///scr_connection_y(connection, position)

var connection = argument0;
var position = argument1;

var length = scr_connection_length(connection);
var dir = scr_connection_direction(connection);
var yy = lengthdir_y(length * position, dir);
var uplink = data_get(connection, "uplink");

return uplink.y + yy;
