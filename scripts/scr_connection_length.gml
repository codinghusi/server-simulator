///scr_connection_length(connection)

var connection = argument0;
var downstream = connection.downstream;
var upstream = connection.upstream;

var x1, y1, x2, y2;

x1 = upstream.x;
y1 = upstream.y;

if (!downstream) {
    x2 = x1;
    y2 = y1 + 20;    
}

return point_distance(x1, y1, x2, y2);
