///scr_connection_direction(connection)

var connection = argument0;
var downstream = connection.downstream;
var upstream = connection.upstream;

var x1, y1, x2, y2;

x1 = upstream.x;
y1 = upstream.y;

if (!downstream) {
    x2 = x1;
    y2 = y1 + 20;    
} else {
    x2 = downstream.x;
    y2 = downstream.y;
}

return point_direction(x1, y1, x2, y2);
