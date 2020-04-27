///scr_connection_direction(connection)

var connection = argument0;
var downlink = data_get(connection, "downlink");
var uplink = data_get(connection, "uplink");

var x1, y1, x2, y2;

x1 = uplink.x;
y1 = uplink.y;

if (!downlink) {
    x2 = x1 + 50;
    y2 = y1;
} else {
    x2 = downlink.x;
    y2 = downlink.y;
}

return point_direction(x1, y1, x2, y2);
