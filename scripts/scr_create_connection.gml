///scr_create_connection(root, uplink, downlink, bandwidth)

var root = argument0;
var uplink = argument1;
var downlink = argument2;
var bandwidth = argument3;

var connection = instance_create(0, 0, obj_connection);

connection.uplink = uplink;
connection.downlink = downlink;
connection.bandwidth = bandwidth;
connection.root = root;

// Init
with (connection) {
    event_user(2);
    initialized = true;
}

return connection;
